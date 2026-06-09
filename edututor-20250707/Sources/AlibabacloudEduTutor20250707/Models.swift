import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AnswerSSERequest : Tea.TeaModel {
    public class Messages : Tea.TeaModel {
        public var content: [[String: String]]?

        public var role: String?

        public override init() {
            super.init()
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
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? [[String: String]] {
                self.content = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public class Parameters : Tea.TeaModel {
        public var grade: Int32?

        public var stage: String?

        public var subject: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.grade != nil {
                map["grade"] = self.grade!
            }
            if self.stage != nil {
                map["stage"] = self.stage!
            }
            if self.subject != nil {
                map["subject"] = self.subject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["grade"] as? Int32 {
                self.grade = value
            }
            if let value = dict["stage"] as? String {
                self.stage = value
            }
            if let value = dict["subject"] as? String {
                self.subject = value
            }
        }
    }
    public var messages: [AnswerSSERequest.Messages]?

    public var parameters: AnswerSSERequest.Parameters?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["messages"] = tmp
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters?.toMap()
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["messages"] as? [Any?] {
            var tmp : [AnswerSSERequest.Messages] = []
            for v in value {
                if v != nil {
                    var model = AnswerSSERequest.Messages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messages = tmp
        }
        if let value = dict["parameters"] as? [String: Any?] {
            var model = AnswerSSERequest.Parameters()
            model.fromMap(value)
            self.parameters = model
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class AnswerSSEResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var finishReason: String?

    public var httpStatusCode: Int32?

    public var inputTokens: Int32?

    public var message: String?

    public var outputTokens: Int32?

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
        if self.finishReason != nil {
            map["finish_reason"] = self.finishReason!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.inputTokens != nil {
            map["input_tokens"] = self.inputTokens!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.outputTokens != nil {
            map["output_tokens"] = self.outputTokens!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["finish_reason"] as? String {
            self.finishReason = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["input_tokens"] as? Int32 {
            self.inputTokens = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["output_tokens"] as? Int32 {
            self.outputTokens = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class AnswerSSEResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AnswerSSEResponseBody?

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
            var model = AnswerSSEResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CutQuestionsRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var extractImages: Bool?

        public var struct_: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extractImages != nil {
                map["extract_images"] = self.extractImages!
            }
            if self.struct_ != nil {
                map["struct"] = self.struct_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["extract_images"] as? Bool {
                self.extractImages = value
            }
            if let value = dict["struct"] as? Bool {
                self.struct_ = value
            }
        }
    }
    public var image: String?

    public var parameters: CutQuestionsRequest.Parameters?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.image != nil {
            map["image"] = self.image!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters?.toMap()
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["image"] as? String {
            self.image = value
        }
        if let value = dict["parameters"] as? [String: Any?] {
            var model = CutQuestionsRequest.Parameters()
            model.fromMap(value)
            self.parameters = model
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CutQuestionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var inputTokens: Int32?

    public var message: String?

    public var outputTokens: Int32?

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
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.inputTokens != nil {
            map["input_tokens"] = self.inputTokens!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.outputTokens != nil {
            map["output_tokens"] = self.outputTokens!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["input_tokens"] as? Int32 {
            self.inputTokens = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["output_tokens"] as? Int32 {
            self.outputTokens = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CutQuestionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CutQuestionsResponseBody?

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
            var model = CutQuestionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
