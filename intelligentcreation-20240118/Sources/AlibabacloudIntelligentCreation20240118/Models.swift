import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActualDeductResourceCmd : Tea.TeaModel {
    public var cost: Int64?

    public var extraInfo: String?

    public var idempotentId: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.idempotentId != nil {
            map["idempotentId"] = self.idempotentId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") && dict["cost"] != nil {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("extraInfo") && dict["extraInfo"] != nil {
            self.extraInfo = dict["extraInfo"] as! String
        }
        if dict.keys.contains("idempotentId") && dict["idempotentId"] != nil {
            self.idempotentId = dict["idempotentId"] as! String
        }
        if dict.keys.contains("taskId") && dict["taskId"] != nil {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class ActualDeductResourceResult : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
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
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DigitalHumanLiveBroadcastQACmd : Tea.TeaModel {
    public class History : Tea.TeaModel {
        public var bot: String?

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
                map["bot"] = self.bot!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bot") && dict["bot"] != nil {
                self.bot = dict["bot"] as! String
            }
            if dict.keys.contains("user") && dict["user"] != nil {
                self.user = dict["user"] as! String
            }
        }
    }
    public var accountId: String?

    public var history: [DigitalHumanLiveBroadcastQACmd.History]?

    public var question: String?

    public var sessionId: String?

    public var stream: Bool?

    public var subAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.history != nil {
            var tmp : [Any] = []
            for k in self.history! {
                tmp.append(k.toMap())
            }
            map["history"] = tmp
        }
        if self.question != nil {
            map["question"] = self.question!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.subAccountId != nil {
            map["subAccountId"] = self.subAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("history") && dict["history"] != nil {
            var tmp : [DigitalHumanLiveBroadcastQACmd.History] = []
            for v in dict["history"] as! [Any] {
                var model = DigitalHumanLiveBroadcastQACmd.History()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.history = tmp
        }
        if dict.keys.contains("question") && dict["question"] != nil {
            self.question = dict["question"] as! String
        }
        if dict.keys.contains("sessionId") && dict["sessionId"] != nil {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("stream") && dict["stream"] != nil {
            self.stream = dict["stream"] as! Bool
        }
        if dict.keys.contains("subAccountId") && dict["subAccountId"] != nil {
            self.subAccountId = dict["subAccountId"] as! String
        }
    }
}

public class DigitalHumanLiveBroadcastQAResult : Tea.TeaModel {
    public var content: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var sessionId: String?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") && dict["content"] != nil {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("sessionId") && dict["sessionId"] != nil {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DirectDeductResourceCmd : Tea.TeaModel {
    public var accountId: String?

    public var cost: Int64?

    public var deductScene: String?

    public var extraInfo: String?

    public var idempotentId: String?

    public var resourceType: Int64?

    public var subAccountId: String?

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
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.deductScene != nil {
            map["deductScene"] = self.deductScene!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.idempotentId != nil {
            map["idempotentId"] = self.idempotentId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.subAccountId != nil {
            map["subAccountId"] = self.subAccountId!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("cost") && dict["cost"] != nil {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("deductScene") && dict["deductScene"] != nil {
            self.deductScene = dict["deductScene"] as! String
        }
        if dict.keys.contains("extraInfo") && dict["extraInfo"] != nil {
            self.extraInfo = dict["extraInfo"] as! String
        }
        if dict.keys.contains("idempotentId") && dict["idempotentId"] != nil {
            self.idempotentId = dict["idempotentId"] as! String
        }
        if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
            self.resourceType = dict["resourceType"] as! Int64
        }
        if dict.keys.contains("subAccountId") && dict["subAccountId"] != nil {
            self.subAccountId = dict["subAccountId"] as! String
        }
        if dict.keys.contains("token") && dict["token"] != nil {
            self.token = dict["token"] as! String
        }
    }
}

public class DirectDeductResourceResult : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
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
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExpectDeductResourceCmd : Tea.TeaModel {
    public var accountId: String?

    public var cost: Int64?

    public var deductScene: String?

    public var extraInfo: String?

    public var idempotentId: String?

    public var resourceType: Int64?

    public var subAccountId: String?

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
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.deductScene != nil {
            map["deductScene"] = self.deductScene!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.idempotentId != nil {
            map["idempotentId"] = self.idempotentId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.subAccountId != nil {
            map["subAccountId"] = self.subAccountId!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("cost") && dict["cost"] != nil {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("deductScene") && dict["deductScene"] != nil {
            self.deductScene = dict["deductScene"] as! String
        }
        if dict.keys.contains("extraInfo") && dict["extraInfo"] != nil {
            self.extraInfo = dict["extraInfo"] as! String
        }
        if dict.keys.contains("idempotentId") && dict["idempotentId"] != nil {
            self.idempotentId = dict["idempotentId"] as! String
        }
        if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
            self.resourceType = dict["resourceType"] as! Int64
        }
        if dict.keys.contains("subAccountId") && dict["subAccountId"] != nil {
            self.subAccountId = dict["subAccountId"] as! String
        }
        if dict.keys.contains("token") && dict["token"] != nil {
            self.token = dict["token"] as! String
        }
    }
}

public class ExpectDeductResourceResult : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("taskId") && dict["taskId"] != nil {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class SubmitBulletQuestionsCmd : Tea.TeaModel {
    public class Questions : Tea.TeaModel {
        public var content: String?

        public var id: String?

        public var time: Int64?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.time != nil {
                map["time"] = self.time!
            }
            if self.username != nil {
                map["username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") && dict["content"] != nil {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("time") && dict["time"] != nil {
                self.time = dict["time"] as! Int64
            }
            if dict.keys.contains("username") && dict["username"] != nil {
                self.username = dict["username"] as! String
            }
        }
    }
    public var accountId: String?

    public var questions: [SubmitBulletQuestionsCmd.Questions]?

    public var roomId: String?

    public var subAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.questions != nil {
            var tmp : [Any] = []
            for k in self.questions! {
                tmp.append(k.toMap())
            }
            map["questions"] = tmp
        }
        if self.roomId != nil {
            map["roomId"] = self.roomId!
        }
        if self.subAccountId != nil {
            map["subAccountId"] = self.subAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("questions") && dict["questions"] != nil {
            var tmp : [SubmitBulletQuestionsCmd.Questions] = []
            for v in dict["questions"] as! [Any] {
                var model = SubmitBulletQuestionsCmd.Questions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.questions = tmp
        }
        if dict.keys.contains("roomId") && dict["roomId"] != nil {
            self.roomId = dict["roomId"] as! String
        }
        if dict.keys.contains("subAccountId") && dict["subAccountId"] != nil {
            self.subAccountId = dict["subAccountId"] as! String
        }
    }
}

public class SubmitBulletQuestionsQAResult : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ActualDeductResourceRequest : Tea.TeaModel {
    public var body: ActualDeductResourceCmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ActualDeductResourceCmd()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ActualDeductResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActualDeductResourceResult?

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
            var model = ActualDeductResourceResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ActualDeductResourcesRequest : Tea.TeaModel {
    public var body: ActualDeductResourceCmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ActualDeductResourceCmd()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ActualDeductResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActualDeductResourceResult?

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
            var model = ActualDeductResourceResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CopywritingQARequest : Tea.TeaModel {
    public class Histories : Tea.TeaModel {
        public var bot: String?

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
                map["bot"] = self.bot!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bot") && dict["bot"] != nil {
                self.bot = dict["bot"] as! String
            }
            if dict.keys.contains("user") && dict["user"] != nil {
                self.user = dict["user"] as! String
            }
        }
    }
    public class History : Tea.TeaModel {
        public var bot: String?

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
                map["bot"] = self.bot!
            }
            if self.user != nil {
                map["user"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bot") && dict["bot"] != nil {
                self.bot = dict["bot"] as! String
            }
            if dict.keys.contains("user") && dict["user"] != nil {
                self.user = dict["user"] as! String
            }
        }
    }
    public var accountId: String?

    public var histories: [CopywritingQARequest.Histories]?

    public var history: CopywritingQARequest.History?

    public var question: String?

    public var sessionId: String?

    public var stream: Bool?

    public var subAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.history?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.histories != nil {
            var tmp : [Any] = []
            for k in self.histories! {
                tmp.append(k.toMap())
            }
            map["histories"] = tmp
        }
        if self.history != nil {
            map["history"] = self.history?.toMap()
        }
        if self.question != nil {
            map["question"] = self.question!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.subAccountId != nil {
            map["subAccountId"] = self.subAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("histories") && dict["histories"] != nil {
            var tmp : [CopywritingQARequest.Histories] = []
            for v in dict["histories"] as! [Any] {
                var model = CopywritingQARequest.Histories()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.histories = tmp
        }
        if dict.keys.contains("history") && dict["history"] != nil {
            var model = CopywritingQARequest.History()
            model.fromMap(dict["history"] as! [String: Any])
            self.history = model
        }
        if dict.keys.contains("question") && dict["question"] != nil {
            self.question = dict["question"] as! String
        }
        if dict.keys.contains("sessionId") && dict["sessionId"] != nil {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("stream") && dict["stream"] != nil {
            self.stream = dict["stream"] as! Bool
        }
        if dict.keys.contains("subAccountId") && dict["subAccountId"] != nil {
            self.subAccountId = dict["subAccountId"] as! String
        }
    }
}

public class CopywritingQAShrinkRequest : Tea.TeaModel {
    public var accountId: String?

    public var historiesShrink: String?

    public var historyShrink: String?

    public var question: String?

    public var sessionId: String?

    public var stream: Bool?

    public var subAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.historiesShrink != nil {
            map["histories"] = self.historiesShrink!
        }
        if self.historyShrink != nil {
            map["history"] = self.historyShrink!
        }
        if self.question != nil {
            map["question"] = self.question!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.subAccountId != nil {
            map["subAccountId"] = self.subAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("histories") && dict["histories"] != nil {
            self.historiesShrink = dict["histories"] as! String
        }
        if dict.keys.contains("history") && dict["history"] != nil {
            self.historyShrink = dict["history"] as! String
        }
        if dict.keys.contains("question") && dict["question"] != nil {
            self.question = dict["question"] as! String
        }
        if dict.keys.contains("sessionId") && dict["sessionId"] != nil {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("stream") && dict["stream"] != nil {
            self.stream = dict["stream"] as! Bool
        }
        if dict.keys.contains("subAccountId") && dict["subAccountId"] != nil {
            self.subAccountId = dict["subAccountId"] as! String
        }
    }
}

public class CopywritingQAResponseBody : Tea.TeaModel {
    public var content: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var sessionId: String?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") && dict["content"] != nil {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("sessionId") && dict["sessionId"] != nil {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CopywritingQAResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CopywritingQAResponseBody?

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
            var model = CopywritingQAResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CopywritingQAV1Request : Tea.TeaModel {
    public var body: DigitalHumanLiveBroadcastQACmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DigitalHumanLiveBroadcastQACmd()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CopywritingQAV1Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DigitalHumanLiveBroadcastQAResult?

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
            var model = DigitalHumanLiveBroadcastQAResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDigitalVideoRequest : Tea.TeaModel {
    public var accountId: String?

    public var videoId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.videoId != nil {
            map["videoId"] = self.videoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("videoId") && dict["videoId"] != nil {
            self.videoId = dict["videoId"] as! String
        }
    }
}

public class DeleteDigitalVideoResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
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
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteDigitalVideoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDigitalVideoResponseBody?

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
            var model = DeleteDigitalVideoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DirectDeductResourceRequest : Tea.TeaModel {
    public var body: DirectDeductResourceCmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DirectDeductResourceCmd()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DirectDeductResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DirectDeductResourceResult?

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
            var model = DirectDeductResourceResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DirectDeductResourcesRequest : Tea.TeaModel {
    public var body: DirectDeductResourceCmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DirectDeductResourceCmd()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DirectDeductResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DirectDeductResourceResult?

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
            var model = DirectDeductResourceResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExpectDeductResourceRequest : Tea.TeaModel {
    public var body: ExpectDeductResourceCmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ExpectDeductResourceCmd()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExpectDeductResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExpectDeductResourceResult?

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
            var model = ExpectDeductResourceResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExpectDeductResourcesRequest : Tea.TeaModel {
    public var body: ExpectDeductResourceCmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ExpectDeductResourceCmd()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExpectDeductResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExpectDeductResourceResult?

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
            var model = ExpectDeductResourceResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRemainResourceRequest : Tea.TeaModel {
    public var accountId: String?

    public var resourceType: String?

    public var subAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.subAccountId != nil {
            map["subAccountId"] = self.subAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("subAccountId") && dict["subAccountId"] != nil {
            self.subAccountId = dict["subAccountId"] as! String
        }
    }
}

public class GetRemainResourceResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var remainCount: Int32?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.remainCount != nil {
            map["remainCount"] = self.remainCount!
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
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("remainCount") && dict["remainCount"] != nil {
            self.remainCount = dict["remainCount"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetRemainResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRemainResourceResponseBody?

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
            var model = GetRemainResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitBulletQuestionsRequest : Tea.TeaModel {
    public class Questions : Tea.TeaModel {
        public var content: String?

        public var id: String?

        public var time: Int64?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.time != nil {
                map["time"] = self.time!
            }
            if self.username != nil {
                map["username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") && dict["content"] != nil {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("time") && dict["time"] != nil {
                self.time = dict["time"] as! Int64
            }
            if dict.keys.contains("username") && dict["username"] != nil {
                self.username = dict["username"] as! String
            }
        }
    }
    public var accountId: String?

    public var questions: [SubmitBulletQuestionsRequest.Questions]?

    public var roomId: String?

    public var subAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.questions != nil {
            var tmp : [Any] = []
            for k in self.questions! {
                tmp.append(k.toMap())
            }
            map["questions"] = tmp
        }
        if self.roomId != nil {
            map["roomId"] = self.roomId!
        }
        if self.subAccountId != nil {
            map["subAccountId"] = self.subAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("questions") && dict["questions"] != nil {
            var tmp : [SubmitBulletQuestionsRequest.Questions] = []
            for v in dict["questions"] as! [Any] {
                var model = SubmitBulletQuestionsRequest.Questions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.questions = tmp
        }
        if dict.keys.contains("roomId") && dict["roomId"] != nil {
            self.roomId = dict["roomId"] as! String
        }
        if dict.keys.contains("subAccountId") && dict["subAccountId"] != nil {
            self.subAccountId = dict["subAccountId"] as! String
        }
    }
}

public class SubmitBulletQuestionsShrinkRequest : Tea.TeaModel {
    public var accountId: String?

    public var questionsShrink: String?

    public var roomId: String?

    public var subAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.questionsShrink != nil {
            map["questions"] = self.questionsShrink!
        }
        if self.roomId != nil {
            map["roomId"] = self.roomId!
        }
        if self.subAccountId != nil {
            map["subAccountId"] = self.subAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("questions") && dict["questions"] != nil {
            self.questionsShrink = dict["questions"] as! String
        }
        if dict.keys.contains("roomId") && dict["roomId"] != nil {
            self.roomId = dict["roomId"] as! String
        }
        if dict.keys.contains("subAccountId") && dict["subAccountId"] != nil {
            self.subAccountId = dict["subAccountId"] as! String
        }
    }
}

public class SubmitBulletQuestionsResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") && dict["errorCode"] != nil {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class SubmitBulletQuestionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitBulletQuestionsResponseBody?

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
            var model = SubmitBulletQuestionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitBulletQuestionsV1Request : Tea.TeaModel {
    public var body: SubmitBulletQuestionsCmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitBulletQuestionsCmd()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitBulletQuestionsV1Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitBulletQuestionsQAResult?

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
            var model = SubmitBulletQuestionsQAResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
