import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelAsyncTaskRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CancelAsyncTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class CancelAsyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelAsyncTaskResponseBody?

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
            var model = CancelAsyncTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ClearIntervenesRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class ClearIntervenesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failIdList: [String]?

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
            if self.failIdList != nil {
                map["FailIdList"] = self.failIdList!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailIdList") {
                self.failIdList = dict["FailIdList"] as! [String]
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: ClearIntervenesResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ClearIntervenesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ClearIntervenesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClearIntervenesResponseBody?

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
            var model = ClearIntervenesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGeneratedContentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var contentDomain: String?

    public var contentText: String?

    public var keywords: [String]?

    public var prompt: String?

    public var taskId: String?

    public var title: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentDomain != nil {
            map["ContentDomain"] = self.contentDomain!
        }
        if self.contentText != nil {
            map["ContentText"] = self.contentText!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentDomain") {
            self.contentDomain = dict["ContentDomain"] as! String
        }
        if dict.keys.contains("ContentText") {
            self.contentText = dict["ContentText"] as! String
        }
        if dict.keys.contains("Keywords") {
            self.keywords = dict["Keywords"] as! [String]
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class CreateGeneratedContentShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var contentDomain: String?

    public var contentText: String?

    public var keywordsShrink: String?

    public var prompt: String?

    public var taskId: String?

    public var title: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentDomain != nil {
            map["ContentDomain"] = self.contentDomain!
        }
        if self.contentText != nil {
            map["ContentText"] = self.contentText!
        }
        if self.keywordsShrink != nil {
            map["Keywords"] = self.keywordsShrink!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentDomain") {
            self.contentDomain = dict["ContentDomain"] as! String
        }
        if dict.keys.contains("ContentText") {
            self.contentText = dict["ContentText"] as! String
        }
        if dict.keys.contains("Keywords") {
            self.keywordsShrink = dict["Keywords"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class CreateGeneratedContentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class CreateGeneratedContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGeneratedContentResponseBody?

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
            var model = CreateGeneratedContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTokenRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class CreateTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expiredTime: Int64?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! Int64
            }
            if dict.keys.contains("Token") {
                self.token = dict["Token"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateTokenResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateTokenResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class CreateTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTokenResponseBody?

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
            var model = CreateTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomTextRequest : Tea.TeaModel {
    public var agentKey: String?

    public var commodityCode: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CommodityCode") {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class DeleteCustomTextResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class DeleteCustomTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomTextResponseBody?

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
            var model = DeleteCustomTextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomTopicByTopicRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class DeleteCustomTopicByTopicResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int32?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int32
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class DeleteCustomTopicByTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomTopicByTopicResponseBody?

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
            var model = DeleteCustomTopicByTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomTopicViewPointByIdRequest : Tea.TeaModel {
    public var agentKey: String?

    public var customViewPointId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.customViewPointId != nil {
            map["CustomViewPointId"] = self.customViewPointId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CustomViewPointId") {
            self.customViewPointId = dict["CustomViewPointId"] as! String
        }
    }
}

public class DeleteCustomTopicViewPointByIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int32?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int32
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class DeleteCustomTopicViewPointByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomTopicViewPointByIdResponseBody?

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
            var model = DeleteCustomTopicViewPointByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGeneratedContentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteGeneratedContentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class DeleteGeneratedContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGeneratedContentResponseBody?

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
            var model = DeleteGeneratedContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteInterveneRuleRequest : Tea.TeaModel {
    public var agentKey: String?

    public var ruleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class DeleteInterveneRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failIdList: [String]?

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
            if self.failIdList != nil {
                map["FailIdList"] = self.failIdList!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailIdList") {
                self.failIdList = dict["FailIdList"] as! [String]
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: DeleteInterveneRuleResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DeleteInterveneRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class DeleteInterveneRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInterveneRuleResponseBody?

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
            var model = DeleteInterveneRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMaterialByIdRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class DeleteMaterialByIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class DeleteMaterialByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMaterialByIdResponseBody?

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
            var model = DeleteMaterialByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DocumentExtractionRequest : Tea.TeaModel {
    public var agentKey: String?

    public var urls: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.urls != nil {
            map["Urls"] = self.urls!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Urls") {
            self.urls = dict["Urls"] as! [String]
        }
    }
}

public class DocumentExtractionShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var urlsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.urlsShrink != nil {
            map["Urls"] = self.urlsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Urls") {
            self.urlsShrink = dict["Urls"] as! String
        }
    }
}

public class DocumentExtractionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var author: String?

        public var content: String?

        public var docId: String?

        public var docUuid: String?

        public var pubTime: String?

        public var source: String?

        public var summary: String?

        public var tag: String?

        public var title: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.author != nil {
                map["Author"] = self.author!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.docId != nil {
                map["DocId"] = self.docId!
            }
            if self.docUuid != nil {
                map["DocUuid"] = self.docUuid!
            }
            if self.pubTime != nil {
                map["PubTime"] = self.pubTime!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Author") {
                self.author = dict["Author"] as! String
            }
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("DocId") {
                self.docId = dict["DocId"] as! String
            }
            if dict.keys.contains("DocUuid") {
                self.docUuid = dict["DocUuid"] as! String
            }
            if dict.keys.contains("PubTime") {
                self.pubTime = dict["PubTime"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Summary") {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var code: String?

    public var data: [DocumentExtractionResponseBody.Data]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [DocumentExtractionResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DocumentExtractionResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class DocumentExtractionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DocumentExtractionResponseBody?

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
            var model = DocumentExtractionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportGeneratedContentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class ExportGeneratedContentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ExportGeneratedContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportGeneratedContentResponseBody?

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
            var model = ExportGeneratedContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportHotTopicPlanningProposalsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var customViewPointIds: [String]?

    public var exportType: String?

    public var titles: [String]?

    public var topic: String?

    public var topicSource: String?

    public var viewPointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.customViewPointIds != nil {
            map["CustomViewPointIds"] = self.customViewPointIds!
        }
        if self.exportType != nil {
            map["ExportType"] = self.exportType!
        }
        if self.titles != nil {
            map["Titles"] = self.titles!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.topicSource != nil {
            map["TopicSource"] = self.topicSource!
        }
        if self.viewPointType != nil {
            map["ViewPointType"] = self.viewPointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CustomViewPointIds") {
            self.customViewPointIds = dict["CustomViewPointIds"] as! [String]
        }
        if dict.keys.contains("ExportType") {
            self.exportType = dict["ExportType"] as! String
        }
        if dict.keys.contains("Titles") {
            self.titles = dict["Titles"] as! [String]
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("TopicSource") {
            self.topicSource = dict["TopicSource"] as! String
        }
        if dict.keys.contains("ViewPointType") {
            self.viewPointType = dict["ViewPointType"] as! String
        }
    }
}

public class ExportHotTopicPlanningProposalsShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var customViewPointIdsShrink: String?

    public var exportType: String?

    public var titlesShrink: String?

    public var topic: String?

    public var topicSource: String?

    public var viewPointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.customViewPointIdsShrink != nil {
            map["CustomViewPointIds"] = self.customViewPointIdsShrink!
        }
        if self.exportType != nil {
            map["ExportType"] = self.exportType!
        }
        if self.titlesShrink != nil {
            map["Titles"] = self.titlesShrink!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.topicSource != nil {
            map["TopicSource"] = self.topicSource!
        }
        if self.viewPointType != nil {
            map["ViewPointType"] = self.viewPointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CustomViewPointIds") {
            self.customViewPointIdsShrink = dict["CustomViewPointIds"] as! String
        }
        if dict.keys.contains("ExportType") {
            self.exportType = dict["ExportType"] as! String
        }
        if dict.keys.contains("Titles") {
            self.titlesShrink = dict["Titles"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("TopicSource") {
            self.topicSource = dict["TopicSource"] as! String
        }
        if dict.keys.contains("ViewPointType") {
            self.viewPointType = dict["ViewPointType"] as! String
        }
    }
}

public class ExportHotTopicPlanningProposalsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ExportHotTopicPlanningProposalsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportHotTopicPlanningProposalsResponseBody?

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
            var model = ExportHotTopicPlanningProposalsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportIntervenesRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class ExportIntervenesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileUrl") {
                self.fileUrl = dict["FileUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: ExportIntervenesResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ExportIntervenesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ExportIntervenesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportIntervenesResponseBody?

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
            var model = ExportIntervenesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FeedbackDialogueRequest : Tea.TeaModel {
    public var agentKey: String?

    public var customerResponse: String?

    public var goodText: String?

    public var modifiedResponse: String?

    public var rating: String?

    public var ratingTags: [String]?

    public var sessionId: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.customerResponse != nil {
            map["CustomerResponse"] = self.customerResponse!
        }
        if self.goodText != nil {
            map["GoodText"] = self.goodText!
        }
        if self.modifiedResponse != nil {
            map["ModifiedResponse"] = self.modifiedResponse!
        }
        if self.rating != nil {
            map["Rating"] = self.rating!
        }
        if self.ratingTags != nil {
            map["RatingTags"] = self.ratingTags!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CustomerResponse") {
            self.customerResponse = dict["CustomerResponse"] as! String
        }
        if dict.keys.contains("GoodText") {
            self.goodText = dict["GoodText"] as! String
        }
        if dict.keys.contains("ModifiedResponse") {
            self.modifiedResponse = dict["ModifiedResponse"] as! String
        }
        if dict.keys.contains("Rating") {
            self.rating = dict["Rating"] as! String
        }
        if dict.keys.contains("RatingTags") {
            self.ratingTags = dict["RatingTags"] as! [String]
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class FeedbackDialogueShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var customerResponse: String?

    public var goodText: String?

    public var modifiedResponse: String?

    public var rating: String?

    public var ratingTagsShrink: String?

    public var sessionId: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.customerResponse != nil {
            map["CustomerResponse"] = self.customerResponse!
        }
        if self.goodText != nil {
            map["GoodText"] = self.goodText!
        }
        if self.modifiedResponse != nil {
            map["ModifiedResponse"] = self.modifiedResponse!
        }
        if self.rating != nil {
            map["Rating"] = self.rating!
        }
        if self.ratingTagsShrink != nil {
            map["RatingTags"] = self.ratingTagsShrink!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CustomerResponse") {
            self.customerResponse = dict["CustomerResponse"] as! String
        }
        if dict.keys.contains("GoodText") {
            self.goodText = dict["GoodText"] as! String
        }
        if dict.keys.contains("ModifiedResponse") {
            self.modifiedResponse = dict["ModifiedResponse"] as! String
        }
        if dict.keys.contains("Rating") {
            self.rating = dict["Rating"] as! String
        }
        if dict.keys.contains("RatingTags") {
            self.ratingTagsShrink = dict["RatingTags"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class FeedbackDialogueResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class FeedbackDialogueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FeedbackDialogueResponseBody?

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
            var model = FeedbackDialogueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FetchImageTaskRequest : Tea.TeaModel {
    public var agentKey: String?

    public var articleTaskId: String?

    public var taskIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.articleTaskId != nil {
            map["ArticleTaskId"] = self.articleTaskId!
        }
        if self.taskIdList != nil {
            map["TaskIdList"] = self.taskIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ArticleTaskId") {
            self.articleTaskId = dict["ArticleTaskId"] as! String
        }
        if dict.keys.contains("TaskIdList") {
            self.taskIdList = dict["TaskIdList"] as! [String]
        }
    }
}

public class FetchImageTaskShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var articleTaskId: String?

    public var taskIdListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.articleTaskId != nil {
            map["ArticleTaskId"] = self.articleTaskId!
        }
        if self.taskIdListShrink != nil {
            map["TaskIdList"] = self.taskIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ArticleTaskId") {
            self.articleTaskId = dict["ArticleTaskId"] as! String
        }
        if dict.keys.contains("TaskIdList") {
            self.taskIdListShrink = dict["TaskIdList"] as! String
        }
    }
}

public class FetchImageTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskInfoList : Tea.TeaModel {
            public class ImageList : Tea.TeaModel {
                public var code: String?

                public var message: String?

                public var url: String?

                public override init() {
                    super.init()
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
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Code") {
                        self.code = dict["Code"] as! String
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public var id: Int64?

            public var imageList: [FetchImageTaskResponseBody.Data.TaskInfoList.ImageList]?

            public var taskId: String?

            public var taskStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.imageList != nil {
                    var tmp : [Any] = []
                    for k in self.imageList! {
                        tmp.append(k.toMap())
                    }
                    map["ImageList"] = tmp
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("ImageList") {
                    var tmp : [FetchImageTaskResponseBody.Data.TaskInfoList.ImageList] = []
                    for v in dict["ImageList"] as! [Any] {
                        var model = FetchImageTaskResponseBody.Data.TaskInfoList.ImageList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.imageList = tmp
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TaskStatus") {
                    self.taskStatus = dict["TaskStatus"] as! String
                }
            }
        }
        public var taskInfoList: [FetchImageTaskResponseBody.Data.TaskInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskInfoList != nil {
                var tmp : [Any] = []
                for k in self.taskInfoList! {
                    tmp.append(k.toMap())
                }
                map["TaskInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskInfoList") {
                var tmp : [FetchImageTaskResponseBody.Data.TaskInfoList] = []
                for v in dict["TaskInfoList"] as! [Any] {
                    var model = FetchImageTaskResponseBody.Data.TaskInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskInfoList = tmp
            }
        }
    }
    public var code: String?

    public var data: FetchImageTaskResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = FetchImageTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class FetchImageTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FetchImageTaskResponseBody?

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
            var model = FetchImageTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateFileUrlByKeyRequest : Tea.TeaModel {
    public var agentKey: String?

    public var fileKey: String?

    public var fileName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("FileKey") {
            self.fileKey = dict["FileKey"] as! String
        }
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
    }
}

public class GenerateFileUrlByKeyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GenerateFileUrlByKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateFileUrlByKeyResponseBody?

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
            var model = GenerateFileUrlByKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateImageTaskRequest : Tea.TeaModel {
    public class ParagraphList : Tea.TeaModel {
        public var content: String?

        public var id: Int64?

        public var taskId: String?

        public var taskStatus: String?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! String
            }
        }
    }
    public var agentKey: String?

    public var articleTaskId: String?

    public var paragraphList: [GenerateImageTaskRequest.ParagraphList]?

    public var size: String?

    public var style: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.articleTaskId != nil {
            map["ArticleTaskId"] = self.articleTaskId!
        }
        if self.paragraphList != nil {
            var tmp : [Any] = []
            for k in self.paragraphList! {
                tmp.append(k.toMap())
            }
            map["ParagraphList"] = tmp
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.style != nil {
            map["Style"] = self.style!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ArticleTaskId") {
            self.articleTaskId = dict["ArticleTaskId"] as! String
        }
        if dict.keys.contains("ParagraphList") {
            var tmp : [GenerateImageTaskRequest.ParagraphList] = []
            for v in dict["ParagraphList"] as! [Any] {
                var model = GenerateImageTaskRequest.ParagraphList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.paragraphList = tmp
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! String
        }
        if dict.keys.contains("Style") {
            self.style = dict["Style"] as! String
        }
    }
}

public class GenerateImageTaskShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var articleTaskId: String?

    public var paragraphListShrink: String?

    public var size: String?

    public var style: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.articleTaskId != nil {
            map["ArticleTaskId"] = self.articleTaskId!
        }
        if self.paragraphListShrink != nil {
            map["ParagraphList"] = self.paragraphListShrink!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.style != nil {
            map["Style"] = self.style!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ArticleTaskId") {
            self.articleTaskId = dict["ArticleTaskId"] as! String
        }
        if dict.keys.contains("ParagraphList") {
            self.paragraphListShrink = dict["ParagraphList"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! String
        }
        if dict.keys.contains("Style") {
            self.style = dict["Style"] as! String
        }
    }
}

public class GenerateImageTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskList : Tea.TeaModel {
            public var content: String?

            public var id: Int64?

            public var taskId: String?

            public var taskStatus: String?

            public override init() {
                super.init()
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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TaskStatus") {
                    self.taskStatus = dict["TaskStatus"] as! String
                }
            }
        }
        public var taskList: [GenerateImageTaskResponseBody.Data.TaskList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskList != nil {
                var tmp : [Any] = []
                for k in self.taskList! {
                    tmp.append(k.toMap())
                }
                map["TaskList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskList") {
                var tmp : [GenerateImageTaskResponseBody.Data.TaskList] = []
                for v in dict["TaskList"] as! [Any] {
                    var model = GenerateImageTaskResponseBody.Data.TaskList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskList = tmp
            }
        }
    }
    public var code: String?

    public var data: GenerateImageTaskResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GenerateImageTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GenerateImageTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateImageTaskResponseBody?

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
            var model = GenerateImageTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateUploadConfigRequest : Tea.TeaModel {
    public var agentKey: String?

    public var fileName: String?

    public var parentDir: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.parentDir != nil {
            map["ParentDir"] = self.parentDir!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("ParentDir") {
            self.parentDir = dict["ParentDir"] as! String
        }
    }
}

public class GenerateUploadConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileKey: String?

        public var formDatas: [String: Any]?

        public var postUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileKey != nil {
                map["FileKey"] = self.fileKey!
            }
            if self.formDatas != nil {
                map["FormDatas"] = self.formDatas!
            }
            if self.postUrl != nil {
                map["PostUrl"] = self.postUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileKey") {
                self.fileKey = dict["FileKey"] as! String
            }
            if dict.keys.contains("FormDatas") {
                self.formDatas = dict["FormDatas"] as! [String: Any]
            }
            if dict.keys.contains("PostUrl") {
                self.postUrl = dict["PostUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: GenerateUploadConfigResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GenerateUploadConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GenerateUploadConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateUploadConfigResponseBody?

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
            var model = GenerateUploadConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateViewPointRequest : Tea.TeaModel {
    public class ReferenceData : Tea.TeaModel {
        public var miniDoc: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.miniDoc != nil {
                map["MiniDoc"] = self.miniDoc!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MiniDoc") {
                self.miniDoc = dict["MiniDoc"] as! [String]
            }
        }
    }
    public var agentKey: String?

    public var referenceData: GenerateViewPointRequest.ReferenceData?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.referenceData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.referenceData != nil {
            map["ReferenceData"] = self.referenceData?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ReferenceData") {
            var model = GenerateViewPointRequest.ReferenceData()
            model.fromMap(dict["ReferenceData"] as! [String: Any])
            self.referenceData = model
        }
    }
}

public class GenerateViewPointShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var referenceDataShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.referenceDataShrink != nil {
            map["ReferenceData"] = self.referenceDataShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ReferenceData") {
            self.referenceDataShrink = dict["ReferenceData"] as! String
        }
    }
}

public class GenerateViewPointResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var point: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.point != nil {
                map["Point"] = self.point!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Point") {
                self.point = dict["Point"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GenerateViewPointResponseBody.Data]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [GenerateViewPointResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GenerateViewPointResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GenerateViewPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateViewPointResponseBody?

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
            var model = GenerateViewPointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCustomHotTopicBroadcastJobRequest : Tea.TeaModel {
    public var taskId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetCustomHotTopicBroadcastJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var errorMessage: String?

        public var hotTopicVersion: String?

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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.hotTopicVersion != nil {
                map["HotTopicVersion"] = self.hotTopicVersion!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("HotTopicVersion") {
                self.hotTopicVersion = dict["HotTopicVersion"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetCustomHotTopicBroadcastJobResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetCustomHotTopicBroadcastJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetCustomHotTopicBroadcastJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomHotTopicBroadcastJobResponseBody?

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
            var model = GetCustomHotTopicBroadcastJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCustomTextRequest : Tea.TeaModel {
    public var agentKey: String?

    public var commodityCode: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CommodityCode") {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class GetCustomTextResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var createTime: String?

        public var createUser: String?

        public var id: Int64?

        public var title: String?

        public var updateTime: String?

        public var updateUser: String?

        public override init() {
            super.init()
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
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") {
                self.updateUser = dict["UpdateUser"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetCustomTextResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetCustomTextResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetCustomTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomTextResponseBody?

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
            var model = GetCustomTextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCustomTopicSelectionPerspectiveAnalysisTaskRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CustomViewPointsResult : Tea.TeaModel {
            public class Attitudes : Tea.TeaModel {
                public class ViewPoints : Tea.TeaModel {
                    public class Outlines : Tea.TeaModel {
                        public var outline: String?

                        public var summary: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.outline != nil {
                                map["Outline"] = self.outline!
                            }
                            if self.summary != nil {
                                map["Summary"] = self.summary!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Outline") {
                                self.outline = dict["Outline"] as! String
                            }
                            if dict.keys.contains("Summary") {
                                self.summary = dict["Summary"] as! String
                            }
                        }
                    }
                    public var outlines: [GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.CustomViewPointsResult.Attitudes.ViewPoints.Outlines]?

                    public var point: String?

                    public var summary: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.outlines != nil {
                            var tmp : [Any] = []
                            for k in self.outlines! {
                                tmp.append(k.toMap())
                            }
                            map["Outlines"] = tmp
                        }
                        if self.point != nil {
                            map["Point"] = self.point!
                        }
                        if self.summary != nil {
                            map["Summary"] = self.summary!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Outlines") {
                            var tmp : [GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.CustomViewPointsResult.Attitudes.ViewPoints.Outlines] = []
                            for v in dict["Outlines"] as! [Any] {
                                var model = GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.CustomViewPointsResult.Attitudes.ViewPoints.Outlines()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.outlines = tmp
                        }
                        if dict.keys.contains("Point") {
                            self.point = dict["Point"] as! String
                        }
                        if dict.keys.contains("Summary") {
                            self.summary = dict["Summary"] as! String
                        }
                    }
                }
                public var attitude: String?

                public var attitudeType: String?

                public var ratio: String?

                public var viewPoints: [GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.CustomViewPointsResult.Attitudes.ViewPoints]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.attitude != nil {
                        map["Attitude"] = self.attitude!
                    }
                    if self.attitudeType != nil {
                        map["AttitudeType"] = self.attitudeType!
                    }
                    if self.ratio != nil {
                        map["Ratio"] = self.ratio!
                    }
                    if self.viewPoints != nil {
                        var tmp : [Any] = []
                        for k in self.viewPoints! {
                            tmp.append(k.toMap())
                        }
                        map["ViewPoints"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Attitude") {
                        self.attitude = dict["Attitude"] as! String
                    }
                    if dict.keys.contains("AttitudeType") {
                        self.attitudeType = dict["AttitudeType"] as! String
                    }
                    if dict.keys.contains("Ratio") {
                        self.ratio = dict["Ratio"] as! String
                    }
                    if dict.keys.contains("ViewPoints") {
                        var tmp : [GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.CustomViewPointsResult.Attitudes.ViewPoints] = []
                        for v in dict["ViewPoints"] as! [Any] {
                            var model = GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.CustomViewPointsResult.Attitudes.ViewPoints()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.viewPoints = tmp
                    }
                }
            }
            public var attitudes: [GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.CustomViewPointsResult.Attitudes]?

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
                if self.attitudes != nil {
                    var tmp : [Any] = []
                    for k in self.attitudes! {
                        tmp.append(k.toMap())
                    }
                    map["Attitudes"] = tmp
                }
                if self.topic != nil {
                    map["Topic"] = self.topic!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Attitudes") {
                    var tmp : [GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.CustomViewPointsResult.Attitudes] = []
                    for v in dict["Attitudes"] as! [Any] {
                        var model = GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.CustomViewPointsResult.Attitudes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.attitudes = tmp
                }
                if dict.keys.contains("Topic") {
                    self.topic = dict["Topic"] as! String
                }
            }
        }
        public var customViewPointsResult: GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.CustomViewPointsResult?

        public var errorMessage: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.customViewPointsResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customViewPointsResult != nil {
                map["CustomViewPointsResult"] = self.customViewPointsResult?.toMap()
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomViewPointsResult") {
                var model = GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.CustomViewPointsResult()
                model.fromMap(dict["CustomViewPointsResult"] as! [String: Any])
                self.customViewPointsResult = model
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetCustomTopicSelectionPerspectiveAnalysisTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody?

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
            var model = GetCustomTopicSelectionPerspectiveAnalysisTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDataSourceOrderConfigRequest : Tea.TeaModel {
    public var agentKey: String?

    public var productCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
    }
}

public class GetDataSourceOrderConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class UserConfigDataSourceList : Tea.TeaModel {
            public var code: String?

            public var name: String?

            public var number: Int32?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Number") {
                    self.number = dict["Number"] as! Int32
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var userConfigDataSourceList: [GetDataSourceOrderConfigResponseBody.Data.UserConfigDataSourceList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userConfigDataSourceList != nil {
                var tmp : [Any] = []
                for k in self.userConfigDataSourceList! {
                    tmp.append(k.toMap())
                }
                map["UserConfigDataSourceList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserConfigDataSourceList") {
                var tmp : [GetDataSourceOrderConfigResponseBody.Data.UserConfigDataSourceList] = []
                for v in dict["UserConfigDataSourceList"] as! [Any] {
                    var model = GetDataSourceOrderConfigResponseBody.Data.UserConfigDataSourceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userConfigDataSourceList = tmp
            }
        }
    }
    public var code: String?

    public var data: GetDataSourceOrderConfigResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetDataSourceOrderConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetDataSourceOrderConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataSourceOrderConfigResponseBody?

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
            var model = GetDataSourceOrderConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDocClusterTaskRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetDocClusterTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Topics : Tea.TeaModel {
            public var docIds: [String]?

            public var summary: String?

            public var title: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.docIds != nil {
                    map["DocIds"] = self.docIds!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DocIds") {
                    self.docIds = dict["DocIds"] as! [String]
                }
                if dict.keys.contains("Summary") {
                    self.summary = dict["Summary"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public var errorMessage: String?

        public var status: String?

        public var topics: [GetDocClusterTaskResponseBody.Data.Topics]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.topics != nil {
                var tmp : [Any] = []
                for k in self.topics! {
                    tmp.append(k.toMap())
                }
                map["Topics"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Topics") {
                var tmp : [GetDocClusterTaskResponseBody.Data.Topics] = []
                for v in dict["Topics"] as! [Any] {
                    var model = GetDocClusterTaskResponseBody.Data.Topics()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.topics = tmp
            }
        }
    }
    public var code: String?

    public var data: GetDocClusterTaskResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetDocClusterTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetDocClusterTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocClusterTaskResponseBody?

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
            var model = GetDocClusterTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGeneratedContentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class GetGeneratedContentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var contentDomain: String?

        public var contentText: String?

        public var createTime: String?

        public var createUser: String?

        public var deviceId: String?

        public var id: Int64?

        public var keywordList: [String]?

        public var keywords: String?

        public var prompt: String?

        public var taskId: String?

        public var title: String?

        public var updateTime: String?

        public var updateUser: String?

        public var uuid: String?

        public override init() {
            super.init()
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
            if self.contentDomain != nil {
                map["ContentDomain"] = self.contentDomain!
            }
            if self.contentText != nil {
                map["ContentText"] = self.contentText!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keywordList != nil {
                map["KeywordList"] = self.keywordList!
            }
            if self.keywords != nil {
                map["Keywords"] = self.keywords!
            }
            if self.prompt != nil {
                map["Prompt"] = self.prompt!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ContentDomain") {
                self.contentDomain = dict["ContentDomain"] as! String
            }
            if dict.keys.contains("ContentText") {
                self.contentText = dict["ContentText"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("KeywordList") {
                self.keywordList = dict["KeywordList"] as! [String]
            }
            if dict.keys.contains("Keywords") {
                self.keywords = dict["Keywords"] as! String
            }
            if dict.keys.contains("Prompt") {
                self.prompt = dict["Prompt"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") {
                self.updateUser = dict["UpdateUser"] as! String
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetGeneratedContentResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetGeneratedContentResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetGeneratedContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGeneratedContentResponseBody?

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
            var model = GetGeneratedContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHotTopicBroadcastRequest : Tea.TeaModel {
    public class StepForCustomSummaryStyleConfig : Tea.TeaModel {
        public var summaryImageCount: Int32?

        public var summaryModel: String?

        public var summaryPrompt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.summaryImageCount != nil {
                map["SummaryImageCount"] = self.summaryImageCount!
            }
            if self.summaryModel != nil {
                map["SummaryModel"] = self.summaryModel!
            }
            if self.summaryPrompt != nil {
                map["SummaryPrompt"] = self.summaryPrompt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SummaryImageCount") {
                self.summaryImageCount = dict["SummaryImageCount"] as! Int32
            }
            if dict.keys.contains("SummaryModel") {
                self.summaryModel = dict["SummaryModel"] as! String
            }
            if dict.keys.contains("SummaryPrompt") {
                self.summaryPrompt = dict["SummaryPrompt"] as! String
            }
        }
    }
    public class StepForNewsBroadcastContentConfig : Tea.TeaModel {
        public class CustomHotValueWeights : Tea.TeaModel {
            public var dimension: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dimension != nil {
                    map["Dimension"] = self.dimension!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Dimension") {
                    self.dimension = dict["Dimension"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var categories: [String]?

        public var customHotValueWeights: [GetHotTopicBroadcastRequest.StepForNewsBroadcastContentConfig.CustomHotValueWeights]?

        public var topicCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.customHotValueWeights != nil {
                var tmp : [Any] = []
                for k in self.customHotValueWeights! {
                    tmp.append(k.toMap())
                }
                map["CustomHotValueWeights"] = tmp
            }
            if self.topicCount != nil {
                map["TopicCount"] = self.topicCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Categories") {
                self.categories = dict["Categories"] as! [String]
            }
            if dict.keys.contains("CustomHotValueWeights") {
                var tmp : [GetHotTopicBroadcastRequest.StepForNewsBroadcastContentConfig.CustomHotValueWeights] = []
                for v in dict["CustomHotValueWeights"] as! [Any] {
                    var model = GetHotTopicBroadcastRequest.StepForNewsBroadcastContentConfig.CustomHotValueWeights()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customHotValueWeights = tmp
            }
            if dict.keys.contains("TopicCount") {
                self.topicCount = dict["TopicCount"] as! Int32
            }
        }
    }
    public var calcTotalToken: Bool?

    public var category: String?

    public var current: Int32?

    public var hotTopicVersion: String?

    public var size: Int32?

    public var stepForCustomSummaryStyleConfig: GetHotTopicBroadcastRequest.StepForCustomSummaryStyleConfig?

    public var stepForNewsBroadcastContentConfig: GetHotTopicBroadcastRequest.StepForNewsBroadcastContentConfig?

    public var topics: [String]?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stepForCustomSummaryStyleConfig?.validate()
        try self.stepForNewsBroadcastContentConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.calcTotalToken != nil {
            map["CalcTotalToken"] = self.calcTotalToken!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.hotTopicVersion != nil {
            map["HotTopicVersion"] = self.hotTopicVersion!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.stepForCustomSummaryStyleConfig != nil {
            map["StepForCustomSummaryStyleConfig"] = self.stepForCustomSummaryStyleConfig?.toMap()
        }
        if self.stepForNewsBroadcastContentConfig != nil {
            map["StepForNewsBroadcastContentConfig"] = self.stepForNewsBroadcastContentConfig?.toMap()
        }
        if self.topics != nil {
            map["Topics"] = self.topics!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalcTotalToken") {
            self.calcTotalToken = dict["CalcTotalToken"] as! Bool
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("HotTopicVersion") {
            self.hotTopicVersion = dict["HotTopicVersion"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("StepForCustomSummaryStyleConfig") {
            var model = GetHotTopicBroadcastRequest.StepForCustomSummaryStyleConfig()
            model.fromMap(dict["StepForCustomSummaryStyleConfig"] as! [String: Any])
            self.stepForCustomSummaryStyleConfig = model
        }
        if dict.keys.contains("StepForNewsBroadcastContentConfig") {
            var model = GetHotTopicBroadcastRequest.StepForNewsBroadcastContentConfig()
            model.fromMap(dict["StepForNewsBroadcastContentConfig"] as! [String: Any])
            self.stepForNewsBroadcastContentConfig = model
        }
        if dict.keys.contains("Topics") {
            self.topics = dict["Topics"] as! [String]
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetHotTopicBroadcastShrinkRequest : Tea.TeaModel {
    public var calcTotalToken: Bool?

    public var category: String?

    public var current: Int32?

    public var hotTopicVersion: String?

    public var size: Int32?

    public var stepForCustomSummaryStyleConfigShrink: String?

    public var stepForNewsBroadcastContentConfigShrink: String?

    public var topicsShrink: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.calcTotalToken != nil {
            map["CalcTotalToken"] = self.calcTotalToken!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.hotTopicVersion != nil {
            map["HotTopicVersion"] = self.hotTopicVersion!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.stepForCustomSummaryStyleConfigShrink != nil {
            map["StepForCustomSummaryStyleConfig"] = self.stepForCustomSummaryStyleConfigShrink!
        }
        if self.stepForNewsBroadcastContentConfigShrink != nil {
            map["StepForNewsBroadcastContentConfig"] = self.stepForNewsBroadcastContentConfigShrink!
        }
        if self.topicsShrink != nil {
            map["Topics"] = self.topicsShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalcTotalToken") {
            self.calcTotalToken = dict["CalcTotalToken"] as! Bool
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("HotTopicVersion") {
            self.hotTopicVersion = dict["HotTopicVersion"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("StepForCustomSummaryStyleConfig") {
            self.stepForCustomSummaryStyleConfigShrink = dict["StepForCustomSummaryStyleConfig"] as! String
        }
        if dict.keys.contains("StepForNewsBroadcastContentConfig") {
            self.stepForNewsBroadcastContentConfigShrink = dict["StepForNewsBroadcastContentConfig"] as! String
        }
        if dict.keys.contains("Topics") {
            self.topicsShrink = dict["Topics"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetHotTopicBroadcastResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Images : Tea.TeaModel {
                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public class News : Tea.TeaModel {
                public class Comments : Tea.TeaModel {
                    public var text: String?

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
                        if self.text != nil {
                            map["Text"] = self.text!
                        }
                        if self.username != nil {
                            map["Username"] = self.username!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Text") {
                            self.text = dict["Text"] as! String
                        }
                        if dict.keys.contains("Username") {
                            self.username = dict["Username"] as! String
                        }
                    }
                }
                public var analysisCategory: String?

                public var analysisTopic: String?

                public var author: String?

                public var category: [String]?

                public var comments: [GetHotTopicBroadcastResponseBody.Data.Data.News.Comments]?

                public var content: String?

                public var createTime: String?

                public var domain: String?

                public var dt: String?

                public var hotTopic: String?

                public var imgList: [String]?

                public var logo: String?

                public var pubTime: String?

                public var summary: String?

                public var title: String?

                public var url: String?

                public var uuid: String?

                public var website: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.analysisCategory != nil {
                        map["AnalysisCategory"] = self.analysisCategory!
                    }
                    if self.analysisTopic != nil {
                        map["AnalysisTopic"] = self.analysisTopic!
                    }
                    if self.author != nil {
                        map["Author"] = self.author!
                    }
                    if self.category != nil {
                        map["Category"] = self.category!
                    }
                    if self.comments != nil {
                        var tmp : [Any] = []
                        for k in self.comments! {
                            tmp.append(k.toMap())
                        }
                        map["Comments"] = tmp
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.domain != nil {
                        map["Domain"] = self.domain!
                    }
                    if self.dt != nil {
                        map["Dt"] = self.dt!
                    }
                    if self.hotTopic != nil {
                        map["HotTopic"] = self.hotTopic!
                    }
                    if self.imgList != nil {
                        map["ImgList"] = self.imgList!
                    }
                    if self.logo != nil {
                        map["Logo"] = self.logo!
                    }
                    if self.pubTime != nil {
                        map["PubTime"] = self.pubTime!
                    }
                    if self.summary != nil {
                        map["Summary"] = self.summary!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    if self.uuid != nil {
                        map["Uuid"] = self.uuid!
                    }
                    if self.website != nil {
                        map["Website"] = self.website!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AnalysisCategory") {
                        self.analysisCategory = dict["AnalysisCategory"] as! String
                    }
                    if dict.keys.contains("AnalysisTopic") {
                        self.analysisTopic = dict["AnalysisTopic"] as! String
                    }
                    if dict.keys.contains("Author") {
                        self.author = dict["Author"] as! String
                    }
                    if dict.keys.contains("Category") {
                        self.category = dict["Category"] as! [String]
                    }
                    if dict.keys.contains("Comments") {
                        var tmp : [GetHotTopicBroadcastResponseBody.Data.Data.News.Comments] = []
                        for v in dict["Comments"] as! [Any] {
                            var model = GetHotTopicBroadcastResponseBody.Data.Data.News.Comments()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.comments = tmp
                    }
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("CreateTime") {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Domain") {
                        self.domain = dict["Domain"] as! String
                    }
                    if dict.keys.contains("Dt") {
                        self.dt = dict["Dt"] as! String
                    }
                    if dict.keys.contains("HotTopic") {
                        self.hotTopic = dict["HotTopic"] as! String
                    }
                    if dict.keys.contains("ImgList") {
                        self.imgList = dict["ImgList"] as! [String]
                    }
                    if dict.keys.contains("Logo") {
                        self.logo = dict["Logo"] as! String
                    }
                    if dict.keys.contains("PubTime") {
                        self.pubTime = dict["PubTime"] as! String
                    }
                    if dict.keys.contains("Summary") {
                        self.summary = dict["Summary"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                    if dict.keys.contains("Uuid") {
                        self.uuid = dict["Uuid"] as! String
                    }
                    if dict.keys.contains("Website") {
                        self.website = dict["Website"] as! String
                    }
                }
            }
            public class Summary : Tea.TeaModel {
                public class Summaries : Tea.TeaModel {
                    public var summary: String?

                    public var title: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.summary != nil {
                            map["Summary"] = self.summary!
                        }
                        if self.title != nil {
                            map["Title"] = self.title!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Summary") {
                            self.summary = dict["Summary"] as! String
                        }
                        if dict.keys.contains("Title") {
                            self.title = dict["Title"] as! String
                        }
                    }
                }
                public var inputToken: Int32?

                public var outputToken: Int32?

                public var summaries: [GetHotTopicBroadcastResponseBody.Data.Data.Summary.Summaries]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.inputToken != nil {
                        map["InputToken"] = self.inputToken!
                    }
                    if self.outputToken != nil {
                        map["OutputToken"] = self.outputToken!
                    }
                    if self.summaries != nil {
                        var tmp : [Any] = []
                        for k in self.summaries! {
                            tmp.append(k.toMap())
                        }
                        map["Summaries"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("InputToken") {
                        self.inputToken = dict["InputToken"] as! Int32
                    }
                    if dict.keys.contains("OutputToken") {
                        self.outputToken = dict["OutputToken"] as! Int32
                    }
                    if dict.keys.contains("Summaries") {
                        var tmp : [GetHotTopicBroadcastResponseBody.Data.Data.Summary.Summaries] = []
                        for v in dict["Summaries"] as! [Any] {
                            var model = GetHotTopicBroadcastResponseBody.Data.Data.Summary.Summaries()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.summaries = tmp
                    }
                }
            }
            public var category: String?

            public var createTime: String?

            public var customHotValue: Double?

            public var customTextSummary: String?

            public var hotTopic: String?

            public var hotTopicVersion: String?

            public var hotValue: Double?

            public var id: String?

            public var images: [GetHotTopicBroadcastResponseBody.Data.Data.Images]?

            public var inputToken: Int32?

            public var news: [GetHotTopicBroadcastResponseBody.Data.Data.News]?

            public var outputToken: Int32?

            public var summary: GetHotTopicBroadcastResponseBody.Data.Data.Summary?

            public var textSummary: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.summary?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.customHotValue != nil {
                    map["CustomHotValue"] = self.customHotValue!
                }
                if self.customTextSummary != nil {
                    map["CustomTextSummary"] = self.customTextSummary!
                }
                if self.hotTopic != nil {
                    map["HotTopic"] = self.hotTopic!
                }
                if self.hotTopicVersion != nil {
                    map["HotTopicVersion"] = self.hotTopicVersion!
                }
                if self.hotValue != nil {
                    map["HotValue"] = self.hotValue!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.images != nil {
                    var tmp : [Any] = []
                    for k in self.images! {
                        tmp.append(k.toMap())
                    }
                    map["Images"] = tmp
                }
                if self.inputToken != nil {
                    map["InputToken"] = self.inputToken!
                }
                if self.news != nil {
                    var tmp : [Any] = []
                    for k in self.news! {
                        tmp.append(k.toMap())
                    }
                    map["News"] = tmp
                }
                if self.outputToken != nil {
                    map["OutputToken"] = self.outputToken!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary?.toMap()
                }
                if self.textSummary != nil {
                    map["TextSummary"] = self.textSummary!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Category") {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CustomHotValue") {
                    self.customHotValue = dict["CustomHotValue"] as! Double
                }
                if dict.keys.contains("CustomTextSummary") {
                    self.customTextSummary = dict["CustomTextSummary"] as! String
                }
                if dict.keys.contains("HotTopic") {
                    self.hotTopic = dict["HotTopic"] as! String
                }
                if dict.keys.contains("HotTopicVersion") {
                    self.hotTopicVersion = dict["HotTopicVersion"] as! String
                }
                if dict.keys.contains("HotValue") {
                    self.hotValue = dict["HotValue"] as! Double
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Images") {
                    var tmp : [GetHotTopicBroadcastResponseBody.Data.Data.Images] = []
                    for v in dict["Images"] as! [Any] {
                        var model = GetHotTopicBroadcastResponseBody.Data.Data.Images()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.images = tmp
                }
                if dict.keys.contains("InputToken") {
                    self.inputToken = dict["InputToken"] as! Int32
                }
                if dict.keys.contains("News") {
                    var tmp : [GetHotTopicBroadcastResponseBody.Data.Data.News] = []
                    for v in dict["News"] as! [Any] {
                        var model = GetHotTopicBroadcastResponseBody.Data.Data.News()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.news = tmp
                }
                if dict.keys.contains("OutputToken") {
                    self.outputToken = dict["OutputToken"] as! Int32
                }
                if dict.keys.contains("Summary") {
                    var model = GetHotTopicBroadcastResponseBody.Data.Data.Summary()
                    model.fromMap(dict["Summary"] as! [String: Any])
                    self.summary = model
                }
                if dict.keys.contains("TextSummary") {
                    self.textSummary = dict["TextSummary"] as! String
                }
            }
        }
        public class TotalTokenInfo : Tea.TeaModel {
            public var hotTopicCount: Int32?

            public var inputTokens: Int32?

            public var outputTokens: Int32?

            public var wordCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hotTopicCount != nil {
                    map["HotTopicCount"] = self.hotTopicCount!
                }
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.wordCount != nil {
                    map["WordCount"] = self.wordCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HotTopicCount") {
                    self.hotTopicCount = dict["HotTopicCount"] as! Int32
                }
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int32
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int32
                }
                if dict.keys.contains("WordCount") {
                    self.wordCount = dict["WordCount"] as! Int32
                }
            }
        }
        public var data: [GetHotTopicBroadcastResponseBody.Data.Data]?

        public var totalCount: Int32?

        public var totalTokenInfo: GetHotTopicBroadcastResponseBody.Data.TotalTokenInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.totalTokenInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalTokenInfo != nil {
                map["TotalTokenInfo"] = self.totalTokenInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [GetHotTopicBroadcastResponseBody.Data.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = GetHotTopicBroadcastResponseBody.Data.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("TotalTokenInfo") {
                var model = GetHotTopicBroadcastResponseBody.Data.TotalTokenInfo()
                model.fromMap(dict["TotalTokenInfo"] as! [String: Any])
                self.totalTokenInfo = model
            }
        }
    }
    public var code: String?

    public var data: GetHotTopicBroadcastResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetHotTopicBroadcastResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetHotTopicBroadcastResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHotTopicBroadcastResponseBody?

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
            var model = GetHotTopicBroadcastResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInterveneGlobalReplyRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class GetInterveneGlobalReplyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ReplyMessagList : Tea.TeaModel {
            public var message: String?

            public var replyType: String?

            public override init() {
                super.init()
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
                if self.replyType != nil {
                    map["ReplyType"] = self.replyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("ReplyType") {
                    self.replyType = dict["ReplyType"] as! String
                }
            }
        }
        public var replyMessagList: [GetInterveneGlobalReplyResponseBody.Data.ReplyMessagList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.replyMessagList != nil {
                var tmp : [Any] = []
                for k in self.replyMessagList! {
                    tmp.append(k.toMap())
                }
                map["ReplyMessagList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ReplyMessagList") {
                var tmp : [GetInterveneGlobalReplyResponseBody.Data.ReplyMessagList] = []
                for v in dict["ReplyMessagList"] as! [Any] {
                    var model = GetInterveneGlobalReplyResponseBody.Data.ReplyMessagList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.replyMessagList = tmp
            }
        }
    }
    public var code: String?

    public var data: GetInterveneGlobalReplyResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetInterveneGlobalReplyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetInterveneGlobalReplyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInterveneGlobalReplyResponseBody?

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
            var model = GetInterveneGlobalReplyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInterveneImportTaskInfoRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetInterveneImportTaskInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Status : Tea.TeaModel {
            public var msg: String?

            public var percentage: Int32?

            public var status: Int32?

            public var taskId: String?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.msg != nil {
                    map["Msg"] = self.msg!
                }
                if self.percentage != nil {
                    map["Percentage"] = self.percentage!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Msg") {
                    self.msg = dict["Msg"] as! String
                }
                if dict.keys.contains("Percentage") {
                    self.percentage = dict["Percentage"] as! Int32
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TaskName") {
                    self.taskName = dict["TaskName"] as! String
                }
            }
        }
        public var status: GetInterveneImportTaskInfoResponseBody.Data.Status?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.status?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.status != nil {
                map["Status"] = self.status?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Status") {
                var model = GetInterveneImportTaskInfoResponseBody.Data.Status()
                model.fromMap(dict["Status"] as! [String: Any])
                self.status = model
            }
        }
    }
    public var code: String?

    public var data: GetInterveneImportTaskInfoResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetInterveneImportTaskInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetInterveneImportTaskInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInterveneImportTaskInfoResponseBody?

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
            var model = GetInterveneImportTaskInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInterveneRuleDetailRequest : Tea.TeaModel {
    public var agentKey: String?

    public var ruleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class GetInterveneRuleDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InterveneRuleDetail : Tea.TeaModel {
            public class AnswerConfig : Tea.TeaModel {
                public var answerType: Int32?

                public var message: String?

                public var namespace: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.answerType != nil {
                        map["AnswerType"] = self.answerType!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.namespace != nil {
                        map["Namespace"] = self.namespace!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AnswerType") {
                        self.answerType = dict["AnswerType"] as! Int32
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Namespace") {
                        self.namespace = dict["Namespace"] as! String
                    }
                }
            }
            public class EffectConfig : Tea.TeaModel {
                public var effectType: Int32?

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
                    if self.effectType != nil {
                        map["EffectType"] = self.effectType!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EffectType") {
                        self.effectType = dict["EffectType"] as! Int32
                    }
                    if dict.keys.contains("EndTime") {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                }
            }
            public var answerConfig: [GetInterveneRuleDetailResponseBody.Data.InterveneRuleDetail.AnswerConfig]?

            public var effectConfig: GetInterveneRuleDetailResponseBody.Data.InterveneRuleDetail.EffectConfig?

            public var interveneType: Int32?

            public var namespaceList: [String]?

            public var ruleId: Int64?

            public var ruleName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.effectConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerConfig != nil {
                    var tmp : [Any] = []
                    for k in self.answerConfig! {
                        tmp.append(k.toMap())
                    }
                    map["AnswerConfig"] = tmp
                }
                if self.effectConfig != nil {
                    map["EffectConfig"] = self.effectConfig?.toMap()
                }
                if self.interveneType != nil {
                    map["InterveneType"] = self.interveneType!
                }
                if self.namespaceList != nil {
                    map["NamespaceList"] = self.namespaceList!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnswerConfig") {
                    var tmp : [GetInterveneRuleDetailResponseBody.Data.InterveneRuleDetail.AnswerConfig] = []
                    for v in dict["AnswerConfig"] as! [Any] {
                        var model = GetInterveneRuleDetailResponseBody.Data.InterveneRuleDetail.AnswerConfig()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.answerConfig = tmp
                }
                if dict.keys.contains("EffectConfig") {
                    var model = GetInterveneRuleDetailResponseBody.Data.InterveneRuleDetail.EffectConfig()
                    model.fromMap(dict["EffectConfig"] as! [String: Any])
                    self.effectConfig = model
                }
                if dict.keys.contains("InterveneType") {
                    self.interveneType = dict["InterveneType"] as! Int32
                }
                if dict.keys.contains("NamespaceList") {
                    self.namespaceList = dict["NamespaceList"] as! [String]
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! Int64
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
            }
        }
        public var interveneRuleDetail: GetInterveneRuleDetailResponseBody.Data.InterveneRuleDetail?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.interveneRuleDetail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.interveneRuleDetail != nil {
                map["InterveneRuleDetail"] = self.interveneRuleDetail?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InterveneRuleDetail") {
                var model = GetInterveneRuleDetailResponseBody.Data.InterveneRuleDetail()
                model.fromMap(dict["InterveneRuleDetail"] as! [String: Any])
                self.interveneRuleDetail = model
            }
        }
    }
    public var code: String?

    public var data: GetInterveneRuleDetailResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetInterveneRuleDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetInterveneRuleDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInterveneRuleDetailResponseBody?

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
            var model = GetInterveneRuleDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInterveneTemplateFileUrlRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class GetInterveneTemplateFileUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileUrl") {
                self.fileUrl = dict["FileUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetInterveneTemplateFileUrlResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetInterveneTemplateFileUrlResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetInterveneTemplateFileUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInterveneTemplateFileUrlResponseBody?

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
            var model = GetInterveneTemplateFileUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMaterialByIdRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
    }
}

public class GetMaterialByIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var author: String?

        public var createTime: String?

        public var createUser: String?

        public var docKeywords: [String]?

        public var docType: String?

        public var externalUrl: String?

        public var htmlContent: String?

        public var id: Int64?

        public var pubTime: String?

        public var publicUrl: String?

        public var shareAttr: Int32?

        public var srcFrom: String?

        public var summary: String?

        public var textContent: String?

        public var thumbnailInBase64: String?

        public var title: String?

        public var updateTime: String?

        public var updateUser: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.author != nil {
                map["Author"] = self.author!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.docKeywords != nil {
                map["DocKeywords"] = self.docKeywords!
            }
            if self.docType != nil {
                map["DocType"] = self.docType!
            }
            if self.externalUrl != nil {
                map["ExternalUrl"] = self.externalUrl!
            }
            if self.htmlContent != nil {
                map["HtmlContent"] = self.htmlContent!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.pubTime != nil {
                map["PubTime"] = self.pubTime!
            }
            if self.publicUrl != nil {
                map["PublicUrl"] = self.publicUrl!
            }
            if self.shareAttr != nil {
                map["ShareAttr"] = self.shareAttr!
            }
            if self.srcFrom != nil {
                map["SrcFrom"] = self.srcFrom!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.textContent != nil {
                map["TextContent"] = self.textContent!
            }
            if self.thumbnailInBase64 != nil {
                map["ThumbnailInBase64"] = self.thumbnailInBase64!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Author") {
                self.author = dict["Author"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("DocKeywords") {
                self.docKeywords = dict["DocKeywords"] as! [String]
            }
            if dict.keys.contains("DocType") {
                self.docType = dict["DocType"] as! String
            }
            if dict.keys.contains("ExternalUrl") {
                self.externalUrl = dict["ExternalUrl"] as! String
            }
            if dict.keys.contains("HtmlContent") {
                self.htmlContent = dict["HtmlContent"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("PubTime") {
                self.pubTime = dict["PubTime"] as! String
            }
            if dict.keys.contains("PublicUrl") {
                self.publicUrl = dict["PublicUrl"] as! String
            }
            if dict.keys.contains("ShareAttr") {
                self.shareAttr = dict["ShareAttr"] as! Int32
            }
            if dict.keys.contains("SrcFrom") {
                self.srcFrom = dict["SrcFrom"] as! String
            }
            if dict.keys.contains("Summary") {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("TextContent") {
                self.textContent = dict["TextContent"] as! String
            }
            if dict.keys.contains("ThumbnailInBase64") {
                self.thumbnailInBase64 = dict["ThumbnailInBase64"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") {
                self.updateUser = dict["UpdateUser"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetMaterialByIdResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetMaterialByIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetMaterialByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMaterialByIdResponseBody?

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
            var model = GetMaterialByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPropertiesRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class GetPropertiesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConsoleConfig : Tea.TeaModel {
            public var tipContent: String?

            public var title: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tipContent != nil {
                    map["TipContent"] = self.tipContent!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TipContent") {
                    self.tipContent = dict["TipContent"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public class IntelligentSearchConfig : Tea.TeaModel {
            public class SearchSamples : Tea.TeaModel {
                public class Articles : Tea.TeaModel {
                    public var select: Bool?

                    public var stared: Bool?

                    public var title: String?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.select != nil {
                            map["Select"] = self.select!
                        }
                        if self.stared != nil {
                            map["Stared"] = self.stared!
                        }
                        if self.title != nil {
                            map["Title"] = self.title!
                        }
                        if self.url != nil {
                            map["Url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Select") {
                            self.select = dict["Select"] as! Bool
                        }
                        if dict.keys.contains("Stared") {
                            self.stared = dict["Stared"] as! Bool
                        }
                        if dict.keys.contains("Title") {
                            self.title = dict["Title"] as! String
                        }
                        if dict.keys.contains("Url") {
                            self.url = dict["Url"] as! String
                        }
                    }
                }
                public var articles: [GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSamples.Articles]?

                public var prompt: String?

                public var text: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.articles != nil {
                        var tmp : [Any] = []
                        for k in self.articles! {
                            tmp.append(k.toMap())
                        }
                        map["Articles"] = tmp
                    }
                    if self.prompt != nil {
                        map["Prompt"] = self.prompt!
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Articles") {
                        var tmp : [GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSamples.Articles] = []
                        for v in dict["Articles"] as! [Any] {
                            var model = GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSamples.Articles()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.articles = tmp
                    }
                    if dict.keys.contains("Prompt") {
                        self.prompt = dict["Prompt"] as! String
                    }
                    if dict.keys.contains("Text") {
                        self.text = dict["Text"] as! String
                    }
                }
            }
            public class SearchSources : Tea.TeaModel {
                public var code: String?

                public var datasetName: String?

                public var name: String?

                public override init() {
                    super.init()
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
                    if self.datasetName != nil {
                        map["DatasetName"] = self.datasetName!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Code") {
                        self.code = dict["Code"] as! String
                    }
                    if dict.keys.contains("DatasetName") {
                        self.datasetName = dict["DatasetName"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public var productDescription: String?

            public var searchSamples: [GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSamples]?

            public var searchSources: [GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSources]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.productDescription != nil {
                    map["ProductDescription"] = self.productDescription!
                }
                if self.searchSamples != nil {
                    var tmp : [Any] = []
                    for k in self.searchSamples! {
                        tmp.append(k.toMap())
                    }
                    map["SearchSamples"] = tmp
                }
                if self.searchSources != nil {
                    var tmp : [Any] = []
                    for k in self.searchSources! {
                        tmp.append(k.toMap())
                    }
                    map["SearchSources"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ProductDescription") {
                    self.productDescription = dict["ProductDescription"] as! String
                }
                if dict.keys.contains("SearchSamples") {
                    var tmp : [GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSamples] = []
                    for v in dict["SearchSamples"] as! [Any] {
                        var model = GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSamples()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.searchSamples = tmp
                }
                if dict.keys.contains("SearchSources") {
                    var tmp : [GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSources] = []
                    for v in dict["SearchSources"] as! [Any] {
                        var model = GetPropertiesResponseBody.Data.IntelligentSearchConfig.SearchSources()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.searchSources = tmp
                }
            }
        }
        public class SearchSources : Tea.TeaModel {
            public var label: String?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class UserInfo : Tea.TeaModel {
            public var agentId: String?

            public var tenantId: String?

            public var userId: String?

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
                if self.agentId != nil {
                    map["AgentId"] = self.agentId!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AgentId") {
                    self.agentId = dict["AgentId"] as! String
                }
                if dict.keys.contains("TenantId") {
                    self.tenantId = dict["TenantId"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("Username") {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public class WanxiangImageSizeConfig : Tea.TeaModel {
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
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class WanxiangImageStyleConfig : Tea.TeaModel {
            public var name: String?

            public var pic: String?

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
                if self.pic != nil {
                    map["Pic"] = self.pic!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Pic") {
                    self.pic = dict["Pic"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var chatConfig: [String: Any]?

        public var consoleConfig: GetPropertiesResponseBody.Data.ConsoleConfig?

        public var generalConfigMap: [String: Any]?

        public var intelligentSearchConfig: GetPropertiesResponseBody.Data.IntelligentSearchConfig?

        public var searchSources: [GetPropertiesResponseBody.Data.SearchSources]?

        public var slrAuthorized: Bool?

        public var userInfo: GetPropertiesResponseBody.Data.UserInfo?

        public var wanxiangImageSizeConfig: [GetPropertiesResponseBody.Data.WanxiangImageSizeConfig]?

        public var wanxiangImageStyleConfig: [GetPropertiesResponseBody.Data.WanxiangImageStyleConfig]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.consoleConfig?.validate()
            try self.intelligentSearchConfig?.validate()
            try self.userInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chatConfig != nil {
                map["ChatConfig"] = self.chatConfig!
            }
            if self.consoleConfig != nil {
                map["ConsoleConfig"] = self.consoleConfig?.toMap()
            }
            if self.generalConfigMap != nil {
                map["GeneralConfigMap"] = self.generalConfigMap!
            }
            if self.intelligentSearchConfig != nil {
                map["IntelligentSearchConfig"] = self.intelligentSearchConfig?.toMap()
            }
            if self.searchSources != nil {
                var tmp : [Any] = []
                for k in self.searchSources! {
                    tmp.append(k.toMap())
                }
                map["SearchSources"] = tmp
            }
            if self.slrAuthorized != nil {
                map["SlrAuthorized"] = self.slrAuthorized!
            }
            if self.userInfo != nil {
                map["UserInfo"] = self.userInfo?.toMap()
            }
            if self.wanxiangImageSizeConfig != nil {
                var tmp : [Any] = []
                for k in self.wanxiangImageSizeConfig! {
                    tmp.append(k.toMap())
                }
                map["WanxiangImageSizeConfig"] = tmp
            }
            if self.wanxiangImageStyleConfig != nil {
                var tmp : [Any] = []
                for k in self.wanxiangImageStyleConfig! {
                    tmp.append(k.toMap())
                }
                map["WanxiangImageStyleConfig"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChatConfig") {
                self.chatConfig = dict["ChatConfig"] as! [String: Any]
            }
            if dict.keys.contains("ConsoleConfig") {
                var model = GetPropertiesResponseBody.Data.ConsoleConfig()
                model.fromMap(dict["ConsoleConfig"] as! [String: Any])
                self.consoleConfig = model
            }
            if dict.keys.contains("GeneralConfigMap") {
                self.generalConfigMap = dict["GeneralConfigMap"] as! [String: Any]
            }
            if dict.keys.contains("IntelligentSearchConfig") {
                var model = GetPropertiesResponseBody.Data.IntelligentSearchConfig()
                model.fromMap(dict["IntelligentSearchConfig"] as! [String: Any])
                self.intelligentSearchConfig = model
            }
            if dict.keys.contains("SearchSources") {
                var tmp : [GetPropertiesResponseBody.Data.SearchSources] = []
                for v in dict["SearchSources"] as! [Any] {
                    var model = GetPropertiesResponseBody.Data.SearchSources()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.searchSources = tmp
            }
            if dict.keys.contains("SlrAuthorized") {
                self.slrAuthorized = dict["SlrAuthorized"] as! Bool
            }
            if dict.keys.contains("UserInfo") {
                var model = GetPropertiesResponseBody.Data.UserInfo()
                model.fromMap(dict["UserInfo"] as! [String: Any])
                self.userInfo = model
            }
            if dict.keys.contains("WanxiangImageSizeConfig") {
                var tmp : [GetPropertiesResponseBody.Data.WanxiangImageSizeConfig] = []
                for v in dict["WanxiangImageSizeConfig"] as! [Any] {
                    var model = GetPropertiesResponseBody.Data.WanxiangImageSizeConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.wanxiangImageSizeConfig = tmp
            }
            if dict.keys.contains("WanxiangImageStyleConfig") {
                var tmp : [GetPropertiesResponseBody.Data.WanxiangImageStyleConfig] = []
                for v in dict["WanxiangImageStyleConfig"] as! [Any] {
                    var model = GetPropertiesResponseBody.Data.WanxiangImageStyleConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.wanxiangImageStyleConfig = tmp
            }
        }
    }
    public var code: String?

    public var data: GetPropertiesResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetPropertiesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetPropertiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPropertiesResponseBody?

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
            var model = GetPropertiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTopicByIdRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
    }
}

public class GetTopicByIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class StructureSummary : Tea.TeaModel {
            public class DocList : Tea.TeaModel {
                public var source: String?

                public var title: String?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.source != nil {
                        map["Source"] = self.source!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Source") {
                        self.source = dict["Source"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public var docList: [GetTopicByIdResponseBody.Data.StructureSummary.DocList]?

            public var summary: String?

            public var title: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.docList != nil {
                    var tmp : [Any] = []
                    for k in self.docList! {
                        tmp.append(k.toMap())
                    }
                    map["DocList"] = tmp
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DocList") {
                    var tmp : [GetTopicByIdResponseBody.Data.StructureSummary.DocList] = []
                    for v in dict["DocList"] as! [Any] {
                        var model = GetTopicByIdResponseBody.Data.StructureSummary.DocList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.docList = tmp
                }
                if dict.keys.contains("Summary") {
                    self.summary = dict["Summary"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public var asyncTaskId: String?

        public var createUser: String?

        public var hotValue: Int64?

        public var id: String?

        public var status: String?

        public var structureSummary: [GetTopicByIdResponseBody.Data.StructureSummary]?

        public var summary: String?

        public var taskErrorMessage: String?

        public var taskStatus: Int32?

        public var topic: String?

        public var topicSource: String?

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
            if self.asyncTaskId != nil {
                map["AsyncTaskId"] = self.asyncTaskId!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.hotValue != nil {
                map["HotValue"] = self.hotValue!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.structureSummary != nil {
                var tmp : [Any] = []
                for k in self.structureSummary! {
                    tmp.append(k.toMap())
                }
                map["StructureSummary"] = tmp
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.taskErrorMessage != nil {
                map["TaskErrorMessage"] = self.taskErrorMessage!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            if self.topicSource != nil {
                map["TopicSource"] = self.topicSource!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AsyncTaskId") {
                self.asyncTaskId = dict["AsyncTaskId"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("HotValue") {
                self.hotValue = dict["HotValue"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StructureSummary") {
                var tmp : [GetTopicByIdResponseBody.Data.StructureSummary] = []
                for v in dict["StructureSummary"] as! [Any] {
                    var model = GetTopicByIdResponseBody.Data.StructureSummary()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.structureSummary = tmp
            }
            if dict.keys.contains("Summary") {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("TaskErrorMessage") {
                self.taskErrorMessage = dict["TaskErrorMessage"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! Int32
            }
            if dict.keys.contains("Topic") {
                self.topic = dict["Topic"] as! String
            }
            if dict.keys.contains("TopicSource") {
                self.topicSource = dict["TopicSource"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetTopicByIdResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetTopicByIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetTopicByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTopicByIdResponseBody?

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
            var model = GetTopicByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTopicSelectionPerspectiveAnalysisTaskRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetTopicSelectionPerspectiveAnalysisTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FreshViewPointsResult : Tea.TeaModel {
            public class Attitudes : Tea.TeaModel {
                public class ViewPoints : Tea.TeaModel {
                    public class Outlines : Tea.TeaModel {
                        public var outline: String?

                        public var summary: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.outline != nil {
                                map["Outline"] = self.outline!
                            }
                            if self.summary != nil {
                                map["Summary"] = self.summary!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Outline") {
                                self.outline = dict["Outline"] as! String
                            }
                            if dict.keys.contains("Summary") {
                                self.summary = dict["Summary"] as! String
                            }
                        }
                    }
                    public var outlines: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.FreshViewPointsResult.Attitudes.ViewPoints.Outlines]?

                    public var point: String?

                    public var summary: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.outlines != nil {
                            var tmp : [Any] = []
                            for k in self.outlines! {
                                tmp.append(k.toMap())
                            }
                            map["Outlines"] = tmp
                        }
                        if self.point != nil {
                            map["Point"] = self.point!
                        }
                        if self.summary != nil {
                            map["Summary"] = self.summary!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Outlines") {
                            var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.FreshViewPointsResult.Attitudes.ViewPoints.Outlines] = []
                            for v in dict["Outlines"] as! [Any] {
                                var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.FreshViewPointsResult.Attitudes.ViewPoints.Outlines()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.outlines = tmp
                        }
                        if dict.keys.contains("Point") {
                            self.point = dict["Point"] as! String
                        }
                        if dict.keys.contains("Summary") {
                            self.summary = dict["Summary"] as! String
                        }
                    }
                }
                public var attitude: String?

                public var attitudeType: String?

                public var ratio: String?

                public var viewPoints: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.FreshViewPointsResult.Attitudes.ViewPoints]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.attitude != nil {
                        map["Attitude"] = self.attitude!
                    }
                    if self.attitudeType != nil {
                        map["AttitudeType"] = self.attitudeType!
                    }
                    if self.ratio != nil {
                        map["Ratio"] = self.ratio!
                    }
                    if self.viewPoints != nil {
                        var tmp : [Any] = []
                        for k in self.viewPoints! {
                            tmp.append(k.toMap())
                        }
                        map["ViewPoints"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Attitude") {
                        self.attitude = dict["Attitude"] as! String
                    }
                    if dict.keys.contains("AttitudeType") {
                        self.attitudeType = dict["AttitudeType"] as! String
                    }
                    if dict.keys.contains("Ratio") {
                        self.ratio = dict["Ratio"] as! String
                    }
                    if dict.keys.contains("ViewPoints") {
                        var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.FreshViewPointsResult.Attitudes.ViewPoints] = []
                        for v in dict["ViewPoints"] as! [Any] {
                            var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.FreshViewPointsResult.Attitudes.ViewPoints()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.viewPoints = tmp
                    }
                }
            }
            public var attitudes: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.FreshViewPointsResult.Attitudes]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attitudes != nil {
                    var tmp : [Any] = []
                    for k in self.attitudes! {
                        tmp.append(k.toMap())
                    }
                    map["Attitudes"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Attitudes") {
                    var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.FreshViewPointsResult.Attitudes] = []
                    for v in dict["Attitudes"] as! [Any] {
                        var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.FreshViewPointsResult.Attitudes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.attitudes = tmp
                }
            }
        }
        public class HotViewPointsResult : Tea.TeaModel {
            public class Attitudes : Tea.TeaModel {
                public class News : Tea.TeaModel {
                    public var content: String?

                    public var createTime: String?

                    public var docId: String?

                    public var docUuid: String?

                    public var imageUrls: [String]?

                    public var pubTime: String?

                    public var source: String?

                    public var summary: String?

                    public var tags: [String]?

                    public var title: String?

                    public var topic: String?

                    public var url: String?

                    public override init() {
                        super.init()
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
                        if self.docId != nil {
                            map["DocId"] = self.docId!
                        }
                        if self.docUuid != nil {
                            map["DocUuid"] = self.docUuid!
                        }
                        if self.imageUrls != nil {
                            map["ImageUrls"] = self.imageUrls!
                        }
                        if self.pubTime != nil {
                            map["PubTime"] = self.pubTime!
                        }
                        if self.source != nil {
                            map["Source"] = self.source!
                        }
                        if self.summary != nil {
                            map["Summary"] = self.summary!
                        }
                        if self.tags != nil {
                            map["Tags"] = self.tags!
                        }
                        if self.title != nil {
                            map["Title"] = self.title!
                        }
                        if self.topic != nil {
                            map["Topic"] = self.topic!
                        }
                        if self.url != nil {
                            map["Url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Content") {
                            self.content = dict["Content"] as! String
                        }
                        if dict.keys.contains("CreateTime") {
                            self.createTime = dict["CreateTime"] as! String
                        }
                        if dict.keys.contains("DocId") {
                            self.docId = dict["DocId"] as! String
                        }
                        if dict.keys.contains("DocUuid") {
                            self.docUuid = dict["DocUuid"] as! String
                        }
                        if dict.keys.contains("ImageUrls") {
                            self.imageUrls = dict["ImageUrls"] as! [String]
                        }
                        if dict.keys.contains("PubTime") {
                            self.pubTime = dict["PubTime"] as! String
                        }
                        if dict.keys.contains("Source") {
                            self.source = dict["Source"] as! String
                        }
                        if dict.keys.contains("Summary") {
                            self.summary = dict["Summary"] as! String
                        }
                        if dict.keys.contains("Tags") {
                            self.tags = dict["Tags"] as! [String]
                        }
                        if dict.keys.contains("Title") {
                            self.title = dict["Title"] as! String
                        }
                        if dict.keys.contains("Topic") {
                            self.topic = dict["Topic"] as! String
                        }
                        if dict.keys.contains("Url") {
                            self.url = dict["Url"] as! String
                        }
                    }
                }
                public class ViewPoints : Tea.TeaModel {
                    public class Outlines : Tea.TeaModel {
                        public var outline: String?

                        public var summary: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.outline != nil {
                                map["Outline"] = self.outline!
                            }
                            if self.summary != nil {
                                map["Summary"] = self.summary!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Outline") {
                                self.outline = dict["Outline"] as! String
                            }
                            if dict.keys.contains("Summary") {
                                self.summary = dict["Summary"] as! String
                            }
                        }
                    }
                    public var outlines: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.HotViewPointsResult.Attitudes.ViewPoints.Outlines]?

                    public var point: String?

                    public var summary: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.outlines != nil {
                            var tmp : [Any] = []
                            for k in self.outlines! {
                                tmp.append(k.toMap())
                            }
                            map["Outlines"] = tmp
                        }
                        if self.point != nil {
                            map["Point"] = self.point!
                        }
                        if self.summary != nil {
                            map["Summary"] = self.summary!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Outlines") {
                            var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.HotViewPointsResult.Attitudes.ViewPoints.Outlines] = []
                            for v in dict["Outlines"] as! [Any] {
                                var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.HotViewPointsResult.Attitudes.ViewPoints.Outlines()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.outlines = tmp
                        }
                        if dict.keys.contains("Point") {
                            self.point = dict["Point"] as! String
                        }
                        if dict.keys.contains("Summary") {
                            self.summary = dict["Summary"] as! String
                        }
                    }
                }
                public var attitude: String?

                public var attitudeType: String?

                public var news: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.HotViewPointsResult.Attitudes.News]?

                public var ratio: String?

                public var viewPoints: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.HotViewPointsResult.Attitudes.ViewPoints]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.attitude != nil {
                        map["Attitude"] = self.attitude!
                    }
                    if self.attitudeType != nil {
                        map["AttitudeType"] = self.attitudeType!
                    }
                    if self.news != nil {
                        var tmp : [Any] = []
                        for k in self.news! {
                            tmp.append(k.toMap())
                        }
                        map["News"] = tmp
                    }
                    if self.ratio != nil {
                        map["Ratio"] = self.ratio!
                    }
                    if self.viewPoints != nil {
                        var tmp : [Any] = []
                        for k in self.viewPoints! {
                            tmp.append(k.toMap())
                        }
                        map["ViewPoints"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Attitude") {
                        self.attitude = dict["Attitude"] as! String
                    }
                    if dict.keys.contains("AttitudeType") {
                        self.attitudeType = dict["AttitudeType"] as! String
                    }
                    if dict.keys.contains("News") {
                        var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.HotViewPointsResult.Attitudes.News] = []
                        for v in dict["News"] as! [Any] {
                            var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.HotViewPointsResult.Attitudes.News()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.news = tmp
                    }
                    if dict.keys.contains("Ratio") {
                        self.ratio = dict["Ratio"] as! String
                    }
                    if dict.keys.contains("ViewPoints") {
                        var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.HotViewPointsResult.Attitudes.ViewPoints] = []
                        for v in dict["ViewPoints"] as! [Any] {
                            var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.HotViewPointsResult.Attitudes.ViewPoints()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.viewPoints = tmp
                    }
                }
            }
            public var attitudes: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.HotViewPointsResult.Attitudes]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attitudes != nil {
                    var tmp : [Any] = []
                    for k in self.attitudes! {
                        tmp.append(k.toMap())
                    }
                    map["Attitudes"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Attitudes") {
                    var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.HotViewPointsResult.Attitudes] = []
                    for v in dict["Attitudes"] as! [Any] {
                        var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.HotViewPointsResult.Attitudes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.attitudes = tmp
                }
            }
        }
        public class TimedViewPointsResult : Tea.TeaModel {
            public class Attitudes : Tea.TeaModel {
                public class ViewPoints : Tea.TeaModel {
                    public class Outlines : Tea.TeaModel {
                        public var outline: String?

                        public var summary: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.outline != nil {
                                map["Outline"] = self.outline!
                            }
                            if self.summary != nil {
                                map["Summary"] = self.summary!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Outline") {
                                self.outline = dict["Outline"] as! String
                            }
                            if dict.keys.contains("Summary") {
                                self.summary = dict["Summary"] as! String
                            }
                        }
                    }
                    public var outlines: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TimedViewPointsResult.Attitudes.ViewPoints.Outlines]?

                    public var point: String?

                    public var summary: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.outlines != nil {
                            var tmp : [Any] = []
                            for k in self.outlines! {
                                tmp.append(k.toMap())
                            }
                            map["Outlines"] = tmp
                        }
                        if self.point != nil {
                            map["Point"] = self.point!
                        }
                        if self.summary != nil {
                            map["Summary"] = self.summary!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Outlines") {
                            var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TimedViewPointsResult.Attitudes.ViewPoints.Outlines] = []
                            for v in dict["Outlines"] as! [Any] {
                                var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TimedViewPointsResult.Attitudes.ViewPoints.Outlines()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.outlines = tmp
                        }
                        if dict.keys.contains("Point") {
                            self.point = dict["Point"] as! String
                        }
                        if dict.keys.contains("Summary") {
                            self.summary = dict["Summary"] as! String
                        }
                    }
                }
                public var attitude: String?

                public var attitudeType: String?

                public var pubTime: String?

                public var ratio: String?

                public var source: String?

                public var title: String?

                public var url: String?

                public var viewPoints: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TimedViewPointsResult.Attitudes.ViewPoints]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.attitude != nil {
                        map["Attitude"] = self.attitude!
                    }
                    if self.attitudeType != nil {
                        map["AttitudeType"] = self.attitudeType!
                    }
                    if self.pubTime != nil {
                        map["PubTime"] = self.pubTime!
                    }
                    if self.ratio != nil {
                        map["Ratio"] = self.ratio!
                    }
                    if self.source != nil {
                        map["Source"] = self.source!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    if self.viewPoints != nil {
                        var tmp : [Any] = []
                        for k in self.viewPoints! {
                            tmp.append(k.toMap())
                        }
                        map["ViewPoints"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Attitude") {
                        self.attitude = dict["Attitude"] as! String
                    }
                    if dict.keys.contains("AttitudeType") {
                        self.attitudeType = dict["AttitudeType"] as! String
                    }
                    if dict.keys.contains("PubTime") {
                        self.pubTime = dict["PubTime"] as! String
                    }
                    if dict.keys.contains("Ratio") {
                        self.ratio = dict["Ratio"] as! String
                    }
                    if dict.keys.contains("Source") {
                        self.source = dict["Source"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                    if dict.keys.contains("ViewPoints") {
                        var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TimedViewPointsResult.Attitudes.ViewPoints] = []
                        for v in dict["ViewPoints"] as! [Any] {
                            var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TimedViewPointsResult.Attitudes.ViewPoints()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.viewPoints = tmp
                    }
                }
            }
            public var attitudes: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TimedViewPointsResult.Attitudes]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attitudes != nil {
                    var tmp : [Any] = []
                    for k in self.attitudes! {
                        tmp.append(k.toMap())
                    }
                    map["Attitudes"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Attitudes") {
                    var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TimedViewPointsResult.Attitudes] = []
                    for v in dict["Attitudes"] as! [Any] {
                        var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TimedViewPointsResult.Attitudes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.attitudes = tmp
                }
            }
        }
        public class TopicSummaryResult : Tea.TeaModel {
            public class Summaries : Tea.TeaModel {
                public class DocList : Tea.TeaModel {
                    public var source: String?

                    public var title: String?

                    public var url: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.source != nil {
                            map["Source"] = self.source!
                        }
                        if self.title != nil {
                            map["Title"] = self.title!
                        }
                        if self.url != nil {
                            map["Url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Source") {
                            self.source = dict["Source"] as! String
                        }
                        if dict.keys.contains("Title") {
                            self.title = dict["Title"] as! String
                        }
                        if dict.keys.contains("Url") {
                            self.url = dict["Url"] as! String
                        }
                    }
                }
                public var docList: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TopicSummaryResult.Summaries.DocList]?

                public var summary: String?

                public var title: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.docList != nil {
                        var tmp : [Any] = []
                        for k in self.docList! {
                            tmp.append(k.toMap())
                        }
                        map["DocList"] = tmp
                    }
                    if self.summary != nil {
                        map["Summary"] = self.summary!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DocList") {
                        var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TopicSummaryResult.Summaries.DocList] = []
                        for v in dict["DocList"] as! [Any] {
                            var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TopicSummaryResult.Summaries.DocList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.docList = tmp
                    }
                    if dict.keys.contains("Summary") {
                        self.summary = dict["Summary"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                }
            }
            public var summaries: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TopicSummaryResult.Summaries]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.summaries != nil {
                    var tmp : [Any] = []
                    for k in self.summaries! {
                        tmp.append(k.toMap())
                    }
                    map["Summaries"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Summaries") {
                    var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TopicSummaryResult.Summaries] = []
                    for v in dict["Summaries"] as! [Any] {
                        var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TopicSummaryResult.Summaries()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.summaries = tmp
                }
            }
        }
        public class WebReviewPointsResult : Tea.TeaModel {
            public class Attitudes : Tea.TeaModel {
                public class Comments : Tea.TeaModel {
                    public var source: String?

                    public var text: String?

                    public var title: String?

                    public var url: String?

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
                        if self.source != nil {
                            map["Source"] = self.source!
                        }
                        if self.text != nil {
                            map["Text"] = self.text!
                        }
                        if self.title != nil {
                            map["Title"] = self.title!
                        }
                        if self.url != nil {
                            map["Url"] = self.url!
                        }
                        if self.username != nil {
                            map["Username"] = self.username!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Source") {
                            self.source = dict["Source"] as! String
                        }
                        if dict.keys.contains("Text") {
                            self.text = dict["Text"] as! String
                        }
                        if dict.keys.contains("Title") {
                            self.title = dict["Title"] as! String
                        }
                        if dict.keys.contains("Url") {
                            self.url = dict["Url"] as! String
                        }
                        if dict.keys.contains("Username") {
                            self.username = dict["Username"] as! String
                        }
                    }
                }
                public class ViewPoints : Tea.TeaModel {
                    public class Outlines : Tea.TeaModel {
                        public var outline: String?

                        public var summary: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.outline != nil {
                                map["Outline"] = self.outline!
                            }
                            if self.summary != nil {
                                map["Summary"] = self.summary!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Outline") {
                                self.outline = dict["Outline"] as! String
                            }
                            if dict.keys.contains("Summary") {
                                self.summary = dict["Summary"] as! String
                            }
                        }
                    }
                    public var outlines: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.WebReviewPointsResult.Attitudes.ViewPoints.Outlines]?

                    public var point: String?

                    public var summary: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.outlines != nil {
                            var tmp : [Any] = []
                            for k in self.outlines! {
                                tmp.append(k.toMap())
                            }
                            map["Outlines"] = tmp
                        }
                        if self.point != nil {
                            map["Point"] = self.point!
                        }
                        if self.summary != nil {
                            map["Summary"] = self.summary!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Outlines") {
                            var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.WebReviewPointsResult.Attitudes.ViewPoints.Outlines] = []
                            for v in dict["Outlines"] as! [Any] {
                                var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.WebReviewPointsResult.Attitudes.ViewPoints.Outlines()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.outlines = tmp
                        }
                        if dict.keys.contains("Point") {
                            self.point = dict["Point"] as! String
                        }
                        if dict.keys.contains("Summary") {
                            self.summary = dict["Summary"] as! String
                        }
                    }
                }
                public var attitude: String?

                public var attitudeType: String?

                public var comments: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.WebReviewPointsResult.Attitudes.Comments]?

                public var ratio: String?

                public var viewPoints: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.WebReviewPointsResult.Attitudes.ViewPoints]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.attitude != nil {
                        map["Attitude"] = self.attitude!
                    }
                    if self.attitudeType != nil {
                        map["AttitudeType"] = self.attitudeType!
                    }
                    if self.comments != nil {
                        var tmp : [Any] = []
                        for k in self.comments! {
                            tmp.append(k.toMap())
                        }
                        map["Comments"] = tmp
                    }
                    if self.ratio != nil {
                        map["Ratio"] = self.ratio!
                    }
                    if self.viewPoints != nil {
                        var tmp : [Any] = []
                        for k in self.viewPoints! {
                            tmp.append(k.toMap())
                        }
                        map["ViewPoints"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Attitude") {
                        self.attitude = dict["Attitude"] as! String
                    }
                    if dict.keys.contains("AttitudeType") {
                        self.attitudeType = dict["AttitudeType"] as! String
                    }
                    if dict.keys.contains("Comments") {
                        var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.WebReviewPointsResult.Attitudes.Comments] = []
                        for v in dict["Comments"] as! [Any] {
                            var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.WebReviewPointsResult.Attitudes.Comments()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.comments = tmp
                    }
                    if dict.keys.contains("Ratio") {
                        self.ratio = dict["Ratio"] as! String
                    }
                    if dict.keys.contains("ViewPoints") {
                        var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.WebReviewPointsResult.Attitudes.ViewPoints] = []
                        for v in dict["ViewPoints"] as! [Any] {
                            var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.WebReviewPointsResult.Attitudes.ViewPoints()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.viewPoints = tmp
                    }
                }
            }
            public var attitudes: [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.WebReviewPointsResult.Attitudes]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attitudes != nil {
                    var tmp : [Any] = []
                    for k in self.attitudes! {
                        tmp.append(k.toMap())
                    }
                    map["Attitudes"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Attitudes") {
                    var tmp : [GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.WebReviewPointsResult.Attitudes] = []
                    for v in dict["Attitudes"] as! [Any] {
                        var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.WebReviewPointsResult.Attitudes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.attitudes = tmp
                }
            }
        }
        public var errorMessage: String?

        public var freshViewPointsResult: GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.FreshViewPointsResult?

        public var hotViewPointsResult: GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.HotViewPointsResult?

        public var status: String?

        public var timedViewPointsResult: GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TimedViewPointsResult?

        public var topic: String?

        public var topicSummaryResult: GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TopicSummaryResult?

        public var webReviewPointsResult: GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.WebReviewPointsResult?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.freshViewPointsResult?.validate()
            try self.hotViewPointsResult?.validate()
            try self.timedViewPointsResult?.validate()
            try self.topicSummaryResult?.validate()
            try self.webReviewPointsResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.freshViewPointsResult != nil {
                map["FreshViewPointsResult"] = self.freshViewPointsResult?.toMap()
            }
            if self.hotViewPointsResult != nil {
                map["HotViewPointsResult"] = self.hotViewPointsResult?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.timedViewPointsResult != nil {
                map["TimedViewPointsResult"] = self.timedViewPointsResult?.toMap()
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            if self.topicSummaryResult != nil {
                map["TopicSummaryResult"] = self.topicSummaryResult?.toMap()
            }
            if self.webReviewPointsResult != nil {
                map["WebReviewPointsResult"] = self.webReviewPointsResult?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("FreshViewPointsResult") {
                var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.FreshViewPointsResult()
                model.fromMap(dict["FreshViewPointsResult"] as! [String: Any])
                self.freshViewPointsResult = model
            }
            if dict.keys.contains("HotViewPointsResult") {
                var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.HotViewPointsResult()
                model.fromMap(dict["HotViewPointsResult"] as! [String: Any])
                self.hotViewPointsResult = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TimedViewPointsResult") {
                var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TimedViewPointsResult()
                model.fromMap(dict["TimedViewPointsResult"] as! [String: Any])
                self.timedViewPointsResult = model
            }
            if dict.keys.contains("Topic") {
                self.topic = dict["Topic"] as! String
            }
            if dict.keys.contains("TopicSummaryResult") {
                var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.TopicSummaryResult()
                model.fromMap(dict["TopicSummaryResult"] as! [String: Any])
                self.topicSummaryResult = model
            }
            if dict.keys.contains("WebReviewPointsResult") {
                var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data.WebReviewPointsResult()
                model.fromMap(dict["WebReviewPointsResult"] as! [String: Any])
                self.webReviewPointsResult = model
            }
        }
    }
    public var code: String?

    public var data: GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetTopicSelectionPerspectiveAnalysisTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTopicSelectionPerspectiveAnalysisTaskResponseBody?

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
            var model = GetTopicSelectionPerspectiveAnalysisTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportInterveneFileRequest : Tea.TeaModel {
    public var agentKey: String?

    public var docName: String?

    public var fileKey: String?

    public var fileUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.docName != nil {
            map["DocName"] = self.docName!
        }
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DocName") {
            self.docName = dict["DocName"] as! String
        }
        if dict.keys.contains("FileKey") {
            self.fileKey = dict["FileKey"] as! String
        }
        if dict.keys.contains("FileUrl") {
            self.fileUrl = dict["FileUrl"] as! String
        }
    }
}

public class ImportInterveneFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failIdList: [String]?

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
            if self.failIdList != nil {
                map["FailIdList"] = self.failIdList!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailIdList") {
                self.failIdList = dict["FailIdList"] as! [String]
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: ImportInterveneFileResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ImportInterveneFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ImportInterveneFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportInterveneFileResponseBody?

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
            var model = ImportInterveneFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportInterveneFileAsyncRequest : Tea.TeaModel {
    public var agentKey: String?

    public var docName: String?

    public var fileKey: String?

    public var fileUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.docName != nil {
            map["DocName"] = self.docName!
        }
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DocName") {
            self.docName = dict["DocName"] as! String
        }
        if dict.keys.contains("FileKey") {
            self.fileKey = dict["FileKey"] as! String
        }
        if dict.keys.contains("FileUrl") {
            self.fileUrl = dict["FileUrl"] as! String
        }
    }
}

public class ImportInterveneFileAsyncResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failIdList: [String]?

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
            if self.failIdList != nil {
                map["FailIdList"] = self.failIdList!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailIdList") {
                self.failIdList = dict["FailIdList"] as! [String]
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: ImportInterveneFileAsyncResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ImportInterveneFileAsyncResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ImportInterveneFileAsyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportInterveneFileAsyncResponseBody?

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
            var model = ImportInterveneFileAsyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InsertInterveneGlobalReplyRequest : Tea.TeaModel {
    public class ReplyMessagList : Tea.TeaModel {
        public var message: String?

        public var replyType: String?

        public override init() {
            super.init()
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
            if self.replyType != nil {
                map["ReplyType"] = self.replyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("ReplyType") {
                self.replyType = dict["ReplyType"] as! String
            }
        }
    }
    public var agentKey: String?

    public var replyMessagList: [InsertInterveneGlobalReplyRequest.ReplyMessagList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.replyMessagList != nil {
            var tmp : [Any] = []
            for k in self.replyMessagList! {
                tmp.append(k.toMap())
            }
            map["ReplyMessagList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ReplyMessagList") {
            var tmp : [InsertInterveneGlobalReplyRequest.ReplyMessagList] = []
            for v in dict["ReplyMessagList"] as! [Any] {
                var model = InsertInterveneGlobalReplyRequest.ReplyMessagList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.replyMessagList = tmp
        }
    }
}

public class InsertInterveneGlobalReplyShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var replyMessagListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.replyMessagListShrink != nil {
            map["ReplyMessagList"] = self.replyMessagListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ReplyMessagList") {
            self.replyMessagListShrink = dict["ReplyMessagList"] as! String
        }
    }
}

public class InsertInterveneGlobalReplyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failIdList: [String]?

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
            if self.failIdList != nil {
                map["FailIdList"] = self.failIdList!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailIdList") {
                self.failIdList = dict["FailIdList"] as! [String]
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: InsertInterveneGlobalReplyResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = InsertInterveneGlobalReplyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class InsertInterveneGlobalReplyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InsertInterveneGlobalReplyResponseBody?

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
            var model = InsertInterveneGlobalReplyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InsertInterveneRuleRequest : Tea.TeaModel {
    public class InterveneRuleConfig : Tea.TeaModel {
        public class AnswerConfig : Tea.TeaModel {
            public var answerType: Int32?

            public var message: String?

            public var namespace: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerType != nil {
                    map["AnswerType"] = self.answerType!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.namespace != nil {
                    map["Namespace"] = self.namespace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnswerType") {
                    self.answerType = dict["AnswerType"] as! Int32
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Namespace") {
                    self.namespace = dict["Namespace"] as! String
                }
            }
        }
        public class EffectConfig : Tea.TeaModel {
            public var effectType: Int32?

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
                if self.effectType != nil {
                    map["EffectType"] = self.effectType!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EffectType") {
                    self.effectType = dict["EffectType"] as! Int32
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
            }
        }
        public class InterveneConfigList : Tea.TeaModel {
            public var id: String?

            public var operationType: Int32?

            public var query: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.operationType != nil {
                    map["OperationType"] = self.operationType!
                }
                if self.query != nil {
                    map["Query"] = self.query!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("OperationType") {
                    self.operationType = dict["OperationType"] as! Int32
                }
                if dict.keys.contains("Query") {
                    self.query = dict["Query"] as! String
                }
            }
        }
        public var answerConfig: [InsertInterveneRuleRequest.InterveneRuleConfig.AnswerConfig]?

        public var effectConfig: InsertInterveneRuleRequest.InterveneRuleConfig.EffectConfig?

        public var interveneConfigList: [InsertInterveneRuleRequest.InterveneRuleConfig.InterveneConfigList]?

        public var interveneType: Int32?

        public var namespaceList: [String]?

        public var ruleId: Int64?

        public var ruleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.effectConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answerConfig != nil {
                var tmp : [Any] = []
                for k in self.answerConfig! {
                    tmp.append(k.toMap())
                }
                map["AnswerConfig"] = tmp
            }
            if self.effectConfig != nil {
                map["EffectConfig"] = self.effectConfig?.toMap()
            }
            if self.interveneConfigList != nil {
                var tmp : [Any] = []
                for k in self.interveneConfigList! {
                    tmp.append(k.toMap())
                }
                map["InterveneConfigList"] = tmp
            }
            if self.interveneType != nil {
                map["InterveneType"] = self.interveneType!
            }
            if self.namespaceList != nil {
                map["NamespaceList"] = self.namespaceList!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnswerConfig") {
                var tmp : [InsertInterveneRuleRequest.InterveneRuleConfig.AnswerConfig] = []
                for v in dict["AnswerConfig"] as! [Any] {
                    var model = InsertInterveneRuleRequest.InterveneRuleConfig.AnswerConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.answerConfig = tmp
            }
            if dict.keys.contains("EffectConfig") {
                var model = InsertInterveneRuleRequest.InterveneRuleConfig.EffectConfig()
                model.fromMap(dict["EffectConfig"] as! [String: Any])
                self.effectConfig = model
            }
            if dict.keys.contains("InterveneConfigList") {
                var tmp : [InsertInterveneRuleRequest.InterveneRuleConfig.InterveneConfigList] = []
                for v in dict["InterveneConfigList"] as! [Any] {
                    var model = InsertInterveneRuleRequest.InterveneRuleConfig.InterveneConfigList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.interveneConfigList = tmp
            }
            if dict.keys.contains("InterveneType") {
                self.interveneType = dict["InterveneType"] as! Int32
            }
            if dict.keys.contains("NamespaceList") {
                self.namespaceList = dict["NamespaceList"] as! [String]
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
        }
    }
    public var agentKey: String?

    public var interveneRuleConfig: InsertInterveneRuleRequest.InterveneRuleConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.interveneRuleConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.interveneRuleConfig != nil {
            map["InterveneRuleConfig"] = self.interveneRuleConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InterveneRuleConfig") {
            var model = InsertInterveneRuleRequest.InterveneRuleConfig()
            model.fromMap(dict["InterveneRuleConfig"] as! [String: Any])
            self.interveneRuleConfig = model
        }
    }
}

public class InsertInterveneRuleShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var interveneRuleConfigShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.interveneRuleConfigShrink != nil {
            map["InterveneRuleConfig"] = self.interveneRuleConfigShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InterveneRuleConfig") {
            self.interveneRuleConfigShrink = dict["InterveneRuleConfig"] as! String
        }
    }
}

public class InsertInterveneRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ruleId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: InsertInterveneRuleResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = InsertInterveneRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class InsertInterveneRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InsertInterveneRuleResponseBody?

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
            var model = InsertInterveneRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAsyncTasksRequest : Tea.TeaModel {
    public var agentKey: String?

    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var current: Int32?

    public var size: Int32?

    public var taskCode: String?

    public var taskName: String?

    public var taskStatus: Int32?

    public var taskStatusList: [Int32]?

    public var taskType: String?

    public var taskTypeList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.taskCode != nil {
            map["TaskCode"] = self.taskCode!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.taskStatusList != nil {
            map["TaskStatusList"] = self.taskStatusList!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.taskTypeList != nil {
            map["TaskTypeList"] = self.taskTypeList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateTimeStart") {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("TaskCode") {
            self.taskCode = dict["TaskCode"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! Int32
        }
        if dict.keys.contains("TaskStatusList") {
            self.taskStatusList = dict["TaskStatusList"] as! [Int32]
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
        if dict.keys.contains("TaskTypeList") {
            self.taskTypeList = dict["TaskTypeList"] as! [String]
        }
    }
}

public class ListAsyncTasksShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var current: Int32?

    public var size: Int32?

    public var taskCode: String?

    public var taskName: String?

    public var taskStatus: Int32?

    public var taskStatusListShrink: String?

    public var taskType: String?

    public var taskTypeListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.taskCode != nil {
            map["TaskCode"] = self.taskCode!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.taskStatusListShrink != nil {
            map["TaskStatusList"] = self.taskStatusListShrink!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.taskTypeListShrink != nil {
            map["TaskTypeList"] = self.taskTypeListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateTimeStart") {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("TaskCode") {
            self.taskCode = dict["TaskCode"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! Int32
        }
        if dict.keys.contains("TaskStatusList") {
            self.taskStatusListShrink = dict["TaskStatusList"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
        if dict.keys.contains("TaskTypeList") {
            self.taskTypeListShrink = dict["TaskTypeList"] as! String
        }
    }
}

public class ListAsyncTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var createUser: String?

        public var id: Int64?

        public var taskCode: String?

        public var taskDefinition: String?

        public var taskEndTime: String?

        public var taskErrorMessage: String?

        public var taskExecuteTime: String?

        public var taskId: String?

        public var taskInnerErrorMessage: String?

        public var taskIntermediateResult: String?

        public var taskName: String?

        public var taskParam: String?

        public var taskProgressMessage: String?

        public var taskResult: String?

        public var taskRetryCount: String?

        public var taskStartTime: String?

        public var taskStatus: Int32?

        public var taskType: String?

        public var updateTime: String?

        public var updateUser: String?

        public override init() {
            super.init()
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
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.taskCode != nil {
                map["TaskCode"] = self.taskCode!
            }
            if self.taskDefinition != nil {
                map["TaskDefinition"] = self.taskDefinition!
            }
            if self.taskEndTime != nil {
                map["TaskEndTime"] = self.taskEndTime!
            }
            if self.taskErrorMessage != nil {
                map["TaskErrorMessage"] = self.taskErrorMessage!
            }
            if self.taskExecuteTime != nil {
                map["TaskExecuteTime"] = self.taskExecuteTime!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskInnerErrorMessage != nil {
                map["TaskInnerErrorMessage"] = self.taskInnerErrorMessage!
            }
            if self.taskIntermediateResult != nil {
                map["TaskIntermediateResult"] = self.taskIntermediateResult!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskParam != nil {
                map["TaskParam"] = self.taskParam!
            }
            if self.taskProgressMessage != nil {
                map["TaskProgressMessage"] = self.taskProgressMessage!
            }
            if self.taskResult != nil {
                map["TaskResult"] = self.taskResult!
            }
            if self.taskRetryCount != nil {
                map["TaskRetryCount"] = self.taskRetryCount!
            }
            if self.taskStartTime != nil {
                map["TaskStartTime"] = self.taskStartTime!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("TaskCode") {
                self.taskCode = dict["TaskCode"] as! String
            }
            if dict.keys.contains("TaskDefinition") {
                self.taskDefinition = dict["TaskDefinition"] as! String
            }
            if dict.keys.contains("TaskEndTime") {
                self.taskEndTime = dict["TaskEndTime"] as! String
            }
            if dict.keys.contains("TaskErrorMessage") {
                self.taskErrorMessage = dict["TaskErrorMessage"] as! String
            }
            if dict.keys.contains("TaskExecuteTime") {
                self.taskExecuteTime = dict["TaskExecuteTime"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskInnerErrorMessage") {
                self.taskInnerErrorMessage = dict["TaskInnerErrorMessage"] as! String
            }
            if dict.keys.contains("TaskIntermediateResult") {
                self.taskIntermediateResult = dict["TaskIntermediateResult"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TaskParam") {
                self.taskParam = dict["TaskParam"] as! String
            }
            if dict.keys.contains("TaskProgressMessage") {
                self.taskProgressMessage = dict["TaskProgressMessage"] as! String
            }
            if dict.keys.contains("TaskResult") {
                self.taskResult = dict["TaskResult"] as! String
            }
            if dict.keys.contains("TaskRetryCount") {
                self.taskRetryCount = dict["TaskRetryCount"] as! String
            }
            if dict.keys.contains("TaskStartTime") {
                self.taskStartTime = dict["TaskStartTime"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! Int32
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") {
                self.updateUser = dict["UpdateUser"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [ListAsyncTasksResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [ListAsyncTasksResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListAsyncTasksResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListAsyncTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAsyncTasksResponseBody?

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
            var model = ListAsyncTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBuildConfigsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var regionId: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListBuildConfigsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Keywords : Tea.TeaModel {
            public var description_: String?

            public var key: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
            }
        }
        public var buildIn: Bool?

        public var createTime: String?

        public var createUser: String?

        public var id: Int64?

        public var keywords: [ListBuildConfigsResponseBody.Data.Keywords]?

        public var tag: String?

        public var tagDescription: String?

        public var type: String?

        public var updateTime: String?

        public var updateUser: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildIn != nil {
                map["BuildIn"] = self.buildIn!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keywords != nil {
                var tmp : [Any] = []
                for k in self.keywords! {
                    tmp.append(k.toMap())
                }
                map["Keywords"] = tmp
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.tagDescription != nil {
                map["TagDescription"] = self.tagDescription!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BuildIn") {
                self.buildIn = dict["BuildIn"] as! Bool
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Keywords") {
                var tmp : [ListBuildConfigsResponseBody.Data.Keywords] = []
                for v in dict["Keywords"] as! [Any] {
                    var model = ListBuildConfigsResponseBody.Data.Keywords()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.keywords = tmp
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("TagDescription") {
                self.tagDescription = dict["TagDescription"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") {
                self.updateUser = dict["UpdateUser"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListBuildConfigsResponseBody.Data]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListBuildConfigsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListBuildConfigsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ListBuildConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBuildConfigsResponseBody?

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
            var model = ListBuildConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCustomTextRequest : Tea.TeaModel {
    public var agentKey: String?

    public var commodityCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CommodityCode") {
            self.commodityCode = dict["CommodityCode"] as! String
        }
    }
}

public class ListCustomTextResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var createTime: String?

        public var createUser: String?

        public var id: Int64?

        public var title: String?

        public var updateTime: String?

        public var updateUser: String?

        public override init() {
            super.init()
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
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") {
                self.updateUser = dict["UpdateUser"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListCustomTextResponseBody.Data]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListCustomTextResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListCustomTextResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ListCustomTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomTextResponseBody?

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
            var model = ListCustomTextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCustomViewPointsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var attitude: String?

    public var attitudes: [String]?

    public var customViewPointId: String?

    public var customViewPointIds: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var topic: String?

    public var topicId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.attitude != nil {
            map["Attitude"] = self.attitude!
        }
        if self.attitudes != nil {
            map["Attitudes"] = self.attitudes!
        }
        if self.customViewPointId != nil {
            map["CustomViewPointId"] = self.customViewPointId!
        }
        if self.customViewPointIds != nil {
            map["CustomViewPointIds"] = self.customViewPointIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.topicId != nil {
            map["TopicId"] = self.topicId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Attitude") {
            self.attitude = dict["Attitude"] as! String
        }
        if dict.keys.contains("Attitudes") {
            self.attitudes = dict["Attitudes"] as! [String]
        }
        if dict.keys.contains("CustomViewPointId") {
            self.customViewPointId = dict["CustomViewPointId"] as! String
        }
        if dict.keys.contains("CustomViewPointIds") {
            self.customViewPointIds = dict["CustomViewPointIds"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("TopicId") {
            self.topicId = dict["TopicId"] as! String
        }
    }
}

public class ListCustomViewPointsShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var attitude: String?

    public var attitudesShrink: String?

    public var customViewPointId: String?

    public var customViewPointIdsShrink: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var topic: String?

    public var topicId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.attitude != nil {
            map["Attitude"] = self.attitude!
        }
        if self.attitudesShrink != nil {
            map["Attitudes"] = self.attitudesShrink!
        }
        if self.customViewPointId != nil {
            map["CustomViewPointId"] = self.customViewPointId!
        }
        if self.customViewPointIdsShrink != nil {
            map["CustomViewPointIds"] = self.customViewPointIdsShrink!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.topicId != nil {
            map["TopicId"] = self.topicId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Attitude") {
            self.attitude = dict["Attitude"] as! String
        }
        if dict.keys.contains("Attitudes") {
            self.attitudesShrink = dict["Attitudes"] as! String
        }
        if dict.keys.contains("CustomViewPointId") {
            self.customViewPointId = dict["CustomViewPointId"] as! String
        }
        if dict.keys.contains("CustomViewPointIds") {
            self.customViewPointIdsShrink = dict["CustomViewPointIds"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("TopicId") {
            self.topicId = dict["TopicId"] as! String
        }
    }
}

public class ListCustomViewPointsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ViewPoints : Tea.TeaModel {
            public class Outlines : Tea.TeaModel {
                public var outline: String?

                public var summary: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.outline != nil {
                        map["Outline"] = self.outline!
                    }
                    if self.summary != nil {
                        map["Summary"] = self.summary!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Outline") {
                        self.outline = dict["Outline"] as! String
                    }
                    if dict.keys.contains("Summary") {
                        self.summary = dict["Summary"] as! String
                    }
                }
            }
            public var outlines: [ListCustomViewPointsResponseBody.Data.ViewPoints.Outlines]?

            public var point: String?

            public var summary: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.outlines != nil {
                    var tmp : [Any] = []
                    for k in self.outlines! {
                        tmp.append(k.toMap())
                    }
                    map["Outlines"] = tmp
                }
                if self.point != nil {
                    map["Point"] = self.point!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Outlines") {
                    var tmp : [ListCustomViewPointsResponseBody.Data.ViewPoints.Outlines] = []
                    for v in dict["Outlines"] as! [Any] {
                        var model = ListCustomViewPointsResponseBody.Data.ViewPoints.Outlines()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.outlines = tmp
                }
                if dict.keys.contains("Point") {
                    self.point = dict["Point"] as! String
                }
                if dict.keys.contains("Summary") {
                    self.summary = dict["Summary"] as! String
                }
            }
        }
        public var asyncTaskId: String?

        public var attitude: String?

        public var createTime: String?

        public var createUser: String?

        public var id: String?

        public var status: String?

        public var taskErrorMessage: String?

        public var taskStatus: Int32?

        public var viewPoints: [ListCustomViewPointsResponseBody.Data.ViewPoints]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asyncTaskId != nil {
                map["AsyncTaskId"] = self.asyncTaskId!
            }
            if self.attitude != nil {
                map["Attitude"] = self.attitude!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskErrorMessage != nil {
                map["TaskErrorMessage"] = self.taskErrorMessage!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.viewPoints != nil {
                var tmp : [Any] = []
                for k in self.viewPoints! {
                    tmp.append(k.toMap())
                }
                map["ViewPoints"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AsyncTaskId") {
                self.asyncTaskId = dict["AsyncTaskId"] as! String
            }
            if dict.keys.contains("Attitude") {
                self.attitude = dict["Attitude"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskErrorMessage") {
                self.taskErrorMessage = dict["TaskErrorMessage"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! Int32
            }
            if dict.keys.contains("ViewPoints") {
                var tmp : [ListCustomViewPointsResponseBody.Data.ViewPoints] = []
                for v in dict["ViewPoints"] as! [Any] {
                    var model = ListCustomViewPointsResponseBody.Data.ViewPoints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.viewPoints = tmp
            }
        }
    }
    public var code: String?

    public var data: [ListCustomViewPointsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListCustomViewPointsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListCustomViewPointsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListCustomViewPointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomViewPointsResponseBody?

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
            var model = ListCustomViewPointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDialoguesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var current: Int32?

    public var dialogueType: Int32?

    public var endTime: String?

    public var size: Int32?

    public var startTime: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.dialogueType != nil {
            map["DialogueType"] = self.dialogueType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("DialogueType") {
            self.dialogueType = dict["DialogueType"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ListDialoguesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bot: String?

        public var createTime: String?

        public var createUser: String?

        public var dialogueType: Int32?

        public var taskId: String?

        public var user: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bot != nil {
                map["Bot"] = self.bot!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.dialogueType != nil {
                map["DialogueType"] = self.dialogueType!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bot") {
                self.bot = dict["Bot"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("DialogueType") {
                self.dialogueType = dict["DialogueType"] as! Int32
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [ListDialoguesResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [ListDialoguesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListDialoguesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListDialoguesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDialoguesResponseBody?

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
            var model = ListDialoguesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFreshViewPointsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var topic: String?

    public var topicSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.topicSource != nil {
            map["TopicSource"] = self.topicSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("TopicSource") {
            self.topicSource = dict["TopicSource"] as! String
        }
    }
}

public class ListFreshViewPointsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Outlines : Tea.TeaModel {
            public var outline: String?

            public var summary: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.outline != nil {
                    map["Outline"] = self.outline!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Outline") {
                    self.outline = dict["Outline"] as! String
                }
                if dict.keys.contains("Summary") {
                    self.summary = dict["Summary"] as! String
                }
            }
        }
        public var outlines: [ListFreshViewPointsResponseBody.Data.Outlines]?

        public var point: String?

        public var summary: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.outlines != nil {
                var tmp : [Any] = []
                for k in self.outlines! {
                    tmp.append(k.toMap())
                }
                map["Outlines"] = tmp
            }
            if self.point != nil {
                map["Point"] = self.point!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Outlines") {
                var tmp : [ListFreshViewPointsResponseBody.Data.Outlines] = []
                for v in dict["Outlines"] as! [Any] {
                    var model = ListFreshViewPointsResponseBody.Data.Outlines()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.outlines = tmp
            }
            if dict.keys.contains("Point") {
                self.point = dict["Point"] as! String
            }
            if dict.keys.contains("Summary") {
                self.summary = dict["Summary"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListFreshViewPointsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListFreshViewPointsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListFreshViewPointsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListFreshViewPointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFreshViewPointsResponseBody?

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
            var model = ListFreshViewPointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGeneratedContentsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var contentDomain: String?

    public var current: Int32?

    public var endTime: String?

    public var query: String?

    public var size: Int32?

    public var startTime: String?

    public var taskId: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.contentDomain != nil {
            map["ContentDomain"] = self.contentDomain!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ContentDomain") {
            self.contentDomain = dict["ContentDomain"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class ListGeneratedContentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var contentDomain: String?

        public var contentText: String?

        public var createTime: String?

        public var createUser: String?

        public var deviceId: String?

        public var id: Int64?

        public var keywordList: [String]?

        public var keywords: String?

        public var prompt: String?

        public var taskId: String?

        public var title: String?

        public var updateTime: String?

        public var updateUser: String?

        public var uuid: String?

        public override init() {
            super.init()
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
            if self.contentDomain != nil {
                map["ContentDomain"] = self.contentDomain!
            }
            if self.contentText != nil {
                map["ContentText"] = self.contentText!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keywordList != nil {
                map["KeywordList"] = self.keywordList!
            }
            if self.keywords != nil {
                map["Keywords"] = self.keywords!
            }
            if self.prompt != nil {
                map["Prompt"] = self.prompt!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ContentDomain") {
                self.contentDomain = dict["ContentDomain"] as! String
            }
            if dict.keys.contains("ContentText") {
                self.contentText = dict["ContentText"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("KeywordList") {
                self.keywordList = dict["KeywordList"] as! [String]
            }
            if dict.keys.contains("Keywords") {
                self.keywords = dict["Keywords"] as! String
            }
            if dict.keys.contains("Prompt") {
                self.prompt = dict["Prompt"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") {
                self.updateUser = dict["UpdateUser"] as! String
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [ListGeneratedContentsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [ListGeneratedContentsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListGeneratedContentsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListGeneratedContentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGeneratedContentsResponseBody?

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
            var model = ListGeneratedContentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHotNewsWithTypeRequest : Tea.TeaModel {
    public var agentKey: String?

    public var current: Int32?

    public var newsType: String?

    public var newsTypes: [String]?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.newsType != nil {
            map["NewsType"] = self.newsType!
        }
        if self.newsTypes != nil {
            map["NewsTypes"] = self.newsTypes!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("NewsType") {
            self.newsType = dict["NewsType"] as! String
        }
        if dict.keys.contains("NewsTypes") {
            self.newsTypes = dict["NewsTypes"] as! [String]
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class ListHotNewsWithTypeShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var current: Int32?

    public var newsType: String?

    public var newsTypesShrink: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.newsType != nil {
            map["NewsType"] = self.newsType!
        }
        if self.newsTypesShrink != nil {
            map["NewsTypes"] = self.newsTypesShrink!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("NewsType") {
            self.newsType = dict["NewsType"] as! String
        }
        if dict.keys.contains("NewsTypes") {
            self.newsTypesShrink = dict["NewsTypes"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class ListHotNewsWithTypeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class News : Tea.TeaModel {
            public var author: String?

            public var content: String?

            public var docUuid: String?

            public var imageUrls: [String]?

            public var pubTime: String?

            public var searchSource: String?

            public var searchSourceName: String?

            public var source: String?

            public var summary: String?

            public var tag: String?

            public var title: String?

            public var updateTime: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.author != nil {
                    map["Author"] = self.author!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.docUuid != nil {
                    map["DocUuid"] = self.docUuid!
                }
                if self.imageUrls != nil {
                    map["ImageUrls"] = self.imageUrls!
                }
                if self.pubTime != nil {
                    map["PubTime"] = self.pubTime!
                }
                if self.searchSource != nil {
                    map["SearchSource"] = self.searchSource!
                }
                if self.searchSourceName != nil {
                    map["SearchSourceName"] = self.searchSourceName!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Author") {
                    self.author = dict["Author"] as! String
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("DocUuid") {
                    self.docUuid = dict["DocUuid"] as! String
                }
                if dict.keys.contains("ImageUrls") {
                    self.imageUrls = dict["ImageUrls"] as! [String]
                }
                if dict.keys.contains("PubTime") {
                    self.pubTime = dict["PubTime"] as! String
                }
                if dict.keys.contains("SearchSource") {
                    self.searchSource = dict["SearchSource"] as! String
                }
                if dict.keys.contains("SearchSourceName") {
                    self.searchSourceName = dict["SearchSourceName"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Summary") {
                    self.summary = dict["Summary"] as! String
                }
                if dict.keys.contains("Tag") {
                    self.tag = dict["Tag"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var news: [ListHotNewsWithTypeResponseBody.Data.News]?

        public var newsType: String?

        public var newsTypeName: String?

        public var totalPages: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.news != nil {
                var tmp : [Any] = []
                for k in self.news! {
                    tmp.append(k.toMap())
                }
                map["News"] = tmp
            }
            if self.newsType != nil {
                map["NewsType"] = self.newsType!
            }
            if self.newsTypeName != nil {
                map["NewsTypeName"] = self.newsTypeName!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("News") {
                var tmp : [ListHotNewsWithTypeResponseBody.Data.News] = []
                for v in dict["News"] as! [Any] {
                    var model = ListHotNewsWithTypeResponseBody.Data.News()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.news = tmp
            }
            if dict.keys.contains("NewsType") {
                self.newsType = dict["NewsType"] as! String
            }
            if dict.keys.contains("NewsTypeName") {
                self.newsTypeName = dict["NewsTypeName"] as! String
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: [ListHotNewsWithTypeResponseBody.Data]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListHotNewsWithTypeResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListHotNewsWithTypeResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ListHotNewsWithTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHotNewsWithTypeResponseBody?

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
            var model = ListHotNewsWithTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHotSourcesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class ListHotSourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var show: Bool?

        public var sort: Int32?

        public var source: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.show != nil {
                map["Show"] = self.show!
            }
            if self.sort != nil {
                map["Sort"] = self.sort!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Show") {
                self.show = dict["Show"] as! Bool
            }
            if dict.keys.contains("Sort") {
                self.sort = dict["Sort"] as! Int32
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListHotSourcesResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListHotSourcesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListHotSourcesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHotSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHotSourcesResponseBody?

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
            var model = ListHotSourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHotTopicsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var topicIds: [String]?

    public var topicQuery: String?

    public var topicSource: String?

    public var topicVersion: String?

    public var topics: [String]?

    public var withNews: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.topicIds != nil {
            map["TopicIds"] = self.topicIds!
        }
        if self.topicQuery != nil {
            map["TopicQuery"] = self.topicQuery!
        }
        if self.topicSource != nil {
            map["TopicSource"] = self.topicSource!
        }
        if self.topicVersion != nil {
            map["TopicVersion"] = self.topicVersion!
        }
        if self.topics != nil {
            map["Topics"] = self.topics!
        }
        if self.withNews != nil {
            map["WithNews"] = self.withNews!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("TopicIds") {
            self.topicIds = dict["TopicIds"] as! [String]
        }
        if dict.keys.contains("TopicQuery") {
            self.topicQuery = dict["TopicQuery"] as! String
        }
        if dict.keys.contains("TopicSource") {
            self.topicSource = dict["TopicSource"] as! String
        }
        if dict.keys.contains("TopicVersion") {
            self.topicVersion = dict["TopicVersion"] as! String
        }
        if dict.keys.contains("Topics") {
            self.topics = dict["Topics"] as! [String]
        }
        if dict.keys.contains("WithNews") {
            self.withNews = dict["WithNews"] as! Bool
        }
    }
}

public class ListHotTopicsShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var topicIdsShrink: String?

    public var topicQuery: String?

    public var topicSource: String?

    public var topicVersion: String?

    public var topicsShrink: String?

    public var withNews: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.topicIdsShrink != nil {
            map["TopicIds"] = self.topicIdsShrink!
        }
        if self.topicQuery != nil {
            map["TopicQuery"] = self.topicQuery!
        }
        if self.topicSource != nil {
            map["TopicSource"] = self.topicSource!
        }
        if self.topicVersion != nil {
            map["TopicVersion"] = self.topicVersion!
        }
        if self.topicsShrink != nil {
            map["Topics"] = self.topicsShrink!
        }
        if self.withNews != nil {
            map["WithNews"] = self.withNews!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("TopicIds") {
            self.topicIdsShrink = dict["TopicIds"] as! String
        }
        if dict.keys.contains("TopicQuery") {
            self.topicQuery = dict["TopicQuery"] as! String
        }
        if dict.keys.contains("TopicSource") {
            self.topicSource = dict["TopicSource"] as! String
        }
        if dict.keys.contains("TopicVersion") {
            self.topicVersion = dict["TopicVersion"] as! String
        }
        if dict.keys.contains("Topics") {
            self.topicsShrink = dict["Topics"] as! String
        }
        if dict.keys.contains("WithNews") {
            self.withNews = dict["WithNews"] as! Bool
        }
    }
}

public class ListHotTopicsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class StructureSummary : Tea.TeaModel {
            public class DocList : Tea.TeaModel {
                public var source: String?

                public var title: String?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.source != nil {
                        map["Source"] = self.source!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Source") {
                        self.source = dict["Source"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public var docList: [ListHotTopicsResponseBody.Data.StructureSummary.DocList]?

            public var summary: String?

            public var title: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.docList != nil {
                    var tmp : [Any] = []
                    for k in self.docList! {
                        tmp.append(k.toMap())
                    }
                    map["DocList"] = tmp
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DocList") {
                    var tmp : [ListHotTopicsResponseBody.Data.StructureSummary.DocList] = []
                    for v in dict["DocList"] as! [Any] {
                        var model = ListHotTopicsResponseBody.Data.StructureSummary.DocList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.docList = tmp
                }
                if dict.keys.contains("Summary") {
                    self.summary = dict["Summary"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public var asyncTaskId: String?

        public var createUser: String?

        public var hotValue: Int64?

        public var id: String?

        public var status: String?

        public var structureSummary: [ListHotTopicsResponseBody.Data.StructureSummary]?

        public var summary: String?

        public var taskErrorMessage: String?

        public var taskStatus: Int32?

        public var topic: String?

        public var topicSource: String?

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
            if self.asyncTaskId != nil {
                map["AsyncTaskId"] = self.asyncTaskId!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.hotValue != nil {
                map["HotValue"] = self.hotValue!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.structureSummary != nil {
                var tmp : [Any] = []
                for k in self.structureSummary! {
                    tmp.append(k.toMap())
                }
                map["StructureSummary"] = tmp
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.taskErrorMessage != nil {
                map["TaskErrorMessage"] = self.taskErrorMessage!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            if self.topicSource != nil {
                map["TopicSource"] = self.topicSource!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AsyncTaskId") {
                self.asyncTaskId = dict["AsyncTaskId"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("HotValue") {
                self.hotValue = dict["HotValue"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StructureSummary") {
                var tmp : [ListHotTopicsResponseBody.Data.StructureSummary] = []
                for v in dict["StructureSummary"] as! [Any] {
                    var model = ListHotTopicsResponseBody.Data.StructureSummary()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.structureSummary = tmp
            }
            if dict.keys.contains("Summary") {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("TaskErrorMessage") {
                self.taskErrorMessage = dict["TaskErrorMessage"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! Int32
            }
            if dict.keys.contains("Topic") {
                self.topic = dict["Topic"] as! String
            }
            if dict.keys.contains("TopicSource") {
                self.topicSource = dict["TopicSource"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListHotTopicsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListHotTopicsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListHotTopicsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHotTopicsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHotTopicsResponseBody?

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
            var model = ListHotTopicsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHotViewPointsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var topic: String?

    public var topicSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.topicSource != nil {
            map["TopicSource"] = self.topicSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("TopicSource") {
            self.topicSource = dict["TopicSource"] as! String
        }
    }
}

public class ListHotViewPointsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class News : Tea.TeaModel {
            public var author: String?

            public var content: String?

            public var docId: String?

            public var docUuid: String?

            public var imageUrls: [String]?

            public var pubTime: String?

            public var source: String?

            public var summary: String?

            public var tags: [String]?

            public var title: String?

            public var topic: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.author != nil {
                    map["Author"] = self.author!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.docId != nil {
                    map["DocId"] = self.docId!
                }
                if self.docUuid != nil {
                    map["DocUuid"] = self.docUuid!
                }
                if self.imageUrls != nil {
                    map["ImageUrls"] = self.imageUrls!
                }
                if self.pubTime != nil {
                    map["PubTime"] = self.pubTime!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.topic != nil {
                    map["Topic"] = self.topic!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Author") {
                    self.author = dict["Author"] as! String
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("DocId") {
                    self.docId = dict["DocId"] as! String
                }
                if dict.keys.contains("DocUuid") {
                    self.docUuid = dict["DocUuid"] as! String
                }
                if dict.keys.contains("ImageUrls") {
                    self.imageUrls = dict["ImageUrls"] as! [String]
                }
                if dict.keys.contains("PubTime") {
                    self.pubTime = dict["PubTime"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Summary") {
                    self.summary = dict["Summary"] as! String
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! [String]
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("Topic") {
                    self.topic = dict["Topic"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public class ViewPoints : Tea.TeaModel {
            public class Outlines : Tea.TeaModel {
                public var outline: String?

                public var summary: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.outline != nil {
                        map["Outline"] = self.outline!
                    }
                    if self.summary != nil {
                        map["Summary"] = self.summary!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Outline") {
                        self.outline = dict["Outline"] as! String
                    }
                    if dict.keys.contains("Summary") {
                        self.summary = dict["Summary"] as! String
                    }
                }
            }
            public var outlines: [ListHotViewPointsResponseBody.Data.ViewPoints.Outlines]?

            public var point: String?

            public var summary: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.outlines != nil {
                    var tmp : [Any] = []
                    for k in self.outlines! {
                        tmp.append(k.toMap())
                    }
                    map["Outlines"] = tmp
                }
                if self.point != nil {
                    map["Point"] = self.point!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Outlines") {
                    var tmp : [ListHotViewPointsResponseBody.Data.ViewPoints.Outlines] = []
                    for v in dict["Outlines"] as! [Any] {
                        var model = ListHotViewPointsResponseBody.Data.ViewPoints.Outlines()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.outlines = tmp
                }
                if dict.keys.contains("Point") {
                    self.point = dict["Point"] as! String
                }
                if dict.keys.contains("Summary") {
                    self.summary = dict["Summary"] as! String
                }
            }
        }
        public var attitude: String?

        public var attitudeType: String?

        public var news: [ListHotViewPointsResponseBody.Data.News]?

        public var ratio: String?

        public var viewPoints: [ListHotViewPointsResponseBody.Data.ViewPoints]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attitude != nil {
                map["Attitude"] = self.attitude!
            }
            if self.attitudeType != nil {
                map["AttitudeType"] = self.attitudeType!
            }
            if self.news != nil {
                var tmp : [Any] = []
                for k in self.news! {
                    tmp.append(k.toMap())
                }
                map["News"] = tmp
            }
            if self.ratio != nil {
                map["Ratio"] = self.ratio!
            }
            if self.viewPoints != nil {
                var tmp : [Any] = []
                for k in self.viewPoints! {
                    tmp.append(k.toMap())
                }
                map["ViewPoints"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attitude") {
                self.attitude = dict["Attitude"] as! String
            }
            if dict.keys.contains("AttitudeType") {
                self.attitudeType = dict["AttitudeType"] as! String
            }
            if dict.keys.contains("News") {
                var tmp : [ListHotViewPointsResponseBody.Data.News] = []
                for v in dict["News"] as! [Any] {
                    var model = ListHotViewPointsResponseBody.Data.News()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.news = tmp
            }
            if dict.keys.contains("Ratio") {
                self.ratio = dict["Ratio"] as! String
            }
            if dict.keys.contains("ViewPoints") {
                var tmp : [ListHotViewPointsResponseBody.Data.ViewPoints] = []
                for v in dict["ViewPoints"] as! [Any] {
                    var model = ListHotViewPointsResponseBody.Data.ViewPoints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.viewPoints = tmp
            }
        }
    }
    public var code: String?

    public var data: [ListHotViewPointsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListHotViewPointsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListHotViewPointsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHotViewPointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHotViewPointsResponseBody?

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
            var model = ListHotViewPointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInterveneCntRequest : Tea.TeaModel {
    public var agentKey: String?

    public var pageIndex: Int32?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListInterveneCntResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cntList: [Any]?

        public var pageCnt: Int32?

        public var pageIndex: Int32?

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
            if self.cntList != nil {
                map["CntList"] = self.cntList!
            }
            if self.pageCnt != nil {
                map["PageCnt"] = self.pageCnt!
            }
            if self.pageIndex != nil {
                map["PageIndex"] = self.pageIndex!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CntList") {
                self.cntList = dict["CntList"] as! [Any]
            }
            if dict.keys.contains("PageCnt") {
                self.pageCnt = dict["PageCnt"] as! Int32
            }
            if dict.keys.contains("PageIndex") {
                self.pageIndex = dict["PageIndex"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListInterveneCntResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListInterveneCntResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ListInterveneCntResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInterveneCntResponseBody?

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
            var model = ListInterveneCntResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInterveneImportTasksRequest : Tea.TeaModel {
    public var agentKey: String?

    public var pageIndex: Int32?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListInterveneImportTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class StatusList : Tea.TeaModel {
            public var msg: String?

            public var percentage: Int32?

            public var status: Int32?

            public var taskId: String?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.msg != nil {
                    map["Msg"] = self.msg!
                }
                if self.percentage != nil {
                    map["Percentage"] = self.percentage!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Msg") {
                    self.msg = dict["Msg"] as! String
                }
                if dict.keys.contains("Percentage") {
                    self.percentage = dict["Percentage"] as! Int32
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TaskName") {
                    self.taskName = dict["TaskName"] as! String
                }
            }
        }
        public var pageIndex: Int32?

        public var pageSize: Int32?

        public var statusList: [ListInterveneImportTasksResponseBody.Data.StatusList]?

        public var totalSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageIndex != nil {
                map["PageIndex"] = self.pageIndex!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.statusList != nil {
                var tmp : [Any] = []
                for k in self.statusList! {
                    tmp.append(k.toMap())
                }
                map["StatusList"] = tmp
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageIndex") {
                self.pageIndex = dict["PageIndex"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("StatusList") {
                var tmp : [ListInterveneImportTasksResponseBody.Data.StatusList] = []
                for v in dict["StatusList"] as! [Any] {
                    var model = ListInterveneImportTasksResponseBody.Data.StatusList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.statusList = tmp
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListInterveneImportTasksResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListInterveneImportTasksResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ListInterveneImportTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInterveneImportTasksResponseBody?

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
            var model = ListInterveneImportTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInterveneRulesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var pageIndex: Int32?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListInterveneRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InterveneRuleList : Tea.TeaModel {
            public class AnswerConfig : Tea.TeaModel {
                public var answerType: Int32?

                public var message: String?

                public var namespace: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.answerType != nil {
                        map["AnswerType"] = self.answerType!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.namespace != nil {
                        map["Namespace"] = self.namespace!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AnswerType") {
                        self.answerType = dict["AnswerType"] as! Int32
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Namespace") {
                        self.namespace = dict["Namespace"] as! String
                    }
                }
            }
            public var answerConfig: [ListInterveneRulesResponseBody.Data.InterveneRuleList.AnswerConfig]?

            public var createTime: String?

            public var effectTime: String?

            public var interveneType: Int32?

            public var namespaceList: [String]?

            public var ruleId: Int64?

            public var ruleName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerConfig != nil {
                    var tmp : [Any] = []
                    for k in self.answerConfig! {
                        tmp.append(k.toMap())
                    }
                    map["AnswerConfig"] = tmp
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.effectTime != nil {
                    map["EffectTime"] = self.effectTime!
                }
                if self.interveneType != nil {
                    map["InterveneType"] = self.interveneType!
                }
                if self.namespaceList != nil {
                    map["NamespaceList"] = self.namespaceList!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnswerConfig") {
                    var tmp : [ListInterveneRulesResponseBody.Data.InterveneRuleList.AnswerConfig] = []
                    for v in dict["AnswerConfig"] as! [Any] {
                        var model = ListInterveneRulesResponseBody.Data.InterveneRuleList.AnswerConfig()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.answerConfig = tmp
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("EffectTime") {
                    self.effectTime = dict["EffectTime"] as! String
                }
                if dict.keys.contains("InterveneType") {
                    self.interveneType = dict["InterveneType"] as! Int32
                }
                if dict.keys.contains("NamespaceList") {
                    self.namespaceList = dict["NamespaceList"] as! [String]
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! Int64
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
            }
        }
        public var count: Int64?

        public var interveneRuleList: [ListInterveneRulesResponseBody.Data.InterveneRuleList]?

        public var pageIndex: Int32?

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
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.interveneRuleList != nil {
                var tmp : [Any] = []
                for k in self.interveneRuleList! {
                    tmp.append(k.toMap())
                }
                map["InterveneRuleList"] = tmp
            }
            if self.pageIndex != nil {
                map["PageIndex"] = self.pageIndex!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("InterveneRuleList") {
                var tmp : [ListInterveneRulesResponseBody.Data.InterveneRuleList] = []
                for v in dict["InterveneRuleList"] as! [Any] {
                    var model = ListInterveneRulesResponseBody.Data.InterveneRuleList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.interveneRuleList = tmp
            }
            if dict.keys.contains("PageIndex") {
                self.pageIndex = dict["PageIndex"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListInterveneRulesResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListInterveneRulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ListInterveneRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInterveneRulesResponseBody?

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
            var model = ListInterveneRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIntervenesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var interveneType: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var ruleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.interveneType != nil {
            map["InterveneType"] = self.interveneType!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InterveneType") {
            self.interveneType = dict["InterveneType"] as! Int32
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class ListIntervenesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InterveneList : Tea.TeaModel {
            public var id: String?

            public var query: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.query != nil {
                    map["Query"] = self.query!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Query") {
                    self.query = dict["Query"] as! String
                }
            }
        }
        public var interveneList: [ListIntervenesResponseBody.Data.InterveneList]?

        public var pageIndex: Int32?

        public var pageSize: Int32?

        public var totalSize: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.interveneList != nil {
                var tmp : [Any] = []
                for k in self.interveneList! {
                    tmp.append(k.toMap())
                }
                map["InterveneList"] = tmp
            }
            if self.pageIndex != nil {
                map["PageIndex"] = self.pageIndex!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InterveneList") {
                var tmp : [ListIntervenesResponseBody.Data.InterveneList] = []
                for v in dict["InterveneList"] as! [Any] {
                    var model = ListIntervenesResponseBody.Data.InterveneList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.interveneList = tmp
            }
            if dict.keys.contains("PageIndex") {
                self.pageIndex = dict["PageIndex"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ListIntervenesResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListIntervenesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ListIntervenesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIntervenesResponseBody?

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
            var model = ListIntervenesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMaterialDocumentsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var current: Int32?

    public var docType: String?

    public var docTypeList: [String]?

    public var generatePublicUrl: Bool?

    public var id: Int64?

    public var keywords: [String]?

    public var query: String?

    public var shareAttr: Int32?

    public var size: Int32?

    public var title: String?

    public var updateTimeEnd: String?

    public var updateTimeStart: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.docTypeList != nil {
            map["DocTypeList"] = self.docTypeList!
        }
        if self.generatePublicUrl != nil {
            map["GeneratePublicUrl"] = self.generatePublicUrl!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.shareAttr != nil {
            map["ShareAttr"] = self.shareAttr!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.updateTimeEnd != nil {
            map["UpdateTimeEnd"] = self.updateTimeEnd!
        }
        if self.updateTimeStart != nil {
            map["UpdateTimeStart"] = self.updateTimeStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateTimeStart") {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("DocType") {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("DocTypeList") {
            self.docTypeList = dict["DocTypeList"] as! [String]
        }
        if dict.keys.contains("GeneratePublicUrl") {
            self.generatePublicUrl = dict["GeneratePublicUrl"] as! Bool
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Keywords") {
            self.keywords = dict["Keywords"] as! [String]
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("ShareAttr") {
            self.shareAttr = dict["ShareAttr"] as! Int32
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UpdateTimeEnd") {
            self.updateTimeEnd = dict["UpdateTimeEnd"] as! String
        }
        if dict.keys.contains("UpdateTimeStart") {
            self.updateTimeStart = dict["UpdateTimeStart"] as! String
        }
    }
}

public class ListMaterialDocumentsShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var current: Int32?

    public var docType: String?

    public var docTypeListShrink: String?

    public var generatePublicUrl: Bool?

    public var id: Int64?

    public var keywordsShrink: String?

    public var query: String?

    public var shareAttr: Int32?

    public var size: Int32?

    public var title: String?

    public var updateTimeEnd: String?

    public var updateTimeStart: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.docTypeListShrink != nil {
            map["DocTypeList"] = self.docTypeListShrink!
        }
        if self.generatePublicUrl != nil {
            map["GeneratePublicUrl"] = self.generatePublicUrl!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.keywordsShrink != nil {
            map["Keywords"] = self.keywordsShrink!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.shareAttr != nil {
            map["ShareAttr"] = self.shareAttr!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.updateTimeEnd != nil {
            map["UpdateTimeEnd"] = self.updateTimeEnd!
        }
        if self.updateTimeStart != nil {
            map["UpdateTimeStart"] = self.updateTimeStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateTimeStart") {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("DocType") {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("DocTypeList") {
            self.docTypeListShrink = dict["DocTypeList"] as! String
        }
        if dict.keys.contains("GeneratePublicUrl") {
            self.generatePublicUrl = dict["GeneratePublicUrl"] as! Bool
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Keywords") {
            self.keywordsShrink = dict["Keywords"] as! String
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("ShareAttr") {
            self.shareAttr = dict["ShareAttr"] as! Int32
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UpdateTimeEnd") {
            self.updateTimeEnd = dict["UpdateTimeEnd"] as! String
        }
        if dict.keys.contains("UpdateTimeStart") {
            self.updateTimeStart = dict["UpdateTimeStart"] as! String
        }
    }
}

public class ListMaterialDocumentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var author: String?

        public var createTime: String?

        public var createUser: String?

        public var createUserName: String?

        public var docKeywords: [String]?

        public var docType: String?

        public var externalUrl: String?

        public var htmlContent: String?

        public var id: Int64?

        public var pubTime: String?

        public var publicUrl: String?

        public var shareAttr: Int32?

        public var srcFrom: String?

        public var summary: String?

        public var textContent: String?

        public var thumbnailInBase64: String?

        public var title: String?

        public var updateTime: String?

        public var updateUser: String?

        public var updateUserName: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.author != nil {
                map["Author"] = self.author!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.docKeywords != nil {
                map["DocKeywords"] = self.docKeywords!
            }
            if self.docType != nil {
                map["DocType"] = self.docType!
            }
            if self.externalUrl != nil {
                map["ExternalUrl"] = self.externalUrl!
            }
            if self.htmlContent != nil {
                map["HtmlContent"] = self.htmlContent!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.pubTime != nil {
                map["PubTime"] = self.pubTime!
            }
            if self.publicUrl != nil {
                map["PublicUrl"] = self.publicUrl!
            }
            if self.shareAttr != nil {
                map["ShareAttr"] = self.shareAttr!
            }
            if self.srcFrom != nil {
                map["SrcFrom"] = self.srcFrom!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.textContent != nil {
                map["TextContent"] = self.textContent!
            }
            if self.thumbnailInBase64 != nil {
                map["ThumbnailInBase64"] = self.thumbnailInBase64!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            if self.updateUserName != nil {
                map["UpdateUserName"] = self.updateUserName!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Author") {
                self.author = dict["Author"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("CreateUserName") {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("DocKeywords") {
                self.docKeywords = dict["DocKeywords"] as! [String]
            }
            if dict.keys.contains("DocType") {
                self.docType = dict["DocType"] as! String
            }
            if dict.keys.contains("ExternalUrl") {
                self.externalUrl = dict["ExternalUrl"] as! String
            }
            if dict.keys.contains("HtmlContent") {
                self.htmlContent = dict["HtmlContent"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("PubTime") {
                self.pubTime = dict["PubTime"] as! String
            }
            if dict.keys.contains("PublicUrl") {
                self.publicUrl = dict["PublicUrl"] as! String
            }
            if dict.keys.contains("ShareAttr") {
                self.shareAttr = dict["ShareAttr"] as! Int32
            }
            if dict.keys.contains("SrcFrom") {
                self.srcFrom = dict["SrcFrom"] as! String
            }
            if dict.keys.contains("Summary") {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("TextContent") {
                self.textContent = dict["TextContent"] as! String
            }
            if dict.keys.contains("ThumbnailInBase64") {
                self.thumbnailInBase64 = dict["ThumbnailInBase64"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") {
                self.updateUser = dict["UpdateUser"] as! String
            }
            if dict.keys.contains("UpdateUserName") {
                self.updateUserName = dict["UpdateUserName"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [ListMaterialDocumentsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [ListMaterialDocumentsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListMaterialDocumentsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListMaterialDocumentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMaterialDocumentsResponseBody?

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
            var model = ListMaterialDocumentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPlanningProposalRequest : Tea.TeaModel {
    public var agentKey: String?

    public var customViewPointId: String?

    public var customViewPointIds: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var titles: [String]?

    public var topic: String?

    public var topicSource: String?

    public var topicVersion: String?

    public var viewPointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.customViewPointId != nil {
            map["CustomViewPointId"] = self.customViewPointId!
        }
        if self.customViewPointIds != nil {
            map["CustomViewPointIds"] = self.customViewPointIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.titles != nil {
            map["Titles"] = self.titles!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.topicSource != nil {
            map["TopicSource"] = self.topicSource!
        }
        if self.topicVersion != nil {
            map["TopicVersion"] = self.topicVersion!
        }
        if self.viewPointType != nil {
            map["ViewPointType"] = self.viewPointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CustomViewPointId") {
            self.customViewPointId = dict["CustomViewPointId"] as! String
        }
        if dict.keys.contains("CustomViewPointIds") {
            self.customViewPointIds = dict["CustomViewPointIds"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Titles") {
            self.titles = dict["Titles"] as! [String]
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("TopicSource") {
            self.topicSource = dict["TopicSource"] as! String
        }
        if dict.keys.contains("TopicVersion") {
            self.topicVersion = dict["TopicVersion"] as! String
        }
        if dict.keys.contains("ViewPointType") {
            self.viewPointType = dict["ViewPointType"] as! String
        }
    }
}

public class ListPlanningProposalShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var customViewPointId: String?

    public var customViewPointIdsShrink: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var titlesShrink: String?

    public var topic: String?

    public var topicSource: String?

    public var topicVersion: String?

    public var viewPointType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.customViewPointId != nil {
            map["CustomViewPointId"] = self.customViewPointId!
        }
        if self.customViewPointIdsShrink != nil {
            map["CustomViewPointIds"] = self.customViewPointIdsShrink!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.titlesShrink != nil {
            map["Titles"] = self.titlesShrink!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.topicSource != nil {
            map["TopicSource"] = self.topicSource!
        }
        if self.topicVersion != nil {
            map["TopicVersion"] = self.topicVersion!
        }
        if self.viewPointType != nil {
            map["ViewPointType"] = self.viewPointType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CustomViewPointId") {
            self.customViewPointId = dict["CustomViewPointId"] as! String
        }
        if dict.keys.contains("CustomViewPointIds") {
            self.customViewPointIdsShrink = dict["CustomViewPointIds"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Titles") {
            self.titlesShrink = dict["Titles"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("TopicSource") {
            self.topicSource = dict["TopicSource"] as! String
        }
        if dict.keys.contains("TopicVersion") {
            self.topicVersion = dict["TopicVersion"] as! String
        }
        if dict.keys.contains("ViewPointType") {
            self.viewPointType = dict["ViewPointType"] as! String
        }
    }
}

public class ListPlanningProposalResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Outlines : Tea.TeaModel {
            public var outline: String?

            public var summary: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.outline != nil {
                    map["Outline"] = self.outline!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Outline") {
                    self.outline = dict["Outline"] as! String
                }
                if dict.keys.contains("Summary") {
                    self.summary = dict["Summary"] as! String
                }
            }
        }
        public var outlines: [ListPlanningProposalResponseBody.Data.Outlines]?

        public var summary: String?

        public var title: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.outlines != nil {
                var tmp : [Any] = []
                for k in self.outlines! {
                    tmp.append(k.toMap())
                }
                map["Outlines"] = tmp
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Outlines") {
                var tmp : [ListPlanningProposalResponseBody.Data.Outlines] = []
                for v in dict["Outlines"] as! [Any] {
                    var model = ListPlanningProposalResponseBody.Data.Outlines()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.outlines = tmp
            }
            if dict.keys.contains("Summary") {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListPlanningProposalResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListPlanningProposalResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListPlanningProposalResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListPlanningProposalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPlanningProposalResponseBody?

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
            var model = ListPlanningProposalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTimedViewAttitudeRequest : Tea.TeaModel {
    public var agentKey: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var topic: String?

    public var topicSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.topicSource != nil {
            map["TopicSource"] = self.topicSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("TopicSource") {
            self.topicSource = dict["TopicSource"] as! String
        }
    }
}

public class ListTimedViewAttitudeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ViewPoints : Tea.TeaModel {
            public class Outlines : Tea.TeaModel {
                public var outline: String?

                public var summary: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.outline != nil {
                        map["Outline"] = self.outline!
                    }
                    if self.summary != nil {
                        map["Summary"] = self.summary!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Outline") {
                        self.outline = dict["Outline"] as! String
                    }
                    if dict.keys.contains("Summary") {
                        self.summary = dict["Summary"] as! String
                    }
                }
            }
            public var outlines: [ListTimedViewAttitudeResponseBody.Data.ViewPoints.Outlines]?

            public var point: String?

            public var summary: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.outlines != nil {
                    var tmp : [Any] = []
                    for k in self.outlines! {
                        tmp.append(k.toMap())
                    }
                    map["Outlines"] = tmp
                }
                if self.point != nil {
                    map["Point"] = self.point!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Outlines") {
                    var tmp : [ListTimedViewAttitudeResponseBody.Data.ViewPoints.Outlines] = []
                    for v in dict["Outlines"] as! [Any] {
                        var model = ListTimedViewAttitudeResponseBody.Data.ViewPoints.Outlines()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.outlines = tmp
                }
                if dict.keys.contains("Point") {
                    self.point = dict["Point"] as! String
                }
                if dict.keys.contains("Summary") {
                    self.summary = dict["Summary"] as! String
                }
            }
        }
        public var attitude: String?

        public var attitudeType: String?

        public var pubTime: String?

        public var ratio: String?

        public var source: String?

        public var title: String?

        public var url: String?

        public var viewPoints: [ListTimedViewAttitudeResponseBody.Data.ViewPoints]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attitude != nil {
                map["Attitude"] = self.attitude!
            }
            if self.attitudeType != nil {
                map["AttitudeType"] = self.attitudeType!
            }
            if self.pubTime != nil {
                map["PubTime"] = self.pubTime!
            }
            if self.ratio != nil {
                map["Ratio"] = self.ratio!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.viewPoints != nil {
                var tmp : [Any] = []
                for k in self.viewPoints! {
                    tmp.append(k.toMap())
                }
                map["ViewPoints"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attitude") {
                self.attitude = dict["Attitude"] as! String
            }
            if dict.keys.contains("AttitudeType") {
                self.attitudeType = dict["AttitudeType"] as! String
            }
            if dict.keys.contains("PubTime") {
                self.pubTime = dict["PubTime"] as! String
            }
            if dict.keys.contains("Ratio") {
                self.ratio = dict["Ratio"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("ViewPoints") {
                var tmp : [ListTimedViewAttitudeResponseBody.Data.ViewPoints] = []
                for v in dict["ViewPoints"] as! [Any] {
                    var model = ListTimedViewAttitudeResponseBody.Data.ViewPoints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.viewPoints = tmp
            }
        }
    }
    public var code: String?

    public var data: [ListTimedViewAttitudeResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListTimedViewAttitudeResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListTimedViewAttitudeResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTimedViewAttitudeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTimedViewAttitudeResponseBody?

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
            var model = ListTimedViewAttitudeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTopicRecommendEventListRequest : Tea.TeaModel {
    public var agentKey: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class ListTopicRecommendEventListResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String]?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [String]
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTopicRecommendEventListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTopicRecommendEventListResponseBody?

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
            var model = ListTopicRecommendEventListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTopicViewPointRecommendEventListRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class ListTopicViewPointRecommendEventListResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String]?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [String]
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTopicViewPointRecommendEventListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTopicViewPointRecommendEventListResponseBody?

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
            var model = ListTopicViewPointRecommendEventListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVersionsRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class ListVersionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var concurrentCount: Int32?

        public var endTime: String?

        public var instanceCount: Int32?

        public var instanceId: String?

        public var orderId: Int64?

        public var productType: String?

        public var quota: Int32?

        public var startTime: String?

        public var useQuota: Int32?

        public var versionDetail: String?

        public var versionName: String?

        public var versionStatus: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.concurrentCount != nil {
                map["ConcurrentCount"] = self.concurrentCount!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.instanceCount != nil {
                map["InstanceCount"] = self.instanceCount!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.quota != nil {
                map["Quota"] = self.quota!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.useQuota != nil {
                map["UseQuota"] = self.useQuota!
            }
            if self.versionDetail != nil {
                map["VersionDetail"] = self.versionDetail!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            if self.versionStatus != nil {
                map["VersionStatus"] = self.versionStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConcurrentCount") {
                self.concurrentCount = dict["ConcurrentCount"] as! Int32
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("InstanceCount") {
                self.instanceCount = dict["InstanceCount"] as! Int32
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
            if dict.keys.contains("ProductType") {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("Quota") {
                self.quota = dict["Quota"] as! Int32
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("UseQuota") {
                self.useQuota = dict["UseQuota"] as! Int32
            }
            if dict.keys.contains("VersionDetail") {
                self.versionDetail = dict["VersionDetail"] as! String
            }
            if dict.keys.contains("VersionName") {
                self.versionName = dict["VersionName"] as! String
            }
            if dict.keys.contains("VersionStatus") {
                self.versionStatus = dict["VersionStatus"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: [ListVersionsResponseBody.Data]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListVersionsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListVersionsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ListVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVersionsResponseBody?

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
            var model = ListVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWebReviewPointsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var topic: String?

    public var topicSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.topicSource != nil {
            map["TopicSource"] = self.topicSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("TopicSource") {
            self.topicSource = dict["TopicSource"] as! String
        }
    }
}

public class ListWebReviewPointsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Comments : Tea.TeaModel {
            public var source: String?

            public var text: String?

            public var title: String?

            public var url: String?

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
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("Username") {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public class ViewPoints : Tea.TeaModel {
            public class Outlines : Tea.TeaModel {
                public var outline: String?

                public var summary: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.outline != nil {
                        map["Outline"] = self.outline!
                    }
                    if self.summary != nil {
                        map["Summary"] = self.summary!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Outline") {
                        self.outline = dict["Outline"] as! String
                    }
                    if dict.keys.contains("Summary") {
                        self.summary = dict["Summary"] as! String
                    }
                }
            }
            public var outlines: [ListWebReviewPointsResponseBody.Data.ViewPoints.Outlines]?

            public var point: String?

            public var summary: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.outlines != nil {
                    var tmp : [Any] = []
                    for k in self.outlines! {
                        tmp.append(k.toMap())
                    }
                    map["Outlines"] = tmp
                }
                if self.point != nil {
                    map["Point"] = self.point!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Outlines") {
                    var tmp : [ListWebReviewPointsResponseBody.Data.ViewPoints.Outlines] = []
                    for v in dict["Outlines"] as! [Any] {
                        var model = ListWebReviewPointsResponseBody.Data.ViewPoints.Outlines()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.outlines = tmp
                }
                if dict.keys.contains("Point") {
                    self.point = dict["Point"] as! String
                }
                if dict.keys.contains("Summary") {
                    self.summary = dict["Summary"] as! String
                }
            }
        }
        public var attitude: String?

        public var attitudeType: String?

        public var comments: [ListWebReviewPointsResponseBody.Data.Comments]?

        public var ratio: String?

        public var viewPoints: [ListWebReviewPointsResponseBody.Data.ViewPoints]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attitude != nil {
                map["Attitude"] = self.attitude!
            }
            if self.attitudeType != nil {
                map["AttitudeType"] = self.attitudeType!
            }
            if self.comments != nil {
                var tmp : [Any] = []
                for k in self.comments! {
                    tmp.append(k.toMap())
                }
                map["Comments"] = tmp
            }
            if self.ratio != nil {
                map["Ratio"] = self.ratio!
            }
            if self.viewPoints != nil {
                var tmp : [Any] = []
                for k in self.viewPoints! {
                    tmp.append(k.toMap())
                }
                map["ViewPoints"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attitude") {
                self.attitude = dict["Attitude"] as! String
            }
            if dict.keys.contains("AttitudeType") {
                self.attitudeType = dict["AttitudeType"] as! String
            }
            if dict.keys.contains("Comments") {
                var tmp : [ListWebReviewPointsResponseBody.Data.Comments] = []
                for v in dict["Comments"] as! [Any] {
                    var model = ListWebReviewPointsResponseBody.Data.Comments()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.comments = tmp
            }
            if dict.keys.contains("Ratio") {
                self.ratio = dict["Ratio"] as! String
            }
            if dict.keys.contains("ViewPoints") {
                var tmp : [ListWebReviewPointsResponseBody.Data.ViewPoints] = []
                for v in dict["ViewPoints"] as! [Any] {
                    var model = ListWebReviewPointsResponseBody.Data.ViewPoints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.viewPoints = tmp
            }
        }
    }
    public var code: String?

    public var data: [ListWebReviewPointsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListWebReviewPointsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListWebReviewPointsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListWebReviewPointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWebReviewPointsResponseBody?

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
            var model = ListWebReviewPointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAsyncTaskRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class QueryAsyncTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var createUser: String?

        public var taskCode: String?

        public var taskErrorMessage: String?

        public var taskId: String?

        public var taskIntermediateResult: String?

        public var taskName: String?

        public var taskParam: String?

        public var taskProgressMessage: String?

        public var taskResult: String?

        public var taskRetryCount: String?

        public var taskStatus: Int32?

        public var updateTime: String?

        public var updateUser: String?

        public override init() {
            super.init()
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
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.taskCode != nil {
                map["TaskCode"] = self.taskCode!
            }
            if self.taskErrorMessage != nil {
                map["TaskErrorMessage"] = self.taskErrorMessage!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskIntermediateResult != nil {
                map["TaskIntermediateResult"] = self.taskIntermediateResult!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskParam != nil {
                map["TaskParam"] = self.taskParam!
            }
            if self.taskProgressMessage != nil {
                map["TaskProgressMessage"] = self.taskProgressMessage!
            }
            if self.taskResult != nil {
                map["TaskResult"] = self.taskResult!
            }
            if self.taskRetryCount != nil {
                map["TaskRetryCount"] = self.taskRetryCount!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.updateUser != nil {
                map["UpdateUser"] = self.updateUser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("TaskCode") {
                self.taskCode = dict["TaskCode"] as! String
            }
            if dict.keys.contains("TaskErrorMessage") {
                self.taskErrorMessage = dict["TaskErrorMessage"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskIntermediateResult") {
                self.taskIntermediateResult = dict["TaskIntermediateResult"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TaskParam") {
                self.taskParam = dict["TaskParam"] as! String
            }
            if dict.keys.contains("TaskProgressMessage") {
                self.taskProgressMessage = dict["TaskProgressMessage"] as! String
            }
            if dict.keys.contains("TaskResult") {
                self.taskResult = dict["TaskResult"] as! String
            }
            if dict.keys.contains("TaskRetryCount") {
                self.taskRetryCount = dict["TaskRetryCount"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UpdateUser") {
                self.updateUser = dict["UpdateUser"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryAsyncTaskResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryAsyncTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class QueryAsyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAsyncTaskResponseBody?

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
            var model = QueryAsyncTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunAbbreviationContentRequest : Tea.TeaModel {
    public var content: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunAbbreviationContentResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.eventInfo != nil {
                map["EventInfo"] = self.eventInfo!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("EventInfo") {
                self.eventInfo = dict["EventInfo"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int64
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int64
                }
                if dict.keys.contains("TotalTokens") {
                    self.totalTokens = dict["TotalTokens"] as! Int64
                }
            }
        }
        public var output: RunAbbreviationContentResponseBody.Payload.Output?

        public var usage: RunAbbreviationContentResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["Output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Output") {
                var model = RunAbbreviationContentResponseBody.Payload.Output()
                model.fromMap(dict["Output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("Usage") {
                var model = RunAbbreviationContentResponseBody.Payload.Usage()
                model.fromMap(dict["Usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunAbbreviationContentResponseBody.Header?

    public var payload: RunAbbreviationContentResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["Payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("End") {
            self.end = dict["End"] as! Bool
        }
        if dict.keys.contains("Header") {
            var model = RunAbbreviationContentResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Payload") {
            var model = RunAbbreviationContentResponseBody.Payload()
            model.fromMap(dict["Payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunAbbreviationContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunAbbreviationContentResponseBody?

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
            var model = RunAbbreviationContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunContinueContentRequest : Tea.TeaModel {
    public var content: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunContinueContentResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.eventInfo != nil {
                map["EventInfo"] = self.eventInfo!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("EventInfo") {
                self.eventInfo = dict["EventInfo"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int64
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int64
                }
                if dict.keys.contains("TotalTokens") {
                    self.totalTokens = dict["TotalTokens"] as! Int64
                }
            }
        }
        public var output: RunContinueContentResponseBody.Payload.Output?

        public var usage: RunContinueContentResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["Output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Output") {
                var model = RunContinueContentResponseBody.Payload.Output()
                model.fromMap(dict["Output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("Usage") {
                var model = RunContinueContentResponseBody.Payload.Usage()
                model.fromMap(dict["Usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunContinueContentResponseBody.Header?

    public var payload: RunContinueContentResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["Payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("End") {
            self.end = dict["End"] as! Bool
        }
        if dict.keys.contains("Header") {
            var model = RunContinueContentResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Payload") {
            var model = RunContinueContentResponseBody.Payload()
            model.fromMap(dict["Payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunContinueContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunContinueContentResponseBody?

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
            var model = RunContinueContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunCustomHotTopicAnalysisRequest : Tea.TeaModel {
    public var askUser: String?

    public var forceAnalysisExistsTopic: Bool?

    public var prompt: String?

    public var sessionId: String?

    public var taskId: String?

    public var userBack: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.askUser != nil {
            map["AskUser"] = self.askUser!
        }
        if self.forceAnalysisExistsTopic != nil {
            map["ForceAnalysisExistsTopic"] = self.forceAnalysisExistsTopic!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.userBack != nil {
            map["UserBack"] = self.userBack!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AskUser") {
            self.askUser = dict["AskUser"] as! String
        }
        if dict.keys.contains("ForceAnalysisExistsTopic") {
            self.forceAnalysisExistsTopic = dict["ForceAnalysisExistsTopic"] as! Bool
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("UserBack") {
            self.userBack = dict["UserBack"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunCustomHotTopicAnalysisResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var originSessionId: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.originSessionId != nil {
                map["OriginSessionId"] = self.originSessionId!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("OriginSessionId") {
                self.originSessionId = dict["OriginSessionId"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public class Articles : Tea.TeaModel {
                public var author: String?

                public var content: String?

                public var docId: String?

                public var docUuid: String?

                public var pubTime: String?

                public var source: String?

                public var summary: String?

                public var tag: String?

                public var title: String?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.author != nil {
                        map["Author"] = self.author!
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.docId != nil {
                        map["DocId"] = self.docId!
                    }
                    if self.docUuid != nil {
                        map["DocUuid"] = self.docUuid!
                    }
                    if self.pubTime != nil {
                        map["PubTime"] = self.pubTime!
                    }
                    if self.source != nil {
                        map["Source"] = self.source!
                    }
                    if self.summary != nil {
                        map["Summary"] = self.summary!
                    }
                    if self.tag != nil {
                        map["Tag"] = self.tag!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Author") {
                        self.author = dict["Author"] as! String
                    }
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("DocId") {
                        self.docId = dict["DocId"] as! String
                    }
                    if dict.keys.contains("DocUuid") {
                        self.docUuid = dict["DocUuid"] as! String
                    }
                    if dict.keys.contains("PubTime") {
                        self.pubTime = dict["PubTime"] as! String
                    }
                    if dict.keys.contains("Source") {
                        self.source = dict["Source"] as! String
                    }
                    if dict.keys.contains("Summary") {
                        self.summary = dict["Summary"] as! String
                    }
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public var articles: [RunCustomHotTopicAnalysisResponseBody.Payload.Output.Articles]?

            public var askUser: [String]?

            public var asyncTaskId: String?

            public var attitude: String?

            public var searchQuery: String?

            public var text: String?

            public var topicId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.articles != nil {
                    var tmp : [Any] = []
                    for k in self.articles! {
                        tmp.append(k.toMap())
                    }
                    map["Articles"] = tmp
                }
                if self.askUser != nil {
                    map["AskUser"] = self.askUser!
                }
                if self.asyncTaskId != nil {
                    map["AsyncTaskId"] = self.asyncTaskId!
                }
                if self.attitude != nil {
                    map["Attitude"] = self.attitude!
                }
                if self.searchQuery != nil {
                    map["SearchQuery"] = self.searchQuery!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.topicId != nil {
                    map["TopicId"] = self.topicId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Articles") {
                    var tmp : [RunCustomHotTopicAnalysisResponseBody.Payload.Output.Articles] = []
                    for v in dict["Articles"] as! [Any] {
                        var model = RunCustomHotTopicAnalysisResponseBody.Payload.Output.Articles()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.articles = tmp
                }
                if dict.keys.contains("AskUser") {
                    self.askUser = dict["AskUser"] as! [String]
                }
                if dict.keys.contains("AsyncTaskId") {
                    self.asyncTaskId = dict["AsyncTaskId"] as! String
                }
                if dict.keys.contains("Attitude") {
                    self.attitude = dict["Attitude"] as! String
                }
                if dict.keys.contains("SearchQuery") {
                    self.searchQuery = dict["SearchQuery"] as! String
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("TopicId") {
                    self.topicId = dict["TopicId"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int64
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int64
                }
                if dict.keys.contains("TotalTokens") {
                    self.totalTokens = dict["TotalTokens"] as! Int64
                }
            }
        }
        public var output: RunCustomHotTopicAnalysisResponseBody.Payload.Output?

        public var usage: RunCustomHotTopicAnalysisResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["Output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Output") {
                var model = RunCustomHotTopicAnalysisResponseBody.Payload.Output()
                model.fromMap(dict["Output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("Usage") {
                var model = RunCustomHotTopicAnalysisResponseBody.Payload.Usage()
                model.fromMap(dict["Usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var header: RunCustomHotTopicAnalysisResponseBody.Header?

    public var payload: RunCustomHotTopicAnalysisResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["Payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Header") {
            var model = RunCustomHotTopicAnalysisResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Payload") {
            var model = RunCustomHotTopicAnalysisResponseBody.Payload()
            model.fromMap(dict["Payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunCustomHotTopicAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunCustomHotTopicAnalysisResponseBody?

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
            var model = RunCustomHotTopicAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunCustomHotTopicViewPointAnalysisRequest : Tea.TeaModel {
    public var askUser: String?

    public var prompt: String?

    public var searchQuery: String?

    public var skipAskUser: Bool?

    public var topic: String?

    public var topicId: String?

    public var topicSource: String?

    public var topicVersion: String?

    public var userBack: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.askUser != nil {
            map["AskUser"] = self.askUser!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.searchQuery != nil {
            map["SearchQuery"] = self.searchQuery!
        }
        if self.skipAskUser != nil {
            map["SkipAskUser"] = self.skipAskUser!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.topicId != nil {
            map["TopicId"] = self.topicId!
        }
        if self.topicSource != nil {
            map["TopicSource"] = self.topicSource!
        }
        if self.topicVersion != nil {
            map["TopicVersion"] = self.topicVersion!
        }
        if self.userBack != nil {
            map["UserBack"] = self.userBack!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AskUser") {
            self.askUser = dict["AskUser"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("SearchQuery") {
            self.searchQuery = dict["SearchQuery"] as! String
        }
        if dict.keys.contains("SkipAskUser") {
            self.skipAskUser = dict["SkipAskUser"] as! Bool
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("TopicId") {
            self.topicId = dict["TopicId"] as! String
        }
        if dict.keys.contains("TopicSource") {
            self.topicSource = dict["TopicSource"] as! String
        }
        if dict.keys.contains("TopicVersion") {
            self.topicVersion = dict["TopicVersion"] as! String
        }
        if dict.keys.contains("UserBack") {
            self.userBack = dict["UserBack"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunCustomHotTopicViewPointAnalysisResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var originSessionId: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.originSessionId != nil {
                map["OriginSessionId"] = self.originSessionId!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("OriginSessionId") {
                self.originSessionId = dict["OriginSessionId"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var askUser: [String]?

            public var asyncTaskId: String?

            public var attitude: String?

            public var customViewPointId: String?

            public var text: String?

            public var topicId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.askUser != nil {
                    map["AskUser"] = self.askUser!
                }
                if self.asyncTaskId != nil {
                    map["AsyncTaskId"] = self.asyncTaskId!
                }
                if self.attitude != nil {
                    map["Attitude"] = self.attitude!
                }
                if self.customViewPointId != nil {
                    map["CustomViewPointId"] = self.customViewPointId!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.topicId != nil {
                    map["TopicId"] = self.topicId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AskUser") {
                    self.askUser = dict["AskUser"] as! [String]
                }
                if dict.keys.contains("AsyncTaskId") {
                    self.asyncTaskId = dict["AsyncTaskId"] as! String
                }
                if dict.keys.contains("Attitude") {
                    self.attitude = dict["Attitude"] as! String
                }
                if dict.keys.contains("CustomViewPointId") {
                    self.customViewPointId = dict["CustomViewPointId"] as! String
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("TopicId") {
                    self.topicId = dict["TopicId"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int64
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int64
                }
                if dict.keys.contains("TotalTokens") {
                    self.totalTokens = dict["TotalTokens"] as! Int64
                }
            }
        }
        public var output: RunCustomHotTopicViewPointAnalysisResponseBody.Payload.Output?

        public var usage: RunCustomHotTopicViewPointAnalysisResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["Output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Output") {
                var model = RunCustomHotTopicViewPointAnalysisResponseBody.Payload.Output()
                model.fromMap(dict["Output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("Usage") {
                var model = RunCustomHotTopicViewPointAnalysisResponseBody.Payload.Usage()
                model.fromMap(dict["Usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var header: RunCustomHotTopicViewPointAnalysisResponseBody.Header?

    public var payload: RunCustomHotTopicViewPointAnalysisResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["Payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Header") {
            var model = RunCustomHotTopicViewPointAnalysisResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Payload") {
            var model = RunCustomHotTopicViewPointAnalysisResponseBody.Payload()
            model.fromMap(dict["Payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunCustomHotTopicViewPointAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunCustomHotTopicViewPointAnalysisResponseBody?

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
            var model = RunCustomHotTopicViewPointAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunExpandContentRequest : Tea.TeaModel {
    public var content: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunExpandContentResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.eventInfo != nil {
                map["EventInfo"] = self.eventInfo!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("EventInfo") {
                self.eventInfo = dict["EventInfo"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int64
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int64
                }
                if dict.keys.contains("TotalTokens") {
                    self.totalTokens = dict["TotalTokens"] as! Int64
                }
            }
        }
        public var output: RunExpandContentResponseBody.Payload.Output?

        public var usage: RunExpandContentResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["Output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Output") {
                var model = RunExpandContentResponseBody.Payload.Output()
                model.fromMap(dict["Output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("Usage") {
                var model = RunExpandContentResponseBody.Payload.Usage()
                model.fromMap(dict["Usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunExpandContentResponseBody.Header?

    public var payload: RunExpandContentResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["Payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("End") {
            self.end = dict["End"] as! Bool
        }
        if dict.keys.contains("Header") {
            var model = RunExpandContentResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Payload") {
            var model = RunExpandContentResponseBody.Payload()
            model.fromMap(dict["Payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunExpandContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunExpandContentResponseBody?

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
            var model = RunExpandContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunKeywordsExtractionGenerationRequest : Tea.TeaModel {
    public class ReferenceData : Tea.TeaModel {
        public var contents: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contents != nil {
                map["Contents"] = self.contents!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Contents") {
                self.contents = dict["Contents"] as! [String]
            }
        }
    }
    public var referenceData: RunKeywordsExtractionGenerationRequest.ReferenceData?

    public var taskId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.referenceData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.referenceData != nil {
            map["ReferenceData"] = self.referenceData?.toMap()
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReferenceData") {
            var model = RunKeywordsExtractionGenerationRequest.ReferenceData()
            model.fromMap(dict["ReferenceData"] as! [String: Any])
            self.referenceData = model
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunKeywordsExtractionGenerationShrinkRequest : Tea.TeaModel {
    public var referenceDataShrink: String?

    public var taskId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.referenceDataShrink != nil {
            map["ReferenceData"] = self.referenceDataShrink!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReferenceData") {
            self.referenceDataShrink = dict["ReferenceData"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunKeywordsExtractionGenerationResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int64
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int64
                }
                if dict.keys.contains("TotalTokens") {
                    self.totalTokens = dict["TotalTokens"] as! Int64
                }
            }
        }
        public var output: RunKeywordsExtractionGenerationResponseBody.Payload.Output?

        public var usage: RunKeywordsExtractionGenerationResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["Output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Output") {
                var model = RunKeywordsExtractionGenerationResponseBody.Payload.Output()
                model.fromMap(dict["Output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("Usage") {
                var model = RunKeywordsExtractionGenerationResponseBody.Payload.Usage()
                model.fromMap(dict["Usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var header: RunKeywordsExtractionGenerationResponseBody.Header?

    public var payload: RunKeywordsExtractionGenerationResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["Payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Header") {
            var model = RunKeywordsExtractionGenerationResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Payload") {
            var model = RunKeywordsExtractionGenerationResponseBody.Payload()
            model.fromMap(dict["Payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunKeywordsExtractionGenerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunKeywordsExtractionGenerationResponseBody?

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
            var model = RunKeywordsExtractionGenerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunStepByStepWritingRequest : Tea.TeaModel {
    public class ReferenceData : Tea.TeaModel {
        public class Articles : Tea.TeaModel {
            public var author: String?

            public var content: String?

            public var docId: String?

            public var docUuid: String?

            public var mediaUrl: String?

            public var pubTime: String?

            public var source: String?

            public var summary: String?

            public var tag: String?

            public var title: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.author != nil {
                    map["Author"] = self.author!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.docId != nil {
                    map["DocId"] = self.docId!
                }
                if self.docUuid != nil {
                    map["DocUuid"] = self.docUuid!
                }
                if self.mediaUrl != nil {
                    map["MediaUrl"] = self.mediaUrl!
                }
                if self.pubTime != nil {
                    map["PubTime"] = self.pubTime!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Author") {
                    self.author = dict["Author"] as! String
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("DocId") {
                    self.docId = dict["DocId"] as! String
                }
                if dict.keys.contains("DocUuid") {
                    self.docUuid = dict["DocUuid"] as! String
                }
                if dict.keys.contains("MediaUrl") {
                    self.mediaUrl = dict["MediaUrl"] as! String
                }
                if dict.keys.contains("PubTime") {
                    self.pubTime = dict["PubTime"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Summary") {
                    self.summary = dict["Summary"] as! String
                }
                if dict.keys.contains("Tag") {
                    self.tag = dict["Tag"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public class Outlines : Tea.TeaModel {
            public class Articles : Tea.TeaModel {
                public var content: String?

                public var title: String?

                public var url: String?

                public override init() {
                    super.init()
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
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public var articles: [RunStepByStepWritingRequest.ReferenceData.Outlines.Articles]?

            public var outline: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.articles != nil {
                    var tmp : [Any] = []
                    for k in self.articles! {
                        tmp.append(k.toMap())
                    }
                    map["Articles"] = tmp
                }
                if self.outline != nil {
                    map["Outline"] = self.outline!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Articles") {
                    var tmp : [RunStepByStepWritingRequest.ReferenceData.Outlines.Articles] = []
                    for v in dict["Articles"] as! [Any] {
                        var model = RunStepByStepWritingRequest.ReferenceData.Outlines.Articles()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.articles = tmp
                }
                if dict.keys.contains("Outline") {
                    self.outline = dict["Outline"] as! String
                }
            }
        }
        public var articles: [RunStepByStepWritingRequest.ReferenceData.Articles]?

        public var miniDoc: [String]?

        public var outlines: [RunStepByStepWritingRequest.ReferenceData.Outlines]?

        public var summarization: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.articles != nil {
                var tmp : [Any] = []
                for k in self.articles! {
                    tmp.append(k.toMap())
                }
                map["Articles"] = tmp
            }
            if self.miniDoc != nil {
                map["MiniDoc"] = self.miniDoc!
            }
            if self.outlines != nil {
                var tmp : [Any] = []
                for k in self.outlines! {
                    tmp.append(k.toMap())
                }
                map["Outlines"] = tmp
            }
            if self.summarization != nil {
                map["Summarization"] = self.summarization!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Articles") {
                var tmp : [RunStepByStepWritingRequest.ReferenceData.Articles] = []
                for v in dict["Articles"] as! [Any] {
                    var model = RunStepByStepWritingRequest.ReferenceData.Articles()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.articles = tmp
            }
            if dict.keys.contains("MiniDoc") {
                self.miniDoc = dict["MiniDoc"] as! [String]
            }
            if dict.keys.contains("Outlines") {
                var tmp : [RunStepByStepWritingRequest.ReferenceData.Outlines] = []
                for v in dict["Outlines"] as! [Any] {
                    var model = RunStepByStepWritingRequest.ReferenceData.Outlines()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.outlines = tmp
            }
            if dict.keys.contains("Summarization") {
                self.summarization = dict["Summarization"] as! [String]
            }
        }
    }
    public class WritingConfig : Tea.TeaModel {
        public class PromptTag : Tea.TeaModel {
            public var necessaryTips: String?

            public var position: String?

            public var reverseWords: String?

            public var theme: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.necessaryTips != nil {
                    map["NecessaryTips"] = self.necessaryTips!
                }
                if self.position != nil {
                    map["Position"] = self.position!
                }
                if self.reverseWords != nil {
                    map["ReverseWords"] = self.reverseWords!
                }
                if self.theme != nil {
                    map["Theme"] = self.theme!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NecessaryTips") {
                    self.necessaryTips = dict["NecessaryTips"] as! String
                }
                if dict.keys.contains("Position") {
                    self.position = dict["Position"] as! String
                }
                if dict.keys.contains("ReverseWords") {
                    self.reverseWords = dict["ReverseWords"] as! String
                }
                if dict.keys.contains("Theme") {
                    self.theme = dict["Theme"] as! String
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var keyword: String?

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
                if self.keyword != nil {
                    map["Keyword"] = self.keyword!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Keyword") {
                    self.keyword = dict["Keyword"] as! String
                }
                if dict.keys.contains("Tag") {
                    self.tag = dict["Tag"] as! String
                }
            }
        }
        public var domain: String?

        public var keywords: [String]?

        public var promptTag: RunStepByStepWritingRequest.WritingConfig.PromptTag?

        public var scene: String?

        public var step: String?

        public var tags: [RunStepByStepWritingRequest.WritingConfig.Tags]?

        public var useSearch: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.promptTag?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.keywords != nil {
                map["Keywords"] = self.keywords!
            }
            if self.promptTag != nil {
                map["PromptTag"] = self.promptTag?.toMap()
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.step != nil {
                map["Step"] = self.step!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.useSearch != nil {
                map["UseSearch"] = self.useSearch!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Keywords") {
                self.keywords = dict["Keywords"] as! [String]
            }
            if dict.keys.contains("PromptTag") {
                var model = RunStepByStepWritingRequest.WritingConfig.PromptTag()
                model.fromMap(dict["PromptTag"] as! [String: Any])
                self.promptTag = model
            }
            if dict.keys.contains("Scene") {
                self.scene = dict["Scene"] as! String
            }
            if dict.keys.contains("Step") {
                self.step = dict["Step"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [RunStepByStepWritingRequest.WritingConfig.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = RunStepByStepWritingRequest.WritingConfig.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("UseSearch") {
                self.useSearch = dict["UseSearch"] as! Bool
            }
        }
    }
    public var originSessionId: String?

    public var prompt: String?

    public var referenceData: RunStepByStepWritingRequest.ReferenceData?

    public var sessionId: String?

    public var taskId: String?

    public var workspaceId: String?

    public var writingConfig: RunStepByStepWritingRequest.WritingConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.referenceData?.validate()
        try self.writingConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.originSessionId != nil {
            map["OriginSessionId"] = self.originSessionId!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.referenceData != nil {
            map["ReferenceData"] = self.referenceData?.toMap()
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.writingConfig != nil {
            map["WritingConfig"] = self.writingConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OriginSessionId") {
            self.originSessionId = dict["OriginSessionId"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("ReferenceData") {
            var model = RunStepByStepWritingRequest.ReferenceData()
            model.fromMap(dict["ReferenceData"] as! [String: Any])
            self.referenceData = model
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WritingConfig") {
            var model = RunStepByStepWritingRequest.WritingConfig()
            model.fromMap(dict["WritingConfig"] as! [String: Any])
            self.writingConfig = model
        }
    }
}

public class RunStepByStepWritingShrinkRequest : Tea.TeaModel {
    public var originSessionId: String?

    public var prompt: String?

    public var referenceDataShrink: String?

    public var sessionId: String?

    public var taskId: String?

    public var workspaceId: String?

    public var writingConfigShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.originSessionId != nil {
            map["OriginSessionId"] = self.originSessionId!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.referenceDataShrink != nil {
            map["ReferenceData"] = self.referenceDataShrink!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.writingConfigShrink != nil {
            map["WritingConfig"] = self.writingConfigShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OriginSessionId") {
            self.originSessionId = dict["OriginSessionId"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("ReferenceData") {
            self.referenceDataShrink = dict["ReferenceData"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WritingConfig") {
            self.writingConfigShrink = dict["WritingConfig"] as! String
        }
    }
}

public class RunStepByStepWritingResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var originSessionId: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.originSessionId != nil {
                map["OriginSessionId"] = self.originSessionId!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("OriginSessionId") {
                self.originSessionId = dict["OriginSessionId"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public class Articles : Tea.TeaModel {
                public var author: String?

                public var content: String?

                public var docId: String?

                public var docUuid: String?

                public var mediaUrl: String?

                public var pubTime: String?

                public var source: String?

                public var summary: String?

                public var tag: String?

                public var title: String?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.author != nil {
                        map["Author"] = self.author!
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.docId != nil {
                        map["DocId"] = self.docId!
                    }
                    if self.docUuid != nil {
                        map["DocUuid"] = self.docUuid!
                    }
                    if self.mediaUrl != nil {
                        map["MediaUrl"] = self.mediaUrl!
                    }
                    if self.pubTime != nil {
                        map["PubTime"] = self.pubTime!
                    }
                    if self.source != nil {
                        map["Source"] = self.source!
                    }
                    if self.summary != nil {
                        map["Summary"] = self.summary!
                    }
                    if self.tag != nil {
                        map["Tag"] = self.tag!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Author") {
                        self.author = dict["Author"] as! String
                    }
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("DocId") {
                        self.docId = dict["DocId"] as! String
                    }
                    if dict.keys.contains("DocUuid") {
                        self.docUuid = dict["DocUuid"] as! String
                    }
                    if dict.keys.contains("MediaUrl") {
                        self.mediaUrl = dict["MediaUrl"] as! String
                    }
                    if dict.keys.contains("PubTime") {
                        self.pubTime = dict["PubTime"] as! String
                    }
                    if dict.keys.contains("Source") {
                        self.source = dict["Source"] as! String
                    }
                    if dict.keys.contains("Summary") {
                        self.summary = dict["Summary"] as! String
                    }
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public class ExtraOutput : Tea.TeaModel {
                public var summarization: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.summarization != nil {
                        map["summarization"] = self.summarization!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("summarization") {
                        self.summarization = dict["summarization"] as! [String]
                    }
                }
            }
            public var articles: [RunStepByStepWritingResponseBody.Payload.Output.Articles]?

            public var extraOutput: RunStepByStepWritingResponseBody.Payload.Output.ExtraOutput?

            public var miniDoc: [String]?

            public var searchQuery: String?

            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.extraOutput?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.articles != nil {
                    var tmp : [Any] = []
                    for k in self.articles! {
                        tmp.append(k.toMap())
                    }
                    map["Articles"] = tmp
                }
                if self.extraOutput != nil {
                    map["ExtraOutput"] = self.extraOutput?.toMap()
                }
                if self.miniDoc != nil {
                    map["MiniDoc"] = self.miniDoc!
                }
                if self.searchQuery != nil {
                    map["SearchQuery"] = self.searchQuery!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Articles") {
                    var tmp : [RunStepByStepWritingResponseBody.Payload.Output.Articles] = []
                    for v in dict["Articles"] as! [Any] {
                        var model = RunStepByStepWritingResponseBody.Payload.Output.Articles()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.articles = tmp
                }
                if dict.keys.contains("ExtraOutput") {
                    var model = RunStepByStepWritingResponseBody.Payload.Output.ExtraOutput()
                    model.fromMap(dict["ExtraOutput"] as! [String: Any])
                    self.extraOutput = model
                }
                if dict.keys.contains("MiniDoc") {
                    self.miniDoc = dict["MiniDoc"] as! [String]
                }
                if dict.keys.contains("SearchQuery") {
                    self.searchQuery = dict["SearchQuery"] as! String
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int64
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int64
                }
                if dict.keys.contains("TotalTokens") {
                    self.totalTokens = dict["TotalTokens"] as! Int64
                }
            }
        }
        public var output: RunStepByStepWritingResponseBody.Payload.Output?

        public var usage: RunStepByStepWritingResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["Output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Output") {
                var model = RunStepByStepWritingResponseBody.Payload.Output()
                model.fromMap(dict["Output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("Usage") {
                var model = RunStepByStepWritingResponseBody.Payload.Usage()
                model.fromMap(dict["Usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var header: RunStepByStepWritingResponseBody.Header?

    public var payload: RunStepByStepWritingResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["Payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Header") {
            var model = RunStepByStepWritingResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Payload") {
            var model = RunStepByStepWritingResponseBody.Payload()
            model.fromMap(dict["Payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunStepByStepWritingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunStepByStepWritingResponseBody?

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
            var model = RunStepByStepWritingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunStyleFeatureAnalysisRequest : Tea.TeaModel {
    public var contents: [String]?

    public var materialIds: [Int64]?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contents != nil {
            map["Contents"] = self.contents!
        }
        if self.materialIds != nil {
            map["MaterialIds"] = self.materialIds!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Contents") {
            self.contents = dict["Contents"] as! [String]
        }
        if dict.keys.contains("MaterialIds") {
            self.materialIds = dict["MaterialIds"] as! [Int64]
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunStyleFeatureAnalysisShrinkRequest : Tea.TeaModel {
    public var contentsShrink: String?

    public var materialIdsShrink: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentsShrink != nil {
            map["Contents"] = self.contentsShrink!
        }
        if self.materialIdsShrink != nil {
            map["MaterialIds"] = self.materialIdsShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Contents") {
            self.contentsShrink = dict["Contents"] as! String
        }
        if dict.keys.contains("MaterialIds") {
            self.materialIdsShrink = dict["MaterialIds"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunStyleFeatureAnalysisResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.eventInfo != nil {
                map["EventInfo"] = self.eventInfo!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("EventInfo") {
                self.eventInfo = dict["EventInfo"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int64
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int64
                }
                if dict.keys.contains("TotalTokens") {
                    self.totalTokens = dict["TotalTokens"] as! Int64
                }
            }
        }
        public var output: RunStyleFeatureAnalysisResponseBody.Payload.Output?

        public var usage: RunStyleFeatureAnalysisResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["Output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Output") {
                var model = RunStyleFeatureAnalysisResponseBody.Payload.Output()
                model.fromMap(dict["Output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("Usage") {
                var model = RunStyleFeatureAnalysisResponseBody.Payload.Usage()
                model.fromMap(dict["Usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunStyleFeatureAnalysisResponseBody.Header?

    public var payload: RunStyleFeatureAnalysisResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["Payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("End") {
            self.end = dict["End"] as! Bool
        }
        if dict.keys.contains("Header") {
            var model = RunStyleFeatureAnalysisResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Payload") {
            var model = RunStyleFeatureAnalysisResponseBody.Payload()
            model.fromMap(dict["Payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunStyleFeatureAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunStyleFeatureAnalysisResponseBody?

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
            var model = RunStyleFeatureAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunSummaryGenerateRequest : Tea.TeaModel {
    public var content: String?

    public var prompt: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunSummaryGenerateResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.eventInfo != nil {
                map["EventInfo"] = self.eventInfo!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("EventInfo") {
                self.eventInfo = dict["EventInfo"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int64
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int64
                }
                if dict.keys.contains("TotalTokens") {
                    self.totalTokens = dict["TotalTokens"] as! Int64
                }
            }
        }
        public var output: RunSummaryGenerateResponseBody.Payload.Output?

        public var usage: RunSummaryGenerateResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["Output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Output") {
                var model = RunSummaryGenerateResponseBody.Payload.Output()
                model.fromMap(dict["Output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("Usage") {
                var model = RunSummaryGenerateResponseBody.Payload.Usage()
                model.fromMap(dict["Usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunSummaryGenerateResponseBody.Header?

    public var payload: RunSummaryGenerateResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["Payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("End") {
            self.end = dict["End"] as! Bool
        }
        if dict.keys.contains("Header") {
            var model = RunSummaryGenerateResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Payload") {
            var model = RunSummaryGenerateResponseBody.Payload()
            model.fromMap(dict["Payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunSummaryGenerateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunSummaryGenerateResponseBody?

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
            var model = RunSummaryGenerateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunTextPolishingRequest : Tea.TeaModel {
    public var content: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunTextPolishingResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var originSessionId: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.originSessionId != nil {
                map["OriginSessionId"] = self.originSessionId!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("OriginSessionId") {
                self.originSessionId = dict["OriginSessionId"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int64
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int64
                }
                if dict.keys.contains("TotalTokens") {
                    self.totalTokens = dict["TotalTokens"] as! Int64
                }
            }
        }
        public var output: RunTextPolishingResponseBody.Payload.Output?

        public var usage: RunTextPolishingResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["Output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Output") {
                var model = RunTextPolishingResponseBody.Payload.Output()
                model.fromMap(dict["Output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("Usage") {
                var model = RunTextPolishingResponseBody.Payload.Usage()
                model.fromMap(dict["Usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var header: RunTextPolishingResponseBody.Header?

    public var payload: RunTextPolishingResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["Payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Header") {
            var model = RunTextPolishingResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Payload") {
            var model = RunTextPolishingResponseBody.Payload()
            model.fromMap(dict["Payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunTextPolishingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunTextPolishingResponseBody?

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
            var model = RunTextPolishingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunTitleGenerationRequest : Tea.TeaModel {
    public class ReferenceData : Tea.TeaModel {
        public var contents: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contents != nil {
                map["Contents"] = self.contents!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Contents") {
                self.contents = dict["Contents"] as! [String]
            }
        }
    }
    public var referenceData: RunTitleGenerationRequest.ReferenceData?

    public var taskId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.referenceData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.referenceData != nil {
            map["ReferenceData"] = self.referenceData?.toMap()
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReferenceData") {
            var model = RunTitleGenerationRequest.ReferenceData()
            model.fromMap(dict["ReferenceData"] as! [String: Any])
            self.referenceData = model
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunTitleGenerationShrinkRequest : Tea.TeaModel {
    public var referenceDataShrink: String?

    public var taskId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.referenceDataShrink != nil {
            map["ReferenceData"] = self.referenceDataShrink!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReferenceData") {
            self.referenceDataShrink = dict["ReferenceData"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunTitleGenerationResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var sessionId: String?

        public var statusCode: Int32?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.statusCode != nil {
                map["StatusCode"] = self.statusCode!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("StatusCode") {
                self.statusCode = dict["StatusCode"] as! Int32
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int64
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int64
                }
                if dict.keys.contains("TotalTokens") {
                    self.totalTokens = dict["TotalTokens"] as! Int64
                }
            }
        }
        public var output: RunTitleGenerationResponseBody.Payload.Output?

        public var usage: RunTitleGenerationResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["Output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Output") {
                var model = RunTitleGenerationResponseBody.Payload.Output()
                model.fromMap(dict["Output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("Usage") {
                var model = RunTitleGenerationResponseBody.Payload.Usage()
                model.fromMap(dict["Usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var code: String?

    public var header: RunTitleGenerationResponseBody.Header?

    public var httpStatusCode: String?

    public var message: String?

    public var payload: RunTitleGenerationResponseBody.Payload?

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
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.payload != nil {
            map["Payload"] = self.payload?.toMap()
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Header") {
            var model = RunTitleGenerationResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Payload") {
            var model = RunTitleGenerationResponseBody.Payload()
            model.fromMap(dict["Payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RunTitleGenerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunTitleGenerationResponseBody?

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
            var model = RunTitleGenerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunTranslateGenerationRequest : Tea.TeaModel {
    public class ReferenceData : Tea.TeaModel {
        public var contents: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contents != nil {
                map["Contents"] = self.contents!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Contents") {
                self.contents = dict["Contents"] as! [String]
            }
        }
    }
    public var prompt: String?

    public var referenceData: RunTranslateGenerationRequest.ReferenceData?

    public var taskId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.referenceData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.referenceData != nil {
            map["ReferenceData"] = self.referenceData?.toMap()
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("ReferenceData") {
            var model = RunTranslateGenerationRequest.ReferenceData()
            model.fromMap(dict["ReferenceData"] as! [String: Any])
            self.referenceData = model
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunTranslateGenerationShrinkRequest : Tea.TeaModel {
    public var prompt: String?

    public var referenceDataShrink: String?

    public var taskId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.referenceDataShrink != nil {
            map["ReferenceData"] = self.referenceDataShrink!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("ReferenceData") {
            self.referenceDataShrink = dict["ReferenceData"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunTranslateGenerationResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int64
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int64
                }
                if dict.keys.contains("TotalTokens") {
                    self.totalTokens = dict["TotalTokens"] as! Int64
                }
            }
        }
        public var output: RunTranslateGenerationResponseBody.Payload.Output?

        public var usage: RunTranslateGenerationResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["Output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Output") {
                var model = RunTranslateGenerationResponseBody.Payload.Output()
                model.fromMap(dict["Output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("Usage") {
                var model = RunTranslateGenerationResponseBody.Payload.Usage()
                model.fromMap(dict["Usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var header: RunTranslateGenerationResponseBody.Header?

    public var payload: RunTranslateGenerationResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["Payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Header") {
            var model = RunTranslateGenerationResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Payload") {
            var model = RunTranslateGenerationResponseBody.Payload()
            model.fromMap(dict["Payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunTranslateGenerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunTranslateGenerationResponseBody?

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
            var model = RunTranslateGenerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunWriteToneGenerationRequest : Tea.TeaModel {
    public class ReferenceData : Tea.TeaModel {
        public var contents: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contents != nil {
                map["Contents"] = self.contents!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Contents") {
                self.contents = dict["Contents"] as! [String]
            }
        }
    }
    public var prompt: String?

    public var referenceData: RunWriteToneGenerationRequest.ReferenceData?

    public var taskId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.referenceData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.referenceData != nil {
            map["ReferenceData"] = self.referenceData?.toMap()
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("ReferenceData") {
            var model = RunWriteToneGenerationRequest.ReferenceData()
            model.fromMap(dict["ReferenceData"] as! [String: Any])
            self.referenceData = model
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunWriteToneGenerationShrinkRequest : Tea.TeaModel {
    public var prompt: String?

    public var referenceDataShrink: String?

    public var taskId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.referenceDataShrink != nil {
            map["ReferenceData"] = self.referenceDataShrink!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("ReferenceData") {
            self.referenceDataShrink = dict["ReferenceData"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class RunWriteToneGenerationResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var sessionId: String?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int64
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int64
                }
                if dict.keys.contains("TotalTokens") {
                    self.totalTokens = dict["TotalTokens"] as! Int64
                }
            }
        }
        public var output: RunWriteToneGenerationResponseBody.Payload.Output?

        public var usage: RunWriteToneGenerationResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["Output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Output") {
                var model = RunWriteToneGenerationResponseBody.Payload.Output()
                model.fromMap(dict["Output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("Usage") {
                var model = RunWriteToneGenerationResponseBody.Payload.Usage()
                model.fromMap(dict["Usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var header: RunWriteToneGenerationResponseBody.Header?

    public var payload: RunWriteToneGenerationResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["Payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Header") {
            var model = RunWriteToneGenerationResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Payload") {
            var model = RunWriteToneGenerationResponseBody.Payload()
            model.fromMap(dict["Payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunWriteToneGenerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunWriteToneGenerationResponseBody?

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
            var model = RunWriteToneGenerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunWritingRequest : Tea.TeaModel {
    public class ReferenceData : Tea.TeaModel {
        public class Articles : Tea.TeaModel {
            public var author: String?

            public var content: String?

            public var docId: String?

            public var docUuid: String?

            public var pubTime: String?

            public var source: String?

            public var summary: String?

            public var tag: String?

            public var title: String?

            public var url: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.author != nil {
                    map["Author"] = self.author!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.docId != nil {
                    map["DocId"] = self.docId!
                }
                if self.docUuid != nil {
                    map["DocUuid"] = self.docUuid!
                }
                if self.pubTime != nil {
                    map["PubTime"] = self.pubTime!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Author") {
                    self.author = dict["Author"] as! String
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("DocId") {
                    self.docId = dict["DocId"] as! String
                }
                if dict.keys.contains("DocUuid") {
                    self.docUuid = dict["DocUuid"] as! String
                }
                if dict.keys.contains("PubTime") {
                    self.pubTime = dict["PubTime"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Summary") {
                    self.summary = dict["Summary"] as! String
                }
                if dict.keys.contains("Tag") {
                    self.tag = dict["Tag"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var articles: [RunWritingRequest.ReferenceData.Articles]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.articles != nil {
                var tmp : [Any] = []
                for k in self.articles! {
                    tmp.append(k.toMap())
                }
                map["Articles"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Articles") {
                var tmp : [RunWritingRequest.ReferenceData.Articles] = []
                for v in dict["Articles"] as! [Any] {
                    var model = RunWritingRequest.ReferenceData.Articles()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.articles = tmp
            }
        }
    }
    public class WritingConfig : Tea.TeaModel {
        public class PromptTag : Tea.TeaModel {
            public var necessaryTips: String?

            public var position: String?

            public var reverseWords: String?

            public var theme: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.necessaryTips != nil {
                    map["NecessaryTips"] = self.necessaryTips!
                }
                if self.position != nil {
                    map["Position"] = self.position!
                }
                if self.reverseWords != nil {
                    map["ReverseWords"] = self.reverseWords!
                }
                if self.theme != nil {
                    map["Theme"] = self.theme!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NecessaryTips") {
                    self.necessaryTips = dict["NecessaryTips"] as! String
                }
                if dict.keys.contains("Position") {
                    self.position = dict["Position"] as! String
                }
                if dict.keys.contains("ReverseWords") {
                    self.reverseWords = dict["ReverseWords"] as! String
                }
                if dict.keys.contains("Theme") {
                    self.theme = dict["Theme"] as! String
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var keyword: String?

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
                if self.keyword != nil {
                    map["Keyword"] = self.keyword!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Keyword") {
                    self.keyword = dict["Keyword"] as! String
                }
                if dict.keys.contains("Tag") {
                    self.tag = dict["Tag"] as! String
                }
            }
        }
        public var domain: String?

        public var promptTag: RunWritingRequest.WritingConfig.PromptTag?

        public var tags: [RunWritingRequest.WritingConfig.Tags]?

        public var useSearch: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.promptTag?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.promptTag != nil {
                map["PromptTag"] = self.promptTag?.toMap()
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.useSearch != nil {
                map["UseSearch"] = self.useSearch!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("PromptTag") {
                var model = RunWritingRequest.WritingConfig.PromptTag()
                model.fromMap(dict["PromptTag"] as! [String: Any])
                self.promptTag = model
            }
            if dict.keys.contains("Tags") {
                var tmp : [RunWritingRequest.WritingConfig.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = RunWritingRequest.WritingConfig.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("UseSearch") {
                self.useSearch = dict["UseSearch"] as! Bool
            }
        }
    }
    public var originSessionId: String?

    public var prompt: String?

    public var referenceData: RunWritingRequest.ReferenceData?

    public var sessionId: String?

    public var taskId: String?

    public var workspaceId: String?

    public var writingConfig: RunWritingRequest.WritingConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.referenceData?.validate()
        try self.writingConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.originSessionId != nil {
            map["OriginSessionId"] = self.originSessionId!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.referenceData != nil {
            map["ReferenceData"] = self.referenceData?.toMap()
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.writingConfig != nil {
            map["WritingConfig"] = self.writingConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OriginSessionId") {
            self.originSessionId = dict["OriginSessionId"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("ReferenceData") {
            var model = RunWritingRequest.ReferenceData()
            model.fromMap(dict["ReferenceData"] as! [String: Any])
            self.referenceData = model
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WritingConfig") {
            var model = RunWritingRequest.WritingConfig()
            model.fromMap(dict["WritingConfig"] as! [String: Any])
            self.writingConfig = model
        }
    }
}

public class RunWritingShrinkRequest : Tea.TeaModel {
    public var originSessionId: String?

    public var prompt: String?

    public var referenceDataShrink: String?

    public var sessionId: String?

    public var taskId: String?

    public var workspaceId: String?

    public var writingConfigShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.originSessionId != nil {
            map["OriginSessionId"] = self.originSessionId!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.referenceDataShrink != nil {
            map["ReferenceData"] = self.referenceDataShrink!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.writingConfigShrink != nil {
            map["WritingConfig"] = self.writingConfigShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OriginSessionId") {
            self.originSessionId = dict["OriginSessionId"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("ReferenceData") {
            self.referenceDataShrink = dict["ReferenceData"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("WritingConfig") {
            self.writingConfigShrink = dict["WritingConfig"] as! String
        }
    }
}

public class RunWritingResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var originSessionId: String?

        public var sessionId: String?

        public var statusCode: Int32?

        public var taskId: String?

        public var traceId: String?

        public override init() {
            super.init()
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
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.originSessionId != nil {
                map["OriginSessionId"] = self.originSessionId!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.statusCode != nil {
                map["StatusCode"] = self.statusCode!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("OriginSessionId") {
                self.originSessionId = dict["OriginSessionId"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("StatusCode") {
                self.statusCode = dict["StatusCode"] as! Int32
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public class Articles : Tea.TeaModel {
                public var author: String?

                public var content: String?

                public var docId: String?

                public var docUuid: String?

                public var pubTime: String?

                public var source: String?

                public var summary: String?

                public var tag: String?

                public var title: String?

                public var url: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.author != nil {
                        map["Author"] = self.author!
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.docId != nil {
                        map["DocId"] = self.docId!
                    }
                    if self.docUuid != nil {
                        map["DocUuid"] = self.docUuid!
                    }
                    if self.pubTime != nil {
                        map["PubTime"] = self.pubTime!
                    }
                    if self.source != nil {
                        map["Source"] = self.source!
                    }
                    if self.summary != nil {
                        map["Summary"] = self.summary!
                    }
                    if self.tag != nil {
                        map["Tag"] = self.tag!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Author") {
                        self.author = dict["Author"] as! String
                    }
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("DocId") {
                        self.docId = dict["DocId"] as! String
                    }
                    if dict.keys.contains("DocUuid") {
                        self.docUuid = dict["DocUuid"] as! String
                    }
                    if dict.keys.contains("PubTime") {
                        self.pubTime = dict["PubTime"] as! String
                    }
                    if dict.keys.contains("Source") {
                        self.source = dict["Source"] as! String
                    }
                    if dict.keys.contains("Summary") {
                        self.summary = dict["Summary"] as! String
                    }
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public var articles: [RunWritingResponseBody.Payload.Output.Articles]?

            public var miniDoc: [String]?

            public var searchQuery: String?

            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.articles != nil {
                    var tmp : [Any] = []
                    for k in self.articles! {
                        tmp.append(k.toMap())
                    }
                    map["Articles"] = tmp
                }
                if self.miniDoc != nil {
                    map["MiniDoc"] = self.miniDoc!
                }
                if self.searchQuery != nil {
                    map["SearchQuery"] = self.searchQuery!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Articles") {
                    var tmp : [RunWritingResponseBody.Payload.Output.Articles] = []
                    for v in dict["Articles"] as! [Any] {
                        var model = RunWritingResponseBody.Payload.Output.Articles()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.articles = tmp
                }
                if dict.keys.contains("MiniDoc") {
                    self.miniDoc = dict["MiniDoc"] as! [String]
                }
                if dict.keys.contains("SearchQuery") {
                    self.searchQuery = dict["SearchQuery"] as! String
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int64?

            public var outputTokens: Int64?

            public var tokenMap: [String: Int64]?

            public var totalTokens: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.tokenMap != nil {
                    map["TokenMap"] = self.tokenMap!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputTokens") {
                    self.inputTokens = dict["InputTokens"] as! Int64
                }
                if dict.keys.contains("OutputTokens") {
                    self.outputTokens = dict["OutputTokens"] as! Int64
                }
                if dict.keys.contains("TokenMap") {
                    self.tokenMap = dict["TokenMap"] as! [String: Int64]
                }
                if dict.keys.contains("TotalTokens") {
                    self.totalTokens = dict["TotalTokens"] as! Int64
                }
            }
        }
        public var output: RunWritingResponseBody.Payload.Output?

        public var usage: RunWritingResponseBody.Payload.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["Output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Output") {
                var model = RunWritingResponseBody.Payload.Output()
                model.fromMap(dict["Output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("Usage") {
                var model = RunWritingResponseBody.Payload.Usage()
                model.fromMap(dict["Usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var header: RunWritingResponseBody.Header?

    public var payload: RunWritingResponseBody.Payload?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
        try self.payload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.header != nil {
            map["Header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["Payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Header") {
            var model = RunWritingResponseBody.Header()
            model.fromMap(dict["Header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("Payload") {
            var model = RunWritingResponseBody.Payload()
            model.fromMap(dict["Payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunWritingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunWritingResponseBody?

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
            var model = RunWritingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveCustomTextRequest : Tea.TeaModel {
    public var agentKey: String?

    public var commodityCode: String?

    public var content: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CommodityCode") {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class SaveCustomTextResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class SaveCustomTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveCustomTextResponseBody?

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
            var model = SaveCustomTextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveDataSourceOrderConfigRequest : Tea.TeaModel {
    public class UserConfigDataSourceList : Tea.TeaModel {
        public var code: String?

        public var name: String?

        public var number: Int32?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Number") {
                self.number = dict["Number"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var agentKey: String?

    public var productCode: String?

    public var userConfigDataSourceList: [SaveDataSourceOrderConfigRequest.UserConfigDataSourceList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.userConfigDataSourceList != nil {
            var tmp : [Any] = []
            for k in self.userConfigDataSourceList! {
                tmp.append(k.toMap())
            }
            map["UserConfigDataSourceList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("UserConfigDataSourceList") {
            var tmp : [SaveDataSourceOrderConfigRequest.UserConfigDataSourceList] = []
            for v in dict["UserConfigDataSourceList"] as! [Any] {
                var model = SaveDataSourceOrderConfigRequest.UserConfigDataSourceList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userConfigDataSourceList = tmp
        }
    }
}

public class SaveDataSourceOrderConfigShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var productCode: String?

    public var userConfigDataSourceListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.userConfigDataSourceListShrink != nil {
            map["UserConfigDataSourceList"] = self.userConfigDataSourceListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("UserConfigDataSourceList") {
            self.userConfigDataSourceListShrink = dict["UserConfigDataSourceList"] as! String
        }
    }
}

public class SaveDataSourceOrderConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class SaveDataSourceOrderConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveDataSourceOrderConfigResponseBody?

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
            var model = SaveDataSourceOrderConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveMaterialDocumentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var author: String?

    public var bothSavePrivateAndShare: Bool?

    public var docKeywords: [String]?

    public var docType: String?

    public var externalUrl: String?

    public var htmlContent: String?

    public var pubTime: String?

    public var shareAttr: Int32?

    public var srcFrom: String?

    public var summary: String?

    public var textContent: String?

    public var title: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.author != nil {
            map["Author"] = self.author!
        }
        if self.bothSavePrivateAndShare != nil {
            map["BothSavePrivateAndShare"] = self.bothSavePrivateAndShare!
        }
        if self.docKeywords != nil {
            map["DocKeywords"] = self.docKeywords!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.externalUrl != nil {
            map["ExternalUrl"] = self.externalUrl!
        }
        if self.htmlContent != nil {
            map["HtmlContent"] = self.htmlContent!
        }
        if self.pubTime != nil {
            map["PubTime"] = self.pubTime!
        }
        if self.shareAttr != nil {
            map["ShareAttr"] = self.shareAttr!
        }
        if self.srcFrom != nil {
            map["SrcFrom"] = self.srcFrom!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        if self.textContent != nil {
            map["TextContent"] = self.textContent!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Author") {
            self.author = dict["Author"] as! String
        }
        if dict.keys.contains("BothSavePrivateAndShare") {
            self.bothSavePrivateAndShare = dict["BothSavePrivateAndShare"] as! Bool
        }
        if dict.keys.contains("DocKeywords") {
            self.docKeywords = dict["DocKeywords"] as! [String]
        }
        if dict.keys.contains("DocType") {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("ExternalUrl") {
            self.externalUrl = dict["ExternalUrl"] as! String
        }
        if dict.keys.contains("HtmlContent") {
            self.htmlContent = dict["HtmlContent"] as! String
        }
        if dict.keys.contains("PubTime") {
            self.pubTime = dict["PubTime"] as! String
        }
        if dict.keys.contains("ShareAttr") {
            self.shareAttr = dict["ShareAttr"] as! Int32
        }
        if dict.keys.contains("SrcFrom") {
            self.srcFrom = dict["SrcFrom"] as! String
        }
        if dict.keys.contains("Summary") {
            self.summary = dict["Summary"] as! String
        }
        if dict.keys.contains("TextContent") {
            self.textContent = dict["TextContent"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class SaveMaterialDocumentShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var author: String?

    public var bothSavePrivateAndShare: Bool?

    public var docKeywordsShrink: String?

    public var docType: String?

    public var externalUrl: String?

    public var htmlContent: String?

    public var pubTime: String?

    public var shareAttr: Int32?

    public var srcFrom: String?

    public var summary: String?

    public var textContent: String?

    public var title: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.author != nil {
            map["Author"] = self.author!
        }
        if self.bothSavePrivateAndShare != nil {
            map["BothSavePrivateAndShare"] = self.bothSavePrivateAndShare!
        }
        if self.docKeywordsShrink != nil {
            map["DocKeywords"] = self.docKeywordsShrink!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.externalUrl != nil {
            map["ExternalUrl"] = self.externalUrl!
        }
        if self.htmlContent != nil {
            map["HtmlContent"] = self.htmlContent!
        }
        if self.pubTime != nil {
            map["PubTime"] = self.pubTime!
        }
        if self.shareAttr != nil {
            map["ShareAttr"] = self.shareAttr!
        }
        if self.srcFrom != nil {
            map["SrcFrom"] = self.srcFrom!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        if self.textContent != nil {
            map["TextContent"] = self.textContent!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Author") {
            self.author = dict["Author"] as! String
        }
        if dict.keys.contains("BothSavePrivateAndShare") {
            self.bothSavePrivateAndShare = dict["BothSavePrivateAndShare"] as! Bool
        }
        if dict.keys.contains("DocKeywords") {
            self.docKeywordsShrink = dict["DocKeywords"] as! String
        }
        if dict.keys.contains("DocType") {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("ExternalUrl") {
            self.externalUrl = dict["ExternalUrl"] as! String
        }
        if dict.keys.contains("HtmlContent") {
            self.htmlContent = dict["HtmlContent"] as! String
        }
        if dict.keys.contains("PubTime") {
            self.pubTime = dict["PubTime"] as! String
        }
        if dict.keys.contains("ShareAttr") {
            self.shareAttr = dict["ShareAttr"] as! Int32
        }
        if dict.keys.contains("SrcFrom") {
            self.srcFrom = dict["SrcFrom"] as! String
        }
        if dict.keys.contains("Summary") {
            self.summary = dict["Summary"] as! String
        }
        if dict.keys.contains("TextContent") {
            self.textContent = dict["TextContent"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class SaveMaterialDocumentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class SaveMaterialDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveMaterialDocumentResponseBody?

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
            var model = SaveMaterialDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchNewsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var filterNotNull: Bool?

    public var includeContent: Bool?

    public var page: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var searchSources: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.filterNotNull != nil {
            map["FilterNotNull"] = self.filterNotNull!
        }
        if self.includeContent != nil {
            map["IncludeContent"] = self.includeContent!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.searchSources != nil {
            map["SearchSources"] = self.searchSources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("FilterNotNull") {
            self.filterNotNull = dict["FilterNotNull"] as! Bool
        }
        if dict.keys.contains("IncludeContent") {
            self.includeContent = dict["IncludeContent"] as! Bool
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("SearchSources") {
            self.searchSources = dict["SearchSources"] as! [String]
        }
    }
}

public class SearchNewsShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var filterNotNull: Bool?

    public var includeContent: Bool?

    public var page: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var searchSourcesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.filterNotNull != nil {
            map["FilterNotNull"] = self.filterNotNull!
        }
        if self.includeContent != nil {
            map["IncludeContent"] = self.includeContent!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.searchSourcesShrink != nil {
            map["SearchSources"] = self.searchSourcesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("FilterNotNull") {
            self.filterNotNull = dict["FilterNotNull"] as! Bool
        }
        if dict.keys.contains("IncludeContent") {
            self.includeContent = dict["IncludeContent"] as! Bool
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("SearchSources") {
            self.searchSourcesShrink = dict["SearchSources"] as! String
        }
    }
}

public class SearchNewsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var author: String?

        public var content: String?

        public var docUuid: String?

        public var imageUrls: [String]?

        public var pubTime: String?

        public var searchSource: String?

        public var searchSourceName: String?

        public var source: String?

        public var summary: String?

        public var tag: String?

        public var title: String?

        public var updateTime: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.author != nil {
                map["Author"] = self.author!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.docUuid != nil {
                map["DocUuid"] = self.docUuid!
            }
            if self.imageUrls != nil {
                map["ImageUrls"] = self.imageUrls!
            }
            if self.pubTime != nil {
                map["PubTime"] = self.pubTime!
            }
            if self.searchSource != nil {
                map["SearchSource"] = self.searchSource!
            }
            if self.searchSourceName != nil {
                map["SearchSourceName"] = self.searchSourceName!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Author") {
                self.author = dict["Author"] as! String
            }
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("DocUuid") {
                self.docUuid = dict["DocUuid"] as! String
            }
            if dict.keys.contains("ImageUrls") {
                self.imageUrls = dict["ImageUrls"] as! [String]
            }
            if dict.keys.contains("PubTime") {
                self.pubTime = dict["PubTime"] as! String
            }
            if dict.keys.contains("SearchSource") {
                self.searchSource = dict["SearchSource"] as! String
            }
            if dict.keys.contains("SearchSourceName") {
                self.searchSourceName = dict["SearchSourceName"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Summary") {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [SearchNewsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [SearchNewsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = SearchNewsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class SearchNewsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchNewsResponseBody?

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
            var model = SearchNewsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitAsyncTaskRequest : Tea.TeaModel {
    public var agentKey: String?

    public var taskCode: String?

    public var taskExecuteTime: String?

    public var taskName: String?

    public var taskParam: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskCode != nil {
            map["TaskCode"] = self.taskCode!
        }
        if self.taskExecuteTime != nil {
            map["TaskExecuteTime"] = self.taskExecuteTime!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskParam != nil {
            map["TaskParam"] = self.taskParam!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskCode") {
            self.taskCode = dict["TaskCode"] as! String
        }
        if dict.keys.contains("TaskExecuteTime") {
            self.taskExecuteTime = dict["TaskExecuteTime"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TaskParam") {
            self.taskParam = dict["TaskParam"] as! String
        }
    }
}

public class SubmitAsyncTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskId: String?

        public var taskIntermediateResult: Any?

        public var taskName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskIntermediateResult != nil {
                map["TaskIntermediateResult"] = self.taskIntermediateResult!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskIntermediateResult") {
                self.taskIntermediateResult = dict["TaskIntermediateResult"] as! Any
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitAsyncTaskResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = SubmitAsyncTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class SubmitAsyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitAsyncTaskResponseBody?

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
            var model = SubmitAsyncTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitCustomHotTopicBroadcastJobRequest : Tea.TeaModel {
    public class HotTopicBroadcastConfig : Tea.TeaModel {
        public class StepForCustomSummaryStyleConfig : Tea.TeaModel {
            public var summaryImageCount: Int32?

            public var summaryModel: String?

            public var summaryPrompt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.summaryImageCount != nil {
                    map["SummaryImageCount"] = self.summaryImageCount!
                }
                if self.summaryModel != nil {
                    map["SummaryModel"] = self.summaryModel!
                }
                if self.summaryPrompt != nil {
                    map["SummaryPrompt"] = self.summaryPrompt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SummaryImageCount") {
                    self.summaryImageCount = dict["SummaryImageCount"] as! Int32
                }
                if dict.keys.contains("SummaryModel") {
                    self.summaryModel = dict["SummaryModel"] as! String
                }
                if dict.keys.contains("SummaryPrompt") {
                    self.summaryPrompt = dict["SummaryPrompt"] as! String
                }
            }
        }
        public class StepForNewsBroadcastContentConfig : Tea.TeaModel {
            public class CustomHotValueWeights : Tea.TeaModel {
                public var dimension: String?

                public var dimensionName: String?

                public var weight: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dimension != nil {
                        map["Dimension"] = self.dimension!
                    }
                    if self.dimensionName != nil {
                        map["DimensionName"] = self.dimensionName!
                    }
                    if self.weight != nil {
                        map["Weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Dimension") {
                        self.dimension = dict["Dimension"] as! String
                    }
                    if dict.keys.contains("DimensionName") {
                        self.dimensionName = dict["DimensionName"] as! String
                    }
                    if dict.keys.contains("Weight") {
                        self.weight = dict["Weight"] as! Int32
                    }
                }
            }
            public var categories: [String]?

            public var customHotValueWeights: [SubmitCustomHotTopicBroadcastJobRequest.HotTopicBroadcastConfig.StepForNewsBroadcastContentConfig.CustomHotValueWeights]?

            public var topicCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.categories != nil {
                    map["Categories"] = self.categories!
                }
                if self.customHotValueWeights != nil {
                    var tmp : [Any] = []
                    for k in self.customHotValueWeights! {
                        tmp.append(k.toMap())
                    }
                    map["CustomHotValueWeights"] = tmp
                }
                if self.topicCount != nil {
                    map["TopicCount"] = self.topicCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Categories") {
                    self.categories = dict["Categories"] as! [String]
                }
                if dict.keys.contains("CustomHotValueWeights") {
                    var tmp : [SubmitCustomHotTopicBroadcastJobRequest.HotTopicBroadcastConfig.StepForNewsBroadcastContentConfig.CustomHotValueWeights] = []
                    for v in dict["CustomHotValueWeights"] as! [Any] {
                        var model = SubmitCustomHotTopicBroadcastJobRequest.HotTopicBroadcastConfig.StepForNewsBroadcastContentConfig.CustomHotValueWeights()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.customHotValueWeights = tmp
                }
                if dict.keys.contains("TopicCount") {
                    self.topicCount = dict["TopicCount"] as! Int32
                }
            }
        }
        public var stepForCustomSummaryStyleConfig: SubmitCustomHotTopicBroadcastJobRequest.HotTopicBroadcastConfig.StepForCustomSummaryStyleConfig?

        public var stepForNewsBroadcastContentConfig: SubmitCustomHotTopicBroadcastJobRequest.HotTopicBroadcastConfig.StepForNewsBroadcastContentConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.stepForCustomSummaryStyleConfig?.validate()
            try self.stepForNewsBroadcastContentConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.stepForCustomSummaryStyleConfig != nil {
                map["StepForCustomSummaryStyleConfig"] = self.stepForCustomSummaryStyleConfig?.toMap()
            }
            if self.stepForNewsBroadcastContentConfig != nil {
                map["StepForNewsBroadcastContentConfig"] = self.stepForNewsBroadcastContentConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("StepForCustomSummaryStyleConfig") {
                var model = SubmitCustomHotTopicBroadcastJobRequest.HotTopicBroadcastConfig.StepForCustomSummaryStyleConfig()
                model.fromMap(dict["StepForCustomSummaryStyleConfig"] as! [String: Any])
                self.stepForCustomSummaryStyleConfig = model
            }
            if dict.keys.contains("StepForNewsBroadcastContentConfig") {
                var model = SubmitCustomHotTopicBroadcastJobRequest.HotTopicBroadcastConfig.StepForNewsBroadcastContentConfig()
                model.fromMap(dict["StepForNewsBroadcastContentConfig"] as! [String: Any])
                self.stepForNewsBroadcastContentConfig = model
            }
        }
    }
    public var hotTopicBroadcastConfig: SubmitCustomHotTopicBroadcastJobRequest.HotTopicBroadcastConfig?

    public var hotTopicVersion: String?

    public var topics: [String]?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hotTopicBroadcastConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hotTopicBroadcastConfig != nil {
            map["HotTopicBroadcastConfig"] = self.hotTopicBroadcastConfig?.toMap()
        }
        if self.hotTopicVersion != nil {
            map["HotTopicVersion"] = self.hotTopicVersion!
        }
        if self.topics != nil {
            map["Topics"] = self.topics!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HotTopicBroadcastConfig") {
            var model = SubmitCustomHotTopicBroadcastJobRequest.HotTopicBroadcastConfig()
            model.fromMap(dict["HotTopicBroadcastConfig"] as! [String: Any])
            self.hotTopicBroadcastConfig = model
        }
        if dict.keys.contains("HotTopicVersion") {
            self.hotTopicVersion = dict["HotTopicVersion"] as! String
        }
        if dict.keys.contains("Topics") {
            self.topics = dict["Topics"] as! [String]
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class SubmitCustomHotTopicBroadcastJobShrinkRequest : Tea.TeaModel {
    public var hotTopicBroadcastConfigShrink: String?

    public var hotTopicVersion: String?

    public var topicsShrink: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hotTopicBroadcastConfigShrink != nil {
            map["HotTopicBroadcastConfig"] = self.hotTopicBroadcastConfigShrink!
        }
        if self.hotTopicVersion != nil {
            map["HotTopicVersion"] = self.hotTopicVersion!
        }
        if self.topicsShrink != nil {
            map["Topics"] = self.topicsShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HotTopicBroadcastConfig") {
            self.hotTopicBroadcastConfigShrink = dict["HotTopicBroadcastConfig"] as! String
        }
        if dict.keys.contains("HotTopicVersion") {
            self.hotTopicVersion = dict["HotTopicVersion"] as! String
        }
        if dict.keys.contains("Topics") {
            self.topicsShrink = dict["Topics"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class SubmitCustomHotTopicBroadcastJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitCustomHotTopicBroadcastJobResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = SubmitCustomHotTopicBroadcastJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class SubmitCustomHotTopicBroadcastJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitCustomHotTopicBroadcastJobResponseBody?

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
            var model = SubmitCustomHotTopicBroadcastJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitCustomTopicSelectionPerspectiveAnalysisTaskRequest : Tea.TeaModel {
    public class Documents : Tea.TeaModel {
        public var author: String?

        public var content: String?

        public var pubTime: String?

        public var source: String?

        public var summary: String?

        public var title: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.author != nil {
                map["Author"] = self.author!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.pubTime != nil {
                map["PubTime"] = self.pubTime!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Author") {
                self.author = dict["Author"] as! String
            }
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("PubTime") {
                self.pubTime = dict["PubTime"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Summary") {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var agentKey: String?

    public var documents: [SubmitCustomTopicSelectionPerspectiveAnalysisTaskRequest.Documents]?

    public var prompt: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.documents != nil {
            var tmp : [Any] = []
            for k in self.documents! {
                tmp.append(k.toMap())
            }
            map["Documents"] = tmp
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Documents") {
            var tmp : [SubmitCustomTopicSelectionPerspectiveAnalysisTaskRequest.Documents] = []
            for v in dict["Documents"] as! [Any] {
                var model = SubmitCustomTopicSelectionPerspectiveAnalysisTaskRequest.Documents()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.documents = tmp
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class SubmitCustomTopicSelectionPerspectiveAnalysisTaskShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var documentsShrink: String?

    public var prompt: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.documentsShrink != nil {
            map["Documents"] = self.documentsShrink!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Documents") {
            self.documentsShrink = dict["Documents"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class SubmitCustomTopicSelectionPerspectiveAnalysisTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = SubmitCustomTopicSelectionPerspectiveAnalysisTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class SubmitCustomTopicSelectionPerspectiveAnalysisTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitCustomTopicSelectionPerspectiveAnalysisTaskResponseBody?

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
            var model = SubmitCustomTopicSelectionPerspectiveAnalysisTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitDocClusterTaskRequest : Tea.TeaModel {
    public class Documents : Tea.TeaModel {
        public var content: String?

        public var docId: String?

        public var title: String?

        public override init() {
            super.init()
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
            if self.docId != nil {
                map["DocId"] = self.docId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("DocId") {
                self.docId = dict["DocId"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var agentKey: String?

    public var documents: [SubmitDocClusterTaskRequest.Documents]?

    public var summaryLength: Int32?

    public var titleLength: Int32?

    public var topicCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.documents != nil {
            var tmp : [Any] = []
            for k in self.documents! {
                tmp.append(k.toMap())
            }
            map["Documents"] = tmp
        }
        if self.summaryLength != nil {
            map["SummaryLength"] = self.summaryLength!
        }
        if self.titleLength != nil {
            map["TitleLength"] = self.titleLength!
        }
        if self.topicCount != nil {
            map["TopicCount"] = self.topicCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Documents") {
            var tmp : [SubmitDocClusterTaskRequest.Documents] = []
            for v in dict["Documents"] as! [Any] {
                var model = SubmitDocClusterTaskRequest.Documents()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.documents = tmp
        }
        if dict.keys.contains("SummaryLength") {
            self.summaryLength = dict["SummaryLength"] as! Int32
        }
        if dict.keys.contains("TitleLength") {
            self.titleLength = dict["TitleLength"] as! Int32
        }
        if dict.keys.contains("TopicCount") {
            self.topicCount = dict["TopicCount"] as! Int32
        }
    }
}

public class SubmitDocClusterTaskShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var documentsShrink: String?

    public var summaryLength: Int32?

    public var titleLength: Int32?

    public var topicCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.documentsShrink != nil {
            map["Documents"] = self.documentsShrink!
        }
        if self.summaryLength != nil {
            map["SummaryLength"] = self.summaryLength!
        }
        if self.titleLength != nil {
            map["TitleLength"] = self.titleLength!
        }
        if self.topicCount != nil {
            map["TopicCount"] = self.topicCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Documents") {
            self.documentsShrink = dict["Documents"] as! String
        }
        if dict.keys.contains("SummaryLength") {
            self.summaryLength = dict["SummaryLength"] as! Int32
        }
        if dict.keys.contains("TitleLength") {
            self.titleLength = dict["TitleLength"] as! Int32
        }
        if dict.keys.contains("TopicCount") {
            self.topicCount = dict["TopicCount"] as! Int32
        }
    }
}

public class SubmitDocClusterTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitDocClusterTaskResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = SubmitDocClusterTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class SubmitDocClusterTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitDocClusterTaskResponseBody?

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
            var model = SubmitDocClusterTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitTopicSelectionPerspectiveAnalysisTaskRequest : Tea.TeaModel {
    public class Documents : Tea.TeaModel {
        public class Comments : Tea.TeaModel {
            public var text: String?

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
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("Username") {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public var author: String?

        public var comments: [SubmitTopicSelectionPerspectiveAnalysisTaskRequest.Documents.Comments]?

        public var content: String?

        public var pubTime: String?

        public var source: String?

        public var summary: String?

        public var title: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.author != nil {
                map["Author"] = self.author!
            }
            if self.comments != nil {
                var tmp : [Any] = []
                for k in self.comments! {
                    tmp.append(k.toMap())
                }
                map["Comments"] = tmp
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.pubTime != nil {
                map["PubTime"] = self.pubTime!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Author") {
                self.author = dict["Author"] as! String
            }
            if dict.keys.contains("Comments") {
                var tmp : [SubmitTopicSelectionPerspectiveAnalysisTaskRequest.Documents.Comments] = []
                for v in dict["Comments"] as! [Any] {
                    var model = SubmitTopicSelectionPerspectiveAnalysisTaskRequest.Documents.Comments()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.comments = tmp
            }
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("PubTime") {
                self.pubTime = dict["PubTime"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Summary") {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var agentKey: String?

    public var documents: [SubmitTopicSelectionPerspectiveAnalysisTaskRequest.Documents]?

    public var perspectiveTypes: [String]?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.documents != nil {
            var tmp : [Any] = []
            for k in self.documents! {
                tmp.append(k.toMap())
            }
            map["Documents"] = tmp
        }
        if self.perspectiveTypes != nil {
            map["PerspectiveTypes"] = self.perspectiveTypes!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Documents") {
            var tmp : [SubmitTopicSelectionPerspectiveAnalysisTaskRequest.Documents] = []
            for v in dict["Documents"] as! [Any] {
                var model = SubmitTopicSelectionPerspectiveAnalysisTaskRequest.Documents()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.documents = tmp
        }
        if dict.keys.contains("PerspectiveTypes") {
            self.perspectiveTypes = dict["PerspectiveTypes"] as! [String]
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class SubmitTopicSelectionPerspectiveAnalysisTaskShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var documentsShrink: String?

    public var perspectiveTypesShrink: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.documentsShrink != nil {
            map["Documents"] = self.documentsShrink!
        }
        if self.perspectiveTypesShrink != nil {
            map["PerspectiveTypes"] = self.perspectiveTypesShrink!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Documents") {
            self.documentsShrink = dict["Documents"] as! String
        }
        if dict.keys.contains("PerspectiveTypes") {
            self.perspectiveTypesShrink = dict["PerspectiveTypes"] as! String
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class SubmitTopicSelectionPerspectiveAnalysisTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskId: String?

        public var taskName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitTopicSelectionPerspectiveAnalysisTaskResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = SubmitTopicSelectionPerspectiveAnalysisTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class SubmitTopicSelectionPerspectiveAnalysisTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitTopicSelectionPerspectiveAnalysisTaskResponseBody?

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
            var model = SubmitTopicSelectionPerspectiveAnalysisTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCustomTextRequest : Tea.TeaModel {
    public var agentKey: String?

    public var commodityCode: String?

    public var content: String?

    public var id: Int64?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CommodityCode") {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateCustomTextResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class UpdateCustomTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomTextResponseBody?

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
            var model = UpdateCustomTextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGeneratedContentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var contentText: String?

    public var id: Int64?

    public var keywords: [String]?

    public var prompt: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentText != nil {
            map["ContentText"] = self.contentText!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentText") {
            self.contentText = dict["ContentText"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Keywords") {
            self.keywords = dict["Keywords"] as! [String]
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateGeneratedContentShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var contentText: String?

    public var id: Int64?

    public var keywordsShrink: String?

    public var prompt: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentText != nil {
            map["ContentText"] = self.contentText!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.keywordsShrink != nil {
            map["Keywords"] = self.keywordsShrink!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentText") {
            self.contentText = dict["ContentText"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Keywords") {
            self.keywordsShrink = dict["Keywords"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateGeneratedContentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class UpdateGeneratedContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGeneratedContentResponseBody?

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
            var model = UpdateGeneratedContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMaterialDocumentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var author: String?

    public var docKeywords: [String]?

    public var docType: String?

    public var externalUrl: String?

    public var htmlContent: String?

    public var id: Int64?

    public var pubTime: String?

    public var regionId: String?

    public var shareAttr: Int32?

    public var srcFrom: String?

    public var summary: String?

    public var textContent: String?

    public var title: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.author != nil {
            map["Author"] = self.author!
        }
        if self.docKeywords != nil {
            map["DocKeywords"] = self.docKeywords!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.externalUrl != nil {
            map["ExternalUrl"] = self.externalUrl!
        }
        if self.htmlContent != nil {
            map["HtmlContent"] = self.htmlContent!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.pubTime != nil {
            map["PubTime"] = self.pubTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.shareAttr != nil {
            map["ShareAttr"] = self.shareAttr!
        }
        if self.srcFrom != nil {
            map["SrcFrom"] = self.srcFrom!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        if self.textContent != nil {
            map["TextContent"] = self.textContent!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Author") {
            self.author = dict["Author"] as! String
        }
        if dict.keys.contains("DocKeywords") {
            self.docKeywords = dict["DocKeywords"] as! [String]
        }
        if dict.keys.contains("DocType") {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("ExternalUrl") {
            self.externalUrl = dict["ExternalUrl"] as! String
        }
        if dict.keys.contains("HtmlContent") {
            self.htmlContent = dict["HtmlContent"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("PubTime") {
            self.pubTime = dict["PubTime"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ShareAttr") {
            self.shareAttr = dict["ShareAttr"] as! Int32
        }
        if dict.keys.contains("SrcFrom") {
            self.srcFrom = dict["SrcFrom"] as! String
        }
        if dict.keys.contains("Summary") {
            self.summary = dict["Summary"] as! String
        }
        if dict.keys.contains("TextContent") {
            self.textContent = dict["TextContent"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class UpdateMaterialDocumentShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var author: String?

    public var docKeywordsShrink: String?

    public var docType: String?

    public var externalUrl: String?

    public var htmlContent: String?

    public var id: Int64?

    public var pubTime: String?

    public var regionId: String?

    public var shareAttr: Int32?

    public var srcFrom: String?

    public var summary: String?

    public var textContent: String?

    public var title: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.author != nil {
            map["Author"] = self.author!
        }
        if self.docKeywordsShrink != nil {
            map["DocKeywords"] = self.docKeywordsShrink!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.externalUrl != nil {
            map["ExternalUrl"] = self.externalUrl!
        }
        if self.htmlContent != nil {
            map["HtmlContent"] = self.htmlContent!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.pubTime != nil {
            map["PubTime"] = self.pubTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.shareAttr != nil {
            map["ShareAttr"] = self.shareAttr!
        }
        if self.srcFrom != nil {
            map["SrcFrom"] = self.srcFrom!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        if self.textContent != nil {
            map["TextContent"] = self.textContent!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Author") {
            self.author = dict["Author"] as! String
        }
        if dict.keys.contains("DocKeywords") {
            self.docKeywordsShrink = dict["DocKeywords"] as! String
        }
        if dict.keys.contains("DocType") {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("ExternalUrl") {
            self.externalUrl = dict["ExternalUrl"] as! String
        }
        if dict.keys.contains("HtmlContent") {
            self.htmlContent = dict["HtmlContent"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("PubTime") {
            self.pubTime = dict["PubTime"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ShareAttr") {
            self.shareAttr = dict["ShareAttr"] as! Int32
        }
        if dict.keys.contains("SrcFrom") {
            self.srcFrom = dict["SrcFrom"] as! String
        }
        if dict.keys.contains("Summary") {
            self.summary = dict["Summary"] as! String
        }
        if dict.keys.contains("TextContent") {
            self.textContent = dict["TextContent"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class UpdateMaterialDocumentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class UpdateMaterialDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMaterialDocumentResponseBody?

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
            var model = UpdateMaterialDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
