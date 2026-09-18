import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataScheduledTaskInfoBySessionIdValue : Tea.TeaModel {
    public var asOf: String?

    public var enabledCount: Int64?

    public var hasScheduledTask: Bool?

    public var taskCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asOf != nil {
            map["AsOf"] = self.asOf!
        }
        if self.enabledCount != nil {
            map["EnabledCount"] = self.enabledCount!
        }
        if self.hasScheduledTask != nil {
            map["HasScheduledTask"] = self.hasScheduledTask!
        }
        if self.taskCount != nil {
            map["TaskCount"] = self.taskCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AsOf"] as? String {
            self.asOf = value
        }
        if let value = dict["EnabledCount"] as? Int64 {
            self.enabledCount = value
        }
        if let value = dict["HasScheduledTask"] as? Bool {
            self.hasScheduledTask = value
        }
        if let value = dict["TaskCount"] as? Int64 {
            self.taskCount = value
        }
    }
}

public class KopilotChatStreamRequest : Tea.TeaModel {
    public var acceptLanguage: String?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
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
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
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

    public var taskCursor: String?

    public var taskPageSize: Int32?

    public override init() {
        super.init()
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
        if self.taskCursor != nil {
            map["TaskCursor"] = self.taskCursor!
        }
        if self.taskPageSize != nil {
            map["TaskPageSize"] = self.taskPageSize!
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
        if let value = dict["TaskCursor"] as? String {
            self.taskCursor = value
        }
        if let value = dict["TaskPageSize"] as? Int32 {
            self.taskPageSize = value
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
        public class ScheduledTaskInfo : Tea.TeaModel {
            public class Tasks : Tea.TeaModel {
                public class ActiveRun : Tea.TeaModel {
                    public var finishedAt: String?

                    public var runId: String?

                    public var status: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.finishedAt != nil {
                            map["FinishedAt"] = self.finishedAt!
                        }
                        if self.runId != nil {
                            map["RunId"] = self.runId!
                        }
                        if self.status != nil {
                            map["Status"] = self.status!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["FinishedAt"] as? String {
                            self.finishedAt = value
                        }
                        if let value = dict["RunId"] as? String {
                            self.runId = value
                        }
                        if let value = dict["Status"] as? String {
                            self.status = value
                        }
                    }
                }
                public class LastCompletedRun : Tea.TeaModel {
                    public var finishedAt: String?

                    public var runId: String?

                    public var status: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.finishedAt != nil {
                            map["FinishedAt"] = self.finishedAt!
                        }
                        if self.runId != nil {
                            map["RunId"] = self.runId!
                        }
                        if self.status != nil {
                            map["Status"] = self.status!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["FinishedAt"] as? String {
                            self.finishedAt = value
                        }
                        if let value = dict["RunId"] as? String {
                            self.runId = value
                        }
                        if let value = dict["Status"] as? String {
                            self.status = value
                        }
                    }
                }
                public var activeRun: KopilotListConversationChatMessagesResponseBody.Data.ScheduledTaskInfo.Tasks.ActiveRun?

                public var lastCompletedRun: KopilotListConversationChatMessagesResponseBody.Data.ScheduledTaskInfo.Tasks.LastCompletedRun?

                public var name: String?

                public var nextRunAt: String?

                public var scheduleDescription: String?

                public var status: String?

                public var taskId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.activeRun?.validate()
                    try self.lastCompletedRun?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.activeRun != nil {
                        map["ActiveRun"] = self.activeRun?.toMap()
                    }
                    if self.lastCompletedRun != nil {
                        map["LastCompletedRun"] = self.lastCompletedRun?.toMap()
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.nextRunAt != nil {
                        map["NextRunAt"] = self.nextRunAt!
                    }
                    if self.scheduleDescription != nil {
                        map["ScheduleDescription"] = self.scheduleDescription!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.taskId != nil {
                        map["TaskId"] = self.taskId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ActiveRun"] as? [String: Any?] {
                        var model = KopilotListConversationChatMessagesResponseBody.Data.ScheduledTaskInfo.Tasks.ActiveRun()
                        model.fromMap(value)
                        self.activeRun = model
                    }
                    if let value = dict["LastCompletedRun"] as? [String: Any?] {
                        var model = KopilotListConversationChatMessagesResponseBody.Data.ScheduledTaskInfo.Tasks.LastCompletedRun()
                        model.fromMap(value)
                        self.lastCompletedRun = model
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["NextRunAt"] as? String {
                        self.nextRunAt = value
                    }
                    if let value = dict["ScheduleDescription"] as? String {
                        self.scheduleDescription = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["TaskId"] as? String {
                        self.taskId = value
                    }
                }
            }
            public var asOf: String?

            public var enabledCount: Int64?

            public var hasMoreTasks: Bool?

            public var hasScheduledTask: Bool?

            public var nextTaskCursor: String?

            public var taskCount: Int64?

            public var tasks: [KopilotListConversationChatMessagesResponseBody.Data.ScheduledTaskInfo.Tasks]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.asOf != nil {
                    map["AsOf"] = self.asOf!
                }
                if self.enabledCount != nil {
                    map["EnabledCount"] = self.enabledCount!
                }
                if self.hasMoreTasks != nil {
                    map["HasMoreTasks"] = self.hasMoreTasks!
                }
                if self.hasScheduledTask != nil {
                    map["HasScheduledTask"] = self.hasScheduledTask!
                }
                if self.nextTaskCursor != nil {
                    map["NextTaskCursor"] = self.nextTaskCursor!
                }
                if self.taskCount != nil {
                    map["TaskCount"] = self.taskCount!
                }
                if self.tasks != nil {
                    var tmp : [Any] = []
                    for k in self.tasks! {
                        tmp.append(k.toMap())
                    }
                    map["Tasks"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AsOf"] as? String {
                    self.asOf = value
                }
                if let value = dict["EnabledCount"] as? Int64 {
                    self.enabledCount = value
                }
                if let value = dict["HasMoreTasks"] as? Bool {
                    self.hasMoreTasks = value
                }
                if let value = dict["HasScheduledTask"] as? Bool {
                    self.hasScheduledTask = value
                }
                if let value = dict["NextTaskCursor"] as? String {
                    self.nextTaskCursor = value
                }
                if let value = dict["TaskCount"] as? Int64 {
                    self.taskCount = value
                }
                if let value = dict["Tasks"] as? [Any?] {
                    var tmp : [KopilotListConversationChatMessagesResponseBody.Data.ScheduledTaskInfo.Tasks] = []
                    for v in value {
                        if v != nil {
                            var model = KopilotListConversationChatMessagesResponseBody.Data.ScheduledTaskInfo.Tasks()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tasks = tmp
                }
            }
        }
        public class ScheduledTaskQuota : Tea.TeaModel {
            public var limit: Int32?

            public var remaining: Int64?

            public var used: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limit != nil {
                    map["Limit"] = self.limit!
                }
                if self.remaining != nil {
                    map["Remaining"] = self.remaining!
                }
                if self.used != nil {
                    map["Used"] = self.used!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Limit"] as? Int32 {
                    self.limit = value
                }
                if let value = dict["Remaining"] as? Int64 {
                    self.remaining = value
                }
                if let value = dict["Used"] as? Int64 {
                    self.used = value
                }
            }
        }
        public var hasMore: Bool?

        public var messages: [KopilotListConversationChatMessagesResponseBody.Data.Messages]?

        public var nextBeforeTurnId: Int64?

        public var scheduledTaskInfo: KopilotListConversationChatMessagesResponseBody.Data.ScheduledTaskInfo?

        public var scheduledTaskQuota: KopilotListConversationChatMessagesResponseBody.Data.ScheduledTaskQuota?

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
            try self.scheduledTaskInfo?.validate()
            try self.scheduledTaskQuota?.validate()
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
            if self.scheduledTaskInfo != nil {
                map["ScheduledTaskInfo"] = self.scheduledTaskInfo?.toMap()
            }
            if self.scheduledTaskQuota != nil {
                map["ScheduledTaskQuota"] = self.scheduledTaskQuota?.toMap()
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
            if let value = dict["ScheduledTaskInfo"] as? [String: Any?] {
                var model = KopilotListConversationChatMessagesResponseBody.Data.ScheduledTaskInfo()
                model.fromMap(value)
                self.scheduledTaskInfo = model
            }
            if let value = dict["ScheduledTaskQuota"] as? [String: Any?] {
                var model = KopilotListConversationChatMessagesResponseBody.Data.ScheduledTaskQuota()
                model.fromMap(value)
                self.scheduledTaskQuota = model
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
    public var destinationCursor: String?

    public var destinationPageSize: Int32?

    public var includeAutomationOverview: Bool?

    public var page: Int32?

    public var regionId: String?

    public var size: Int32?

    public var taskCursor: String?

    public var taskPageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationCursor != nil {
            map["DestinationCursor"] = self.destinationCursor!
        }
        if self.destinationPageSize != nil {
            map["DestinationPageSize"] = self.destinationPageSize!
        }
        if self.includeAutomationOverview != nil {
            map["IncludeAutomationOverview"] = self.includeAutomationOverview!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.taskCursor != nil {
            map["TaskCursor"] = self.taskCursor!
        }
        if self.taskPageSize != nil {
            map["TaskPageSize"] = self.taskPageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestinationCursor"] as? String {
            self.destinationCursor = value
        }
        if let value = dict["DestinationPageSize"] as? Int32 {
            self.destinationPageSize = value
        }
        if let value = dict["IncludeAutomationOverview"] as? Bool {
            self.includeAutomationOverview = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["TaskCursor"] as? String {
            self.taskCursor = value
        }
        if let value = dict["TaskPageSize"] as? Int32 {
            self.taskPageSize = value
        }
    }
}

public class KopilotListConversationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AutomationOverview : Tea.TeaModel {
            public class DestinationQuota : Tea.TeaModel {
                public var limit: Int32?

                public var remaining: Int64?

                public var used: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.limit != nil {
                        map["Limit"] = self.limit!
                    }
                    if self.remaining != nil {
                        map["Remaining"] = self.remaining!
                    }
                    if self.used != nil {
                        map["Used"] = self.used!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Limit"] as? Int32 {
                        self.limit = value
                    }
                    if let value = dict["Remaining"] as? Int64 {
                        self.remaining = value
                    }
                    if let value = dict["Used"] as? Int64 {
                        self.used = value
                    }
                }
            }
            public class Destinations : Tea.TeaModel {
                public class Items : Tea.TeaModel {
                    public class LastDelivery : Tea.TeaModel {
                        public var acceptedAt: String?

                        public var createdAt: String?

                        public var deliveryId: String?

                        public var lastAttemptAt: String?

                        public var sendKind: String?

                        public var status: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.acceptedAt != nil {
                                map["AcceptedAt"] = self.acceptedAt!
                            }
                            if self.createdAt != nil {
                                map["CreatedAt"] = self.createdAt!
                            }
                            if self.deliveryId != nil {
                                map["DeliveryId"] = self.deliveryId!
                            }
                            if self.lastAttemptAt != nil {
                                map["LastAttemptAt"] = self.lastAttemptAt!
                            }
                            if self.sendKind != nil {
                                map["SendKind"] = self.sendKind!
                            }
                            if self.status != nil {
                                map["Status"] = self.status!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["AcceptedAt"] as? String {
                                self.acceptedAt = value
                            }
                            if let value = dict["CreatedAt"] as? String {
                                self.createdAt = value
                            }
                            if let value = dict["DeliveryId"] as? String {
                                self.deliveryId = value
                            }
                            if let value = dict["LastAttemptAt"] as? String {
                                self.lastAttemptAt = value
                            }
                            if let value = dict["SendKind"] as? String {
                                self.sendKind = value
                            }
                            if let value = dict["Status"] as? String {
                                self.status = value
                            }
                        }
                    }
                    public var createdAt: String?

                    public var destinationId: String?

                    public var lastDelivery: KopilotListConversationsResponseBody.Data.AutomationOverview.Destinations.Items.LastDelivery?

                    public var name: String?

                    public var status: String?

                    public var type: String?

                    public var updatedAt: String?

                    public var version: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.lastDelivery?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.createdAt != nil {
                            map["CreatedAt"] = self.createdAt!
                        }
                        if self.destinationId != nil {
                            map["DestinationId"] = self.destinationId!
                        }
                        if self.lastDelivery != nil {
                            map["LastDelivery"] = self.lastDelivery?.toMap()
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.status != nil {
                            map["Status"] = self.status!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.updatedAt != nil {
                            map["UpdatedAt"] = self.updatedAt!
                        }
                        if self.version != nil {
                            map["Version"] = self.version!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CreatedAt"] as? String {
                            self.createdAt = value
                        }
                        if let value = dict["DestinationId"] as? String {
                            self.destinationId = value
                        }
                        if let value = dict["LastDelivery"] as? [String: Any?] {
                            var model = KopilotListConversationsResponseBody.Data.AutomationOverview.Destinations.Items.LastDelivery()
                            model.fromMap(value)
                            self.lastDelivery = model
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Status"] as? String {
                            self.status = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                        if let value = dict["UpdatedAt"] as? String {
                            self.updatedAt = value
                        }
                        if let value = dict["Version"] as? Int64 {
                            self.version = value
                        }
                    }
                }
                public var hasMore: Bool?

                public var items: [KopilotListConversationsResponseBody.Data.AutomationOverview.Destinations.Items]?

                public var nextCursor: String?

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
                    if self.hasMore != nil {
                        map["HasMore"] = self.hasMore!
                    }
                    if self.items != nil {
                        var tmp : [Any] = []
                        for k in self.items! {
                            tmp.append(k.toMap())
                        }
                        map["Items"] = tmp
                    }
                    if self.nextCursor != nil {
                        map["NextCursor"] = self.nextCursor!
                    }
                    if self.total != nil {
                        map["Total"] = self.total!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["HasMore"] as? Bool {
                        self.hasMore = value
                    }
                    if let value = dict["Items"] as? [Any?] {
                        var tmp : [KopilotListConversationsResponseBody.Data.AutomationOverview.Destinations.Items] = []
                        for v in value {
                            if v != nil {
                                var model = KopilotListConversationsResponseBody.Data.AutomationOverview.Destinations.Items()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.items = tmp
                    }
                    if let value = dict["NextCursor"] as? String {
                        self.nextCursor = value
                    }
                    if let value = dict["Total"] as? Int64 {
                        self.total = value
                    }
                }
            }
            public class Quota : Tea.TeaModel {
                public var limit: Int32?

                public var remaining: Int64?

                public var used: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.limit != nil {
                        map["Limit"] = self.limit!
                    }
                    if self.remaining != nil {
                        map["Remaining"] = self.remaining!
                    }
                    if self.used != nil {
                        map["Used"] = self.used!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Limit"] as? Int32 {
                        self.limit = value
                    }
                    if let value = dict["Remaining"] as? Int64 {
                        self.remaining = value
                    }
                    if let value = dict["Used"] as? Int64 {
                        self.used = value
                    }
                }
            }
            public class Tasks : Tea.TeaModel {
                public class Items : Tea.TeaModel {
                    public class ActiveRun : Tea.TeaModel {
                        public var errorCode: String?

                        public var errorMessage: String?

                        public var finishedAt: String?

                        public var runId: String?

                        public var status: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.errorCode != nil {
                                map["ErrorCode"] = self.errorCode!
                            }
                            if self.errorMessage != nil {
                                map["ErrorMessage"] = self.errorMessage!
                            }
                            if self.finishedAt != nil {
                                map["FinishedAt"] = self.finishedAt!
                            }
                            if self.runId != nil {
                                map["RunId"] = self.runId!
                            }
                            if self.status != nil {
                                map["Status"] = self.status!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ErrorCode"] as? String {
                                self.errorCode = value
                            }
                            if let value = dict["ErrorMessage"] as? String {
                                self.errorMessage = value
                            }
                            if let value = dict["FinishedAt"] as? String {
                                self.finishedAt = value
                            }
                            if let value = dict["RunId"] as? String {
                                self.runId = value
                            }
                            if let value = dict["Status"] as? String {
                                self.status = value
                            }
                        }
                    }
                    public class Configuration : Tea.TeaModel {
                        public var cronExpression: String?

                        public var destinationIds: [String]?

                        public var instanceIds: [String]?

                        public var instruction: String?

                        public var intervalSeconds: Int32?

                        public var maxRunSeconds: Int32?

                        public var maxTokens: Int64?

                        public var name: String?

                        public var regionId: String?

                        public var resourceMode: String?

                        public var runAt: String?

                        public var scheduleType: String?

                        public var sessionMode: String?

                        public var targetSessionId: String?

                        public var timezone: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.cronExpression != nil {
                                map["CronExpression"] = self.cronExpression!
                            }
                            if self.destinationIds != nil {
                                map["DestinationIds"] = self.destinationIds!
                            }
                            if self.instanceIds != nil {
                                map["InstanceIds"] = self.instanceIds!
                            }
                            if self.instruction != nil {
                                map["Instruction"] = self.instruction!
                            }
                            if self.intervalSeconds != nil {
                                map["IntervalSeconds"] = self.intervalSeconds!
                            }
                            if self.maxRunSeconds != nil {
                                map["MaxRunSeconds"] = self.maxRunSeconds!
                            }
                            if self.maxTokens != nil {
                                map["MaxTokens"] = self.maxTokens!
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            if self.regionId != nil {
                                map["RegionId"] = self.regionId!
                            }
                            if self.resourceMode != nil {
                                map["ResourceMode"] = self.resourceMode!
                            }
                            if self.runAt != nil {
                                map["RunAt"] = self.runAt!
                            }
                            if self.scheduleType != nil {
                                map["ScheduleType"] = self.scheduleType!
                            }
                            if self.sessionMode != nil {
                                map["SessionMode"] = self.sessionMode!
                            }
                            if self.targetSessionId != nil {
                                map["TargetSessionId"] = self.targetSessionId!
                            }
                            if self.timezone != nil {
                                map["Timezone"] = self.timezone!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["CronExpression"] as? String {
                                self.cronExpression = value
                            }
                            if let value = dict["DestinationIds"] as? [String] {
                                self.destinationIds = value
                            }
                            if let value = dict["InstanceIds"] as? [String] {
                                self.instanceIds = value
                            }
                            if let value = dict["Instruction"] as? String {
                                self.instruction = value
                            }
                            if let value = dict["IntervalSeconds"] as? Int32 {
                                self.intervalSeconds = value
                            }
                            if let value = dict["MaxRunSeconds"] as? Int32 {
                                self.maxRunSeconds = value
                            }
                            if let value = dict["MaxTokens"] as? Int64 {
                                self.maxTokens = value
                            }
                            if let value = dict["Name"] as? String {
                                self.name = value
                            }
                            if let value = dict["RegionId"] as? String {
                                self.regionId = value
                            }
                            if let value = dict["ResourceMode"] as? String {
                                self.resourceMode = value
                            }
                            if let value = dict["RunAt"] as? String {
                                self.runAt = value
                            }
                            if let value = dict["ScheduleType"] as? String {
                                self.scheduleType = value
                            }
                            if let value = dict["SessionMode"] as? String {
                                self.sessionMode = value
                            }
                            if let value = dict["TargetSessionId"] as? String {
                                self.targetSessionId = value
                            }
                            if let value = dict["Timezone"] as? String {
                                self.timezone = value
                            }
                        }
                    }
                    public class LastCompletedRun : Tea.TeaModel {
                        public var errorCode: String?

                        public var errorMessage: String?

                        public var finishedAt: String?

                        public var runId: String?

                        public var status: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.errorCode != nil {
                                map["ErrorCode"] = self.errorCode!
                            }
                            if self.errorMessage != nil {
                                map["ErrorMessage"] = self.errorMessage!
                            }
                            if self.finishedAt != nil {
                                map["FinishedAt"] = self.finishedAt!
                            }
                            if self.runId != nil {
                                map["RunId"] = self.runId!
                            }
                            if self.status != nil {
                                map["Status"] = self.status!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ErrorCode"] as? String {
                                self.errorCode = value
                            }
                            if let value = dict["ErrorMessage"] as? String {
                                self.errorMessage = value
                            }
                            if let value = dict["FinishedAt"] as? String {
                                self.finishedAt = value
                            }
                            if let value = dict["RunId"] as? String {
                                self.runId = value
                            }
                            if let value = dict["Status"] as? String {
                                self.status = value
                            }
                        }
                    }
                    public var activeRun: KopilotListConversationsResponseBody.Data.AutomationOverview.Tasks.Items.ActiveRun?

                    public var configuration: KopilotListConversationsResponseBody.Data.AutomationOverview.Tasks.Items.Configuration?

                    public var createdAt: String?

                    public var lastCompletedRun: KopilotListConversationsResponseBody.Data.AutomationOverview.Tasks.Items.LastCompletedRun?

                    public var name: String?

                    public var nextRunAt: String?

                    public var scheduleDescription: String?

                    public var sessionMode: String?

                    public var sourceSessionId: String?

                    public var status: String?

                    public var targetSessionId: String?

                    public var taskId: String?

                    public var updatedAt: String?

                    public var version: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.activeRun?.validate()
                        try self.configuration?.validate()
                        try self.lastCompletedRun?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.activeRun != nil {
                            map["ActiveRun"] = self.activeRun?.toMap()
                        }
                        if self.configuration != nil {
                            map["Configuration"] = self.configuration?.toMap()
                        }
                        if self.createdAt != nil {
                            map["CreatedAt"] = self.createdAt!
                        }
                        if self.lastCompletedRun != nil {
                            map["LastCompletedRun"] = self.lastCompletedRun?.toMap()
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.nextRunAt != nil {
                            map["NextRunAt"] = self.nextRunAt!
                        }
                        if self.scheduleDescription != nil {
                            map["ScheduleDescription"] = self.scheduleDescription!
                        }
                        if self.sessionMode != nil {
                            map["SessionMode"] = self.sessionMode!
                        }
                        if self.sourceSessionId != nil {
                            map["SourceSessionId"] = self.sourceSessionId!
                        }
                        if self.status != nil {
                            map["Status"] = self.status!
                        }
                        if self.targetSessionId != nil {
                            map["TargetSessionId"] = self.targetSessionId!
                        }
                        if self.taskId != nil {
                            map["TaskId"] = self.taskId!
                        }
                        if self.updatedAt != nil {
                            map["UpdatedAt"] = self.updatedAt!
                        }
                        if self.version != nil {
                            map["Version"] = self.version!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ActiveRun"] as? [String: Any?] {
                            var model = KopilotListConversationsResponseBody.Data.AutomationOverview.Tasks.Items.ActiveRun()
                            model.fromMap(value)
                            self.activeRun = model
                        }
                        if let value = dict["Configuration"] as? [String: Any?] {
                            var model = KopilotListConversationsResponseBody.Data.AutomationOverview.Tasks.Items.Configuration()
                            model.fromMap(value)
                            self.configuration = model
                        }
                        if let value = dict["CreatedAt"] as? String {
                            self.createdAt = value
                        }
                        if let value = dict["LastCompletedRun"] as? [String: Any?] {
                            var model = KopilotListConversationsResponseBody.Data.AutomationOverview.Tasks.Items.LastCompletedRun()
                            model.fromMap(value)
                            self.lastCompletedRun = model
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["NextRunAt"] as? String {
                            self.nextRunAt = value
                        }
                        if let value = dict["ScheduleDescription"] as? String {
                            self.scheduleDescription = value
                        }
                        if let value = dict["SessionMode"] as? String {
                            self.sessionMode = value
                        }
                        if let value = dict["SourceSessionId"] as? String {
                            self.sourceSessionId = value
                        }
                        if let value = dict["Status"] as? String {
                            self.status = value
                        }
                        if let value = dict["TargetSessionId"] as? String {
                            self.targetSessionId = value
                        }
                        if let value = dict["TaskId"] as? String {
                            self.taskId = value
                        }
                        if let value = dict["UpdatedAt"] as? String {
                            self.updatedAt = value
                        }
                        if let value = dict["Version"] as? Int64 {
                            self.version = value
                        }
                    }
                }
                public var hasMore: Bool?

                public var items: [KopilotListConversationsResponseBody.Data.AutomationOverview.Tasks.Items]?

                public var nextCursor: String?

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
                    if self.hasMore != nil {
                        map["HasMore"] = self.hasMore!
                    }
                    if self.items != nil {
                        var tmp : [Any] = []
                        for k in self.items! {
                            tmp.append(k.toMap())
                        }
                        map["Items"] = tmp
                    }
                    if self.nextCursor != nil {
                        map["NextCursor"] = self.nextCursor!
                    }
                    if self.total != nil {
                        map["Total"] = self.total!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["HasMore"] as? Bool {
                        self.hasMore = value
                    }
                    if let value = dict["Items"] as? [Any?] {
                        var tmp : [KopilotListConversationsResponseBody.Data.AutomationOverview.Tasks.Items] = []
                        for v in value {
                            if v != nil {
                                var model = KopilotListConversationsResponseBody.Data.AutomationOverview.Tasks.Items()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.items = tmp
                    }
                    if let value = dict["NextCursor"] as? String {
                        self.nextCursor = value
                    }
                    if let value = dict["Total"] as? Int64 {
                        self.total = value
                    }
                }
            }
            public var asOf: String?

            public var destinationQuota: KopilotListConversationsResponseBody.Data.AutomationOverview.DestinationQuota?

            public var destinations: KopilotListConversationsResponseBody.Data.AutomationOverview.Destinations?

            public var homeRegion: String?

            public var quota: KopilotListConversationsResponseBody.Data.AutomationOverview.Quota?

            public var tasks: KopilotListConversationsResponseBody.Data.AutomationOverview.Tasks?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.destinationQuota?.validate()
                try self.destinations?.validate()
                try self.quota?.validate()
                try self.tasks?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.asOf != nil {
                    map["AsOf"] = self.asOf!
                }
                if self.destinationQuota != nil {
                    map["DestinationQuota"] = self.destinationQuota?.toMap()
                }
                if self.destinations != nil {
                    map["Destinations"] = self.destinations?.toMap()
                }
                if self.homeRegion != nil {
                    map["HomeRegion"] = self.homeRegion!
                }
                if self.quota != nil {
                    map["Quota"] = self.quota?.toMap()
                }
                if self.tasks != nil {
                    map["Tasks"] = self.tasks?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AsOf"] as? String {
                    self.asOf = value
                }
                if let value = dict["DestinationQuota"] as? [String: Any?] {
                    var model = KopilotListConversationsResponseBody.Data.AutomationOverview.DestinationQuota()
                    model.fromMap(value)
                    self.destinationQuota = model
                }
                if let value = dict["Destinations"] as? [String: Any?] {
                    var model = KopilotListConversationsResponseBody.Data.AutomationOverview.Destinations()
                    model.fromMap(value)
                    self.destinations = model
                }
                if let value = dict["HomeRegion"] as? String {
                    self.homeRegion = value
                }
                if let value = dict["Quota"] as? [String: Any?] {
                    var model = KopilotListConversationsResponseBody.Data.AutomationOverview.Quota()
                    model.fromMap(value)
                    self.quota = model
                }
                if let value = dict["Tasks"] as? [String: Any?] {
                    var model = KopilotListConversationsResponseBody.Data.AutomationOverview.Tasks()
                    model.fromMap(value)
                    self.tasks = model
                }
            }
        }
        public class ScheduledTaskQuota : Tea.TeaModel {
            public var limit: Int32?

            public var remaining: Int64?

            public var used: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limit != nil {
                    map["Limit"] = self.limit!
                }
                if self.remaining != nil {
                    map["Remaining"] = self.remaining!
                }
                if self.used != nil {
                    map["Used"] = self.used!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Limit"] as? Int32 {
                    self.limit = value
                }
                if let value = dict["Remaining"] as? Int64 {
                    self.remaining = value
                }
                if let value = dict["Used"] as? Int64 {
                    self.used = value
                }
            }
        }
        public var automationOverview: KopilotListConversationsResponseBody.Data.AutomationOverview?

        public var conversationIds: [String]?

        public var count: Int32?

        public var page: Int32?

        public var scheduledTaskInfoBySessionId: [String: DataScheduledTaskInfoBySessionIdValue]?

        public var scheduledTaskQuota: KopilotListConversationsResponseBody.Data.ScheduledTaskQuota?

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
            try self.automationOverview?.validate()
            try self.scheduledTaskQuota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.automationOverview != nil {
                map["AutomationOverview"] = self.automationOverview?.toMap()
            }
            if self.conversationIds != nil {
                map["ConversationIds"] = self.conversationIds!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.scheduledTaskInfoBySessionId != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.scheduledTaskInfoBySessionId! {
                    tmp[k] = v.toMap()
                }
                map["ScheduledTaskInfoBySessionId"] = tmp
            }
            if self.scheduledTaskQuota != nil {
                map["ScheduledTaskQuota"] = self.scheduledTaskQuota?.toMap()
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
            if let value = dict["AutomationOverview"] as? [String: Any?] {
                var model = KopilotListConversationsResponseBody.Data.AutomationOverview()
                model.fromMap(value)
                self.automationOverview = model
            }
            if let value = dict["ConversationIds"] as? [String] {
                self.conversationIds = value
            }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["ScheduledTaskInfoBySessionId"] as? [String: Any?] {
                var tmp : [String: DataScheduledTaskInfoBySessionIdValue] = [:]
                for (k, v) in value {
                    if v != nil {
                        var model = DataScheduledTaskInfoBySessionIdValue()
                        model.fromMap(v as? [String: Any?])
                        tmp[k] = model
                    }
                }
                self.scheduledTaskInfoBySessionId = tmp
            }
            if let value = dict["ScheduledTaskQuota"] as? [String: Any?] {
                var model = KopilotListConversationsResponseBody.Data.ScheduledTaskQuota()
                model.fromMap(value)
                self.scheduledTaskQuota = model
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
