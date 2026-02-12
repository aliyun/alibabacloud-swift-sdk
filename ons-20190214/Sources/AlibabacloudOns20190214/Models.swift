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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Detail"] as? Bool {
            self.detail = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DelayTime"] as? Int64 {
                        self.delayTime = value
                    }
                    if let value = dict["LastTimestamp"] as? Int64 {
                        self.lastTimestamp = value
                    }
                    if let value = dict["Topic"] as? String {
                        self.topic = value
                    }
                    if let value = dict["TotalDiff"] as? Int64 {
                        self.totalDiff = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DetailInTopicDo"] as? [Any?] {
                    var tmp : [OnsConsumerAccumulateResponseBody.Data.DetailInTopicList.DetailInTopicDo] = []
                    for v in value {
                        if v != nil {
                            var model = OnsConsumerAccumulateResponseBody.Data.DetailInTopicList.DetailInTopicDo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConsumeTps"] as? Double {
                self.consumeTps = value
            }
            if let value = dict["DelayTime"] as? Int64 {
                self.delayTime = value
            }
            if let value = dict["DetailInTopicList"] as? [String: Any?] {
                var model = OnsConsumerAccumulateResponseBody.Data.DetailInTopicList()
                model.fromMap(value)
                self.detailInTopicList = model
            }
            if let value = dict["LastTimestamp"] as? Int64 {
                self.lastTimestamp = value
            }
            if let value = dict["Online"] as? Bool {
                self.online = value
            }
            if let value = dict["TotalDiff"] as? Int64 {
                self.totalDiff = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsConsumerAccumulateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsConsumerAccumulateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClientAddr"] as? String {
                        self.clientAddr = value
                    }
                    if let value = dict["ClientId"] as? String {
                        self.clientId = value
                    }
                    if let value = dict["Language"] as? String {
                        self.language = value
                    }
                    if let value = dict["Version"] as? String {
                        self.version = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectionDo"] as? [Any?] {
                    var tmp : [OnsConsumerGetConnectionResponseBody.Data.ConnectionList.ConnectionDo] = []
                    for v in value {
                        if v != nil {
                            var model = OnsConsumerGetConnectionResponseBody.Data.ConnectionList.ConnectionDo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.connectionDo = tmp
                }
            }
        }
        public var connectionList: OnsConsumerGetConnectionResponseBody.Data.ConnectionList?

        public var messageModel: String?

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
            if self.messageModel != nil {
                map["MessageModel"] = self.messageModel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionList"] as? [String: Any?] {
                var model = OnsConsumerGetConnectionResponseBody.Data.ConnectionList()
                model.fromMap(value)
                self.connectionList = model
            }
            if let value = dict["MessageModel"] as? String {
                self.messageModel = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsConsumerGetConnectionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsConsumerGetConnectionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ResetTimestamp"] as? Int64 {
            self.resetTimestamp = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsConsumerResetOffsetResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Detail"] as? Bool {
            self.detail = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NeedJstack"] as? Bool {
            self.needJstack = value
        }
    }
}

public class OnsConsumerStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConnectionSet : Tea.TeaModel {
            public class ConnectionDo : Tea.TeaModel {
                public var clientAddr: String?

                public var clientId: String?

