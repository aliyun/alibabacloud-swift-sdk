import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class KopilotChatStreamRequest : Tea.TeaModel {
    public var message: String?

    public var regionId: String?

    public var sessionId: String?

    public override init() {
        super.init()
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
            map["Message"] = self.message!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class KopilotChatStreamResponseBody : Tea.TeaModel {
    public var content: String?

    public var delta: String?

    public var message: String?

    public var messageId: String?

    public var requestId: String?

    public var role: String?

    public var runId: String?

    public var threadId: String?

    public var toolCallId: String?

    public var toolCallName: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.delta != nil {
            map["Delta"] = self.delta!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.runId != nil {
            map["RunId"] = self.runId!
        }
        if self.threadId != nil {
            map["ThreadId"] = self.threadId!
        }
        if self.toolCallId != nil {
            map["ToolCallId"] = self.toolCallId!
        }
        if self.toolCallName != nil {
            map["ToolCallName"] = self.toolCallName!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Delta"] as? String {
            self.delta = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["RunId"] as? String {
            self.runId = value
        }
        if let value = dict["ThreadId"] as? String {
            self.threadId = value
        }
        if let value = dict["ToolCallId"] as? String {
            self.toolCallId = value
        }
        if let value = dict["ToolCallName"] as? String {
            self.toolCallName = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class KopilotChatStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KopilotChatStreamResponseBody?

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
            var model = KopilotChatStreamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class KopilotFeedbackRequest : Tea.TeaModel {
    public var comment: String?

    public var feedback: String?

    public var regionId: String?

    public var sessionId: String?

    public var turnId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.turnId != nil {
            map["TurnId"] = self.turnId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["Feedback"] as? String {
            self.feedback = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["TurnId"] as? String {
            self.turnId = value
        }
    }
}

public class KopilotFeedbackResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: [String: Int64]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["Data"] as? [String: Int64] {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class KopilotFeedbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KopilotFeedbackResponseBody?

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
            var model = KopilotFeedbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class KopilotListConversationChatMessagesRequest : Tea.TeaModel {
    public var beforeTurnId: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beforeTurnId != nil {
            map["BeforeTurnId"] = self.beforeTurnId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeforeTurnId"] as? Int32 {
            self.beforeTurnId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class KopilotListConversationChatMessagesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Messages : Tea.TeaModel {
            public var content: String?

            public var createTime: String?

            public var feedback: String?

            public var role: String?

            public var turnId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.feedback != nil {
                    map["Feedback"] = self.feedback!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.turnId != nil {
                    map["TurnId"] = self.turnId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Feedback"] as? String {
                    self.feedback = value
                }
                if let value = dict["Role"] as? String {
                    self.role = value
                }
                if let value = dict["TurnId"] as? String {
                    self.turnId = value
                }
            }
        }
        public var hasMore: Bool?

        public var messages: [KopilotListConversationChatMessagesResponseBody.Data.Messages]?

        public var nextBeforeTurnId: Int64?

        public var sessionId: String?

        public var totalTurns: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.messages != nil {
                var tmp : [Any] = []
                for k in self.messages! {
                    tmp.append(k.toMap())
                }
                map["Messages"] = tmp
            }
            if self.nextBeforeTurnId != nil {
                map["NextBeforeTurnId"] = self.nextBeforeTurnId!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.totalTurns != nil {
                map["TotalTurns"] = self.totalTurns!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HasMore"] as? Bool {
                self.hasMore = value
            }
            if let value = dict["Messages"] as? [Any?] {
                var tmp : [KopilotListConversationChatMessagesResponseBody.Data.Messages] = []
                for v in value {
                    if v != nil {
                        var model = KopilotListConversationChatMessagesResponseBody.Data.Messages()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.messages = tmp
            }
            if let value = dict["NextBeforeTurnId"] as? Int64 {
                self.nextBeforeTurnId = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["TotalTurns"] as? Int64 {
                self.totalTurns = value
            }
        }
    }
    public var code: Int64?

    public var data: KopilotListConversationChatMessagesResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
            var model = KopilotListConversationChatMessagesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class KopilotListConversationChatMessagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KopilotListConversationChatMessagesResponseBody?

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
            var model = KopilotListConversationChatMessagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class KopilotListConversationsRequest : Tea.TeaModel {
    public var page: Int32?

    public var regionId: String?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
    }
}

public class KopilotListConversationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var conversationIds: [String]?

        public var count: Int32?

        public var page: Int32?

        public var size: Int32?

        public var total: Int64?

        public var totalPages: Int32?

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
            if self.conversationIds != nil {
                map["ConversationIds"] = self.conversationIds!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConversationIds"] as? [String] {
                self.conversationIds = value
            }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: Int64?

    public var data: KopilotListConversationsResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
            var model = KopilotListConversationsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class KopilotListConversationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KopilotListConversationsResponseBody?

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
            var model = KopilotListConversationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class KopilotQueryStatusRequest : Tea.TeaModel {
    public var owner: String?

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
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class KopilotQueryStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var activateTime: Int64?

        public var instanceId: String?

        public var lifeStatus: String?

        public var regionId: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activateTime != nil {
                map["ActivateTime"] = self.activateTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.lifeStatus != nil {
                map["LifeStatus"] = self.lifeStatus!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActivateTime"] as? Int64 {
                self.activateTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LifeStatus"] as? String {
                self.lifeStatus = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
        }
    }
    public var code: Int64?

    public var data: KopilotQueryStatusResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
            var model = KopilotQueryStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class KopilotQueryStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KopilotQueryStatusResponseBody?

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
            var model = KopilotQueryStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
