import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
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

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public var instanceId: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
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
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                self.tagValue = dict["TagValue"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

    public override init() {
        super.init()
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
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in dict["TagResources"] as! [Any] {
                var model = ListTagResourcesResponseBody.TagResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagResources = tmp
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
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsConsumerAccumulateRequest : Tea.TeaModel {
    public var detail: Bool?

    public var groupId: String?

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
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! Bool
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class OnsConsumerAccumulateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DetailInTopicList : Tea.TeaModel {
            public class DetailInTopicDo : Tea.TeaModel {
                public var delayTime: Int64?

                public var lastTimestamp: Int64?

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
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.delayTime != nil {
                        map["DelayTime"] = self.delayTime!
                    }
                    if self.lastTimestamp != nil {
                        map["LastTimestamp"] = self.lastTimestamp!
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
                    if dict.keys.contains("DelayTime") && dict["DelayTime"] != nil {
                        self.delayTime = dict["DelayTime"] as! Int64
                    }
                    if dict.keys.contains("LastTimestamp") && dict["LastTimestamp"] != nil {
                        self.lastTimestamp = dict["LastTimestamp"] as! Int64
                    }
                    if dict.keys.contains("Topic") && dict["Topic"] != nil {
                        self.topic = dict["Topic"] as! String
                    }
                    if dict.keys.contains("TotalDiff") && dict["TotalDiff"] != nil {
                        self.totalDiff = dict["TotalDiff"] as! Int64
                    }
                }
            }
            public var detailInTopicDo: [OnsConsumerAccumulateResponseBody.Data.DetailInTopicList.DetailInTopicDo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.detailInTopicDo != nil {
                    var tmp : [Any] = []
                    for k in self.detailInTopicDo! {
                        tmp.append(k.toMap())
                    }
                    map["DetailInTopicDo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DetailInTopicDo") && dict["DetailInTopicDo"] != nil {
                    var tmp : [OnsConsumerAccumulateResponseBody.Data.DetailInTopicList.DetailInTopicDo] = []
                    for v in dict["DetailInTopicDo"] as! [Any] {
                        var model = OnsConsumerAccumulateResponseBody.Data.DetailInTopicList.DetailInTopicDo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.detailInTopicDo = tmp
                }
            }
        }
        public var consumeTps: Double?

        public var delayTime: Int64?

        public var detailInTopicList: OnsConsumerAccumulateResponseBody.Data.DetailInTopicList?

        public var lastTimestamp: Int64?

        public var online: Bool?

        public var totalDiff: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.detailInTopicList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consumeTps != nil {
                map["ConsumeTps"] = self.consumeTps!
            }
            if self.delayTime != nil {
                map["DelayTime"] = self.delayTime!
            }
            if self.detailInTopicList != nil {
                map["DetailInTopicList"] = self.detailInTopicList?.toMap()
            }
            if self.lastTimestamp != nil {
                map["LastTimestamp"] = self.lastTimestamp!
            }
            if self.online != nil {
                map["Online"] = self.online!
            }
            if self.totalDiff != nil {
                map["TotalDiff"] = self.totalDiff!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConsumeTps") && dict["ConsumeTps"] != nil {
                self.consumeTps = dict["ConsumeTps"] as! Double
            }
            if dict.keys.contains("DelayTime") && dict["DelayTime"] != nil {
                self.delayTime = dict["DelayTime"] as! Int64
            }
            if dict.keys.contains("DetailInTopicList") && dict["DetailInTopicList"] != nil {
                var model = OnsConsumerAccumulateResponseBody.Data.DetailInTopicList()
                model.fromMap(dict["DetailInTopicList"] as! [String: Any])
                self.detailInTopicList = model
            }
            if dict.keys.contains("LastTimestamp") && dict["LastTimestamp"] != nil {
                self.lastTimestamp = dict["LastTimestamp"] as! Int64
            }
            if dict.keys.contains("Online") && dict["Online"] != nil {
                self.online = dict["Online"] as! Bool
            }
            if dict.keys.contains("TotalDiff") && dict["TotalDiff"] != nil {
                self.totalDiff = dict["TotalDiff"] as! Int64
            }
        }
    }
    public var data: OnsConsumerAccumulateResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsConsumerAccumulateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsConsumerAccumulateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsConsumerAccumulateResponseBody?

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
            var model = OnsConsumerAccumulateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsConsumerGetConnectionRequest : Tea.TeaModel {
    public var groupId: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class OnsConsumerGetConnectionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConnectionList : Tea.TeaModel {
            public class ConnectionDo : Tea.TeaModel {
                public var clientAddr: String?

                public var clientId: String?

                public var language: String?

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
                    if self.clientAddr != nil {
                        map["ClientAddr"] = self.clientAddr!
                    }
                    if self.clientId != nil {
                        map["ClientId"] = self.clientId!
                    }
                    if self.language != nil {
                        map["Language"] = self.language!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClientAddr") && dict["ClientAddr"] != nil {
                        self.clientAddr = dict["ClientAddr"] as! String
                    }
                    if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                        self.clientId = dict["ClientId"] as! String
                    }
                    if dict.keys.contains("Language") && dict["Language"] != nil {
                        self.language = dict["Language"] as! String
                    }
                    if dict.keys.contains("Version") && dict["Version"] != nil {
                        self.version = dict["Version"] as! String
                    }
                }
            }
            public var connectionDo: [OnsConsumerGetConnectionResponseBody.Data.ConnectionList.ConnectionDo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectionDo != nil {
                    var tmp : [Any] = []
                    for k in self.connectionDo! {
                        tmp.append(k.toMap())
                    }
                    map["ConnectionDo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionDo") && dict["ConnectionDo"] != nil {
                    var tmp : [OnsConsumerGetConnectionResponseBody.Data.ConnectionList.ConnectionDo] = []
                    for v in dict["ConnectionDo"] as! [Any] {
                        var model = OnsConsumerGetConnectionResponseBody.Data.ConnectionList.ConnectionDo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.connectionDo = tmp
                }
            }
        }
        public var connectionList: OnsConsumerGetConnectionResponseBody.Data.ConnectionList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.connectionList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionList != nil {
                map["ConnectionList"] = self.connectionList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectionList") && dict["ConnectionList"] != nil {
                var model = OnsConsumerGetConnectionResponseBody.Data.ConnectionList()
                model.fromMap(dict["ConnectionList"] as! [String: Any])
                self.connectionList = model
            }
        }
    }
    public var data: OnsConsumerGetConnectionResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsConsumerGetConnectionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsConsumerGetConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsConsumerGetConnectionResponseBody?

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
            var model = OnsConsumerGetConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsConsumerResetOffsetRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceId: String?

    public var resetTimestamp: Int64?

    public var topic: String?

    public var type: Int32?

    public override init() {
        super.init()
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
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.resetTimestamp != nil {
            map["ResetTimestamp"] = self.resetTimestamp!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ResetTimestamp") && dict["ResetTimestamp"] != nil {
            self.resetTimestamp = dict["ResetTimestamp"] as! Int64
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! Int32
        }
    }
}

public class OnsConsumerResetOffsetResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsConsumerResetOffsetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsConsumerResetOffsetResponseBody?

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
            var model = OnsConsumerResetOffsetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsConsumerStatusRequest : Tea.TeaModel {
    public var detail: Bool?

    public var groupId: String?

    public var instanceId: String?

    public var needJstack: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.needJstack != nil {
            map["NeedJstack"] = self.needJstack!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! Bool
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NeedJstack") && dict["NeedJstack"] != nil {
            self.needJstack = dict["NeedJstack"] as! Bool
        }
    }
}

public class OnsConsumerStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConnectionSet : Tea.TeaModel {
            public class ConnectionDo : Tea.TeaModel {
                public var clientAddr: String?

                public var clientId: String?

                public var language: String?

                public var remoteIP: String?

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
                    if self.clientAddr != nil {
                        map["ClientAddr"] = self.clientAddr!
                    }
                    if self.clientId != nil {
                        map["ClientId"] = self.clientId!
                    }
                    if self.language != nil {
                        map["Language"] = self.language!
                    }
                    if self.remoteIP != nil {
                        map["RemoteIP"] = self.remoteIP!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClientAddr") && dict["ClientAddr"] != nil {
                        self.clientAddr = dict["ClientAddr"] as! String
                    }
                    if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                        self.clientId = dict["ClientId"] as! String
                    }
                    if dict.keys.contains("Language") && dict["Language"] != nil {
                        self.language = dict["Language"] as! String
                    }
                    if dict.keys.contains("RemoteIP") && dict["RemoteIP"] != nil {
                        self.remoteIP = dict["RemoteIP"] as! String
                    }
                    if dict.keys.contains("Version") && dict["Version"] != nil {
                        self.version = dict["Version"] as! String
                    }
                }
            }
            public var connectionDo: [OnsConsumerStatusResponseBody.Data.ConnectionSet.ConnectionDo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectionDo != nil {
                    var tmp : [Any] = []
                    for k in self.connectionDo! {
                        tmp.append(k.toMap())
                    }
                    map["ConnectionDo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionDo") && dict["ConnectionDo"] != nil {
                    var tmp : [OnsConsumerStatusResponseBody.Data.ConnectionSet.ConnectionDo] = []
                    for v in dict["ConnectionDo"] as! [Any] {
                        var model = OnsConsumerStatusResponseBody.Data.ConnectionSet.ConnectionDo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.connectionDo = tmp
                }
            }
        }
        public class ConsumerConnectionInfoList : Tea.TeaModel {
            public class ConsumerConnectionInfoDo : Tea.TeaModel {
                public class Jstack : Tea.TeaModel {
                    public class ThreadTrackDo : Tea.TeaModel {
                        public class TrackList : Tea.TeaModel {
                            public var track: [String]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.track != nil {
                                    map["Track"] = self.track!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Track") && dict["Track"] != nil {
                                    self.track = dict["Track"] as! [String]
                                }
                            }
                        }
                        public var thread: String?

                        public var trackList: OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.Jstack.ThreadTrackDo.TrackList?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.trackList?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.thread != nil {
                                map["Thread"] = self.thread!
                            }
                            if self.trackList != nil {
                                map["TrackList"] = self.trackList?.toMap()
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Thread") && dict["Thread"] != nil {
                                self.thread = dict["Thread"] as! String
                            }
                            if dict.keys.contains("TrackList") && dict["TrackList"] != nil {
                                var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.Jstack.ThreadTrackDo.TrackList()
                                model.fromMap(dict["TrackList"] as! [String: Any])
                                self.trackList = model
                            }
                        }
                    }
                    public var threadTrackDo: [OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.Jstack.ThreadTrackDo]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.threadTrackDo != nil {
                            var tmp : [Any] = []
                            for k in self.threadTrackDo! {
                                tmp.append(k.toMap())
                            }
                            map["ThreadTrackDo"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ThreadTrackDo") && dict["ThreadTrackDo"] != nil {
                            var tmp : [OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.Jstack.ThreadTrackDo] = []
                            for v in dict["ThreadTrackDo"] as! [Any] {
                                var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.Jstack.ThreadTrackDo()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.threadTrackDo = tmp
                        }
                    }
                }
                public class RunningDataList : Tea.TeaModel {
                    public class ConsumerRunningDataDo : Tea.TeaModel {
                        public var failedCountPerHour: Int64?

                        public var failedTps: Double?

                        public var groupId: String?

                        public var okTps: Double?

                        public var rt: Double?

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
                            if self.failedCountPerHour != nil {
                                map["FailedCountPerHour"] = self.failedCountPerHour!
                            }
                            if self.failedTps != nil {
                                map["FailedTps"] = self.failedTps!
                            }
                            if self.groupId != nil {
                                map["GroupId"] = self.groupId!
                            }
                            if self.okTps != nil {
                                map["OkTps"] = self.okTps!
                            }
                            if self.rt != nil {
                                map["Rt"] = self.rt!
                            }
                            if self.topic != nil {
                                map["Topic"] = self.topic!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("FailedCountPerHour") && dict["FailedCountPerHour"] != nil {
                                self.failedCountPerHour = dict["FailedCountPerHour"] as! Int64
                            }
                            if dict.keys.contains("FailedTps") && dict["FailedTps"] != nil {
                                self.failedTps = dict["FailedTps"] as! Double
                            }
                            if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                                self.groupId = dict["GroupId"] as! String
                            }
                            if dict.keys.contains("OkTps") && dict["OkTps"] != nil {
                                self.okTps = dict["OkTps"] as! Double
                            }
                            if dict.keys.contains("Rt") && dict["Rt"] != nil {
                                self.rt = dict["Rt"] as! Double
                            }
                            if dict.keys.contains("Topic") && dict["Topic"] != nil {
                                self.topic = dict["Topic"] as! String
                            }
                        }
                    }
                    public var consumerRunningDataDo: [OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.RunningDataList.ConsumerRunningDataDo]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.consumerRunningDataDo != nil {
                            var tmp : [Any] = []
                            for k in self.consumerRunningDataDo! {
                                tmp.append(k.toMap())
                            }
                            map["ConsumerRunningDataDo"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ConsumerRunningDataDo") && dict["ConsumerRunningDataDo"] != nil {
                            var tmp : [OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.RunningDataList.ConsumerRunningDataDo] = []
                            for v in dict["ConsumerRunningDataDo"] as! [Any] {
                                var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.RunningDataList.ConsumerRunningDataDo()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.consumerRunningDataDo = tmp
                        }
                    }
                }
                public class SubscriptionSet : Tea.TeaModel {
                    public class SubscriptionData : Tea.TeaModel {
                        public class TagsSet : Tea.TeaModel {
                            public var tag: [String]?

                            public override init() {
                                super.init()
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
                                    map["Tag"] = self.tag!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Tag") && dict["Tag"] != nil {
                                    self.tag = dict["Tag"] as! [String]
                                }
                            }
                        }
                        public var subString: String?

                        public var subVersion: Int64?

                        public var tagsSet: OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.SubscriptionSet.SubscriptionData.TagsSet?

                        public var topic: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.tagsSet?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.subString != nil {
                                map["SubString"] = self.subString!
                            }
                            if self.subVersion != nil {
                                map["SubVersion"] = self.subVersion!
                            }
                            if self.tagsSet != nil {
                                map["TagsSet"] = self.tagsSet?.toMap()
                            }
                            if self.topic != nil {
                                map["Topic"] = self.topic!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("SubString") && dict["SubString"] != nil {
                                self.subString = dict["SubString"] as! String
                            }
                            if dict.keys.contains("SubVersion") && dict["SubVersion"] != nil {
                                self.subVersion = dict["SubVersion"] as! Int64
                            }
                            if dict.keys.contains("TagsSet") && dict["TagsSet"] != nil {
                                var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.SubscriptionSet.SubscriptionData.TagsSet()
                                model.fromMap(dict["TagsSet"] as! [String: Any])
                                self.tagsSet = model
                            }
                            if dict.keys.contains("Topic") && dict["Topic"] != nil {
                                self.topic = dict["Topic"] as! String
                            }
                        }
                    }
                    public var subscriptionData: [OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.SubscriptionSet.SubscriptionData]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.subscriptionData != nil {
                            var tmp : [Any] = []
                            for k in self.subscriptionData! {
                                tmp.append(k.toMap())
                            }
                            map["SubscriptionData"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("SubscriptionData") && dict["SubscriptionData"] != nil {
                            var tmp : [OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.SubscriptionSet.SubscriptionData] = []
                            for v in dict["SubscriptionData"] as! [Any] {
                                var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.SubscriptionSet.SubscriptionData()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.subscriptionData = tmp
                        }
                    }
                }
                public var clientId: String?

                public var connection: String?

                public var consumeModel: String?

                public var consumeType: String?

                public var jstack: OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.Jstack?

                public var language: String?

                public var lastTimeStamp: Int64?

                public var runningDataList: OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.RunningDataList?

                public var startTimeStamp: Int64?

                public var subscriptionSet: OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.SubscriptionSet?

                public var threadCount: Int32?

                public var version: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.jstack?.validate()
                    try self.runningDataList?.validate()
                    try self.subscriptionSet?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.clientId != nil {
                        map["ClientId"] = self.clientId!
                    }
                    if self.connection != nil {
                        map["Connection"] = self.connection!
                    }
                    if self.consumeModel != nil {
                        map["ConsumeModel"] = self.consumeModel!
                    }
                    if self.consumeType != nil {
                        map["ConsumeType"] = self.consumeType!
                    }
                    if self.jstack != nil {
                        map["Jstack"] = self.jstack?.toMap()
                    }
                    if self.language != nil {
                        map["Language"] = self.language!
                    }
                    if self.lastTimeStamp != nil {
                        map["LastTimeStamp"] = self.lastTimeStamp!
                    }
                    if self.runningDataList != nil {
                        map["RunningDataList"] = self.runningDataList?.toMap()
                    }
                    if self.startTimeStamp != nil {
                        map["StartTimeStamp"] = self.startTimeStamp!
                    }
                    if self.subscriptionSet != nil {
                        map["SubscriptionSet"] = self.subscriptionSet?.toMap()
                    }
                    if self.threadCount != nil {
                        map["ThreadCount"] = self.threadCount!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                        self.clientId = dict["ClientId"] as! String
                    }
                    if dict.keys.contains("Connection") && dict["Connection"] != nil {
                        self.connection = dict["Connection"] as! String
                    }
                    if dict.keys.contains("ConsumeModel") && dict["ConsumeModel"] != nil {
                        self.consumeModel = dict["ConsumeModel"] as! String
                    }
                    if dict.keys.contains("ConsumeType") && dict["ConsumeType"] != nil {
                        self.consumeType = dict["ConsumeType"] as! String
                    }
                    if dict.keys.contains("Jstack") && dict["Jstack"] != nil {
                        var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.Jstack()
                        model.fromMap(dict["Jstack"] as! [String: Any])
                        self.jstack = model
                    }
                    if dict.keys.contains("Language") && dict["Language"] != nil {
                        self.language = dict["Language"] as! String
                    }
                    if dict.keys.contains("LastTimeStamp") && dict["LastTimeStamp"] != nil {
                        self.lastTimeStamp = dict["LastTimeStamp"] as! Int64
                    }
                    if dict.keys.contains("RunningDataList") && dict["RunningDataList"] != nil {
                        var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.RunningDataList()
                        model.fromMap(dict["RunningDataList"] as! [String: Any])
                        self.runningDataList = model
                    }
                    if dict.keys.contains("StartTimeStamp") && dict["StartTimeStamp"] != nil {
                        self.startTimeStamp = dict["StartTimeStamp"] as! Int64
                    }
                    if dict.keys.contains("SubscriptionSet") && dict["SubscriptionSet"] != nil {
                        var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.SubscriptionSet()
                        model.fromMap(dict["SubscriptionSet"] as! [String: Any])
                        self.subscriptionSet = model
                    }
                    if dict.keys.contains("ThreadCount") && dict["ThreadCount"] != nil {
                        self.threadCount = dict["ThreadCount"] as! Int32
                    }
                    if dict.keys.contains("Version") && dict["Version"] != nil {
                        self.version = dict["Version"] as! String
                    }
                }
            }
            public var consumerConnectionInfoDo: [OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.consumerConnectionInfoDo != nil {
                    var tmp : [Any] = []
                    for k in self.consumerConnectionInfoDo! {
                        tmp.append(k.toMap())
                    }
                    map["ConsumerConnectionInfoDo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConsumerConnectionInfoDo") && dict["ConsumerConnectionInfoDo"] != nil {
                    var tmp : [OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo] = []
                    for v in dict["ConsumerConnectionInfoDo"] as! [Any] {
                        var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.consumerConnectionInfoDo = tmp
                }
            }
        }
        public class DetailInTopicList : Tea.TeaModel {
            public class DetailInTopicDo : Tea.TeaModel {
                public var delayTime: Int64?

                public var lastTimestamp: Int64?

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
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.delayTime != nil {
                        map["DelayTime"] = self.delayTime!
                    }
                    if self.lastTimestamp != nil {
                        map["LastTimestamp"] = self.lastTimestamp!
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
                    if dict.keys.contains("DelayTime") && dict["DelayTime"] != nil {
                        self.delayTime = dict["DelayTime"] as! Int64
                    }
                    if dict.keys.contains("LastTimestamp") && dict["LastTimestamp"] != nil {
                        self.lastTimestamp = dict["LastTimestamp"] as! Int64
                    }
                    if dict.keys.contains("Topic") && dict["Topic"] != nil {
                        self.topic = dict["Topic"] as! String
                    }
                    if dict.keys.contains("TotalDiff") && dict["TotalDiff"] != nil {
                        self.totalDiff = dict["TotalDiff"] as! Int64
                    }
                }
            }
            public var detailInTopicDo: [OnsConsumerStatusResponseBody.Data.DetailInTopicList.DetailInTopicDo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.detailInTopicDo != nil {
                    var tmp : [Any] = []
                    for k in self.detailInTopicDo! {
                        tmp.append(k.toMap())
                    }
                    map["DetailInTopicDo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DetailInTopicDo") && dict["DetailInTopicDo"] != nil {
                    var tmp : [OnsConsumerStatusResponseBody.Data.DetailInTopicList.DetailInTopicDo] = []
                    for v in dict["DetailInTopicDo"] as! [Any] {
                        var model = OnsConsumerStatusResponseBody.Data.DetailInTopicList.DetailInTopicDo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.detailInTopicDo = tmp
                }
            }
        }
        public var connectionSet: OnsConsumerStatusResponseBody.Data.ConnectionSet?

        public var consumeModel: String?

        public var consumeTps: Double?

        public var consumerConnectionInfoList: OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList?

        public var delayTime: Int64?

        public var detailInTopicList: OnsConsumerStatusResponseBody.Data.DetailInTopicList?

        public var instanceId: String?

        public var lastTimestamp: Int64?

        public var online: Bool?

        public var rebalanceOK: Bool?

        public var subscriptionSame: Bool?

        public var totalDiff: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.connectionSet?.validate()
            try self.consumerConnectionInfoList?.validate()
            try self.detailInTopicList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionSet != nil {
                map["ConnectionSet"] = self.connectionSet?.toMap()
            }
            if self.consumeModel != nil {
                map["ConsumeModel"] = self.consumeModel!
            }
            if self.consumeTps != nil {
                map["ConsumeTps"] = self.consumeTps!
            }
            if self.consumerConnectionInfoList != nil {
                map["ConsumerConnectionInfoList"] = self.consumerConnectionInfoList?.toMap()
            }
            if self.delayTime != nil {
                map["DelayTime"] = self.delayTime!
            }
            if self.detailInTopicList != nil {
                map["DetailInTopicList"] = self.detailInTopicList?.toMap()
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.lastTimestamp != nil {
                map["LastTimestamp"] = self.lastTimestamp!
            }
            if self.online != nil {
                map["Online"] = self.online!
            }
            if self.rebalanceOK != nil {
                map["RebalanceOK"] = self.rebalanceOK!
            }
            if self.subscriptionSame != nil {
                map["SubscriptionSame"] = self.subscriptionSame!
            }
            if self.totalDiff != nil {
                map["TotalDiff"] = self.totalDiff!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectionSet") && dict["ConnectionSet"] != nil {
                var model = OnsConsumerStatusResponseBody.Data.ConnectionSet()
                model.fromMap(dict["ConnectionSet"] as! [String: Any])
                self.connectionSet = model
            }
            if dict.keys.contains("ConsumeModel") && dict["ConsumeModel"] != nil {
                self.consumeModel = dict["ConsumeModel"] as! String
            }
            if dict.keys.contains("ConsumeTps") && dict["ConsumeTps"] != nil {
                self.consumeTps = dict["ConsumeTps"] as! Double
            }
            if dict.keys.contains("ConsumerConnectionInfoList") && dict["ConsumerConnectionInfoList"] != nil {
                var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList()
                model.fromMap(dict["ConsumerConnectionInfoList"] as! [String: Any])
                self.consumerConnectionInfoList = model
            }
            if dict.keys.contains("DelayTime") && dict["DelayTime"] != nil {
                self.delayTime = dict["DelayTime"] as! Int64
            }
            if dict.keys.contains("DetailInTopicList") && dict["DetailInTopicList"] != nil {
                var model = OnsConsumerStatusResponseBody.Data.DetailInTopicList()
                model.fromMap(dict["DetailInTopicList"] as! [String: Any])
                self.detailInTopicList = model
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LastTimestamp") && dict["LastTimestamp"] != nil {
                self.lastTimestamp = dict["LastTimestamp"] as! Int64
            }
            if dict.keys.contains("Online") && dict["Online"] != nil {
                self.online = dict["Online"] as! Bool
            }
            if dict.keys.contains("RebalanceOK") && dict["RebalanceOK"] != nil {
                self.rebalanceOK = dict["RebalanceOK"] as! Bool
            }
            if dict.keys.contains("SubscriptionSame") && dict["SubscriptionSame"] != nil {
                self.subscriptionSame = dict["SubscriptionSame"] as! Bool
            }
            if dict.keys.contains("TotalDiff") && dict["TotalDiff"] != nil {
                self.totalDiff = dict["TotalDiff"] as! Int64
            }
        }
    }
    public var data: OnsConsumerStatusResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsConsumerStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsConsumerStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsConsumerStatusResponseBody?

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
            var model = OnsConsumerStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsConsumerTimeSpanRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceId: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class OnsConsumerTimeSpanResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var consumeTimeStamp: Int64?

        public var instanceId: String?

        public var maxTimeStamp: Int64?

        public var minTimeStamp: Int64?

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
            if self.consumeTimeStamp != nil {
                map["ConsumeTimeStamp"] = self.consumeTimeStamp!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.maxTimeStamp != nil {
                map["MaxTimeStamp"] = self.maxTimeStamp!
            }
            if self.minTimeStamp != nil {
                map["MinTimeStamp"] = self.minTimeStamp!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConsumeTimeStamp") && dict["ConsumeTimeStamp"] != nil {
                self.consumeTimeStamp = dict["ConsumeTimeStamp"] as! Int64
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("MaxTimeStamp") && dict["MaxTimeStamp"] != nil {
                self.maxTimeStamp = dict["MaxTimeStamp"] as! Int64
            }
            if dict.keys.contains("MinTimeStamp") && dict["MinTimeStamp"] != nil {
                self.minTimeStamp = dict["MinTimeStamp"] as! Int64
            }
            if dict.keys.contains("Topic") && dict["Topic"] != nil {
                self.topic = dict["Topic"] as! String
            }
        }
    }
    public var data: OnsConsumerTimeSpanResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsConsumerTimeSpanResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsConsumerTimeSpanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsConsumerTimeSpanResponseBody?

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
            var model = OnsConsumerTimeSpanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsDLQMessageGetByIdRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceId: String?

    public var msgId: String?

    public override init() {
        super.init()
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
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
            self.msgId = dict["MsgId"] as! String
        }
    }
}

public class OnsDLQMessageGetByIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PropertyList : Tea.TeaModel {
            public class MessageProperty : Tea.TeaModel {
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
                        map["Name"] = self.name!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var messageProperty: [OnsDLQMessageGetByIdResponseBody.Data.PropertyList.MessageProperty]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.messageProperty != nil {
                    var tmp : [Any] = []
                    for k in self.messageProperty! {
                        tmp.append(k.toMap())
                    }
                    map["MessageProperty"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MessageProperty") && dict["MessageProperty"] != nil {
                    var tmp : [OnsDLQMessageGetByIdResponseBody.Data.PropertyList.MessageProperty] = []
                    for v in dict["MessageProperty"] as! [Any] {
                        var model = OnsDLQMessageGetByIdResponseBody.Data.PropertyList.MessageProperty()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.messageProperty = tmp
                }
            }
        }
        public var bodyCRC: Int32?

        public var bornHost: String?

        public var bornTimestamp: Int64?

        public var instanceId: String?

        public var msgId: String?

        public var propertyList: OnsDLQMessageGetByIdResponseBody.Data.PropertyList?

        public var reconsumeTimes: Int32?

        public var storeHost: String?

        public var storeSize: Int32?

        public var storeTimestamp: Int64?

        public var topic: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.propertyList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bodyCRC != nil {
                map["BodyCRC"] = self.bodyCRC!
            }
            if self.bornHost != nil {
                map["BornHost"] = self.bornHost!
            }
            if self.bornTimestamp != nil {
                map["BornTimestamp"] = self.bornTimestamp!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            if self.propertyList != nil {
                map["PropertyList"] = self.propertyList?.toMap()
            }
            if self.reconsumeTimes != nil {
                map["ReconsumeTimes"] = self.reconsumeTimes!
            }
            if self.storeHost != nil {
                map["StoreHost"] = self.storeHost!
            }
            if self.storeSize != nil {
                map["StoreSize"] = self.storeSize!
            }
            if self.storeTimestamp != nil {
                map["StoreTimestamp"] = self.storeTimestamp!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BodyCRC") && dict["BodyCRC"] != nil {
                self.bodyCRC = dict["BodyCRC"] as! Int32
            }
            if dict.keys.contains("BornHost") && dict["BornHost"] != nil {
                self.bornHost = dict["BornHost"] as! String
            }
            if dict.keys.contains("BornTimestamp") && dict["BornTimestamp"] != nil {
                self.bornTimestamp = dict["BornTimestamp"] as! Int64
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! String
            }
            if dict.keys.contains("PropertyList") && dict["PropertyList"] != nil {
                var model = OnsDLQMessageGetByIdResponseBody.Data.PropertyList()
                model.fromMap(dict["PropertyList"] as! [String: Any])
                self.propertyList = model
            }
            if dict.keys.contains("ReconsumeTimes") && dict["ReconsumeTimes"] != nil {
                self.reconsumeTimes = dict["ReconsumeTimes"] as! Int32
            }
            if dict.keys.contains("StoreHost") && dict["StoreHost"] != nil {
                self.storeHost = dict["StoreHost"] as! String
            }
            if dict.keys.contains("StoreSize") && dict["StoreSize"] != nil {
                self.storeSize = dict["StoreSize"] as! Int32
            }
            if dict.keys.contains("StoreTimestamp") && dict["StoreTimestamp"] != nil {
                self.storeTimestamp = dict["StoreTimestamp"] as! Int64
            }
            if dict.keys.contains("Topic") && dict["Topic"] != nil {
                self.topic = dict["Topic"] as! String
            }
        }
    }
    public var data: OnsDLQMessageGetByIdResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsDLQMessageGetByIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsDLQMessageGetByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsDLQMessageGetByIdResponseBody?

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
            var model = OnsDLQMessageGetByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsDLQMessagePageQueryByGroupIdRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var groupId: String?

    public var instanceId: String?

    public var pageSize: Int32?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class OnsDLQMessagePageQueryByGroupIdResponseBody : Tea.TeaModel {
    public class MsgFoundDo : Tea.TeaModel {
        public class MsgFoundList : Tea.TeaModel {
            public class OnsRestMessageDo : Tea.TeaModel {
                public class PropertyList : Tea.TeaModel {
                    public class MessageProperty : Tea.TeaModel {
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
                                map["Name"] = self.name!
                            }
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Name") && dict["Name"] != nil {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("Value") && dict["Value"] != nil {
                                self.value = dict["Value"] as! String
                            }
                        }
                    }
                    public var messageProperty: [OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList.MessageProperty]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.messageProperty != nil {
                            var tmp : [Any] = []
                            for k in self.messageProperty! {
                                tmp.append(k.toMap())
                            }
                            map["MessageProperty"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("MessageProperty") && dict["MessageProperty"] != nil {
                            var tmp : [OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList.MessageProperty] = []
                            for v in dict["MessageProperty"] as! [Any] {
                                var model = OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList.MessageProperty()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.messageProperty = tmp
                        }
                    }
                }
                public var bodyCRC: Int32?

                public var bornHost: String?

                public var bornTimestamp: Int64?

                public var instanceId: String?

                public var msgId: String?

                public var propertyList: OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList?

                public var reconsumeTimes: Int32?

                public var storeHost: String?

                public var storeSize: Int32?

                public var storeTimestamp: Int64?

                public var topic: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.propertyList?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bodyCRC != nil {
                        map["BodyCRC"] = self.bodyCRC!
                    }
                    if self.bornHost != nil {
                        map["BornHost"] = self.bornHost!
                    }
                    if self.bornTimestamp != nil {
                        map["BornTimestamp"] = self.bornTimestamp!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    if self.msgId != nil {
                        map["MsgId"] = self.msgId!
                    }
                    if self.propertyList != nil {
                        map["PropertyList"] = self.propertyList?.toMap()
                    }
                    if self.reconsumeTimes != nil {
                        map["ReconsumeTimes"] = self.reconsumeTimes!
                    }
                    if self.storeHost != nil {
                        map["StoreHost"] = self.storeHost!
                    }
                    if self.storeSize != nil {
                        map["StoreSize"] = self.storeSize!
                    }
                    if self.storeTimestamp != nil {
                        map["StoreTimestamp"] = self.storeTimestamp!
                    }
                    if self.topic != nil {
                        map["Topic"] = self.topic!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BodyCRC") && dict["BodyCRC"] != nil {
                        self.bodyCRC = dict["BodyCRC"] as! Int32
                    }
                    if dict.keys.contains("BornHost") && dict["BornHost"] != nil {
                        self.bornHost = dict["BornHost"] as! String
                    }
                    if dict.keys.contains("BornTimestamp") && dict["BornTimestamp"] != nil {
                        self.bornTimestamp = dict["BornTimestamp"] as! Int64
                    }
                    if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                        self.instanceId = dict["InstanceId"] as! String
                    }
                    if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                        self.msgId = dict["MsgId"] as! String
                    }
                    if dict.keys.contains("PropertyList") && dict["PropertyList"] != nil {
                        var model = OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList()
                        model.fromMap(dict["PropertyList"] as! [String: Any])
                        self.propertyList = model
                    }
                    if dict.keys.contains("ReconsumeTimes") && dict["ReconsumeTimes"] != nil {
                        self.reconsumeTimes = dict["ReconsumeTimes"] as! Int32
                    }
                    if dict.keys.contains("StoreHost") && dict["StoreHost"] != nil {
                        self.storeHost = dict["StoreHost"] as! String
                    }
                    if dict.keys.contains("StoreSize") && dict["StoreSize"] != nil {
                        self.storeSize = dict["StoreSize"] as! Int32
                    }
                    if dict.keys.contains("StoreTimestamp") && dict["StoreTimestamp"] != nil {
                        self.storeTimestamp = dict["StoreTimestamp"] as! Int64
                    }
                    if dict.keys.contains("Topic") && dict["Topic"] != nil {
                        self.topic = dict["Topic"] as! String
                    }
                }
            }
            public var onsRestMessageDo: [OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.onsRestMessageDo != nil {
                    var tmp : [Any] = []
                    for k in self.onsRestMessageDo! {
                        tmp.append(k.toMap())
                    }
                    map["OnsRestMessageDo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OnsRestMessageDo") && dict["OnsRestMessageDo"] != nil {
                    var tmp : [OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo] = []
                    for v in dict["OnsRestMessageDo"] as! [Any] {
                        var model = OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.onsRestMessageDo = tmp
                }
            }
        }
        public var currentPage: Int64?

        public var maxPageCount: Int64?

        public var msgFoundList: OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.msgFoundList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.maxPageCount != nil {
                map["MaxPageCount"] = self.maxPageCount!
            }
            if self.msgFoundList != nil {
                map["MsgFoundList"] = self.msgFoundList?.toMap()
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                self.currentPage = dict["CurrentPage"] as! Int64
            }
            if dict.keys.contains("MaxPageCount") && dict["MaxPageCount"] != nil {
                self.maxPageCount = dict["MaxPageCount"] as! Int64
            }
            if dict.keys.contains("MsgFoundList") && dict["MsgFoundList"] != nil {
                var model = OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList()
                model.fromMap(dict["MsgFoundList"] as! [String: Any])
                self.msgFoundList = model
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var msgFoundDo: OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.msgFoundDo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.msgFoundDo != nil {
            map["MsgFoundDo"] = self.msgFoundDo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MsgFoundDo") && dict["MsgFoundDo"] != nil {
            var model = OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo()
            model.fromMap(dict["MsgFoundDo"] as! [String: Any])
            self.msgFoundDo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsDLQMessagePageQueryByGroupIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsDLQMessagePageQueryByGroupIdResponseBody?

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
            var model = OnsDLQMessagePageQueryByGroupIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsDLQMessageResendByIdRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceId: String?

    public var msgId: String?

    public override init() {
        super.init()
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
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
            self.msgId = dict["MsgId"] as! String
        }
    }
}

public class OnsDLQMessageResendByIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var msgId: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! [String]
            }
        }
    }
    public var data: OnsDLQMessageResendByIdResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsDLQMessageResendByIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsDLQMessageResendByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsDLQMessageResendByIdResponseBody?

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
            var model = OnsDLQMessageResendByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsGroupConsumerUpdateRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceId: String?

    public var readEnable: Bool?

    public override init() {
        super.init()
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
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.readEnable != nil {
            map["ReadEnable"] = self.readEnable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ReadEnable") && dict["ReadEnable"] != nil {
            self.readEnable = dict["ReadEnable"] as! Bool
        }
    }
}

public class OnsGroupConsumerUpdateResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsGroupConsumerUpdateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsGroupConsumerUpdateResponseBody?

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
            var model = OnsGroupConsumerUpdateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsGroupCreateRequest : Tea.TeaModel {
    public var groupId: String?

    public var groupType: String?

    public var instanceId: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
            self.groupType = dict["GroupType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
    }
}

public class OnsGroupCreateResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsGroupCreateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsGroupCreateResponseBody?

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
            var model = OnsGroupCreateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsGroupDeleteRequest : Tea.TeaModel {
    public var groupId: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class OnsGroupDeleteResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsGroupDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsGroupDeleteResponseBody?

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
            var model = OnsGroupDeleteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsGroupListRequest : Tea.TeaModel {
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var groupId: String?

    public var groupType: String?

    public var instanceId: String?

    public var tag: [OnsGroupListRequest.Tag]?

    public override init() {
        super.init()
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
            map["GroupId"] = self.groupId!
        }
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
            self.groupType = dict["GroupType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [OnsGroupListRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = OnsGroupListRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class OnsGroupListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SubscribeInfoDo : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
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
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var tag: [OnsGroupListResponseBody.Data.SubscribeInfoDo.Tags.Tag]?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [OnsGroupListResponseBody.Data.SubscribeInfoDo.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = OnsGroupListResponseBody.Data.SubscribeInfoDo.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var createTime: Int64?

            public var groupId: String?

            public var groupType: String?

            public var independentNaming: Bool?

            public var instanceId: String?

            public var owner: String?

            public var remark: String?

            public var tags: OnsGroupListResponseBody.Data.SubscribeInfoDo.Tags?

            public var updateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupType != nil {
                    map["GroupType"] = self.groupType!
                }
                if self.independentNaming != nil {
                    map["IndependentNaming"] = self.independentNaming!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
                    self.groupType = dict["GroupType"] as! String
                }
                if dict.keys.contains("IndependentNaming") && dict["IndependentNaming"] != nil {
                    self.independentNaming = dict["IndependentNaming"] as! Bool
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Owner") && dict["Owner"] != nil {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = OnsGroupListResponseBody.Data.SubscribeInfoDo.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
            }
        }
        public var subscribeInfoDo: [OnsGroupListResponseBody.Data.SubscribeInfoDo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.subscribeInfoDo != nil {
                var tmp : [Any] = []
                for k in self.subscribeInfoDo! {
                    tmp.append(k.toMap())
                }
                map["SubscribeInfoDo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SubscribeInfoDo") && dict["SubscribeInfoDo"] != nil {
                var tmp : [OnsGroupListResponseBody.Data.SubscribeInfoDo] = []
                for v in dict["SubscribeInfoDo"] as! [Any] {
                    var model = OnsGroupListResponseBody.Data.SubscribeInfoDo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subscribeInfoDo = tmp
            }
        }
    }
    public var data: OnsGroupListResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsGroupListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsGroupListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsGroupListResponseBody?

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
            var model = OnsGroupListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsGroupSubDetailRequest : Tea.TeaModel {
    public var groupId: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class OnsGroupSubDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SubscriptionDataList : Tea.TeaModel {
            public class SubscriptionDataList : Tea.TeaModel {
                public var subString: String?

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
                    if self.subString != nil {
                        map["SubString"] = self.subString!
                    }
                    if self.topic != nil {
                        map["Topic"] = self.topic!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SubString") && dict["SubString"] != nil {
                        self.subString = dict["SubString"] as! String
                    }
                    if dict.keys.contains("Topic") && dict["Topic"] != nil {
                        self.topic = dict["Topic"] as! String
                    }
                }
            }
            public var subscriptionDataList: [OnsGroupSubDetailResponseBody.Data.SubscriptionDataList.SubscriptionDataList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.subscriptionDataList != nil {
                    var tmp : [Any] = []
                    for k in self.subscriptionDataList! {
                        tmp.append(k.toMap())
                    }
                    map["SubscriptionDataList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SubscriptionDataList") && dict["SubscriptionDataList"] != nil {
                    var tmp : [OnsGroupSubDetailResponseBody.Data.SubscriptionDataList.SubscriptionDataList] = []
                    for v in dict["SubscriptionDataList"] as! [Any] {
                        var model = OnsGroupSubDetailResponseBody.Data.SubscriptionDataList.SubscriptionDataList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.subscriptionDataList = tmp
                }
            }
        }
        public var groupId: String?

        public var messageModel: String?

        public var online: Bool?

        public var subscriptionDataList: OnsGroupSubDetailResponseBody.Data.SubscriptionDataList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.subscriptionDataList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.messageModel != nil {
                map["MessageModel"] = self.messageModel!
            }
            if self.online != nil {
                map["Online"] = self.online!
            }
            if self.subscriptionDataList != nil {
                map["SubscriptionDataList"] = self.subscriptionDataList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("MessageModel") && dict["MessageModel"] != nil {
                self.messageModel = dict["MessageModel"] as! String
            }
            if dict.keys.contains("Online") && dict["Online"] != nil {
                self.online = dict["Online"] as! Bool
            }
            if dict.keys.contains("SubscriptionDataList") && dict["SubscriptionDataList"] != nil {
                var model = OnsGroupSubDetailResponseBody.Data.SubscriptionDataList()
                model.fromMap(dict["SubscriptionDataList"] as! [String: Any])
                self.subscriptionDataList = model
            }
        }
    }
    public var data: OnsGroupSubDetailResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsGroupSubDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsGroupSubDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsGroupSubDetailResponseBody?

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
            var model = OnsGroupSubDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsInstanceBaseInfoRequest : Tea.TeaModel {
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
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class OnsInstanceBaseInfoResponseBody : Tea.TeaModel {
    public class InstanceBaseInfo : Tea.TeaModel {
        public class Endpoints : Tea.TeaModel {
            public var httpInternalEndpoint: String?

            public var httpInternetEndpoint: String?

            public var httpInternetSecureEndpoint: String?

            public var tcpEndpoint: String?

            public var tcpInternetEndpoint: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.httpInternalEndpoint != nil {
                    map["HttpInternalEndpoint"] = self.httpInternalEndpoint!
                }
                if self.httpInternetEndpoint != nil {
                    map["HttpInternetEndpoint"] = self.httpInternetEndpoint!
                }
                if self.httpInternetSecureEndpoint != nil {
                    map["HttpInternetSecureEndpoint"] = self.httpInternetSecureEndpoint!
                }
                if self.tcpEndpoint != nil {
                    map["TcpEndpoint"] = self.tcpEndpoint!
                }
                if self.tcpInternetEndpoint != nil {
                    map["TcpInternetEndpoint"] = self.tcpInternetEndpoint!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HttpInternalEndpoint") && dict["HttpInternalEndpoint"] != nil {
                    self.httpInternalEndpoint = dict["HttpInternalEndpoint"] as! String
                }
                if dict.keys.contains("HttpInternetEndpoint") && dict["HttpInternetEndpoint"] != nil {
                    self.httpInternetEndpoint = dict["HttpInternetEndpoint"] as! String
                }
                if dict.keys.contains("HttpInternetSecureEndpoint") && dict["HttpInternetSecureEndpoint"] != nil {
                    self.httpInternetSecureEndpoint = dict["HttpInternetSecureEndpoint"] as! String
                }
                if dict.keys.contains("TcpEndpoint") && dict["TcpEndpoint"] != nil {
                    self.tcpEndpoint = dict["TcpEndpoint"] as! String
                }
                if dict.keys.contains("TcpInternetEndpoint") && dict["TcpInternetEndpoint"] != nil {
                    self.tcpInternetEndpoint = dict["TcpInternetEndpoint"] as! String
                }
            }
        }
        public var createTime: String?

        public var endpoints: OnsInstanceBaseInfoResponseBody.InstanceBaseInfo.Endpoints?

        public var independentNaming: Bool?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceStatus: Int32?

        public var instanceType: Int32?

        public var maxTps: Int64?

        public var releaseTime: Int64?

        public var remark: String?

        public var topicCapacity: Int32?

        public var spInstanceId: String?

        public var spInstanceType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.endpoints?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endpoints != nil {
                map["Endpoints"] = self.endpoints?.toMap()
            }
            if self.independentNaming != nil {
                map["IndependentNaming"] = self.independentNaming!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.maxTps != nil {
                map["MaxTps"] = self.maxTps!
            }
            if self.releaseTime != nil {
                map["ReleaseTime"] = self.releaseTime!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.topicCapacity != nil {
                map["TopicCapacity"] = self.topicCapacity!
            }
            if self.spInstanceId != nil {
                map["spInstanceId"] = self.spInstanceId!
            }
            if self.spInstanceType != nil {
                map["spInstanceType"] = self.spInstanceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Endpoints") && dict["Endpoints"] != nil {
                var model = OnsInstanceBaseInfoResponseBody.InstanceBaseInfo.Endpoints()
                model.fromMap(dict["Endpoints"] as! [String: Any])
                self.endpoints = model
            }
            if dict.keys.contains("IndependentNaming") && dict["IndependentNaming"] != nil {
                self.independentNaming = dict["IndependentNaming"] as! Bool
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("InstanceStatus") && dict["InstanceStatus"] != nil {
                self.instanceStatus = dict["InstanceStatus"] as! Int32
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! Int32
            }
            if dict.keys.contains("MaxTps") && dict["MaxTps"] != nil {
                self.maxTps = dict["MaxTps"] as! Int64
            }
            if dict.keys.contains("ReleaseTime") && dict["ReleaseTime"] != nil {
                self.releaseTime = dict["ReleaseTime"] as! Int64
            }
            if dict.keys.contains("Remark") && dict["Remark"] != nil {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("TopicCapacity") && dict["TopicCapacity"] != nil {
                self.topicCapacity = dict["TopicCapacity"] as! Int32
            }
            if dict.keys.contains("spInstanceId") && dict["spInstanceId"] != nil {
                self.spInstanceId = dict["spInstanceId"] as! String
            }
            if dict.keys.contains("spInstanceType") && dict["spInstanceType"] != nil {
                self.spInstanceType = dict["spInstanceType"] as! Int32
            }
        }
    }
    public var instanceBaseInfo: OnsInstanceBaseInfoResponseBody.InstanceBaseInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceBaseInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceBaseInfo != nil {
            map["InstanceBaseInfo"] = self.instanceBaseInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceBaseInfo") && dict["InstanceBaseInfo"] != nil {
            var model = OnsInstanceBaseInfoResponseBody.InstanceBaseInfo()
            model.fromMap(dict["InstanceBaseInfo"] as! [String: Any])
            self.instanceBaseInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsInstanceBaseInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsInstanceBaseInfoResponseBody?

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
            var model = OnsInstanceBaseInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsInstanceCreateRequest : Tea.TeaModel {
    public var instanceName: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
    }
}

public class OnsInstanceCreateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var instanceType: Int32?

        public override init() {
            super.init()
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
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                self.instanceType = dict["InstanceType"] as! Int32
            }
        }
    }
    public var data: OnsInstanceCreateResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsInstanceCreateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsInstanceCreateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsInstanceCreateResponseBody?

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
            var model = OnsInstanceCreateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsInstanceDeleteRequest : Tea.TeaModel {
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
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class OnsInstanceDeleteResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsInstanceDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsInstanceDeleteResponseBody?

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
            var model = OnsInstanceDeleteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsInstanceInServiceListRequest : Tea.TeaModel {
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var needResourceInfo: Bool?

    public var tag: [OnsInstanceInServiceListRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needResourceInfo != nil {
            map["NeedResourceInfo"] = self.needResourceInfo!
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
        if dict.keys.contains("NeedResourceInfo") && dict["NeedResourceInfo"] != nil {
            self.needResourceInfo = dict["NeedResourceInfo"] as! Bool
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [OnsInstanceInServiceListRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = OnsInstanceInServiceListRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class OnsInstanceInServiceListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InstanceVO : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
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
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var tag: [OnsInstanceInServiceListResponseBody.Data.InstanceVO.Tags.Tag]?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [OnsInstanceInServiceListResponseBody.Data.InstanceVO.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = OnsInstanceInServiceListResponseBody.Data.InstanceVO.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var createTime: Int64?

            public var groupCount: Int32?

            public var independentNaming: Bool?

            public var instanceId: String?

            public var instanceName: String?

            public var instanceStatus: Int32?

            public var instanceType: Int32?

            public var releaseTime: Int64?

            public var tags: OnsInstanceInServiceListResponseBody.Data.InstanceVO.Tags?

            public var topicCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.groupCount != nil {
                    map["GroupCount"] = self.groupCount!
                }
                if self.independentNaming != nil {
                    map["IndependentNaming"] = self.independentNaming!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.instanceStatus != nil {
                    map["InstanceStatus"] = self.instanceStatus!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.releaseTime != nil {
                    map["ReleaseTime"] = self.releaseTime!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.topicCount != nil {
                    map["TopicCount"] = self.topicCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("GroupCount") && dict["GroupCount"] != nil {
                    self.groupCount = dict["GroupCount"] as! Int32
                }
                if dict.keys.contains("IndependentNaming") && dict["IndependentNaming"] != nil {
                    self.independentNaming = dict["IndependentNaming"] as! Bool
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("InstanceStatus") && dict["InstanceStatus"] != nil {
                    self.instanceStatus = dict["InstanceStatus"] as! Int32
                }
                if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                    self.instanceType = dict["InstanceType"] as! Int32
                }
                if dict.keys.contains("ReleaseTime") && dict["ReleaseTime"] != nil {
                    self.releaseTime = dict["ReleaseTime"] as! Int64
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = OnsInstanceInServiceListResponseBody.Data.InstanceVO.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("TopicCount") && dict["TopicCount"] != nil {
                    self.topicCount = dict["TopicCount"] as! Int32
                }
            }
        }
        public var instanceVO: [OnsInstanceInServiceListResponseBody.Data.InstanceVO]?

        public override init() {
            super.init()
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
            if dict.keys.contains("InstanceVO") && dict["InstanceVO"] != nil {
                var tmp : [OnsInstanceInServiceListResponseBody.Data.InstanceVO] = []
                for v in dict["InstanceVO"] as! [Any] {
                    var model = OnsInstanceInServiceListResponseBody.Data.InstanceVO()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instanceVO = tmp
            }
        }
    }
    public var data: OnsInstanceInServiceListResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsInstanceInServiceListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsInstanceInServiceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsInstanceInServiceListResponseBody?

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
            var model = OnsInstanceInServiceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsInstanceUpdateRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instanceName: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
    }
}

public class OnsInstanceUpdateResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsInstanceUpdateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsInstanceUpdateResponseBody?

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
            var model = OnsInstanceUpdateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsMessageDetailRequest : Tea.TeaModel {
    public var instanceId: String?

    public var msgId: String?

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
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
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
        if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
            self.msgId = dict["MsgId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class OnsMessageDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PropertyList : Tea.TeaModel {
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
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var body: String?

        public var bodyCRC: Int32?

        public var bodyStr: String?

        public var bornHost: String?

        public var bornTimestamp: Int64?

        public var instanceId: String?

        public var msgId: String?

        public var propertyList: [OnsMessageDetailResponseBody.Data.PropertyList]?

        public var reconsumeTimes: Int32?

        public var storeHost: String?

        public var storeSize: Int32?

        public var storeTimestamp: Int64?

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
            if self.body != nil {
                map["Body"] = self.body!
            }
            if self.bodyCRC != nil {
                map["BodyCRC"] = self.bodyCRC!
            }
            if self.bodyStr != nil {
                map["BodyStr"] = self.bodyStr!
            }
            if self.bornHost != nil {
                map["BornHost"] = self.bornHost!
            }
            if self.bornTimestamp != nil {
                map["BornTimestamp"] = self.bornTimestamp!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            if self.propertyList != nil {
                var tmp : [Any] = []
                for k in self.propertyList! {
                    tmp.append(k.toMap())
                }
                map["PropertyList"] = tmp
            }
            if self.reconsumeTimes != nil {
                map["ReconsumeTimes"] = self.reconsumeTimes!
            }
            if self.storeHost != nil {
                map["StoreHost"] = self.storeHost!
            }
            if self.storeSize != nil {
                map["StoreSize"] = self.storeSize!
            }
            if self.storeTimestamp != nil {
                map["StoreTimestamp"] = self.storeTimestamp!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Body") && dict["Body"] != nil {
                self.body = dict["Body"] as! String
            }
            if dict.keys.contains("BodyCRC") && dict["BodyCRC"] != nil {
                self.bodyCRC = dict["BodyCRC"] as! Int32
            }
            if dict.keys.contains("BodyStr") && dict["BodyStr"] != nil {
                self.bodyStr = dict["BodyStr"] as! String
            }
            if dict.keys.contains("BornHost") && dict["BornHost"] != nil {
                self.bornHost = dict["BornHost"] as! String
            }
            if dict.keys.contains("BornTimestamp") && dict["BornTimestamp"] != nil {
                self.bornTimestamp = dict["BornTimestamp"] as! Int64
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! String
            }
            if dict.keys.contains("PropertyList") && dict["PropertyList"] != nil {
                var tmp : [OnsMessageDetailResponseBody.Data.PropertyList] = []
                for v in dict["PropertyList"] as! [Any] {
                    var model = OnsMessageDetailResponseBody.Data.PropertyList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.propertyList = tmp
            }
            if dict.keys.contains("ReconsumeTimes") && dict["ReconsumeTimes"] != nil {
                self.reconsumeTimes = dict["ReconsumeTimes"] as! Int32
            }
            if dict.keys.contains("StoreHost") && dict["StoreHost"] != nil {
                self.storeHost = dict["StoreHost"] as! String
            }
            if dict.keys.contains("StoreSize") && dict["StoreSize"] != nil {
                self.storeSize = dict["StoreSize"] as! Int32
            }
            if dict.keys.contains("StoreTimestamp") && dict["StoreTimestamp"] != nil {
                self.storeTimestamp = dict["StoreTimestamp"] as! Int64
            }
            if dict.keys.contains("Topic") && dict["Topic"] != nil {
                self.topic = dict["Topic"] as! String
            }
        }
    }
    public var data: OnsMessageDetailResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsMessageDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsMessageDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsMessageDetailResponseBody?

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
            var model = OnsMessageDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsMessageGetByKeyRequest : Tea.TeaModel {
    public var instanceId: String?

    public var key: String?

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
        if self.key != nil {
            map["Key"] = self.key!
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
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class OnsMessageGetByKeyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OnsRestMessageDo : Tea.TeaModel {
            public class PropertyList : Tea.TeaModel {
                public class MessageProperty : Tea.TeaModel {
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
                            map["Name"] = self.name!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Name") && dict["Name"] != nil {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var messageProperty: [OnsMessageGetByKeyResponseBody.Data.OnsRestMessageDo.PropertyList.MessageProperty]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.messageProperty != nil {
                        var tmp : [Any] = []
                        for k in self.messageProperty! {
                            tmp.append(k.toMap())
                        }
                        map["MessageProperty"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MessageProperty") && dict["MessageProperty"] != nil {
                        var tmp : [OnsMessageGetByKeyResponseBody.Data.OnsRestMessageDo.PropertyList.MessageProperty] = []
                        for v in dict["MessageProperty"] as! [Any] {
                            var model = OnsMessageGetByKeyResponseBody.Data.OnsRestMessageDo.PropertyList.MessageProperty()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.messageProperty = tmp
                    }
                }
            }
            public var bodyCRC: Int32?

            public var bornHost: String?

            public var bornTimestamp: Int64?

            public var instanceId: String?

            public var msgId: String?

            public var propertyList: OnsMessageGetByKeyResponseBody.Data.OnsRestMessageDo.PropertyList?

            public var reconsumeTimes: Int32?

            public var storeHost: String?

            public var storeSize: Int32?

            public var storeTimestamp: Int64?

            public var topic: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.propertyList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bodyCRC != nil {
                    map["BodyCRC"] = self.bodyCRC!
                }
                if self.bornHost != nil {
                    map["BornHost"] = self.bornHost!
                }
                if self.bornTimestamp != nil {
                    map["BornTimestamp"] = self.bornTimestamp!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.msgId != nil {
                    map["MsgId"] = self.msgId!
                }
                if self.propertyList != nil {
                    map["PropertyList"] = self.propertyList?.toMap()
                }
                if self.reconsumeTimes != nil {
                    map["ReconsumeTimes"] = self.reconsumeTimes!
                }
                if self.storeHost != nil {
                    map["StoreHost"] = self.storeHost!
                }
                if self.storeSize != nil {
                    map["StoreSize"] = self.storeSize!
                }
                if self.storeTimestamp != nil {
                    map["StoreTimestamp"] = self.storeTimestamp!
                }
                if self.topic != nil {
                    map["Topic"] = self.topic!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BodyCRC") && dict["BodyCRC"] != nil {
                    self.bodyCRC = dict["BodyCRC"] as! Int32
                }
                if dict.keys.contains("BornHost") && dict["BornHost"] != nil {
                    self.bornHost = dict["BornHost"] as! String
                }
                if dict.keys.contains("BornTimestamp") && dict["BornTimestamp"] != nil {
                    self.bornTimestamp = dict["BornTimestamp"] as! Int64
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                    self.msgId = dict["MsgId"] as! String
                }
                if dict.keys.contains("PropertyList") && dict["PropertyList"] != nil {
                    var model = OnsMessageGetByKeyResponseBody.Data.OnsRestMessageDo.PropertyList()
                    model.fromMap(dict["PropertyList"] as! [String: Any])
                    self.propertyList = model
                }
                if dict.keys.contains("ReconsumeTimes") && dict["ReconsumeTimes"] != nil {
                    self.reconsumeTimes = dict["ReconsumeTimes"] as! Int32
                }
                if dict.keys.contains("StoreHost") && dict["StoreHost"] != nil {
                    self.storeHost = dict["StoreHost"] as! String
                }
                if dict.keys.contains("StoreSize") && dict["StoreSize"] != nil {
                    self.storeSize = dict["StoreSize"] as! Int32
                }
                if dict.keys.contains("StoreTimestamp") && dict["StoreTimestamp"] != nil {
                    self.storeTimestamp = dict["StoreTimestamp"] as! Int64
                }
                if dict.keys.contains("Topic") && dict["Topic"] != nil {
                    self.topic = dict["Topic"] as! String
                }
            }
        }
        public var onsRestMessageDo: [OnsMessageGetByKeyResponseBody.Data.OnsRestMessageDo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.onsRestMessageDo != nil {
                var tmp : [Any] = []
                for k in self.onsRestMessageDo! {
                    tmp.append(k.toMap())
                }
                map["OnsRestMessageDo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OnsRestMessageDo") && dict["OnsRestMessageDo"] != nil {
                var tmp : [OnsMessageGetByKeyResponseBody.Data.OnsRestMessageDo] = []
                for v in dict["OnsRestMessageDo"] as! [Any] {
                    var model = OnsMessageGetByKeyResponseBody.Data.OnsRestMessageDo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.onsRestMessageDo = tmp
            }
        }
    }
    public var data: OnsMessageGetByKeyResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsMessageGetByKeyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsMessageGetByKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsMessageGetByKeyResponseBody?

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
            var model = OnsMessageGetByKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsMessageGetByMsgIdRequest : Tea.TeaModel {
    public var instanceId: String?

    public var msgId: String?

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
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
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
        if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
            self.msgId = dict["MsgId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class OnsMessageGetByMsgIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PropertyList : Tea.TeaModel {
            public class MessageProperty : Tea.TeaModel {
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
                        map["Name"] = self.name!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var messageProperty: [OnsMessageGetByMsgIdResponseBody.Data.PropertyList.MessageProperty]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.messageProperty != nil {
                    var tmp : [Any] = []
                    for k in self.messageProperty! {
                        tmp.append(k.toMap())
                    }
                    map["MessageProperty"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MessageProperty") && dict["MessageProperty"] != nil {
                    var tmp : [OnsMessageGetByMsgIdResponseBody.Data.PropertyList.MessageProperty] = []
                    for v in dict["MessageProperty"] as! [Any] {
                        var model = OnsMessageGetByMsgIdResponseBody.Data.PropertyList.MessageProperty()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.messageProperty = tmp
                }
            }
        }
        public var bodyCRC: Int32?

        public var bornHost: String?

        public var bornTimestamp: Int64?

        public var instanceId: String?

        public var msgId: String?

        public var propertyList: OnsMessageGetByMsgIdResponseBody.Data.PropertyList?

        public var reconsumeTimes: Int32?

        public var storeHost: String?

        public var storeSize: Int32?

        public var storeTimestamp: Int64?

        public var topic: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.propertyList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bodyCRC != nil {
                map["BodyCRC"] = self.bodyCRC!
            }
            if self.bornHost != nil {
                map["BornHost"] = self.bornHost!
            }
            if self.bornTimestamp != nil {
                map["BornTimestamp"] = self.bornTimestamp!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            if self.propertyList != nil {
                map["PropertyList"] = self.propertyList?.toMap()
            }
            if self.reconsumeTimes != nil {
                map["ReconsumeTimes"] = self.reconsumeTimes!
            }
            if self.storeHost != nil {
                map["StoreHost"] = self.storeHost!
            }
            if self.storeSize != nil {
                map["StoreSize"] = self.storeSize!
            }
            if self.storeTimestamp != nil {
                map["StoreTimestamp"] = self.storeTimestamp!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BodyCRC") && dict["BodyCRC"] != nil {
                self.bodyCRC = dict["BodyCRC"] as! Int32
            }
            if dict.keys.contains("BornHost") && dict["BornHost"] != nil {
                self.bornHost = dict["BornHost"] as! String
            }
            if dict.keys.contains("BornTimestamp") && dict["BornTimestamp"] != nil {
                self.bornTimestamp = dict["BornTimestamp"] as! Int64
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! String
            }
            if dict.keys.contains("PropertyList") && dict["PropertyList"] != nil {
                var model = OnsMessageGetByMsgIdResponseBody.Data.PropertyList()
                model.fromMap(dict["PropertyList"] as! [String: Any])
                self.propertyList = model
            }
            if dict.keys.contains("ReconsumeTimes") && dict["ReconsumeTimes"] != nil {
                self.reconsumeTimes = dict["ReconsumeTimes"] as! Int32
            }
            if dict.keys.contains("StoreHost") && dict["StoreHost"] != nil {
                self.storeHost = dict["StoreHost"] as! String
            }
            if dict.keys.contains("StoreSize") && dict["StoreSize"] != nil {
                self.storeSize = dict["StoreSize"] as! Int32
            }
            if dict.keys.contains("StoreTimestamp") && dict["StoreTimestamp"] != nil {
                self.storeTimestamp = dict["StoreTimestamp"] as! Int64
            }
            if dict.keys.contains("Topic") && dict["Topic"] != nil {
                self.topic = dict["Topic"] as! String
            }
        }
    }
    public var data: OnsMessageGetByMsgIdResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsMessageGetByMsgIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsMessageGetByMsgIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsMessageGetByMsgIdResponseBody?

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
            var model = OnsMessageGetByMsgIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsMessagePageQueryByTopicRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var instanceId: String?

    public var pageSize: Int32?

    public var taskId: String?

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
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class OnsMessagePageQueryByTopicResponseBody : Tea.TeaModel {
    public class MsgFoundDo : Tea.TeaModel {
        public class MsgFoundList : Tea.TeaModel {
            public class OnsRestMessageDo : Tea.TeaModel {
                public class PropertyList : Tea.TeaModel {
                    public class MessageProperty : Tea.TeaModel {
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
                                map["Name"] = self.name!
                            }
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Name") && dict["Name"] != nil {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("Value") && dict["Value"] != nil {
                                self.value = dict["Value"] as! String
                            }
                        }
                    }
                    public var messageProperty: [OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList.MessageProperty]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.messageProperty != nil {
                            var tmp : [Any] = []
                            for k in self.messageProperty! {
                                tmp.append(k.toMap())
                            }
                            map["MessageProperty"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("MessageProperty") && dict["MessageProperty"] != nil {
                            var tmp : [OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList.MessageProperty] = []
                            for v in dict["MessageProperty"] as! [Any] {
                                var model = OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList.MessageProperty()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.messageProperty = tmp
                        }
                    }
                }
                public var bodyCRC: Int32?

                public var bornHost: String?

                public var bornTimestamp: Int64?

                public var instanceId: String?

                public var msgId: String?

                public var propertyList: OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList?

                public var reconsumeTimes: Int32?

                public var storeHost: String?

                public var storeSize: Int32?

                public var storeTimestamp: Int64?

                public var topic: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.propertyList?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bodyCRC != nil {
                        map["BodyCRC"] = self.bodyCRC!
                    }
                    if self.bornHost != nil {
                        map["BornHost"] = self.bornHost!
                    }
                    if self.bornTimestamp != nil {
                        map["BornTimestamp"] = self.bornTimestamp!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    if self.msgId != nil {
                        map["MsgId"] = self.msgId!
                    }
                    if self.propertyList != nil {
                        map["PropertyList"] = self.propertyList?.toMap()
                    }
                    if self.reconsumeTimes != nil {
                        map["ReconsumeTimes"] = self.reconsumeTimes!
                    }
                    if self.storeHost != nil {
                        map["StoreHost"] = self.storeHost!
                    }
                    if self.storeSize != nil {
                        map["StoreSize"] = self.storeSize!
                    }
                    if self.storeTimestamp != nil {
                        map["StoreTimestamp"] = self.storeTimestamp!
                    }
                    if self.topic != nil {
                        map["Topic"] = self.topic!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BodyCRC") && dict["BodyCRC"] != nil {
                        self.bodyCRC = dict["BodyCRC"] as! Int32
                    }
                    if dict.keys.contains("BornHost") && dict["BornHost"] != nil {
                        self.bornHost = dict["BornHost"] as! String
                    }
                    if dict.keys.contains("BornTimestamp") && dict["BornTimestamp"] != nil {
                        self.bornTimestamp = dict["BornTimestamp"] as! Int64
                    }
                    if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                        self.instanceId = dict["InstanceId"] as! String
                    }
                    if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                        self.msgId = dict["MsgId"] as! String
                    }
                    if dict.keys.contains("PropertyList") && dict["PropertyList"] != nil {
                        var model = OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList()
                        model.fromMap(dict["PropertyList"] as! [String: Any])
                        self.propertyList = model
                    }
                    if dict.keys.contains("ReconsumeTimes") && dict["ReconsumeTimes"] != nil {
                        self.reconsumeTimes = dict["ReconsumeTimes"] as! Int32
                    }
                    if dict.keys.contains("StoreHost") && dict["StoreHost"] != nil {
                        self.storeHost = dict["StoreHost"] as! String
                    }
                    if dict.keys.contains("StoreSize") && dict["StoreSize"] != nil {
                        self.storeSize = dict["StoreSize"] as! Int32
                    }
                    if dict.keys.contains("StoreTimestamp") && dict["StoreTimestamp"] != nil {
                        self.storeTimestamp = dict["StoreTimestamp"] as! Int64
                    }
                    if dict.keys.contains("Topic") && dict["Topic"] != nil {
                        self.topic = dict["Topic"] as! String
                    }
                }
            }
            public var onsRestMessageDo: [OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.onsRestMessageDo != nil {
                    var tmp : [Any] = []
                    for k in self.onsRestMessageDo! {
                        tmp.append(k.toMap())
                    }
                    map["OnsRestMessageDo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OnsRestMessageDo") && dict["OnsRestMessageDo"] != nil {
                    var tmp : [OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo] = []
                    for v in dict["OnsRestMessageDo"] as! [Any] {
                        var model = OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.onsRestMessageDo = tmp
                }
            }
        }
        public var currentPage: Int64?

        public var maxPageCount: Int64?

        public var msgFoundList: OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.msgFoundList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.maxPageCount != nil {
                map["MaxPageCount"] = self.maxPageCount!
            }
            if self.msgFoundList != nil {
                map["MsgFoundList"] = self.msgFoundList?.toMap()
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
                self.currentPage = dict["CurrentPage"] as! Int64
            }
            if dict.keys.contains("MaxPageCount") && dict["MaxPageCount"] != nil {
                self.maxPageCount = dict["MaxPageCount"] as! Int64
            }
            if dict.keys.contains("MsgFoundList") && dict["MsgFoundList"] != nil {
                var model = OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList()
                model.fromMap(dict["MsgFoundList"] as! [String: Any])
                self.msgFoundList = model
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var msgFoundDo: OnsMessagePageQueryByTopicResponseBody.MsgFoundDo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.msgFoundDo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.msgFoundDo != nil {
            map["MsgFoundDo"] = self.msgFoundDo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MsgFoundDo") && dict["MsgFoundDo"] != nil {
            var model = OnsMessagePageQueryByTopicResponseBody.MsgFoundDo()
            model.fromMap(dict["MsgFoundDo"] as! [String: Any])
            self.msgFoundDo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsMessagePageQueryByTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsMessagePageQueryByTopicResponseBody?

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
            var model = OnsMessagePageQueryByTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsMessagePushRequest : Tea.TeaModel {
    public var clientId: String?

    public var groupId: String?

    public var instanceId: String?

    public var msgId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
            self.msgId = dict["MsgId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class OnsMessagePushResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsMessagePushResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsMessagePushResponseBody?

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
            var model = OnsMessagePushResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsMessageTraceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var msgId: String?

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
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
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
        if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
            self.msgId = dict["MsgId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class OnsMessageTraceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class MessageTrack : Tea.TeaModel {
            public var consumerGroup: String?

            public var instanceId: String?

            public var trackType: String?

            public override init() {
                super.init()
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
                if self.trackType != nil {
                    map["TrackType"] = self.trackType!
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
                if dict.keys.contains("TrackType") && dict["TrackType"] != nil {
                    self.trackType = dict["TrackType"] as! String
                }
            }
        }
        public var messageTrack: [OnsMessageTraceResponseBody.Data.MessageTrack]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.messageTrack != nil {
                var tmp : [Any] = []
                for k in self.messageTrack! {
                    tmp.append(k.toMap())
                }
                map["MessageTrack"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MessageTrack") && dict["MessageTrack"] != nil {
                var tmp : [OnsMessageTraceResponseBody.Data.MessageTrack] = []
                for v in dict["MessageTrack"] as! [Any] {
                    var model = OnsMessageTraceResponseBody.Data.MessageTrack()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.messageTrack = tmp
            }
        }
    }
    public var data: OnsMessageTraceResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsMessageTraceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsMessageTraceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsMessageTraceResponseBody?

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
            var model = OnsMessageTraceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsRegionListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RegionDo : Tea.TeaModel {
            public var onsRegionId: String?

            public var regionName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.onsRegionId != nil {
                    map["OnsRegionId"] = self.onsRegionId!
                }
                if self.regionName != nil {
                    map["RegionName"] = self.regionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OnsRegionId") && dict["OnsRegionId"] != nil {
                    self.onsRegionId = dict["OnsRegionId"] as! String
                }
                if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
                    self.regionName = dict["RegionName"] as! String
                }
            }
        }
        public var regionDo: [OnsRegionListResponseBody.Data.RegionDo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regionDo != nil {
                var tmp : [Any] = []
                for k in self.regionDo! {
                    tmp.append(k.toMap())
                }
                map["RegionDo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionDo") && dict["RegionDo"] != nil {
                var tmp : [OnsRegionListResponseBody.Data.RegionDo] = []
                for v in dict["RegionDo"] as! [Any] {
                    var model = OnsRegionListResponseBody.Data.RegionDo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.regionDo = tmp
            }
        }
    }
    public var data: OnsRegionListResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsRegionListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsRegionListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsRegionListResponseBody?

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
            var model = OnsRegionListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsTopicCreateRequest : Tea.TeaModel {
    public var instanceId: String?

    public var messageType: Int32?

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
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MessageType") && dict["MessageType"] != nil {
            self.messageType = dict["MessageType"] as! Int32
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class OnsTopicCreateResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsTopicCreateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsTopicCreateResponseBody?

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
            var model = OnsTopicCreateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsTopicDeleteRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class OnsTopicDeleteResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsTopicDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsTopicDeleteResponseBody?

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
            var model = OnsTopicDeleteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsTopicListRequest : Tea.TeaModel {
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var instanceId: String?

    public var tag: [OnsTopicListRequest.Tag]?

    public var topic: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [OnsTopicListRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = OnsTopicListRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class OnsTopicListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PublishInfoDo : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
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
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var tag: [OnsTopicListResponseBody.Data.PublishInfoDo.Tags.Tag]?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [OnsTopicListResponseBody.Data.PublishInfoDo.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = OnsTopicListResponseBody.Data.PublishInfoDo.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var createTime: Int64?

            public var independentNaming: Bool?

            public var instanceId: String?

            public var messageType: Int32?

            public var owner: String?

            public var relation: Int32?

            public var relationName: String?

            public var remark: String?

            public var serviceStatus: Int32?

            public var tags: OnsTopicListResponseBody.Data.PublishInfoDo.Tags?

            public var topic: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.independentNaming != nil {
                    map["IndependentNaming"] = self.independentNaming!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.messageType != nil {
                    map["MessageType"] = self.messageType!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.relation != nil {
                    map["Relation"] = self.relation!
                }
                if self.relationName != nil {
                    map["RelationName"] = self.relationName!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.serviceStatus != nil {
                    map["ServiceStatus"] = self.serviceStatus!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.topic != nil {
                    map["Topic"] = self.topic!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("IndependentNaming") && dict["IndependentNaming"] != nil {
                    self.independentNaming = dict["IndependentNaming"] as! Bool
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("MessageType") && dict["MessageType"] != nil {
                    self.messageType = dict["MessageType"] as! Int32
                }
                if dict.keys.contains("Owner") && dict["Owner"] != nil {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("Relation") && dict["Relation"] != nil {
                    self.relation = dict["Relation"] as! Int32
                }
                if dict.keys.contains("RelationName") && dict["RelationName"] != nil {
                    self.relationName = dict["RelationName"] as! String
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("ServiceStatus") && dict["ServiceStatus"] != nil {
                    self.serviceStatus = dict["ServiceStatus"] as! Int32
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = OnsTopicListResponseBody.Data.PublishInfoDo.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("Topic") && dict["Topic"] != nil {
                    self.topic = dict["Topic"] as! String
                }
            }
        }
        public var publishInfoDo: [OnsTopicListResponseBody.Data.PublishInfoDo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.publishInfoDo != nil {
                var tmp : [Any] = []
                for k in self.publishInfoDo! {
                    tmp.append(k.toMap())
                }
                map["PublishInfoDo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PublishInfoDo") && dict["PublishInfoDo"] != nil {
                var tmp : [OnsTopicListResponseBody.Data.PublishInfoDo] = []
                for v in dict["PublishInfoDo"] as! [Any] {
                    var model = OnsTopicListResponseBody.Data.PublishInfoDo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.publishInfoDo = tmp
            }
        }
    }
    public var data: OnsTopicListResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsTopicListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsTopicListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsTopicListResponseBody?

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
            var model = OnsTopicListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsTopicStatusRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class OnsTopicStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var lastTimeStamp: Int64?

        public var perm: Int32?

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
            if self.lastTimeStamp != nil {
                map["LastTimeStamp"] = self.lastTimeStamp!
            }
            if self.perm != nil {
                map["Perm"] = self.perm!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LastTimeStamp") && dict["LastTimeStamp"] != nil {
                self.lastTimeStamp = dict["LastTimeStamp"] as! Int64
            }
            if dict.keys.contains("Perm") && dict["Perm"] != nil {
                self.perm = dict["Perm"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: OnsTopicStatusResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsTopicStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsTopicStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsTopicStatusResponseBody?

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
            var model = OnsTopicStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsTopicSubDetailRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class OnsTopicSubDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SubscriptionDataList : Tea.TeaModel {
            public class SubscriptionDataList : Tea.TeaModel {
                public var groupId: String?

                public var messageModel: String?

                public var subString: String?

                public override init() {
                    super.init()
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
                        map["GroupId"] = self.groupId!
                    }
                    if self.messageModel != nil {
                        map["MessageModel"] = self.messageModel!
                    }
                    if self.subString != nil {
                        map["SubString"] = self.subString!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                        self.groupId = dict["GroupId"] as! String
                    }
                    if dict.keys.contains("MessageModel") && dict["MessageModel"] != nil {
                        self.messageModel = dict["MessageModel"] as! String
                    }
                    if dict.keys.contains("SubString") && dict["SubString"] != nil {
                        self.subString = dict["SubString"] as! String
                    }
                }
            }
            public var subscriptionDataList: [OnsTopicSubDetailResponseBody.Data.SubscriptionDataList.SubscriptionDataList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.subscriptionDataList != nil {
                    var tmp : [Any] = []
                    for k in self.subscriptionDataList! {
                        tmp.append(k.toMap())
                    }
                    map["SubscriptionDataList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SubscriptionDataList") && dict["SubscriptionDataList"] != nil {
                    var tmp : [OnsTopicSubDetailResponseBody.Data.SubscriptionDataList.SubscriptionDataList] = []
                    for v in dict["SubscriptionDataList"] as! [Any] {
                        var model = OnsTopicSubDetailResponseBody.Data.SubscriptionDataList.SubscriptionDataList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.subscriptionDataList = tmp
                }
            }
        }
        public var subscriptionDataList: OnsTopicSubDetailResponseBody.Data.SubscriptionDataList?

        public var topic: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.subscriptionDataList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.subscriptionDataList != nil {
                map["SubscriptionDataList"] = self.subscriptionDataList?.toMap()
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SubscriptionDataList") && dict["SubscriptionDataList"] != nil {
                var model = OnsTopicSubDetailResponseBody.Data.SubscriptionDataList()
                model.fromMap(dict["SubscriptionDataList"] as! [String: Any])
                self.subscriptionDataList = model
            }
            if dict.keys.contains("Topic") && dict["Topic"] != nil {
                self.topic = dict["Topic"] as! String
            }
        }
    }
    public var data: OnsTopicSubDetailResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsTopicSubDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsTopicSubDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsTopicSubDetailResponseBody?

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
            var model = OnsTopicSubDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsTopicUpdateRequest : Tea.TeaModel {
    public var instanceId: String?

    public var perm: Int32?

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
        if self.perm != nil {
            map["Perm"] = self.perm!
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
        if dict.keys.contains("Perm") && dict["Perm"] != nil {
            self.perm = dict["Perm"] as! Int32
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class OnsTopicUpdateResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsTopicUpdateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsTopicUpdateResponseBody?

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
            var model = OnsTopicUpdateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsTraceGetResultRequest : Tea.TeaModel {
    public var queryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QueryId") && dict["QueryId"] != nil {
            self.queryId = dict["QueryId"] as! String
        }
    }
}

public class OnsTraceGetResultResponseBody : Tea.TeaModel {
    public class TraceData : Tea.TeaModel {
        public class TraceList : Tea.TeaModel {
            public class TraceMapDo : Tea.TeaModel {
                public class SubList : Tea.TeaModel {
                    public class SubMapDo : Tea.TeaModel {
                        public class ClientList : Tea.TeaModel {
                            public class SubClientInfoDo : Tea.TeaModel {
                                public var clientHost: String?

                                public var costTime: Int32?

                                public var reconsumeTimes: Int32?

                                public var status: String?

                                public var subGroupName: String?

                                public var subTime: Int64?

                                public override init() {
                                    super.init()
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
                                        map["ClientHost"] = self.clientHost!
                                    }
                                    if self.costTime != nil {
                                        map["CostTime"] = self.costTime!
                                    }
                                    if self.reconsumeTimes != nil {
                                        map["ReconsumeTimes"] = self.reconsumeTimes!
                                    }
                                    if self.status != nil {
                                        map["Status"] = self.status!
                                    }
                                    if self.subGroupName != nil {
                                        map["SubGroupName"] = self.subGroupName!
                                    }
                                    if self.subTime != nil {
                                        map["SubTime"] = self.subTime!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("ClientHost") && dict["ClientHost"] != nil {
                                        self.clientHost = dict["ClientHost"] as! String
                                    }
                                    if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
                                        self.costTime = dict["CostTime"] as! Int32
                                    }
                                    if dict.keys.contains("ReconsumeTimes") && dict["ReconsumeTimes"] != nil {
                                        self.reconsumeTimes = dict["ReconsumeTimes"] as! Int32
                                    }
                                    if dict.keys.contains("Status") && dict["Status"] != nil {
                                        self.status = dict["Status"] as! String
                                    }
                                    if dict.keys.contains("SubGroupName") && dict["SubGroupName"] != nil {
                                        self.subGroupName = dict["SubGroupName"] as! String
                                    }
                                    if dict.keys.contains("SubTime") && dict["SubTime"] != nil {
                                        self.subTime = dict["SubTime"] as! Int64
                                    }
                                }
                            }
                            public var subClientInfoDo: [OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList.SubMapDo.ClientList.SubClientInfoDo]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.subClientInfoDo != nil {
                                    var tmp : [Any] = []
                                    for k in self.subClientInfoDo! {
                                        tmp.append(k.toMap())
                                    }
                                    map["SubClientInfoDo"] = tmp
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("SubClientInfoDo") && dict["SubClientInfoDo"] != nil {
                                    var tmp : [OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList.SubMapDo.ClientList.SubClientInfoDo] = []
                                    for v in dict["SubClientInfoDo"] as! [Any] {
                                        var model = OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList.SubMapDo.ClientList.SubClientInfoDo()
                                        if v != nil {
                                            model.fromMap(v as! [String: Any])
                                        }
                                        tmp.append(model)
                                    }
                                    self.subClientInfoDo = tmp
                                }
                            }
                        }
                        public var clientList: OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList.SubMapDo.ClientList?

                        public var failCount: Int32?

                        public var subGroupName: String?

                        public var successCount: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.clientList?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.clientList != nil {
                                map["ClientList"] = self.clientList?.toMap()
                            }
                            if self.failCount != nil {
                                map["FailCount"] = self.failCount!
                            }
                            if self.subGroupName != nil {
                                map["SubGroupName"] = self.subGroupName!
                            }
                            if self.successCount != nil {
                                map["SuccessCount"] = self.successCount!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ClientList") && dict["ClientList"] != nil {
                                var model = OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList.SubMapDo.ClientList()
                                model.fromMap(dict["ClientList"] as! [String: Any])
                                self.clientList = model
                            }
                            if dict.keys.contains("FailCount") && dict["FailCount"] != nil {
                                self.failCount = dict["FailCount"] as! Int32
                            }
                            if dict.keys.contains("SubGroupName") && dict["SubGroupName"] != nil {
                                self.subGroupName = dict["SubGroupName"] as! String
                            }
                            if dict.keys.contains("SuccessCount") && dict["SuccessCount"] != nil {
                                self.successCount = dict["SuccessCount"] as! Int32
                            }
                        }
                    }
                    public var subMapDo: [OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList.SubMapDo]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.subMapDo != nil {
                            var tmp : [Any] = []
                            for k in self.subMapDo! {
                                tmp.append(k.toMap())
                            }
                            map["SubMapDo"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("SubMapDo") && dict["SubMapDo"] != nil {
                            var tmp : [OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList.SubMapDo] = []
                            for v in dict["SubMapDo"] as! [Any] {
                                var model = OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList.SubMapDo()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.subMapDo = tmp
                        }
                    }
                }
                public var bornHost: String?

                public var costTime: Int32?

                public var msgId: String?

                public var msgKey: String?

                public var pubGroupName: String?

                public var pubTime: Int64?

                public var status: String?

                public var subList: OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList?

                public var tag: String?

                public var topic: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.subList?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bornHost != nil {
                        map["BornHost"] = self.bornHost!
                    }
                    if self.costTime != nil {
                        map["CostTime"] = self.costTime!
                    }
                    if self.msgId != nil {
                        map["MsgId"] = self.msgId!
                    }
                    if self.msgKey != nil {
                        map["MsgKey"] = self.msgKey!
                    }
                    if self.pubGroupName != nil {
                        map["PubGroupName"] = self.pubGroupName!
                    }
                    if self.pubTime != nil {
                        map["PubTime"] = self.pubTime!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.subList != nil {
                        map["SubList"] = self.subList?.toMap()
                    }
                    if self.tag != nil {
                        map["Tag"] = self.tag!
                    }
                    if self.topic != nil {
                        map["Topic"] = self.topic!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BornHost") && dict["BornHost"] != nil {
                        self.bornHost = dict["BornHost"] as! String
                    }
                    if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
                        self.costTime = dict["CostTime"] as! Int32
                    }
                    if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                        self.msgId = dict["MsgId"] as! String
                    }
                    if dict.keys.contains("MsgKey") && dict["MsgKey"] != nil {
                        self.msgKey = dict["MsgKey"] as! String
                    }
                    if dict.keys.contains("PubGroupName") && dict["PubGroupName"] != nil {
                        self.pubGroupName = dict["PubGroupName"] as! String
                    }
                    if dict.keys.contains("PubTime") && dict["PubTime"] != nil {
                        self.pubTime = dict["PubTime"] as! Int64
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("SubList") && dict["SubList"] != nil {
                        var model = OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList()
                        model.fromMap(dict["SubList"] as! [String: Any])
                        self.subList = model
                    }
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        self.tag = dict["Tag"] as! String
                    }
                    if dict.keys.contains("Topic") && dict["Topic"] != nil {
                        self.topic = dict["Topic"] as! String
                    }
                }
            }
            public var traceMapDo: [OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.traceMapDo != nil {
                    var tmp : [Any] = []
                    for k in self.traceMapDo! {
                        tmp.append(k.toMap())
                    }
                    map["TraceMapDo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TraceMapDo") && dict["TraceMapDo"] != nil {
                    var tmp : [OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo] = []
                    for v in dict["TraceMapDo"] as! [Any] {
                        var model = OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.traceMapDo = tmp
                }
            }
        }
        public var createTime: Int64?

        public var instanceId: String?

        public var msgId: String?

        public var msgKey: String?

        public var queryId: String?

        public var status: String?

        public var topic: String?

        public var traceList: OnsTraceGetResultResponseBody.TraceData.TraceList?

        public var updateTime: Int64?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.traceList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            if self.msgKey != nil {
                map["MsgKey"] = self.msgKey!
            }
            if self.queryId != nil {
                map["QueryId"] = self.queryId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            if self.traceList != nil {
                map["TraceList"] = self.traceList?.toMap()
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! String
            }
            if dict.keys.contains("MsgKey") && dict["MsgKey"] != nil {
                self.msgKey = dict["MsgKey"] as! String
            }
            if dict.keys.contains("QueryId") && dict["QueryId"] != nil {
                self.queryId = dict["QueryId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Topic") && dict["Topic"] != nil {
                self.topic = dict["Topic"] as! String
            }
            if dict.keys.contains("TraceList") && dict["TraceList"] != nil {
                var model = OnsTraceGetResultResponseBody.TraceData.TraceList()
                model.fromMap(dict["TraceList"] as! [String: Any])
                self.traceList = model
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var traceData: OnsTraceGetResultResponseBody.TraceData?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.traceData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceData != nil {
            map["TraceData"] = self.traceData?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TraceData") && dict["TraceData"] != nil {
            var model = OnsTraceGetResultResponseBody.TraceData()
            model.fromMap(dict["TraceData"] as! [String: Any])
            self.traceData = model
        }
    }
}

public class OnsTraceGetResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsTraceGetResultResponseBody?

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
            var model = OnsTraceGetResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsTraceQueryByMsgIdRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var endTime: Int64?

    public var instanceId: String?

    public var msgId: String?

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
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
            self.msgId = dict["MsgId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class OnsTraceQueryByMsgIdResponseBody : Tea.TeaModel {
    public var queryId: String?

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
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QueryId") && dict["QueryId"] != nil {
            self.queryId = dict["QueryId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsTraceQueryByMsgIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsTraceQueryByMsgIdResponseBody?

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
            var model = OnsTraceQueryByMsgIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsTraceQueryByMsgKeyRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var endTime: Int64?

    public var instanceId: String?

    public var msgKey: String?

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
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.msgKey != nil {
            map["MsgKey"] = self.msgKey!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MsgKey") && dict["MsgKey"] != nil {
            self.msgKey = dict["MsgKey"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class OnsTraceQueryByMsgKeyResponseBody : Tea.TeaModel {
    public var queryId: String?

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
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QueryId") && dict["QueryId"] != nil {
            self.queryId = dict["QueryId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsTraceQueryByMsgKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsTraceQueryByMsgKeyResponseBody?

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
            var model = OnsTraceQueryByMsgKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsTrendGroupOutputTpsRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var endTime: Int64?

    public var groupId: String?

    public var instanceId: String?

    public var period: Int64?

    public var topic: String?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int64
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! Int32
        }
    }
}

public class OnsTrendGroupOutputTpsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public class StatsDataDo : Tea.TeaModel {
                public var x: Int64?

                public var y: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("X") && dict["X"] != nil {
                        self.x = dict["X"] as! Int64
                    }
                    if dict.keys.contains("Y") && dict["Y"] != nil {
                        self.y = dict["Y"] as! Double
                    }
                }
            }
            public var statsDataDo: [OnsTrendGroupOutputTpsResponseBody.Data.Records.StatsDataDo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.statsDataDo != nil {
                    var tmp : [Any] = []
                    for k in self.statsDataDo! {
                        tmp.append(k.toMap())
                    }
                    map["StatsDataDo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("StatsDataDo") && dict["StatsDataDo"] != nil {
                    var tmp : [OnsTrendGroupOutputTpsResponseBody.Data.Records.StatsDataDo] = []
                    for v in dict["StatsDataDo"] as! [Any] {
                        var model = OnsTrendGroupOutputTpsResponseBody.Data.Records.StatsDataDo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.statsDataDo = tmp
                }
            }
        }
        public var records: OnsTrendGroupOutputTpsResponseBody.Data.Records?

        public var title: String?

        public var XUnit: String?

        public var YUnit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.records?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.records != nil {
                map["Records"] = self.records?.toMap()
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.XUnit != nil {
                map["XUnit"] = self.XUnit!
            }
            if self.YUnit != nil {
                map["YUnit"] = self.YUnit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Records") && dict["Records"] != nil {
                var model = OnsTrendGroupOutputTpsResponseBody.Data.Records()
                model.fromMap(dict["Records"] as! [String: Any])
                self.records = model
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("XUnit") && dict["XUnit"] != nil {
                self.XUnit = dict["XUnit"] as! String
            }
            if dict.keys.contains("YUnit") && dict["YUnit"] != nil {
                self.YUnit = dict["YUnit"] as! String
            }
        }
    }
    public var data: OnsTrendGroupOutputTpsResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsTrendGroupOutputTpsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsTrendGroupOutputTpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsTrendGroupOutputTpsResponseBody?

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
            var model = OnsTrendGroupOutputTpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OnsTrendTopicInputTpsRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var endTime: Int64?

    public var instanceId: String?

    public var period: Int64?

    public var topic: String?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int64
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! Int32
        }
    }
}

public class OnsTrendTopicInputTpsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public class StatsDataDo : Tea.TeaModel {
                public var x: Int64?

                public var y: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("X") && dict["X"] != nil {
                        self.x = dict["X"] as! Int64
                    }
                    if dict.keys.contains("Y") && dict["Y"] != nil {
                        self.y = dict["Y"] as! Double
                    }
                }
            }
            public var statsDataDo: [OnsTrendTopicInputTpsResponseBody.Data.Records.StatsDataDo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.statsDataDo != nil {
                    var tmp : [Any] = []
                    for k in self.statsDataDo! {
                        tmp.append(k.toMap())
                    }
                    map["StatsDataDo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("StatsDataDo") && dict["StatsDataDo"] != nil {
                    var tmp : [OnsTrendTopicInputTpsResponseBody.Data.Records.StatsDataDo] = []
                    for v in dict["StatsDataDo"] as! [Any] {
                        var model = OnsTrendTopicInputTpsResponseBody.Data.Records.StatsDataDo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.statsDataDo = tmp
                }
            }
        }
        public var records: OnsTrendTopicInputTpsResponseBody.Data.Records?

        public var title: String?

        public var XUnit: String?

        public var YUnit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.records?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.records != nil {
                map["Records"] = self.records?.toMap()
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.XUnit != nil {
                map["XUnit"] = self.XUnit!
            }
            if self.YUnit != nil {
                map["YUnit"] = self.YUnit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Records") && dict["Records"] != nil {
                var model = OnsTrendTopicInputTpsResponseBody.Data.Records()
                model.fromMap(dict["Records"] as! [String: Any])
                self.records = model
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("XUnit") && dict["XUnit"] != nil {
                self.XUnit = dict["XUnit"] as! String
            }
            if dict.keys.contains("YUnit") && dict["YUnit"] != nil {
                self.YUnit = dict["YUnit"] as! String
            }
        }
    }
    public var data: OnsTrendTopicInputTpsResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = OnsTrendTopicInputTpsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OnsTrendTopicInputTpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnsTrendTopicInputTpsResponseBody?

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
            var model = OnsTrendTopicInputTpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenOnsServiceResponseBody : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenOnsServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenOnsServiceResponseBody?

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
            var model = OpenOnsServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var instanceId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! [String]
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