                public var diff: Int64?

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
                    if self.diff != nil {
                        map["Diff"] = self.diff!
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClientAddr"] as? String {
                        self.clientAddr = value
                    }
                    if let value = dict["ClientId"] as? String {
                        self.clientId = value
                    }
                    if let value = dict["Diff"] as? Int64 {
                        self.diff = value
                    }
                    if let value = dict["Language"] as? String {
                        self.language = value
                    }
                    if let value = dict["RemoteIP"] as? String {
                        self.remoteIP = value
                    }
                    if let value = dict["Version"] as? String {
                        self.version = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectionDo"] as? [Any?] {
                    var tmp : [OnsConsumerStatusResponseBody.Data.ConnectionSet.ConnectionDo] = []
                    for v in value {
                        if v != nil {
                            var model = OnsConsumerStatusResponseBody.Data.ConnectionSet.ConnectionDo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Track"] as? [String] {
                                    self.track = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Thread"] as? String {
                                self.thread = value
                            }
                            if let value = dict["TrackList"] as? [String: Any?] {
                                var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.Jstack.ThreadTrackDo.TrackList()
                                model.fromMap(value)
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ThreadTrackDo"] as? [Any?] {
                            var tmp : [OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.Jstack.ThreadTrackDo] = []
                            for v in value {
                                if v != nil {
                                    var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.Jstack.ThreadTrackDo()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.threadTrackDo = tmp
                        }
                    }
                }
                public class RunningDataList : Tea.TeaModel {
                    public class ConsumerRunningDataDo : Tea.TeaModel {
                        public var failedCountPerHour: Int64?

                        public var failedTps: Double?

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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["FailedCountPerHour"] as? Int64 {
                                self.failedCountPerHour = value
                            }
                            if let value = dict["FailedTps"] as? Double {
                                self.failedTps = value
                            }
                            if let value = dict["OkTps"] as? Double {
                                self.okTps = value
                            }
                            if let value = dict["Rt"] as? Double {
                                self.rt = value
                            }
                            if let value = dict["Topic"] as? String {
                                self.topic = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ConsumerRunningDataDo"] as? [Any?] {
                            var tmp : [OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.RunningDataList.ConsumerRunningDataDo] = []
                            for v in value {
                                if v != nil {
                                    var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.RunningDataList.ConsumerRunningDataDo()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
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

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Tag"] as? [String] {
                                    self.tag = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["SubString"] as? String {
                                self.subString = value
                            }
                            if let value = dict["SubVersion"] as? Int64 {
                                self.subVersion = value
                            }
                            if let value = dict["TagsSet"] as? [String: Any?] {
                                var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.SubscriptionSet.SubscriptionData.TagsSet()
                                model.fromMap(value)
                                self.tagsSet = model
                            }
                            if let value = dict["Topic"] as? String {
                                self.topic = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["SubscriptionData"] as? [Any?] {
                            var tmp : [OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.SubscriptionSet.SubscriptionData] = []
                            for v in value {
                                if v != nil {
                                    var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.SubscriptionSet.SubscriptionData()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClientId"] as? String {
                        self.clientId = value
                    }
                    if let value = dict["Connection"] as? String {
                        self.connection = value
                    }
                    if let value = dict["ConsumeModel"] as? String {
                        self.consumeModel = value
                    }
                    if let value = dict["ConsumeType"] as? String {
                        self.consumeType = value
                    }
                    if let value = dict["Jstack"] as? [String: Any?] {
                        var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.Jstack()
                        model.fromMap(value)
                        self.jstack = model
                    }
                    if let value = dict["Language"] as? String {
                        self.language = value
                    }
                    if let value = dict["LastTimeStamp"] as? Int64 {
                        self.lastTimeStamp = value
                    }
                    if let value = dict["RunningDataList"] as? [String: Any?] {
                        var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.RunningDataList()
                        model.fromMap(value)
                        self.runningDataList = model
                    }
                    if let value = dict["StartTimeStamp"] as? Int64 {
                        self.startTimeStamp = value
                    }
                    if let value = dict["SubscriptionSet"] as? [String: Any?] {
                        var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo.SubscriptionSet()
                        model.fromMap(value)
                        self.subscriptionSet = model
                    }
                    if let value = dict["ThreadCount"] as? Int32 {
                        self.threadCount = value
                    }
                    if let value = dict["Version"] as? String {
                        self.version = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConsumerConnectionInfoDo"] as? [Any?] {
                    var tmp : [OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo] = []
                    for v in value {
                        if v != nil {
                            var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList.ConsumerConnectionInfoDo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DelayTime"] as? Int64 {
                        self.delayTime = value
                    }
                    if let value = dict["LastTimestamp"] as? Int64 {
                        self.lastTimestamp = value
                    }
                    if let value = dict["Topic"] as? String {
                        self.topic = value
                    }
                    if let value = dict["TotalDiff"] as? Int64 {
                        self.totalDiff = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DetailInTopicDo"] as? [Any?] {
                    var tmp : [OnsConsumerStatusResponseBody.Data.DetailInTopicList.DetailInTopicDo] = []
                    for v in value {
                        if v != nil {
                            var model = OnsConsumerStatusResponseBody.Data.DetailInTopicList.DetailInTopicDo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionSet"] as? [String: Any?] {
                var model = OnsConsumerStatusResponseBody.Data.ConnectionSet()
                model.fromMap(value)
                self.connectionSet = model
            }
            if let value = dict["ConsumeModel"] as? String {
                self.consumeModel = value
            }
            if let value = dict["ConsumeTps"] as? Double {
                self.consumeTps = value
            }
            if let value = dict["ConsumerConnectionInfoList"] as? [String: Any?] {
                var model = OnsConsumerStatusResponseBody.Data.ConsumerConnectionInfoList()
                model.fromMap(value)
                self.consumerConnectionInfoList = model
            }
            if let value = dict["DelayTime"] as? Int64 {
                self.delayTime = value
            }
            if let value = dict["DetailInTopicList"] as? [String: Any?] {
                var model = OnsConsumerStatusResponseBody.Data.DetailInTopicList()
                model.fromMap(value)
                self.detailInTopicList = model
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LastTimestamp"] as? Int64 {
                self.lastTimestamp = value
            }
            if let value = dict["Online"] as? Bool {
                self.online = value
            }
            if let value = dict["RebalanceOK"] as? Bool {
                self.rebalanceOK = value
            }
            if let value = dict["SubscriptionSame"] as? Bool {
                self.subscriptionSame = value
            }
            if let value = dict["TotalDiff"] as? Int64 {
                self.totalDiff = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsConsumerStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsConsumerStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConsumeTimeStamp"] as? Int64 {
                self.consumeTimeStamp = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MaxTimeStamp"] as? Int64 {
                self.maxTimeStamp = value
            }
            if let value = dict["MinTimeStamp"] as? Int64 {
                self.minTimeStamp = value
            }
            if let value = dict["Topic"] as? String {
                self.topic = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsConsumerTimeSpanResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsConsumerTimeSpanResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MessageProperty"] as? [Any?] {
                    var tmp : [OnsDLQMessageGetByIdResponseBody.Data.PropertyList.MessageProperty] = []
                    for v in value {
                        if v != nil {
                            var model = OnsDLQMessageGetByIdResponseBody.Data.PropertyList.MessageProperty()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BodyCRC"] as? Int32 {
                self.bodyCRC = value
            }
            if let value = dict["BornHost"] as? String {
                self.bornHost = value
            }
            if let value = dict["BornTimestamp"] as? Int64 {
                self.bornTimestamp = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MsgId"] as? String {
                self.msgId = value
            }
            if let value = dict["PropertyList"] as? [String: Any?] {
                var model = OnsDLQMessageGetByIdResponseBody.Data.PropertyList()
                model.fromMap(value)
                self.propertyList = model
            }
            if let value = dict["ReconsumeTimes"] as? Int32 {
                self.reconsumeTimes = value
            }
            if let value = dict["StoreHost"] as? String {
                self.storeHost = value
            }
            if let value = dict["StoreSize"] as? Int32 {
                self.storeSize = value
            }
            if let value = dict["StoreTimestamp"] as? Int64 {
                self.storeTimestamp = value
            }
            if let value = dict["Topic"] as? String {
                self.topic = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsDLQMessageGetByIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsDLQMessageGetByIdResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Name"] as? String {
                                self.name = value
                            }
                            if let value = dict["Value"] as? String {
                                self.value = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["MessageProperty"] as? [Any?] {
                            var tmp : [OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList.MessageProperty] = []
                            for v in value {
                                if v != nil {
                                    var model = OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList.MessageProperty()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BodyCRC"] as? Int32 {
                        self.bodyCRC = value
                    }
                    if let value = dict["BornHost"] as? String {
                        self.bornHost = value
                    }
                    if let value = dict["BornTimestamp"] as? Int64 {
                        self.bornTimestamp = value
                    }
                    if let value = dict["InstanceId"] as? String {
                        self.instanceId = value
                    }
                    if let value = dict["MsgId"] as? String {
                        self.msgId = value
                    }
                    if let value = dict["PropertyList"] as? [String: Any?] {
                        var model = OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList()
                        model.fromMap(value)
                        self.propertyList = model
                    }
                    if let value = dict["ReconsumeTimes"] as? Int32 {
                        self.reconsumeTimes = value
                    }
                    if let value = dict["StoreHost"] as? String {
                        self.storeHost = value
                    }
                    if let value = dict["StoreSize"] as? Int32 {
                        self.storeSize = value
                    }
                    if let value = dict["StoreTimestamp"] as? Int64 {
                        self.storeTimestamp = value
                    }
                    if let value = dict["Topic"] as? String {
                        self.topic = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OnsRestMessageDo"] as? [Any?] {
                    var tmp : [OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo] = []
                    for v in value {
                        if v != nil {
                            var model = OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int64 {
                self.currentPage = value
            }
            if let value = dict["MaxPageCount"] as? Int64 {
                self.maxPageCount = value
            }
            if let value = dict["MsgFoundList"] as? [String: Any?] {
                var model = OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo.MsgFoundList()
                model.fromMap(value)
                self.msgFoundList = model
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MsgFoundDo"] as? [String: Any?] {
            var model = OnsDLQMessagePageQueryByGroupIdResponseBody.MsgFoundDo()
            model.fromMap(value)
            self.msgFoundDo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsDLQMessagePageQueryByGroupIdResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MsgId"] as? [String] {
                self.msgId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsDLQMessageResendByIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsDLQMessageResendByIdResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ReadEnable"] as? Bool {
            self.readEnable = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsGroupConsumerUpdateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["GroupType"] as? String {
            self.groupType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsGroupCreateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsGroupDeleteResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["GroupType"] as? String {
            self.groupType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [OnsGroupListRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = OnsGroupListRequest.Tag()
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [OnsGroupListResponseBody.Data.SubscribeInfoDo.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = OnsGroupListResponseBody.Data.SubscribeInfoDo.Tags.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["GroupType"] as? String {
                    self.groupType = value
                }
                if let value = dict["IndependentNaming"] as? Bool {
                    self.independentNaming = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Owner"] as? String {
                    self.owner = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = OnsGroupListResponseBody.Data.SubscribeInfoDo.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SubscribeInfoDo"] as? [Any?] {
                var tmp : [OnsGroupListResponseBody.Data.SubscribeInfoDo] = []
                for v in value {
                    if v != nil {
                        var model = OnsGroupListResponseBody.Data.SubscribeInfoDo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsGroupListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsGroupListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SubString"] as? String {
                        self.subString = value
                    }
                    if let value = dict["Topic"] as? String {
                        self.topic = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SubscriptionDataList"] as? [Any?] {
                    var tmp : [OnsGroupSubDetailResponseBody.Data.SubscriptionDataList.SubscriptionDataList] = []
                    for v in value {
                        if v != nil {
                            var model = OnsGroupSubDetailResponseBody.Data.SubscriptionDataList.SubscriptionDataList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["MessageModel"] as? String {
                self.messageModel = value
            }
            if let value = dict["Online"] as? Bool {
                self.online = value
            }
            if let value = dict["SubscriptionDataList"] as? [String: Any?] {
                var model = OnsGroupSubDetailResponseBody.Data.SubscriptionDataList()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsGroupSubDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsGroupSubDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HttpInternalEndpoint"] as? String {
                    self.httpInternalEndpoint = value
                }
                if let value = dict["HttpInternetEndpoint"] as? String {
                    self.httpInternetEndpoint = value
                }
                if let value = dict["HttpInternetSecureEndpoint"] as? String {
                    self.httpInternetSecureEndpoint = value
                }
                if let value = dict["TcpEndpoint"] as? String {
                    self.tcpEndpoint = value
                }
                if let value = dict["TcpInternetEndpoint"] as? String {
                    self.tcpInternetEndpoint = value
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

        public var supportClassic: Int32?

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
            if self.supportClassic != nil {
                map["SupportClassic"] = self.supportClassic!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Endpoints"] as? [String: Any?] {
                var model = OnsInstanceBaseInfoResponseBody.InstanceBaseInfo.Endpoints()
                model.fromMap(value)
                self.endpoints = model
            }
            if let value = dict["IndependentNaming"] as? Bool {
                self.independentNaming = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceStatus"] as? Int32 {
                self.instanceStatus = value
            }
            if let value = dict["InstanceType"] as? Int32 {
                self.instanceType = value
            }
            if let value = dict["MaxTps"] as? Int64 {
                self.maxTps = value
            }
            if let value = dict["ReleaseTime"] as? Int64 {
                self.releaseTime = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["SupportClassic"] as? Int32 {
                self.supportClassic = value
            }
            if let value = dict["TopicCapacity"] as? Int32 {
                self.topicCapacity = value
            }
            if let value = dict["spInstanceId"] as? String {
                self.spInstanceId = value
            }
            if let value = dict["spInstanceType"] as? Int32 {
                self.spInstanceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceBaseInfo"] as? [String: Any?] {
            var model = OnsInstanceBaseInfoResponseBody.InstanceBaseInfo()
            model.fromMap(value)
            self.instanceBaseInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsInstanceBaseInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceType"] as? Int32 {
                self.instanceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsInstanceCreateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsInstanceCreateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsInstanceDeleteResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NeedResourceInfo"] as? Bool {
            self.needResourceInfo = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [OnsInstanceInServiceListRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = OnsInstanceInServiceListRequest.Tag()
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [OnsInstanceInServiceListResponseBody.Data.InstanceVO.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = OnsInstanceInServiceListResponseBody.Data.InstanceVO.Tags.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["GroupCount"] as? Int32 {
                    self.groupCount = value
                }
                if let value = dict["IndependentNaming"] as? Bool {
                    self.independentNaming = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["InstanceStatus"] as? Int32 {
                    self.instanceStatus = value
                }
                if let value = dict["InstanceType"] as? Int32 {
                    self.instanceType = value
                }
                if let value = dict["ReleaseTime"] as? Int64 {
                    self.releaseTime = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = OnsInstanceInServiceListResponseBody.Data.InstanceVO.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["TopicCount"] as? Int32 {
                    self.topicCount = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceVO"] as? [Any?] {
                var tmp : [OnsInstanceInServiceListResponseBody.Data.InstanceVO] = []
                for v in value {
                    if v != nil {
                        var model = OnsInstanceInServiceListResponseBody.Data.InstanceVO()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsInstanceInServiceListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsInstanceInServiceListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsInstanceUpdateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Body"] as? String {
                self.body = value
            }
            if let value = dict["BodyCRC"] as? Int32 {
                self.bodyCRC = value
            }
            if let value = dict["BodyStr"] as? String {
                self.bodyStr = value
            }
            if let value = dict["BornHost"] as? String {
                self.bornHost = value
            }
            if let value = dict["BornTimestamp"] as? Int64 {
                self.bornTimestamp = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MsgId"] as? String {
                self.msgId = value
            }
            if let value = dict["PropertyList"] as? [Any?] {
                var tmp : [OnsMessageDetailResponseBody.Data.PropertyList] = []
                for v in value {
                    if v != nil {
                        var model = OnsMessageDetailResponseBody.Data.PropertyList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.propertyList = tmp
            }
            if let value = dict["ReconsumeTimes"] as? Int32 {
                self.reconsumeTimes = value
            }
            if let value = dict["StoreHost"] as? String {
                self.storeHost = value
            }
            if let value = dict["StoreSize"] as? Int32 {
                self.storeSize = value
            }
            if let value = dict["StoreTimestamp"] as? Int64 {
                self.storeTimestamp = value
            }
            if let value = dict["Topic"] as? String {
                self.topic = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsMessageDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsMessageDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MessageProperty"] as? [Any?] {
                        var tmp : [OnsMessageGetByKeyResponseBody.Data.OnsRestMessageDo.PropertyList.MessageProperty] = []
                        for v in value {
                            if v != nil {
                                var model = OnsMessageGetByKeyResponseBody.Data.OnsRestMessageDo.PropertyList.MessageProperty()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BodyCRC"] as? Int32 {
                    self.bodyCRC = value
                }
                if let value = dict["BornHost"] as? String {
                    self.bornHost = value
                }
                if let value = dict["BornTimestamp"] as? Int64 {
                    self.bornTimestamp = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["MsgId"] as? String {
                    self.msgId = value
                }
                if let value = dict["PropertyList"] as? [String: Any?] {
                    var model = OnsMessageGetByKeyResponseBody.Data.OnsRestMessageDo.PropertyList()
                    model.fromMap(value)
                    self.propertyList = model
                }
                if let value = dict["ReconsumeTimes"] as? Int32 {
                    self.reconsumeTimes = value
                }
                if let value = dict["StoreHost"] as? String {
                    self.storeHost = value
                }
                if let value = dict["StoreSize"] as? Int32 {
                    self.storeSize = value
                }
                if let value = dict["StoreTimestamp"] as? Int64 {
                    self.storeTimestamp = value
                }
                if let value = dict["Topic"] as? String {
                    self.topic = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OnsRestMessageDo"] as? [Any?] {
                var tmp : [OnsMessageGetByKeyResponseBody.Data.OnsRestMessageDo] = []
                for v in value {
                    if v != nil {
                        var model = OnsMessageGetByKeyResponseBody.Data.OnsRestMessageDo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsMessageGetByKeyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsMessageGetByKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MessageProperty"] as? [Any?] {
                    var tmp : [OnsMessageGetByMsgIdResponseBody.Data.PropertyList.MessageProperty] = []
                    for v in value {
                        if v != nil {
                            var model = OnsMessageGetByMsgIdResponseBody.Data.PropertyList.MessageProperty()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BodyCRC"] as? Int32 {
                self.bodyCRC = value
            }
            if let value = dict["BornHost"] as? String {
                self.bornHost = value
            }
            if let value = dict["BornTimestamp"] as? Int64 {
                self.bornTimestamp = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MsgId"] as? String {
                self.msgId = value
            }
            if let value = dict["PropertyList"] as? [String: Any?] {
                var model = OnsMessageGetByMsgIdResponseBody.Data.PropertyList()
                model.fromMap(value)
                self.propertyList = model
            }
            if let value = dict["ReconsumeTimes"] as? Int32 {
                self.reconsumeTimes = value
            }
            if let value = dict["StoreHost"] as? String {
                self.storeHost = value
            }
            if let value = dict["StoreSize"] as? Int32 {
                self.storeSize = value
            }
            if let value = dict["StoreTimestamp"] as? Int64 {
                self.storeTimestamp = value
            }
            if let value = dict["Topic"] as? String {
                self.topic = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsMessageGetByMsgIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsMessageGetByMsgIdResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Name"] as? String {
                                self.name = value
                            }
                            if let value = dict["Value"] as? String {
                                self.value = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["MessageProperty"] as? [Any?] {
                            var tmp : [OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList.MessageProperty] = []
                            for v in value {
                                if v != nil {
                                    var model = OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList.MessageProperty()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BodyCRC"] as? Int32 {
                        self.bodyCRC = value
                    }
                    if let value = dict["BornHost"] as? String {
                        self.bornHost = value
                    }
                    if let value = dict["BornTimestamp"] as? Int64 {
                        self.bornTimestamp = value
                    }
                    if let value = dict["InstanceId"] as? String {
                        self.instanceId = value
                    }
                    if let value = dict["MsgId"] as? String {
                        self.msgId = value
                    }
                    if let value = dict["PropertyList"] as? [String: Any?] {
                        var model = OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo.PropertyList()
                        model.fromMap(value)
                        self.propertyList = model
                    }
                    if let value = dict["ReconsumeTimes"] as? Int32 {
                        self.reconsumeTimes = value
                    }
                    if let value = dict["StoreHost"] as? String {
                        self.storeHost = value
                    }
                    if let value = dict["StoreSize"] as? Int32 {
                        self.storeSize = value
                    }
                    if let value = dict["StoreTimestamp"] as? Int64 {
                        self.storeTimestamp = value
                    }
                    if let value = dict["Topic"] as? String {
                        self.topic = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OnsRestMessageDo"] as? [Any?] {
                    var tmp : [OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo] = []
                    for v in value {
                        if v != nil {
                            var model = OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList.OnsRestMessageDo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int64 {
                self.currentPage = value
            }
            if let value = dict["MaxPageCount"] as? Int64 {
                self.maxPageCount = value
            }
            if let value = dict["MsgFoundList"] as? [String: Any?] {
                var model = OnsMessagePageQueryByTopicResponseBody.MsgFoundDo.MsgFoundList()
                model.fromMap(value)
                self.msgFoundList = model
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MsgFoundDo"] as? [String: Any?] {
            var model = OnsMessagePageQueryByTopicResponseBody.MsgFoundDo()
            model.fromMap(value)
            self.msgFoundDo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsMessagePageQueryByTopicResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsMessagePushResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConsumerGroup"] as? String {
                    self.consumerGroup = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["TrackType"] as? String {
                    self.trackType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MessageTrack"] as? [Any?] {
                var tmp : [OnsMessageTraceResponseBody.Data.MessageTrack] = []
                for v in value {
                    if v != nil {
                        var model = OnsMessageTraceResponseBody.Data.MessageTrack()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsMessageTraceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsMessageTraceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OnsRegionListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RegionDo : Tea.TeaModel {
            public var channelName: String?

            public var createTime: Int64?

            public var id: Int64?

            public var onsRegionId: String?

            public var regionName: String?

            public var updateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channelName != nil {
                    map["ChannelName"] = self.channelName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.onsRegionId != nil {
                    map["OnsRegionId"] = self.onsRegionId!
                }
                if self.regionName != nil {
                    map["RegionName"] = self.regionName!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ChannelName"] as? String {
                    self.channelName = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["OnsRegionId"] as? String {
                    self.onsRegionId = value
                }
                if let value = dict["RegionName"] as? String {
                    self.regionName = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionDo"] as? [Any?] {
                var tmp : [OnsRegionListResponseBody.Data.RegionDo] = []
                for v in value {
                    if v != nil {
                        var model = OnsRegionListResponseBody.Data.RegionDo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsRegionListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsRegionListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MessageType"] as? Int32 {
            self.messageType = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsTopicCreateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsTopicDeleteResponseBody()
            model.fromMap(value)
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
    public var instanceId: String?

    public var tag: [OnsTopicListRequest.Tag]?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [OnsTopicListRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = OnsTopicListRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [OnsTopicListResponseBody.Data.PublishInfoDo.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = OnsTopicListResponseBody.Data.PublishInfoDo.Tags.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["IndependentNaming"] as? Bool {
                    self.independentNaming = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["MessageType"] as? Int32 {
                    self.messageType = value
                }
                if let value = dict["Owner"] as? String {
                    self.owner = value
                }
                if let value = dict["Relation"] as? Int32 {
                    self.relation = value
                }
                if let value = dict["RelationName"] as? String {
                    self.relationName = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["ServiceStatus"] as? Int32 {
                    self.serviceStatus = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = OnsTopicListResponseBody.Data.PublishInfoDo.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["Topic"] as? String {
                    self.topic = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PublishInfoDo"] as? [Any?] {
                var tmp : [OnsTopicListResponseBody.Data.PublishInfoDo] = []
                for v in value {
                    if v != nil {
                        var model = OnsTopicListResponseBody.Data.PublishInfoDo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsTopicListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsTopicListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LastTimeStamp"] as? Int64 {
                self.lastTimeStamp = value
            }
            if let value = dict["Perm"] as? Int32 {
                self.perm = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsTopicStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsTopicStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
    }
}

public class OnsTopicSubDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SubscriptionDataList : Tea.TeaModel {
            public class SubscriptionDataList : Tea.TeaModel {
                public var groupId: String?

                public var messageModel: String?

                public var online: String?

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
                    if self.online != nil {
                        map["Online"] = self.online!
                    }
                    if self.subString != nil {
                        map["SubString"] = self.subString!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["GroupId"] as? String {
                        self.groupId = value
                    }
                    if let value = dict["MessageModel"] as? String {
                        self.messageModel = value
                    }
                    if let value = dict["Online"] as? String {
                        self.online = value
                    }
                    if let value = dict["SubString"] as? String {
                        self.subString = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SubscriptionDataList"] as? [Any?] {
                    var tmp : [OnsTopicSubDetailResponseBody.Data.SubscriptionDataList.SubscriptionDataList] = []
                    for v in value {
                        if v != nil {
                            var model = OnsTopicSubDetailResponseBody.Data.SubscriptionDataList.SubscriptionDataList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SubscriptionDataList"] as? [String: Any?] {
                var model = OnsTopicSubDetailResponseBody.Data.SubscriptionDataList()
                model.fromMap(value)
                self.subscriptionDataList = model
            }
            if let value = dict["Topic"] as? String {
                self.topic = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsTopicSubDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsTopicSubDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Perm"] as? Int32 {
            self.perm = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsTopicUpdateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OnsTraceGetResultRequest : Tea.TeaModel {
    public var instanceId: String?

    public var queryId: String?

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
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
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
        if let value = dict["QueryId"] as? String {
            self.queryId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["ClientHost"] as? String {
                                        self.clientHost = value
                                    }
                                    if let value = dict["CostTime"] as? Int32 {
                                        self.costTime = value
                                    }
                                    if let value = dict["ReconsumeTimes"] as? Int32 {
                                        self.reconsumeTimes = value
                                    }
                                    if let value = dict["Status"] as? String {
                                        self.status = value
                                    }
                                    if let value = dict["SubGroupName"] as? String {
                                        self.subGroupName = value
                                    }
                                    if let value = dict["SubTime"] as? Int64 {
                                        self.subTime = value
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

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["SubClientInfoDo"] as? [Any?] {
                                    var tmp : [OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList.SubMapDo.ClientList.SubClientInfoDo] = []
                                    for v in value {
                                        if v != nil {
                                            var model = OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList.SubMapDo.ClientList.SubClientInfoDo()
                                            if v != nil {
                                                model.fromMap(v as? [String: Any?])
                                            }
                                            tmp.append(model)
                                        }
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ClientList"] as? [String: Any?] {
                                var model = OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList.SubMapDo.ClientList()
                                model.fromMap(value)
                                self.clientList = model
                            }
                            if let value = dict["FailCount"] as? Int32 {
                                self.failCount = value
                            }
                            if let value = dict["SubGroupName"] as? String {
                                self.subGroupName = value
                            }
                            if let value = dict["SuccessCount"] as? Int32 {
                                self.successCount = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["SubMapDo"] as? [Any?] {
                            var tmp : [OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList.SubMapDo] = []
                            for v in value {
                                if v != nil {
                                    var model = OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList.SubMapDo()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BornHost"] as? String {
                        self.bornHost = value
                    }
                    if let value = dict["CostTime"] as? Int32 {
                        self.costTime = value
                    }
                    if let value = dict["MsgId"] as? String {
                        self.msgId = value
                    }
                    if let value = dict["MsgKey"] as? String {
                        self.msgKey = value
                    }
                    if let value = dict["PubGroupName"] as? String {
                        self.pubGroupName = value
                    }
                    if let value = dict["PubTime"] as? Int64 {
                        self.pubTime = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["SubList"] as? [String: Any?] {
                        var model = OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo.SubList()
                        model.fromMap(value)
                        self.subList = model
                    }
                    if let value = dict["Tag"] as? String {
                        self.tag = value
                    }
                    if let value = dict["Topic"] as? String {
                        self.topic = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TraceMapDo"] as? [Any?] {
                    var tmp : [OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo] = []
                    for v in value {
                        if v != nil {
                            var model = OnsTraceGetResultResponseBody.TraceData.TraceList.TraceMapDo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MsgId"] as? String {
                self.msgId = value
            }
            if let value = dict["MsgKey"] as? String {
                self.msgKey = value
            }
            if let value = dict["QueryId"] as? String {
                self.queryId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Topic"] as? String {
                self.topic = value
            }
            if let value = dict["TraceList"] as? [String: Any?] {
                var model = OnsTraceGetResultResponseBody.TraceData.TraceList()
                model.fromMap(value)
                self.traceList = model
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TraceData"] as? [String: Any?] {
            var model = OnsTraceGetResultResponseBody.TraceData()
            model.fromMap(value)
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsTraceGetResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryId"] as? String {
            self.queryId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsTraceQueryByMsgIdResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MsgKey"] as? String {
            self.msgKey = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryId"] as? String {
            self.queryId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsTraceQueryByMsgKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Period"] as? Int64 {
            self.period = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["X"] as? Int64 {
                        self.x = value
                    }
                    if let value = dict["Y"] as? Double {
                        self.y = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["StatsDataDo"] as? [Any?] {
                    var tmp : [OnsTrendGroupOutputTpsResponseBody.Data.Records.StatsDataDo] = []
                    for v in value {
                        if v != nil {
                            var model = OnsTrendGroupOutputTpsResponseBody.Data.Records.StatsDataDo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Records"] as? [String: Any?] {
                var model = OnsTrendGroupOutputTpsResponseBody.Data.Records()
                model.fromMap(value)
                self.records = model
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["XUnit"] as? String {
                self.XUnit = value
            }
            if let value = dict["YUnit"] as? String {
                self.YUnit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsTrendGroupOutputTpsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsTrendGroupOutputTpsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Period"] as? Int64 {
            self.period = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["X"] as? Int64 {
                        self.x = value
                    }
                    if let value = dict["Y"] as? Double {
                        self.y = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["StatsDataDo"] as? [Any?] {
                    var tmp : [OnsTrendTopicInputTpsResponseBody.Data.Records.StatsDataDo] = []
                    for v in value {
                        if v != nil {
                            var model = OnsTrendTopicInputTpsResponseBody.Data.Records.StatsDataDo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Records"] as? [String: Any?] {
                var model = OnsTrendTopicInputTpsResponseBody.Data.Records()
                model.fromMap(value)
                self.records = model
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["XUnit"] as? String {
                self.XUnit = value
            }
            if let value = dict["YUnit"] as? String {
                self.YUnit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = OnsTrendTopicInputTpsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnsTrendTopicInputTpsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OpenOnsServiceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
