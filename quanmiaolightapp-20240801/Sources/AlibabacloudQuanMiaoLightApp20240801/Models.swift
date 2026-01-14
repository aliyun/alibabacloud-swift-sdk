import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ModelUsage : Tea.TeaModel {
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
            map["inputTokens"] = self.inputTokens!
        }
        if self.outputTokens != nil {
            map["outputTokens"] = self.outputTokens!
        }
        if self.totalTokens != nil {
            map["totalTokens"] = self.totalTokens!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["inputTokens"] as? Int64 {
            self.inputTokens = value
        }
        if let value = dict["outputTokens"] as? Int64 {
            self.outputTokens = value
        }
        if let value = dict["totalTokens"] as? Int64 {
            self.totalTokens = value
        }
    }
}

public class CancelAsyncTaskRequest : Tea.TeaModel {
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelAsyncTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportAnalysisTagDetailByTaskIdRequest : Tea.TeaModel {
    public var categories: [String]?

    public var category: String?

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
        if self.categories != nil {
            map["categories"] = self.categories!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["categories"] as? [String] {
            self.categories = value
        }
        if let value = dict["category"] as? String {
            self.category = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class ExportAnalysisTagDetailByTaskIdShrinkRequest : Tea.TeaModel {
    public var categoriesShrink: String?

    public var category: String?

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
        if self.categoriesShrink != nil {
            map["categories"] = self.categoriesShrink!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["categories"] as? String {
            self.categoriesShrink = value
        }
        if let value = dict["category"] as? String {
            self.category = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class ExportAnalysisTagDetailByTaskIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
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
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExportAnalysisTagDetailByTaskIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportAnalysisTagDetailByTaskIdResponseBody?

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
            var model = ExportAnalysisTagDetailByTaskIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateBroadcastNewsRequest : Tea.TeaModel {
    public var prompt: String?

    public override init() {
        super.init()
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
            map["prompt"] = self.prompt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
    }
}

public class GenerateBroadcastNewsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class HotTopicSummaries : Tea.TeaModel {
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
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["url"] as? String {
                        self.url = value
                    }
                }
            }
            public var category: String?

            public var hotTopic: String?

            public var hotTopicVersion: String?

            public var hotValue: Double?

            public var id: String?

            public var images: [GenerateBroadcastNewsResponseBody.Data.HotTopicSummaries.Images]?

            public var textSummary: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["category"] = self.category!
                }
                if self.hotTopic != nil {
                    map["hotTopic"] = self.hotTopic!
                }
                if self.hotTopicVersion != nil {
                    map["hotTopicVersion"] = self.hotTopicVersion!
                }
                if self.hotValue != nil {
                    map["hotValue"] = self.hotValue!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.images != nil {
                    var tmp : [Any] = []
                    for k in self.images! {
                        tmp.append(k.toMap())
                    }
                    map["images"] = tmp
                }
                if self.textSummary != nil {
                    map["textSummary"] = self.textSummary!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["hotTopic"] as? String {
                    self.hotTopic = value
                }
                if let value = dict["hotTopicVersion"] as? String {
                    self.hotTopicVersion = value
                }
                if let value = dict["hotValue"] as? Double {
                    self.hotValue = value
                }
                if let value = dict["id"] as? String {
                    self.id = value
                }
                if let value = dict["images"] as? [Any?] {
                    var tmp : [GenerateBroadcastNewsResponseBody.Data.HotTopicSummaries.Images] = []
                    for v in value {
                        if v != nil {
                            var model = GenerateBroadcastNewsResponseBody.Data.HotTopicSummaries.Images()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.images = tmp
                }
                if let value = dict["textSummary"] as? String {
                    self.textSummary = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var hotTopicSummaries: [GenerateBroadcastNewsResponseBody.Data.HotTopicSummaries]?

        public var sessionId: String?

        public var taskId: String?

        public var text: String?

        public var usage: GenerateBroadcastNewsResponseBody.Data.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hotTopicSummaries != nil {
                var tmp : [Any] = []
                for k in self.hotTopicSummaries! {
                    tmp.append(k.toMap())
                }
                map["hotTopicSummaries"] = tmp
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.text != nil {
                map["text"] = self.text!
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["hotTopicSummaries"] as? [Any?] {
                var tmp : [GenerateBroadcastNewsResponseBody.Data.HotTopicSummaries] = []
                for v in value {
                    if v != nil {
                        var model = GenerateBroadcastNewsResponseBody.Data.HotTopicSummaries()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hotTopicSummaries = tmp
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["text"] as? String {
                self.text = value
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = GenerateBroadcastNewsResponseBody.Data.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var code: String?

    public var data: GenerateBroadcastNewsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GenerateBroadcastNewsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GenerateBroadcastNewsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateBroadcastNewsResponseBody?

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
            var model = GenerateBroadcastNewsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateOutputFormatRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var tagDefinePrompt: String?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagDefinePrompt != nil {
                map["tagDefinePrompt"] = self.tagDefinePrompt!
            }
            if self.tagName != nil {
                map["tagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagDefinePrompt"] as? String {
                self.tagDefinePrompt = value
            }
            if let value = dict["tagName"] as? String {
                self.tagName = value
            }
        }
    }
    public var businessType: String?

    public var content: String?

    public var extraInfo: String?

    public var tags: [GenerateOutputFormatRequest.Tags]?

    public var taskDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["businessType"] = self.businessType!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["businessType"] as? String {
            self.businessType = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["extraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [GenerateOutputFormatRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = GenerateOutputFormatRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
    }
}

public class GenerateOutputFormatShrinkRequest : Tea.TeaModel {
    public var businessType: String?

    public var content: String?

    public var extraInfo: String?

    public var tagsShrink: String?

    public var taskDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessType != nil {
            map["businessType"] = self.businessType!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["businessType"] as? String {
            self.businessType = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["extraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
    }
}

public class GenerateOutputFormatResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var outputFormat: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.outputFormat != nil {
                map["outputFormat"] = self.outputFormat!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["outputFormat"] as? String {
                self.outputFormat = value
            }
        }
    }
    public var code: String?

    public var data: GenerateOutputFormatResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GenerateOutputFormatResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GenerateOutputFormatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateOutputFormatResponseBody?

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
            var model = GenerateOutputFormatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEnterpriseVocAnalysisTaskRequest : Tea.TeaModel {
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetEnterpriseVocAnalysisTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class StatisticsOverview : Tea.TeaModel {
            public class FilterDimensionStatistics : Tea.TeaModel {
                public class TagValueCountStatistic : Tea.TeaModel {
                    public var tagName: String?

                    public var valueCount: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.tagName != nil {
                            map["tagName"] = self.tagName!
                        }
                        if self.valueCount != nil {
                            map["valueCount"] = self.valueCount!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["tagName"] as? String {
                            self.tagName = value
                        }
                        if let value = dict["valueCount"] as? Int32 {
                            self.valueCount = value
                        }
                    }
                }
                public var tagValueCountStatistic: [GetEnterpriseVocAnalysisTaskResponseBody.Data.StatisticsOverview.FilterDimensionStatistics.TagValueCountStatistic]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagValueCountStatistic != nil {
                        var tmp : [Any] = []
                        for k in self.tagValueCountStatistic! {
                            tmp.append(k.toMap())
                        }
                        map["tagValueCountStatistic"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["tagValueCountStatistic"] as? [Any?] {
                        var tmp : [GetEnterpriseVocAnalysisTaskResponseBody.Data.StatisticsOverview.FilterDimensionStatistics.TagValueCountStatistic] = []
                        for v in value {
                            if v != nil {
                                var model = GetEnterpriseVocAnalysisTaskResponseBody.Data.StatisticsOverview.FilterDimensionStatistics.TagValueCountStatistic()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tagValueCountStatistic = tmp
                    }
                }
            }
            public class TagDimensionStatistics : Tea.TeaModel {
                public class TagValueCountStatistic : Tea.TeaModel {
                    public var tagName: String?

                    public var valueCount: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.tagName != nil {
                            map["tagName"] = self.tagName!
                        }
                        if self.valueCount != nil {
                            map["valueCount"] = self.valueCount!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["tagName"] as? String {
                            self.tagName = value
                        }
                        if let value = dict["valueCount"] as? Int32 {
                            self.valueCount = value
                        }
                    }
                }
                public var tagValueCountStatistic: [GetEnterpriseVocAnalysisTaskResponseBody.Data.StatisticsOverview.TagDimensionStatistics.TagValueCountStatistic]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagValueCountStatistic != nil {
                        var tmp : [Any] = []
                        for k in self.tagValueCountStatistic! {
                            tmp.append(k.toMap())
                        }
                        map["tagValueCountStatistic"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["tagValueCountStatistic"] as? [Any?] {
                        var tmp : [GetEnterpriseVocAnalysisTaskResponseBody.Data.StatisticsOverview.TagDimensionStatistics.TagValueCountStatistic] = []
                        for v in value {
                            if v != nil {
                                var model = GetEnterpriseVocAnalysisTaskResponseBody.Data.StatisticsOverview.TagDimensionStatistics.TagValueCountStatistic()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tagValueCountStatistic = tmp
                    }
                }
            }
            public var count: Int32?

            public var filterDimensionStatistics: GetEnterpriseVocAnalysisTaskResponseBody.Data.StatisticsOverview.FilterDimensionStatistics?

            public var tagDimensionStatistics: GetEnterpriseVocAnalysisTaskResponseBody.Data.StatisticsOverview.TagDimensionStatistics?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.filterDimensionStatistics?.validate()
                try self.tagDimensionStatistics?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.count != nil {
                    map["count"] = self.count!
                }
                if self.filterDimensionStatistics != nil {
                    map["filterDimensionStatistics"] = self.filterDimensionStatistics?.toMap()
                }
                if self.tagDimensionStatistics != nil {
                    map["tagDimensionStatistics"] = self.tagDimensionStatistics?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["filterDimensionStatistics"] as? [String: Any?] {
                    var model = GetEnterpriseVocAnalysisTaskResponseBody.Data.StatisticsOverview.FilterDimensionStatistics()
                    model.fromMap(value)
                    self.filterDimensionStatistics = model
                }
                if let value = dict["tagDimensionStatistics"] as? [String: Any?] {
                    var model = GetEnterpriseVocAnalysisTaskResponseBody.Data.StatisticsOverview.TagDimensionStatistics()
                    model.fromMap(value)
                    self.tagDimensionStatistics = model
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int32?

            public var outputTokens: Int32?

            public override init() {
                super.init()
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int32 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int32 {
                    self.outputTokens = value
                }
            }
        }
        public var errorMessage: String?

        public var modelId: String?

        public var modelName: String?

        public var statisticsOverview: GetEnterpriseVocAnalysisTaskResponseBody.Data.StatisticsOverview?

        public var status: String?

        public var usage: GetEnterpriseVocAnalysisTaskResponseBody.Data.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.statisticsOverview?.validate()
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["modelName"] = self.modelName!
            }
            if self.statisticsOverview != nil {
                map["statisticsOverview"] = self.statisticsOverview?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["modelName"] as? String {
                self.modelName = value
            }
            if let value = dict["statisticsOverview"] as? [String: Any?] {
                var model = GetEnterpriseVocAnalysisTaskResponseBody.Data.StatisticsOverview()
                model.fromMap(value)
                self.statisticsOverview = model
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = GetEnterpriseVocAnalysisTaskResponseBody.Data.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var code: String?

    public var data: GetEnterpriseVocAnalysisTaskResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetEnterpriseVocAnalysisTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetEnterpriseVocAnalysisTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEnterpriseVocAnalysisTaskResponseBody?

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
            var model = GetEnterpriseVocAnalysisTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEssayCorrectionTaskRequest : Tea.TeaModel {
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetEssayCorrectionTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Results : Tea.TeaModel {
            public var customId: String?

            public var result: String?

            public var score: Int32?

            public var usage: ModelUsage?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.usage?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customId != nil {
                    map["customId"] = self.customId!
                }
                if self.result != nil {
                    map["result"] = self.result!
                }
                if self.score != nil {
                    map["score"] = self.score!
                }
                if self.usage != nil {
                    map["usage"] = self.usage?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["customId"] as? String {
                    self.customId = value
                }
                if let value = dict["result"] as? String {
                    self.result = value
                }
                if let value = dict["score"] as? Int32 {
                    self.score = value
                }
                if let value = dict["usage"] as? [String: Any?] {
                    var model = ModelUsage()
                    model.fromMap(value)
                    self.usage = model
                }
            }
        }
        public var errorMessage: String?

        public var results: [GetEssayCorrectionTaskResponseBody.Data.Results]?

        public var status: String?

        public var totalUsage: ModelUsage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.totalUsage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.results != nil {
                var tmp : [Any] = []
                for k in self.results! {
                    tmp.append(k.toMap())
                }
                map["results"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.totalUsage != nil {
                map["totalUsage"] = self.totalUsage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["results"] as? [Any?] {
                var tmp : [GetEssayCorrectionTaskResponseBody.Data.Results] = []
                for v in value {
                    if v != nil {
                        var model = GetEssayCorrectionTaskResponseBody.Data.Results()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.results = tmp
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["totalUsage"] as? [String: Any?] {
                var model = ModelUsage()
                model.fromMap(value)
                self.totalUsage = model
            }
        }
    }
    public var code: String?

    public var data: GetEssayCorrectionTaskResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetEssayCorrectionTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetEssayCorrectionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEssayCorrectionTaskResponseBody?

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
            var model = GetEssayCorrectionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFileContentRequest : Tea.TeaModel {
    public var fileKey: String?

    public override init() {
        super.init()
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
            map["fileKey"] = self.fileKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileKey"] as? String {
            self.fileKey = value
        }
    }
}

public class GetFileContentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
        }
    }
    public var code: String?

    public var data: GetFileContentResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: String?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetFileContentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class GetFileContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFileContentResponseBody?

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
            var model = GetFileContentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTagMiningAnalysisTaskRequest : Tea.TeaModel {
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetTagMiningAnalysisTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Results : Tea.TeaModel {
            public class Header : Tea.TeaModel {
                public var errorCode: String?

                public var errorMessage: String?

                public var event: String?

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
                    if self.errorCode != nil {
                        map["errorCode"] = self.errorCode!
                    }
                    if self.errorMessage != nil {
                        map["errorMessage"] = self.errorMessage!
                    }
                    if self.event != nil {
                        map["event"] = self.event!
                    }
                    if self.requestId != nil {
                        map["requestId"] = self.requestId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["errorCode"] as? String {
                        self.errorCode = value
                    }
                    if let value = dict["errorMessage"] as? String {
                        self.errorMessage = value
                    }
                    if let value = dict["event"] as? String {
                        self.event = value
                    }
                    if let value = dict["requestId"] as? String {
                        self.requestId = value
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
                            map["text"] = self.text!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["text"] as? String {
                            self.text = value
                        }
                    }
                }
                public class Usage : Tea.TeaModel {
                    public var inputToken: Int64?

                    public var outputToken: Int64?

                    public var totalToken: Int64?

                    public override init() {
                        super.init()
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
                            map["inputToken"] = self.inputToken!
                        }
                        if self.outputToken != nil {
                            map["outputToken"] = self.outputToken!
                        }
                        if self.totalToken != nil {
                            map["totalToken"] = self.totalToken!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["inputToken"] as? Int64 {
                            self.inputToken = value
                        }
                        if let value = dict["outputToken"] as? Int64 {
                            self.outputToken = value
                        }
                        if let value = dict["totalToken"] as? Int64 {
                            self.totalToken = value
                        }
                    }
                }
                public var output: GetTagMiningAnalysisTaskResponseBody.Data.Results.Payload.Output?

                public var usage: GetTagMiningAnalysisTaskResponseBody.Data.Results.Payload.Usage?

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
                        map["output"] = self.output?.toMap()
                    }
                    if self.usage != nil {
                        map["usage"] = self.usage?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["output"] as? [String: Any?] {
                        var model = GetTagMiningAnalysisTaskResponseBody.Data.Results.Payload.Output()
                        model.fromMap(value)
                        self.output = model
                    }
                    if let value = dict["usage"] as? [String: Any?] {
                        var model = GetTagMiningAnalysisTaskResponseBody.Data.Results.Payload.Usage()
                        model.fromMap(value)
                        self.usage = model
                    }
                }
            }
            public var customId: String?

            public var header: GetTagMiningAnalysisTaskResponseBody.Data.Results.Header?

            public var payload: GetTagMiningAnalysisTaskResponseBody.Data.Results.Payload?

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
                if self.customId != nil {
                    map["customId"] = self.customId!
                }
                if self.header != nil {
                    map["header"] = self.header?.toMap()
                }
                if self.payload != nil {
                    map["payload"] = self.payload?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["customId"] as? String {
                    self.customId = value
                }
                if let value = dict["header"] as? [String: Any?] {
                    var model = GetTagMiningAnalysisTaskResponseBody.Data.Results.Header()
                    model.fromMap(value)
                    self.header = model
                }
                if let value = dict["payload"] as? [String: Any?] {
                    var model = GetTagMiningAnalysisTaskResponseBody.Data.Results.Payload()
                    model.fromMap(value)
                    self.payload = model
                }
            }
        }
        public var errorCode: String?

        public var errorMessage: String?

        public var results: [GetTagMiningAnalysisTaskResponseBody.Data.Results]?

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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.results != nil {
                var tmp : [Any] = []
                for k in self.results! {
                    tmp.append(k.toMap())
                }
                map["results"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["results"] as? [Any?] {
                var tmp : [GetTagMiningAnalysisTaskResponseBody.Data.Results] = []
                for v in value {
                    if v != nil {
                        var model = GetTagMiningAnalysisTaskResponseBody.Data.Results()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.results = tmp
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: GetTagMiningAnalysisTaskResponseBody.Data?

    public var httpStatusCode: String?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetTagMiningAnalysisTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTagMiningAnalysisTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTagMiningAnalysisTaskResponseBody?

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
            var model = GetTagMiningAnalysisTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoAnalysisConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var asyncConcurrency: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asyncConcurrency != nil {
                map["asyncConcurrency"] = self.asyncConcurrency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["asyncConcurrency"] as? Int32 {
                self.asyncConcurrency = value
            }
        }
    }
    public var code: String?

    public var data: GetVideoAnalysisConfigResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetVideoAnalysisConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetVideoAnalysisConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoAnalysisConfigResponseBody?

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
            var model = GetVideoAnalysisConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoAnalysisTaskRequest : Tea.TeaModel {
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetVideoAnalysisTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
                    map["errorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["errorMessage"] = self.errorMessage!
                }
                if self.event != nil {
                    map["event"] = self.event!
                }
                if self.eventInfo != nil {
                    map["eventInfo"] = self.eventInfo!
                }
                if self.sessionId != nil {
                    map["sessionId"] = self.sessionId!
                }
                if self.taskId != nil {
                    map["taskId"] = self.taskId!
                }
                if self.traceId != nil {
                    map["traceId"] = self.traceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["errorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["errorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["event"] as? String {
                    self.event = value
                }
                if let value = dict["eventInfo"] as? String {
                    self.eventInfo = value
                }
                if let value = dict["sessionId"] as? String {
                    self.sessionId = value
                }
                if let value = dict["taskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["traceId"] as? String {
                    self.traceId = value
                }
            }
        }
        public class Payload : Tea.TeaModel {
            public class Output : Tea.TeaModel {
                public class AddDatasetDocumentsResult : Tea.TeaModel {
                    public var docId: String?

                    public var docUuid: String?

                    public var errorMessage: String?

                    public var status: Int64?

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
                        if self.docId != nil {
                            map["docId"] = self.docId!
                        }
                        if self.docUuid != nil {
                            map["docUuid"] = self.docUuid!
                        }
                        if self.errorMessage != nil {
                            map["errorMessage"] = self.errorMessage!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        if self.title != nil {
                            map["title"] = self.title!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["docId"] as? String {
                            self.docId = value
                        }
                        if let value = dict["docUuid"] as? String {
                            self.docUuid = value
                        }
                        if let value = dict["errorMessage"] as? String {
                            self.errorMessage = value
                        }
                        if let value = dict["status"] as? Int64 {
                            self.status = value
                        }
                        if let value = dict["title"] as? String {
                            self.title = value
                        }
                    }
                }
                public class VideoAnalysisResult : Tea.TeaModel {
                    public class Usage : Tea.TeaModel {
                        public var imageTokens: Int64?

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
                            if self.imageTokens != nil {
                                map["imageTokens"] = self.imageTokens!
                            }
                            if self.inputTokens != nil {
                                map["inputTokens"] = self.inputTokens!
                            }
                            if self.outputTokens != nil {
                                map["outputTokens"] = self.outputTokens!
                            }
                            if self.totalTokens != nil {
                                map["totalTokens"] = self.totalTokens!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["imageTokens"] as? Int64 {
                                self.imageTokens = value
                            }
                            if let value = dict["inputTokens"] as? Int64 {
                                self.inputTokens = value
                            }
                            if let value = dict["outputTokens"] as? Int64 {
                                self.outputTokens = value
                            }
                            if let value = dict["totalTokens"] as? Int64 {
                                self.totalTokens = value
                            }
                        }
                    }
                    public class VideoShotAnalysisResults : Tea.TeaModel {
                        public var endTime: Int64?

                        public var startTime: Int64?

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
                            if self.endTime != nil {
                                map["endTime"] = self.endTime!
                            }
                            if self.startTime != nil {
                                map["startTime"] = self.startTime!
                            }
                            if self.text != nil {
                                map["text"] = self.text!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["endTime"] as? Int64 {
                                self.endTime = value
                            }
                            if let value = dict["startTime"] as? Int64 {
                                self.startTime = value
                            }
                            if let value = dict["text"] as? String {
                                self.text = value
                            }
                        }
                    }
                    public var generateFinished: Bool?

                    public var text: String?

                    public var usage: GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoAnalysisResult.Usage?

                    public var videoShotAnalysisResults: [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoAnalysisResult.VideoShotAnalysisResults]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.usage?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.generateFinished != nil {
                            map["generateFinished"] = self.generateFinished!
                        }
                        if self.text != nil {
                            map["text"] = self.text!
                        }
                        if self.usage != nil {
                            map["usage"] = self.usage?.toMap()
                        }
                        if self.videoShotAnalysisResults != nil {
                            var tmp : [Any] = []
                            for k in self.videoShotAnalysisResults! {
                                tmp.append(k.toMap())
                            }
                            map["videoShotAnalysisResults"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["generateFinished"] as? Bool {
                            self.generateFinished = value
                        }
                        if let value = dict["text"] as? String {
                            self.text = value
                        }
                        if let value = dict["usage"] as? [String: Any?] {
                            var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoAnalysisResult.Usage()
                            model.fromMap(value)
                            self.usage = model
                        }
                        if let value = dict["videoShotAnalysisResults"] as? [Any?] {
                            var tmp : [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoAnalysisResult.VideoShotAnalysisResults] = []
                            for v in value {
                                if v != nil {
                                    var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoAnalysisResult.VideoShotAnalysisResults()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.videoShotAnalysisResults = tmp
                        }
                    }
                }
                public class VideoCalculatorResult : Tea.TeaModel {
                    public class Items : Tea.TeaModel {
                        public var inputExpense: Double?

                        public var inputToken: Int64?

                        public var name: String?

                        public var outputExpense: Double?

                        public var outputToken: Int64?

                        public var time: Int64?

                        public var timeExpense: Double?

                        public var totalExpense: Double?

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
                            if self.inputExpense != nil {
                                map["inputExpense"] = self.inputExpense!
                            }
                            if self.inputToken != nil {
                                map["inputToken"] = self.inputToken!
                            }
                            if self.name != nil {
                                map["name"] = self.name!
                            }
                            if self.outputExpense != nil {
                                map["outputExpense"] = self.outputExpense!
                            }
                            if self.outputToken != nil {
                                map["outputToken"] = self.outputToken!
                            }
                            if self.time != nil {
                                map["time"] = self.time!
                            }
                            if self.timeExpense != nil {
                                map["timeExpense"] = self.timeExpense!
                            }
                            if self.totalExpense != nil {
                                map["totalExpense"] = self.totalExpense!
                            }
                            if self.type != nil {
                                map["type"] = self.type!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["inputExpense"] as? Double {
                                self.inputExpense = value
                            }
                            if let value = dict["inputToken"] as? Int64 {
                                self.inputToken = value
                            }
                            if let value = dict["name"] as? String {
                                self.name = value
                            }
                            if let value = dict["outputExpense"] as? Double {
                                self.outputExpense = value
                            }
                            if let value = dict["outputToken"] as? Int64 {
                                self.outputToken = value
                            }
                            if let value = dict["time"] as? Int64 {
                                self.time = value
                            }
                            if let value = dict["timeExpense"] as? Double {
                                self.timeExpense = value
                            }
                            if let value = dict["totalExpense"] as? Double {
                                self.totalExpense = value
                            }
                            if let value = dict["type"] as? String {
                                self.type = value
                            }
                        }
                    }
                    public var items: [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoCalculatorResult.Items]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.items != nil {
                            var tmp : [Any] = []
                            for k in self.items! {
                                tmp.append(k.toMap())
                            }
                            map["items"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["items"] as? [Any?] {
                            var tmp : [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoCalculatorResult.Items] = []
                            for v in value {
                                if v != nil {
                                    var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoCalculatorResult.Items()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.items = tmp
                        }
                    }
                }
                public class VideoCaptionResult : Tea.TeaModel {
                    public class VideoCaptions : Tea.TeaModel {
                        public var endTime: Int64?

                        public var endTimeFormat: String?

                        public var speaker: String?

                        public var startTime: Int64?

                        public var startTimeFormat: String?

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
                            if self.endTime != nil {
                                map["endTime"] = self.endTime!
                            }
                            if self.endTimeFormat != nil {
                                map["endTimeFormat"] = self.endTimeFormat!
                            }
                            if self.speaker != nil {
                                map["speaker"] = self.speaker!
                            }
                            if self.startTime != nil {
                                map["startTime"] = self.startTime!
                            }
                            if self.startTimeFormat != nil {
                                map["startTimeFormat"] = self.startTimeFormat!
                            }
                            if self.text != nil {
                                map["text"] = self.text!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["endTime"] as? Int64 {
                                self.endTime = value
                            }
                            if let value = dict["endTimeFormat"] as? String {
                                self.endTimeFormat = value
                            }
                            if let value = dict["speaker"] as? String {
                                self.speaker = value
                            }
                            if let value = dict["startTime"] as? Int64 {
                                self.startTime = value
                            }
                            if let value = dict["startTimeFormat"] as? String {
                                self.startTimeFormat = value
                            }
                            if let value = dict["text"] as? String {
                                self.text = value
                            }
                        }
                    }
                    public var generateFinished: Bool?

                    public var videoCaptions: [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoCaptionResult.VideoCaptions]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.generateFinished != nil {
                            map["generateFinished"] = self.generateFinished!
                        }
                        if self.videoCaptions != nil {
                            var tmp : [Any] = []
                            for k in self.videoCaptions! {
                                tmp.append(k.toMap())
                            }
                            map["videoCaptions"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["generateFinished"] as? Bool {
                            self.generateFinished = value
                        }
                        if let value = dict["videoCaptions"] as? [Any?] {
                            var tmp : [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoCaptionResult.VideoCaptions] = []
                            for v in value {
                                if v != nil {
                                    var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoCaptionResult.VideoCaptions()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.videoCaptions = tmp
                        }
                    }
                }
                public class VideoGenerateResult : Tea.TeaModel {
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
                                map["inputTokens"] = self.inputTokens!
                            }
                            if self.outputTokens != nil {
                                map["outputTokens"] = self.outputTokens!
                            }
                            if self.totalTokens != nil {
                                map["totalTokens"] = self.totalTokens!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["inputTokens"] as? Int64 {
                                self.inputTokens = value
                            }
                            if let value = dict["outputTokens"] as? Int64 {
                                self.outputTokens = value
                            }
                            if let value = dict["totalTokens"] as? Int64 {
                                self.totalTokens = value
                            }
                        }
                    }
                    public var generateFinished: Bool?

                    public var index: Int32?

                    public var modelId: String?

                    public var modelReduce: Bool?

                    public var reasonText: String?

                    public var text: String?

                    public var usage: GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoGenerateResult.Usage?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.usage?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.generateFinished != nil {
                            map["generateFinished"] = self.generateFinished!
                        }
                        if self.index != nil {
                            map["index"] = self.index!
                        }
                        if self.modelId != nil {
                            map["modelId"] = self.modelId!
                        }
                        if self.modelReduce != nil {
                            map["modelReduce"] = self.modelReduce!
                        }
                        if self.reasonText != nil {
                            map["reasonText"] = self.reasonText!
                        }
                        if self.text != nil {
                            map["text"] = self.text!
                        }
                        if self.usage != nil {
                            map["usage"] = self.usage?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["generateFinished"] as? Bool {
                            self.generateFinished = value
                        }
                        if let value = dict["index"] as? Int32 {
                            self.index = value
                        }
                        if let value = dict["modelId"] as? String {
                            self.modelId = value
                        }
                        if let value = dict["modelReduce"] as? Bool {
                            self.modelReduce = value
                        }
                        if let value = dict["reasonText"] as? String {
                            self.reasonText = value
                        }
                        if let value = dict["text"] as? String {
                            self.text = value
                        }
                        if let value = dict["usage"] as? [String: Any?] {
                            var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoGenerateResult.Usage()
                            model.fromMap(value)
                            self.usage = model
                        }
                    }
                }
                public class VideoGenerateResults : Tea.TeaModel {
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
                                map["inputTokens"] = self.inputTokens!
                            }
                            if self.outputTokens != nil {
                                map["outputTokens"] = self.outputTokens!
                            }
                            if self.totalTokens != nil {
                                map["totalTokens"] = self.totalTokens!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["inputTokens"] as? Int64 {
                                self.inputTokens = value
                            }
                            if let value = dict["outputTokens"] as? Int64 {
                                self.outputTokens = value
                            }
                            if let value = dict["totalTokens"] as? Int64 {
                                self.totalTokens = value
                            }
                        }
                    }
                    public var generateFinished: Bool?

                    public var index: Int32?

                    public var modelId: String?

                    public var reasonText: String?

                    public var text: String?

                    public var usage: GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoGenerateResults.Usage?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.usage?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.generateFinished != nil {
                            map["generateFinished"] = self.generateFinished!
                        }
                        if self.index != nil {
                            map["index"] = self.index!
                        }
                        if self.modelId != nil {
                            map["modelId"] = self.modelId!
                        }
                        if self.reasonText != nil {
                            map["reasonText"] = self.reasonText!
                        }
                        if self.text != nil {
                            map["text"] = self.text!
                        }
                        if self.usage != nil {
                            map["usage"] = self.usage?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["generateFinished"] as? Bool {
                            self.generateFinished = value
                        }
                        if let value = dict["index"] as? Int32 {
                            self.index = value
                        }
                        if let value = dict["modelId"] as? String {
                            self.modelId = value
                        }
                        if let value = dict["reasonText"] as? String {
                            self.reasonText = value
                        }
                        if let value = dict["text"] as? String {
                            self.text = value
                        }
                        if let value = dict["usage"] as? [String: Any?] {
                            var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoGenerateResults.Usage()
                            model.fromMap(value)
                            self.usage = model
                        }
                    }
                }
                public class VideoMindMappingGenerateResult : Tea.TeaModel {
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
                                map["inputTokens"] = self.inputTokens!
                            }
                            if self.outputTokens != nil {
                                map["outputTokens"] = self.outputTokens!
                            }
                            if self.totalTokens != nil {
                                map["totalTokens"] = self.totalTokens!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["inputTokens"] as? Int64 {
                                self.inputTokens = value
                            }
                            if let value = dict["outputTokens"] as? Int64 {
                                self.outputTokens = value
                            }
                            if let value = dict["totalTokens"] as? Int64 {
                                self.totalTokens = value
                            }
                        }
                    }
                    public class VideoMindMappings : Tea.TeaModel {
                        public class ChildNodes : Tea.TeaModel {
                            public class ChildNodes : Tea.TeaModel {
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
                                    if self.name != nil {
                                        map["name"] = self.name!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["name"] as? String {
                                        self.name = value
                                    }
                                }
                            }
                            public var childNodes: [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes.ChildNodes]?

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
                                if self.childNodes != nil {
                                    var tmp : [Any] = []
                                    for k in self.childNodes! {
                                        tmp.append(k.toMap())
                                    }
                                    map["childNodes"] = tmp
                                }
                                if self.name != nil {
                                    map["name"] = self.name!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["childNodes"] as? [Any?] {
                                    var tmp : [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes.ChildNodes] = []
                                    for v in value {
                                        if v != nil {
                                            var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes.ChildNodes()
                                            if v != nil {
                                                model.fromMap(v as? [String: Any?])
                                            }
                                            tmp.append(model)
                                        }
                                    }
                                    self.childNodes = tmp
                                }
                                if let value = dict["name"] as? String {
                                    self.name = value
                                }
                            }
                        }
                        public var childNodes: [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes]?

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
                            if self.childNodes != nil {
                                var tmp : [Any] = []
                                for k in self.childNodes! {
                                    tmp.append(k.toMap())
                                }
                                map["childNodes"] = tmp
                            }
                            if self.name != nil {
                                map["name"] = self.name!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["childNodes"] as? [Any?] {
                                var tmp : [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes] = []
                                for v in value {
                                    if v != nil {
                                        var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.childNodes = tmp
                            }
                            if let value = dict["name"] as? String {
                                self.name = value
                            }
                        }
                    }
                    public var generateFinished: Bool?

                    public var text: String?

                    public var usage: GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoMindMappingGenerateResult.Usage?

                    public var videoMindMappings: [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.usage?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.generateFinished != nil {
                            map["generateFinished"] = self.generateFinished!
                        }
                        if self.text != nil {
                            map["text"] = self.text!
                        }
                        if self.usage != nil {
                            map["usage"] = self.usage?.toMap()
                        }
                        if self.videoMindMappings != nil {
                            var tmp : [Any] = []
                            for k in self.videoMindMappings! {
                                tmp.append(k.toMap())
                            }
                            map["videoMindMappings"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["generateFinished"] as? Bool {
                            self.generateFinished = value
                        }
                        if let value = dict["text"] as? String {
                            self.text = value
                        }
                        if let value = dict["usage"] as? [String: Any?] {
                            var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoMindMappingGenerateResult.Usage()
                            model.fromMap(value)
                            self.usage = model
                        }
                        if let value = dict["videoMindMappings"] as? [Any?] {
                            var tmp : [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings] = []
                            for v in value {
                                if v != nil {
                                    var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.videoMindMappings = tmp
                        }
                    }
                }
                public class VideoRoleRecognitionResult : Tea.TeaModel {
                    public class VideoRoles : Tea.TeaModel {
                        public class TimeIntervals : Tea.TeaModel {
                            public var endTime: Int64?

                            public var startTime: Int64?

                            public var timestamp: Int64?

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
                                if self.endTime != nil {
                                    map["endTime"] = self.endTime!
                                }
                                if self.startTime != nil {
                                    map["startTime"] = self.startTime!
                                }
                                if self.timestamp != nil {
                                    map["timestamp"] = self.timestamp!
                                }
                                if self.url != nil {
                                    map["url"] = self.url!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["endTime"] as? Int64 {
                                    self.endTime = value
                                }
                                if let value = dict["startTime"] as? Int64 {
                                    self.startTime = value
                                }
                                if let value = dict["timestamp"] as? Int64 {
                                    self.timestamp = value
                                }
                                if let value = dict["url"] as? String {
                                    self.url = value
                                }
                            }
                        }
                        public var isAutoRecognition: Bool?

                        public var ratio: Double?

                        public var roleInfo: String?

                        public var roleName: String?

                        public var timeIntervals: [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoRoleRecognitionResult.VideoRoles.TimeIntervals]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.isAutoRecognition != nil {
                                map["isAutoRecognition"] = self.isAutoRecognition!
                            }
                            if self.ratio != nil {
                                map["ratio"] = self.ratio!
                            }
                            if self.roleInfo != nil {
                                map["roleInfo"] = self.roleInfo!
                            }
                            if self.roleName != nil {
                                map["roleName"] = self.roleName!
                            }
                            if self.timeIntervals != nil {
                                var tmp : [Any] = []
                                for k in self.timeIntervals! {
                                    tmp.append(k.toMap())
                                }
                                map["timeIntervals"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["isAutoRecognition"] as? Bool {
                                self.isAutoRecognition = value
                            }
                            if let value = dict["ratio"] as? Double {
                                self.ratio = value
                            }
                            if let value = dict["roleInfo"] as? String {
                                self.roleInfo = value
                            }
                            if let value = dict["roleName"] as? String {
                                self.roleName = value
                            }
                            if let value = dict["timeIntervals"] as? [Any?] {
                                var tmp : [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoRoleRecognitionResult.VideoRoles.TimeIntervals] = []
                                for v in value {
                                    if v != nil {
                                        var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoRoleRecognitionResult.VideoRoles.TimeIntervals()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.timeIntervals = tmp
                            }
                        }
                    }
                    public var videoRoles: [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoRoleRecognitionResult.VideoRoles]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.videoRoles != nil {
                            var tmp : [Any] = []
                            for k in self.videoRoles! {
                                tmp.append(k.toMap())
                            }
                            map["videoRoles"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["videoRoles"] as? [Any?] {
                            var tmp : [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoRoleRecognitionResult.VideoRoles] = []
                            for v in value {
                                if v != nil {
                                    var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoRoleRecognitionResult.VideoRoles()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.videoRoles = tmp
                        }
                    }
                }
                public class VideoTitleGenerateResult : Tea.TeaModel {
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
                                map["inputTokens"] = self.inputTokens!
                            }
                            if self.outputTokens != nil {
                                map["outputTokens"] = self.outputTokens!
                            }
                            if self.totalTokens != nil {
                                map["totalTokens"] = self.totalTokens!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["inputTokens"] as? Int64 {
                                self.inputTokens = value
                            }
                            if let value = dict["outputTokens"] as? Int64 {
                                self.outputTokens = value
                            }
                            if let value = dict["totalTokens"] as? Int64 {
                                self.totalTokens = value
                            }
                        }
                    }
                    public var generateFinished: Bool?

                    public var text: String?

                    public var usage: GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoTitleGenerateResult.Usage?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.usage?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.generateFinished != nil {
                            map["generateFinished"] = self.generateFinished!
                        }
                        if self.text != nil {
                            map["text"] = self.text!
                        }
                        if self.usage != nil {
                            map["usage"] = self.usage?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["generateFinished"] as? Bool {
                            self.generateFinished = value
                        }
                        if let value = dict["text"] as? String {
                            self.text = value
                        }
                        if let value = dict["usage"] as? [String: Any?] {
                            var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoTitleGenerateResult.Usage()
                            model.fromMap(value)
                            self.usage = model
                        }
                    }
                }
                public var addDatasetDocumentsResult: GetVideoAnalysisTaskResponseBody.Data.Payload.Output.AddDatasetDocumentsResult?

                public var resultJsonFileUrl: String?

                public var videoAnalysisResult: GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoAnalysisResult?

                public var videoCalculatorResult: GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoCalculatorResult?

                public var videoCaptionResult: GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoCaptionResult?

                public var videoGenerateResult: GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoGenerateResult?

                public var videoGenerateResults: [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoGenerateResults]?

                public var videoMindMappingGenerateResult: GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoMindMappingGenerateResult?

                public var videoRoleRecognitionResult: GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoRoleRecognitionResult?

                public var videoTitleGenerateResult: GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoTitleGenerateResult?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.addDatasetDocumentsResult?.validate()
                    try self.videoAnalysisResult?.validate()
                    try self.videoCalculatorResult?.validate()
                    try self.videoCaptionResult?.validate()
                    try self.videoGenerateResult?.validate()
                    try self.videoMindMappingGenerateResult?.validate()
                    try self.videoRoleRecognitionResult?.validate()
                    try self.videoTitleGenerateResult?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.addDatasetDocumentsResult != nil {
                        map["addDatasetDocumentsResult"] = self.addDatasetDocumentsResult?.toMap()
                    }
                    if self.resultJsonFileUrl != nil {
                        map["resultJsonFileUrl"] = self.resultJsonFileUrl!
                    }
                    if self.videoAnalysisResult != nil {
                        map["videoAnalysisResult"] = self.videoAnalysisResult?.toMap()
                    }
                    if self.videoCalculatorResult != nil {
                        map["videoCalculatorResult"] = self.videoCalculatorResult?.toMap()
                    }
                    if self.videoCaptionResult != nil {
                        map["videoCaptionResult"] = self.videoCaptionResult?.toMap()
                    }
                    if self.videoGenerateResult != nil {
                        map["videoGenerateResult"] = self.videoGenerateResult?.toMap()
                    }
                    if self.videoGenerateResults != nil {
                        var tmp : [Any] = []
                        for k in self.videoGenerateResults! {
                            tmp.append(k.toMap())
                        }
                        map["videoGenerateResults"] = tmp
                    }
                    if self.videoMindMappingGenerateResult != nil {
                        map["videoMindMappingGenerateResult"] = self.videoMindMappingGenerateResult?.toMap()
                    }
                    if self.videoRoleRecognitionResult != nil {
                        map["videoRoleRecognitionResult"] = self.videoRoleRecognitionResult?.toMap()
                    }
                    if self.videoTitleGenerateResult != nil {
                        map["videoTitleGenerateResult"] = self.videoTitleGenerateResult?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["addDatasetDocumentsResult"] as? [String: Any?] {
                        var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.AddDatasetDocumentsResult()
                        model.fromMap(value)
                        self.addDatasetDocumentsResult = model
                    }
                    if let value = dict["resultJsonFileUrl"] as? String {
                        self.resultJsonFileUrl = value
                    }
                    if let value = dict["videoAnalysisResult"] as? [String: Any?] {
                        var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoAnalysisResult()
                        model.fromMap(value)
                        self.videoAnalysisResult = model
                    }
                    if let value = dict["videoCalculatorResult"] as? [String: Any?] {
                        var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoCalculatorResult()
                        model.fromMap(value)
                        self.videoCalculatorResult = model
                    }
                    if let value = dict["videoCaptionResult"] as? [String: Any?] {
                        var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoCaptionResult()
                        model.fromMap(value)
                        self.videoCaptionResult = model
                    }
                    if let value = dict["videoGenerateResult"] as? [String: Any?] {
                        var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoGenerateResult()
                        model.fromMap(value)
                        self.videoGenerateResult = model
                    }
                    if let value = dict["videoGenerateResults"] as? [Any?] {
                        var tmp : [GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoGenerateResults] = []
                        for v in value {
                            if v != nil {
                                var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoGenerateResults()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.videoGenerateResults = tmp
                    }
                    if let value = dict["videoMindMappingGenerateResult"] as? [String: Any?] {
                        var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoMindMappingGenerateResult()
                        model.fromMap(value)
                        self.videoMindMappingGenerateResult = model
                    }
                    if let value = dict["videoRoleRecognitionResult"] as? [String: Any?] {
                        var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoRoleRecognitionResult()
                        model.fromMap(value)
                        self.videoRoleRecognitionResult = model
                    }
                    if let value = dict["videoTitleGenerateResult"] as? [String: Any?] {
                        var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output.VideoTitleGenerateResult()
                        model.fromMap(value)
                        self.videoTitleGenerateResult = model
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
                        map["inputTokens"] = self.inputTokens!
                    }
                    if self.outputTokens != nil {
                        map["outputTokens"] = self.outputTokens!
                    }
                    if self.totalTokens != nil {
                        map["totalTokens"] = self.totalTokens!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["inputTokens"] as? Int64 {
                        self.inputTokens = value
                    }
                    if let value = dict["outputTokens"] as? Int64 {
                        self.outputTokens = value
                    }
                    if let value = dict["totalTokens"] as? Int64 {
                        self.totalTokens = value
                    }
                }
            }
            public var output: GetVideoAnalysisTaskResponseBody.Data.Payload.Output?

            public var usage: GetVideoAnalysisTaskResponseBody.Data.Payload.Usage?

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
                    map["output"] = self.output?.toMap()
                }
                if self.usage != nil {
                    map["usage"] = self.usage?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["output"] as? [String: Any?] {
                    var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Output()
                    model.fromMap(value)
                    self.output = model
                }
                if let value = dict["usage"] as? [String: Any?] {
                    var model = GetVideoAnalysisTaskResponseBody.Data.Payload.Usage()
                    model.fromMap(value)
                    self.usage = model
                }
            }
        }
        public class TaskRunInfo : Tea.TeaModel {
            public var concurrentChargeEnable: Bool?

            public var responseTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.concurrentChargeEnable != nil {
                    map["concurrentChargeEnable"] = self.concurrentChargeEnable!
                }
                if self.responseTime != nil {
                    map["responseTime"] = self.responseTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["concurrentChargeEnable"] as? Bool {
                    self.concurrentChargeEnable = value
                }
                if let value = dict["responseTime"] as? Int64 {
                    self.responseTime = value
                }
            }
        }
        public var errorMessage: String?

        public var header: GetVideoAnalysisTaskResponseBody.Data.Header?

        public var payload: GetVideoAnalysisTaskResponseBody.Data.Payload?

        public var taskId: String?

        public var taskRunInfo: GetVideoAnalysisTaskResponseBody.Data.TaskRunInfo?

        public var taskStatus: String?

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
            try self.taskRunInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.header != nil {
                map["header"] = self.header?.toMap()
            }
            if self.payload != nil {
                map["payload"] = self.payload?.toMap()
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskRunInfo != nil {
                map["taskRunInfo"] = self.taskRunInfo?.toMap()
            }
            if self.taskStatus != nil {
                map["taskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["header"] as? [String: Any?] {
                var model = GetVideoAnalysisTaskResponseBody.Data.Header()
                model.fromMap(value)
                self.header = model
            }
            if let value = dict["payload"] as? [String: Any?] {
                var model = GetVideoAnalysisTaskResponseBody.Data.Payload()
                model.fromMap(value)
                self.payload = model
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskRunInfo"] as? [String: Any?] {
                var model = GetVideoAnalysisTaskResponseBody.Data.TaskRunInfo()
                model.fromMap(value)
                self.taskRunInfo = model
            }
            if let value = dict["taskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public var code: String?

    public var data: GetVideoAnalysisTaskResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetVideoAnalysisTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetVideoAnalysisTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoAnalysisTaskResponseBody?

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
            var model = GetVideoAnalysisTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoDetectShotConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var asyncConcurrency: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asyncConcurrency != nil {
                map["asyncConcurrency"] = self.asyncConcurrency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["asyncConcurrency"] as? Int32 {
                self.asyncConcurrency = value
            }
        }
    }
    public var code: String?

    public var data: GetVideoDetectShotConfigResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetVideoDetectShotConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetVideoDetectShotConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoDetectShotConfigResponseBody?

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
            var model = GetVideoDetectShotConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoDetectShotTaskRequest : Tea.TeaModel {
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetVideoDetectShotTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
                    map["errorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["errorMessage"] = self.errorMessage!
                }
                if self.event != nil {
                    map["event"] = self.event!
                }
                if self.eventInfo != nil {
                    map["eventInfo"] = self.eventInfo!
                }
                if self.sessionId != nil {
                    map["sessionId"] = self.sessionId!
                }
                if self.taskId != nil {
                    map["taskId"] = self.taskId!
                }
                if self.traceId != nil {
                    map["traceId"] = self.traceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["errorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["errorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["event"] as? String {
                    self.event = value
                }
                if let value = dict["eventInfo"] as? String {
                    self.eventInfo = value
                }
                if let value = dict["sessionId"] as? String {
                    self.sessionId = value
                }
                if let value = dict["taskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["traceId"] as? String {
                    self.traceId = value
                }
            }
        }
        public class Payload : Tea.TeaModel {
            public class Output : Tea.TeaModel {
                public class VideoSplitResult : Tea.TeaModel {
                    public class VideoRecognitionResult : Tea.TeaModel {
                        public var asr: String?

                        public var endTime: Int64?

                        public var ocr: String?

                        public var startTime: Int64?

                        public var vl: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.asr != nil {
                                map["asr"] = self.asr!
                            }
                            if self.endTime != nil {
                                map["endTime"] = self.endTime!
                            }
                            if self.ocr != nil {
                                map["ocr"] = self.ocr!
                            }
                            if self.startTime != nil {
                                map["startTime"] = self.startTime!
                            }
                            if self.vl != nil {
                                map["vl"] = self.vl!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["asr"] as? String {
                                self.asr = value
                            }
                            if let value = dict["endTime"] as? Int64 {
                                self.endTime = value
                            }
                            if let value = dict["ocr"] as? String {
                                self.ocr = value
                            }
                            if let value = dict["startTime"] as? Int64 {
                                self.startTime = value
                            }
                            if let value = dict["vl"] as? String {
                                self.vl = value
                            }
                        }
                    }
                    public var reasonText: String?

                    public var text: String?

                    public var videoParts: [[String: String]]?

                    public var videoRecognitionResult: [GetVideoDetectShotTaskResponseBody.Data.Payload.Output.VideoSplitResult.VideoRecognitionResult]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.reasonText != nil {
                            map["reasonText"] = self.reasonText!
                        }
                        if self.text != nil {
                            map["text"] = self.text!
                        }
                        if self.videoParts != nil {
                            map["videoParts"] = self.videoParts!
                        }
                        if self.videoRecognitionResult != nil {
                            var tmp : [Any] = []
                            for k in self.videoRecognitionResult! {
                                tmp.append(k.toMap())
                            }
                            map["videoRecognitionResult"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["reasonText"] as? String {
                            self.reasonText = value
                        }
                        if let value = dict["text"] as? String {
                            self.text = value
                        }
                        if let value = dict["videoParts"] as? [[String: String]] {
                            self.videoParts = value
                        }
                        if let value = dict["videoRecognitionResult"] as? [Any?] {
                            var tmp : [GetVideoDetectShotTaskResponseBody.Data.Payload.Output.VideoSplitResult.VideoRecognitionResult] = []
                            for v in value {
                                if v != nil {
                                    var model = GetVideoDetectShotTaskResponseBody.Data.Payload.Output.VideoSplitResult.VideoRecognitionResult()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.videoRecognitionResult = tmp
                        }
                    }
                }
                public var videoSplitResult: GetVideoDetectShotTaskResponseBody.Data.Payload.Output.VideoSplitResult?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.videoSplitResult?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.videoSplitResult != nil {
                        map["videoSplitResult"] = self.videoSplitResult?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["videoSplitResult"] as? [String: Any?] {
                        var model = GetVideoDetectShotTaskResponseBody.Data.Payload.Output.VideoSplitResult()
                        model.fromMap(value)
                        self.videoSplitResult = model
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
                        map["inputTokens"] = self.inputTokens!
                    }
                    if self.outputTokens != nil {
                        map["outputTokens"] = self.outputTokens!
                    }
                    if self.totalTokens != nil {
                        map["totalTokens"] = self.totalTokens!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["inputTokens"] as? Int64 {
                        self.inputTokens = value
                    }
                    if let value = dict["outputTokens"] as? Int64 {
                        self.outputTokens = value
                    }
                    if let value = dict["totalTokens"] as? Int64 {
                        self.totalTokens = value
                    }
                }
            }
            public var output: GetVideoDetectShotTaskResponseBody.Data.Payload.Output?

            public var usage: GetVideoDetectShotTaskResponseBody.Data.Payload.Usage?

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
                    map["output"] = self.output?.toMap()
                }
                if self.usage != nil {
                    map["usage"] = self.usage?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["output"] as? [String: Any?] {
                    var model = GetVideoDetectShotTaskResponseBody.Data.Payload.Output()
                    model.fromMap(value)
                    self.output = model
                }
                if let value = dict["usage"] as? [String: Any?] {
                    var model = GetVideoDetectShotTaskResponseBody.Data.Payload.Usage()
                    model.fromMap(value)
                    self.usage = model
                }
            }
        }
        public class TaskRunInfo : Tea.TeaModel {
            public var concurrentChargeEnable: Bool?

            public var responseTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.concurrentChargeEnable != nil {
                    map["concurrentChargeEnable"] = self.concurrentChargeEnable!
                }
                if self.responseTime != nil {
                    map["responseTime"] = self.responseTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["concurrentChargeEnable"] as? Bool {
                    self.concurrentChargeEnable = value
                }
                if let value = dict["responseTime"] as? Int64 {
                    self.responseTime = value
                }
            }
        }
        public var errorMessage: String?

        public var header: GetVideoDetectShotTaskResponseBody.Data.Header?

        public var payload: GetVideoDetectShotTaskResponseBody.Data.Payload?

        public var taskId: String?

        public var taskRunInfo: GetVideoDetectShotTaskResponseBody.Data.TaskRunInfo?

        public var taskStatus: String?

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
            try self.taskRunInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.header != nil {
                map["header"] = self.header?.toMap()
            }
            if self.payload != nil {
                map["payload"] = self.payload?.toMap()
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskRunInfo != nil {
                map["taskRunInfo"] = self.taskRunInfo?.toMap()
            }
            if self.taskStatus != nil {
                map["taskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["header"] as? [String: Any?] {
                var model = GetVideoDetectShotTaskResponseBody.Data.Header()
                model.fromMap(value)
                self.header = model
            }
            if let value = dict["payload"] as? [String: Any?] {
                var model = GetVideoDetectShotTaskResponseBody.Data.Payload()
                model.fromMap(value)
                self.payload = model
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskRunInfo"] as? [String: Any?] {
                var model = GetVideoDetectShotTaskResponseBody.Data.TaskRunInfo()
                model.fromMap(value)
                self.taskRunInfo = model
            }
            if let value = dict["taskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public var code: String?

    public var data: GetVideoDetectShotTaskResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetVideoDetectShotTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetVideoDetectShotTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoDetectShotTaskResponseBody?

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
            var model = GetVideoDetectShotTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class HotNewsRecommendRequest : Tea.TeaModel {
    public var prompt: String?

    public override init() {
        super.init()
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
            map["prompt"] = self.prompt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
    }
}

public class HotNewsRecommendResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class News : Tea.TeaModel {
            public var content: String?

            public var imageUrls: [String]?

            public var pubTime: String?

            public var searchSource: String?

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
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.imageUrls != nil {
                    map["imageUrls"] = self.imageUrls!
                }
                if self.pubTime != nil {
                    map["pubTime"] = self.pubTime!
                }
                if self.searchSource != nil {
                    map["searchSource"] = self.searchSource!
                }
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["imageUrls"] as? [String] {
                    self.imageUrls = value
                }
                if let value = dict["pubTime"] as? String {
                    self.pubTime = value
                }
                if let value = dict["searchSource"] as? String {
                    self.searchSource = value
                }
                if let value = dict["source"] as? String {
                    self.source = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public var news: [HotNewsRecommendResponseBody.Data.News]?

        public override init() {
            super.init()
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
                map["news"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["news"] as? [Any?] {
                var tmp : [HotNewsRecommendResponseBody.Data.News] = []
                for v in value {
                    if v != nil {
                        var model = HotNewsRecommendResponseBody.Data.News()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.news = tmp
            }
        }
    }
    public var code: String?

    public var data: HotNewsRecommendResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = HotNewsRecommendResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class HotNewsRecommendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HotNewsRecommendResponseBody?

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
            var model = HotNewsRecommendResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAnalysisTagDetailByTaskIdRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class ListAnalysisTagDetailByTaskIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ContentTags : Tea.TeaModel {
            public var tagName: String?

            public var tags: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagName != nil {
                    map["tagName"] = self.tagName!
                }
                if self.tags != nil {
                    map["tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["tagName"] as? String {
                    self.tagName = value
                }
                if let value = dict["tags"] as? [String] {
                    self.tags = value
                }
            }
        }
        public var content: String?

        public var contentTags: [ListAnalysisTagDetailByTaskIdResponseBody.Data.ContentTags]?

        public var originResponse: String?

        public var sourceList: [String]?

        public override init() {
            super.init()
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
            if self.contentTags != nil {
                var tmp : [Any] = []
                for k in self.contentTags! {
                    tmp.append(k.toMap())
                }
                map["contentTags"] = tmp
            }
            if self.originResponse != nil {
                map["originResponse"] = self.originResponse!
            }
            if self.sourceList != nil {
                map["sourceList"] = self.sourceList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["contentTags"] as? [Any?] {
                var tmp : [ListAnalysisTagDetailByTaskIdResponseBody.Data.ContentTags] = []
                for v in value {
                    if v != nil {
                        var model = ListAnalysisTagDetailByTaskIdResponseBody.Data.ContentTags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.contentTags = tmp
            }
            if let value = dict["originResponse"] as? String {
                self.originResponse = value
            }
            if let value = dict["sourceList"] as? [String] {
                self.sourceList = value
            }
        }
    }
    public var code: String?

    public var data: [ListAnalysisTagDetailByTaskIdResponseBody.Data]?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListAnalysisTagDetailByTaskIdResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAnalysisTagDetailByTaskIdResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListAnalysisTagDetailByTaskIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAnalysisTagDetailByTaskIdResponseBody?

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
            var model = ListAnalysisTagDetailByTaskIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListHotTopicSummariesRequest : Tea.TeaModel {
    public var category: String?

    public var hotTopic: String?

    public var hotTopicVersion: String?

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
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.hotTopic != nil {
            map["hotTopic"] = self.hotTopic!
        }
        if self.hotTopicVersion != nil {
            map["hotTopicVersion"] = self.hotTopicVersion!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["category"] as? String {
            self.category = value
        }
        if let value = dict["hotTopic"] as? String {
            self.hotTopic = value
        }
        if let value = dict["hotTopicVersion"] as? String {
            self.hotTopicVersion = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListHotTopicSummariesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class News : Tea.TeaModel {
            public class Comments : Tea.TeaModel {
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
                        map["text"] = self.text!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["text"] as? String {
                        self.text = value
                    }
                }
            }
            public var comments: [ListHotTopicSummariesResponseBody.Data.News.Comments]?

            public var content: String?

            public var pubTime: String?

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
                if self.comments != nil {
                    var tmp : [Any] = []
                    for k in self.comments! {
                        tmp.append(k.toMap())
                    }
                    map["comments"] = tmp
                }
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.pubTime != nil {
                    map["pubTime"] = self.pubTime!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["comments"] as? [Any?] {
                    var tmp : [ListHotTopicSummariesResponseBody.Data.News.Comments] = []
                    for v in value {
                        if v != nil {
                            var model = ListHotTopicSummariesResponseBody.Data.News.Comments()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.comments = tmp
                }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["pubTime"] as? String {
                    self.pubTime = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
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
                        map["summary"] = self.summary!
                    }
                    if self.title != nil {
                        map["title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["summary"] as? String {
                        self.summary = value
                    }
                    if let value = dict["title"] as? String {
                        self.title = value
                    }
                }
            }
            public var summaries: [ListHotTopicSummariesResponseBody.Data.Summary.Summaries]?

            public override init() {
                super.init()
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
                    map["summaries"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["summaries"] as? [Any?] {
                    var tmp : [ListHotTopicSummariesResponseBody.Data.Summary.Summaries] = []
                    for v in value {
                        if v != nil {
                            var model = ListHotTopicSummariesResponseBody.Data.Summary.Summaries()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.summaries = tmp
                }
            }
        }
        public var category: String?

        public var hotTopic: String?

        public var hotTopicVersion: String?

        public var hotValue: Double?

        public var id: String?

        public var news: [ListHotTopicSummariesResponseBody.Data.News]?

        public var summary: ListHotTopicSummariesResponseBody.Data.Summary?

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
                map["category"] = self.category!
            }
            if self.hotTopic != nil {
                map["hotTopic"] = self.hotTopic!
            }
            if self.hotTopicVersion != nil {
                map["hotTopicVersion"] = self.hotTopicVersion!
            }
            if self.hotValue != nil {
                map["hotValue"] = self.hotValue!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.news != nil {
                var tmp : [Any] = []
                for k in self.news! {
                    tmp.append(k.toMap())
                }
                map["news"] = tmp
            }
            if self.summary != nil {
                map["summary"] = self.summary?.toMap()
            }
            if self.textSummary != nil {
                map["textSummary"] = self.textSummary!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["category"] as? String {
                self.category = value
            }
            if let value = dict["hotTopic"] as? String {
                self.hotTopic = value
            }
            if let value = dict["hotTopicVersion"] as? String {
                self.hotTopicVersion = value
            }
            if let value = dict["hotValue"] as? Double {
                self.hotValue = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["news"] as? [Any?] {
                var tmp : [ListHotTopicSummariesResponseBody.Data.News] = []
                for v in value {
                    if v != nil {
                        var model = ListHotTopicSummariesResponseBody.Data.News()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.news = tmp
            }
            if let value = dict["summary"] as? [String: Any?] {
                var model = ListHotTopicSummariesResponseBody.Data.Summary()
                model.fromMap(value)
                self.summary = model
            }
            if let value = dict["textSummary"] as? String {
                self.textSummary = value
            }
        }
    }
    public var code: String?

    public var data: [ListHotTopicSummariesResponseBody.Data]?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListHotTopicSummariesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListHotTopicSummariesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListHotTopicSummariesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHotTopicSummariesResponseBody?

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
            var model = ListHotTopicSummariesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunEnterpriseVocAnalysisRequest : Tea.TeaModel {
    public class FilterTags : Tea.TeaModel {
        public var tagDefinePrompt: String?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagDefinePrompt != nil {
                map["tagDefinePrompt"] = self.tagDefinePrompt!
            }
            if self.tagName != nil {
                map["tagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagDefinePrompt"] as? String {
                self.tagDefinePrompt = value
            }
            if let value = dict["tagName"] as? String {
                self.tagName = value
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var tagDefinePrompt: String?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagDefinePrompt != nil {
                map["tagDefinePrompt"] = self.tagDefinePrompt!
            }
            if self.tagName != nil {
                map["tagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagDefinePrompt"] as? String {
                self.tagDefinePrompt = value
            }
            if let value = dict["tagName"] as? String {
                self.tagName = value
            }
        }
    }
    public var akProxy: String?

    public var apiKey: String?

    public var content: String?

    public var extraInfo: String?

    public var filterTags: [RunEnterpriseVocAnalysisRequest.FilterTags]?

    public var modelId: String?

    public var outputFormat: String?

    public var sourceTrace: Bool?

    public var tags: [RunEnterpriseVocAnalysisRequest.Tags]?

    public var taskDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.akProxy != nil {
            map["akProxy"] = self.akProxy!
        }
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.filterTags != nil {
            var tmp : [Any] = []
            for k in self.filterTags! {
                tmp.append(k.toMap())
            }
            map["filterTags"] = tmp
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.outputFormat != nil {
            map["outputFormat"] = self.outputFormat!
        }
        if self.sourceTrace != nil {
            map["sourceTrace"] = self.sourceTrace!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["akProxy"] as? String {
            self.akProxy = value
        }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["extraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["filterTags"] as? [Any?] {
            var tmp : [RunEnterpriseVocAnalysisRequest.FilterTags] = []
            for v in value {
                if v != nil {
                    var model = RunEnterpriseVocAnalysisRequest.FilterTags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filterTags = tmp
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["outputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["sourceTrace"] as? Bool {
            self.sourceTrace = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [RunEnterpriseVocAnalysisRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = RunEnterpriseVocAnalysisRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
    }
}

public class RunEnterpriseVocAnalysisShrinkRequest : Tea.TeaModel {
    public var akProxy: String?

    public var apiKey: String?

    public var content: String?

    public var extraInfo: String?

    public var filterTagsShrink: String?

    public var modelId: String?

    public var outputFormat: String?

    public var sourceTrace: Bool?

    public var tagsShrink: String?

    public var taskDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.akProxy != nil {
            map["akProxy"] = self.akProxy!
        }
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.filterTagsShrink != nil {
            map["filterTags"] = self.filterTagsShrink!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.outputFormat != nil {
            map["outputFormat"] = self.outputFormat!
        }
        if self.sourceTrace != nil {
            map["sourceTrace"] = self.sourceTrace!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["akProxy"] as? String {
            self.akProxy = value
        }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["extraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["filterTags"] as? String {
            self.filterTagsShrink = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["outputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["sourceTrace"] as? Bool {
            self.sourceTrace = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
    }
}

public class RunEnterpriseVocAnalysisResponseBody : Tea.TeaModel {
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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public class FilterResult : Tea.TeaModel {
                public class FilterResults : Tea.TeaModel {
                    public var hit: Bool?

                    public var tagName: String?

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
                        if self.hit != nil {
                            map["hit"] = self.hit!
                        }
                        if self.tagName != nil {
                            map["tagName"] = self.tagName!
                        }
                        if self.tagValue != nil {
                            map["tagValue"] = self.tagValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["hit"] as? Bool {
                            self.hit = value
                        }
                        if let value = dict["tagName"] as? String {
                            self.tagName = value
                        }
                        if let value = dict["tagValue"] as? String {
                            self.tagValue = value
                        }
                    }
                }
                public var filterResults: [RunEnterpriseVocAnalysisResponseBody.Payload.Output.FilterResult.FilterResults]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.filterResults != nil {
                        var tmp : [Any] = []
                        for k in self.filterResults! {
                            tmp.append(k.toMap())
                        }
                        map["filterResults"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["filterResults"] as? [Any?] {
                        var tmp : [RunEnterpriseVocAnalysisResponseBody.Payload.Output.FilterResult.FilterResults] = []
                        for v in value {
                            if v != nil {
                                var model = RunEnterpriseVocAnalysisResponseBody.Payload.Output.FilterResult.FilterResults()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.filterResults = tmp
                    }
                }
            }
            public var filterResult: RunEnterpriseVocAnalysisResponseBody.Payload.Output.FilterResult?

            public var reasonContent: String?

            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.filterResult?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.filterResult != nil {
                    map["filterResult"] = self.filterResult?.toMap()
                }
                if self.reasonContent != nil {
                    map["reasonContent"] = self.reasonContent!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["filterResult"] as? [String: Any?] {
                    var model = RunEnterpriseVocAnalysisResponseBody.Payload.Output.FilterResult()
                    model.fromMap(value)
                    self.filterResult = model
                }
                if let value = dict["reasonContent"] as? String {
                    self.reasonContent = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunEnterpriseVocAnalysisResponseBody.Payload.Output?

        public var usage: RunEnterpriseVocAnalysisResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunEnterpriseVocAnalysisResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunEnterpriseVocAnalysisResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var header: RunEnterpriseVocAnalysisResponseBody.Header?

    public var payload: RunEnterpriseVocAnalysisResponseBody.Payload?

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
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunEnterpriseVocAnalysisResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunEnterpriseVocAnalysisResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RunEnterpriseVocAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunEnterpriseVocAnalysisResponseBody?

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
            var model = RunEnterpriseVocAnalysisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunEssayCorrectionRequest : Tea.TeaModel {
    public var answer: String?

    public var grade: String?

    public var modelId: String?

    public var otherReviewPoints: String?

    public var question: String?

    public var subject: String?

    public var totalScore: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.answer != nil {
            map["answer"] = self.answer!
        }
        if self.grade != nil {
            map["grade"] = self.grade!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.otherReviewPoints != nil {
            map["otherReviewPoints"] = self.otherReviewPoints!
        }
        if self.question != nil {
            map["question"] = self.question!
        }
        if self.subject != nil {
            map["subject"] = self.subject!
        }
        if self.totalScore != nil {
            map["totalScore"] = self.totalScore!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["answer"] as? String {
            self.answer = value
        }
        if let value = dict["grade"] as? String {
            self.grade = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["otherReviewPoints"] as? String {
            self.otherReviewPoints = value
        }
        if let value = dict["question"] as? String {
            self.question = value
        }
        if let value = dict["subject"] as? String {
            self.subject = value
        }
        if let value = dict["totalScore"] as? Int32 {
            self.totalScore = value
        }
    }
}

public class RunEssayCorrectionResponseBody : Tea.TeaModel {
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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var score: Int32?

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
                if self.score != nil {
                    map["score"] = self.score!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["score"] as? Int32 {
                    self.score = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunEssayCorrectionResponseBody.Payload.Output?

        public var usage: RunEssayCorrectionResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunEssayCorrectionResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunEssayCorrectionResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var header: RunEssayCorrectionResponseBody.Header?

    public var payload: RunEssayCorrectionResponseBody.Payload?

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
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunEssayCorrectionResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunEssayCorrectionResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RunEssayCorrectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunEssayCorrectionResponseBody?

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
            var model = RunEssayCorrectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunHotTopicChatRequest : Tea.TeaModel {
    public class Messages : Tea.TeaModel {
        public var content: String?

        public var createTime: String?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public class StepForBroadcastContentConfig : Tea.TeaModel {
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
                    map["dimension"] = self.dimension!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["dimension"] as? String {
                    self.dimension = value
                }
                if let value = dict["weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var categories: [String]?

        public var customHotValueWeights: [RunHotTopicChatRequest.StepForBroadcastContentConfig.CustomHotValueWeights]?

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
                map["categories"] = self.categories!
            }
            if self.customHotValueWeights != nil {
                var tmp : [Any] = []
                for k in self.customHotValueWeights! {
                    tmp.append(k.toMap())
                }
                map["customHotValueWeights"] = tmp
            }
            if self.topicCount != nil {
                map["topicCount"] = self.topicCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["categories"] as? [String] {
                self.categories = value
            }
            if let value = dict["customHotValueWeights"] as? [Any?] {
                var tmp : [RunHotTopicChatRequest.StepForBroadcastContentConfig.CustomHotValueWeights] = []
                for v in value {
                    if v != nil {
                        var model = RunHotTopicChatRequest.StepForBroadcastContentConfig.CustomHotValueWeights()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.customHotValueWeights = tmp
            }
            if let value = dict["topicCount"] as? Int32 {
                self.topicCount = value
            }
        }
    }
    public var category: String?

    public var generateOptions: [String]?

    public var hotTopicVersion: String?

    public var hotTopics: [String]?

    public var imageCount: Int32?

    public var messages: [RunHotTopicChatRequest.Messages]?

    public var modelCustomPromptTemplate: String?

    public var modelId: String?

    public var originalSessionId: String?

    public var prompt: String?

    public var stepForBroadcastContentConfig: RunHotTopicChatRequest.StepForBroadcastContentConfig?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stepForBroadcastContentConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.generateOptions != nil {
            map["generateOptions"] = self.generateOptions!
        }
        if self.hotTopicVersion != nil {
            map["hotTopicVersion"] = self.hotTopicVersion!
        }
        if self.hotTopics != nil {
            map["hotTopics"] = self.hotTopics!
        }
        if self.imageCount != nil {
            map["imageCount"] = self.imageCount!
        }
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["messages"] = tmp
        }
        if self.modelCustomPromptTemplate != nil {
            map["modelCustomPromptTemplate"] = self.modelCustomPromptTemplate!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.originalSessionId != nil {
            map["originalSessionId"] = self.originalSessionId!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.stepForBroadcastContentConfig != nil {
            map["stepForBroadcastContentConfig"] = self.stepForBroadcastContentConfig?.toMap()
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["category"] as? String {
            self.category = value
        }
        if let value = dict["generateOptions"] as? [String] {
            self.generateOptions = value
        }
        if let value = dict["hotTopicVersion"] as? String {
            self.hotTopicVersion = value
        }
        if let value = dict["hotTopics"] as? [String] {
            self.hotTopics = value
        }
        if let value = dict["imageCount"] as? Int32 {
            self.imageCount = value
        }
        if let value = dict["messages"] as? [Any?] {
            var tmp : [RunHotTopicChatRequest.Messages] = []
            for v in value {
                if v != nil {
                    var model = RunHotTopicChatRequest.Messages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messages = tmp
        }
        if let value = dict["modelCustomPromptTemplate"] as? String {
            self.modelCustomPromptTemplate = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["originalSessionId"] as? String {
            self.originalSessionId = value
        }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["stepForBroadcastContentConfig"] as? [String: Any?] {
            var model = RunHotTopicChatRequest.StepForBroadcastContentConfig()
            model.fromMap(value)
            self.stepForBroadcastContentConfig = model
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class RunHotTopicChatShrinkRequest : Tea.TeaModel {
    public var category: String?

    public var generateOptionsShrink: String?

    public var hotTopicVersion: String?

    public var hotTopicsShrink: String?

    public var imageCount: Int32?

    public var messagesShrink: String?

    public var modelCustomPromptTemplate: String?

    public var modelId: String?

    public var originalSessionId: String?

    public var prompt: String?

    public var stepForBroadcastContentConfigShrink: String?

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
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.generateOptionsShrink != nil {
            map["generateOptions"] = self.generateOptionsShrink!
        }
        if self.hotTopicVersion != nil {
            map["hotTopicVersion"] = self.hotTopicVersion!
        }
        if self.hotTopicsShrink != nil {
            map["hotTopics"] = self.hotTopicsShrink!
        }
        if self.imageCount != nil {
            map["imageCount"] = self.imageCount!
        }
        if self.messagesShrink != nil {
            map["messages"] = self.messagesShrink!
        }
        if self.modelCustomPromptTemplate != nil {
            map["modelCustomPromptTemplate"] = self.modelCustomPromptTemplate!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.originalSessionId != nil {
            map["originalSessionId"] = self.originalSessionId!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.stepForBroadcastContentConfigShrink != nil {
            map["stepForBroadcastContentConfig"] = self.stepForBroadcastContentConfigShrink!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["category"] as? String {
            self.category = value
        }
        if let value = dict["generateOptions"] as? String {
            self.generateOptionsShrink = value
        }
        if let value = dict["hotTopicVersion"] as? String {
            self.hotTopicVersion = value
        }
        if let value = dict["hotTopics"] as? String {
            self.hotTopicsShrink = value
        }
        if let value = dict["imageCount"] as? Int32 {
            self.imageCount = value
        }
        if let value = dict["messages"] as? String {
            self.messagesShrink = value
        }
        if let value = dict["modelCustomPromptTemplate"] as? String {
            self.modelCustomPromptTemplate = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["originalSessionId"] as? String {
            self.originalSessionId = value
        }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["stepForBroadcastContentConfig"] as? String {
            self.stepForBroadcastContentConfigShrink = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class RunHotTopicChatResponseBody : Tea.TeaModel {
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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["eventInfo"] as? String {
                self.eventInfo = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public class Articles : Tea.TeaModel {
                public var content: String?

                public var pubTime: String?

                public var score: Double?

                public var searchSourceName: String?

                public var select: Bool?

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
                    if self.content != nil {
                        map["content"] = self.content!
                    }
                    if self.pubTime != nil {
                        map["pubTime"] = self.pubTime!
                    }
                    if self.score != nil {
                        map["score"] = self.score!
                    }
                    if self.searchSourceName != nil {
                        map["searchSourceName"] = self.searchSourceName!
                    }
                    if self.select != nil {
                        map["select"] = self.select!
                    }
                    if self.summary != nil {
                        map["summary"] = self.summary!
                    }
                    if self.title != nil {
                        map["title"] = self.title!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["content"] as? String {
                        self.content = value
                    }
                    if let value = dict["pubTime"] as? String {
                        self.pubTime = value
                    }
                    if let value = dict["score"] as? Double {
                        self.score = value
                    }
                    if let value = dict["searchSourceName"] as? String {
                        self.searchSourceName = value
                    }
                    if let value = dict["select"] as? Bool {
                        self.select = value
                    }
                    if let value = dict["summary"] as? String {
                        self.summary = value
                    }
                    if let value = dict["title"] as? String {
                        self.title = value
                    }
                    if let value = dict["url"] as? String {
                        self.url = value
                    }
                }
            }
            public class HotTopicSummaries : Tea.TeaModel {
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
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["url"] as? String {
                            self.url = value
                        }
                    }
                }
                public class News : Tea.TeaModel {
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
                        if self.title != nil {
                            map["title"] = self.title!
                        }
                        if self.url != nil {
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["title"] as? String {
                            self.title = value
                        }
                        if let value = dict["url"] as? String {
                            self.url = value
                        }
                    }
                }
                public var customHotValue: Double?

                public var customTextSummary: String?

                public var hotTopic: String?

                public var hotTopicVersion: String?

                public var hotValue: Double?

                public var images: [RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries.Images]?

                public var news: [RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries.News]?

                public var pubTime: String?

                public var textSummary: String?

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
                    if self.customHotValue != nil {
                        map["customHotValue"] = self.customHotValue!
                    }
                    if self.customTextSummary != nil {
                        map["customTextSummary"] = self.customTextSummary!
                    }
                    if self.hotTopic != nil {
                        map["hotTopic"] = self.hotTopic!
                    }
                    if self.hotTopicVersion != nil {
                        map["hotTopicVersion"] = self.hotTopicVersion!
                    }
                    if self.hotValue != nil {
                        map["hotValue"] = self.hotValue!
                    }
                    if self.images != nil {
                        var tmp : [Any] = []
                        for k in self.images! {
                            tmp.append(k.toMap())
                        }
                        map["images"] = tmp
                    }
                    if self.news != nil {
                        var tmp : [Any] = []
                        for k in self.news! {
                            tmp.append(k.toMap())
                        }
                        map["news"] = tmp
                    }
                    if self.pubTime != nil {
                        map["pubTime"] = self.pubTime!
                    }
                    if self.textSummary != nil {
                        map["textSummary"] = self.textSummary!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["customHotValue"] as? Double {
                        self.customHotValue = value
                    }
                    if let value = dict["customTextSummary"] as? String {
                        self.customTextSummary = value
                    }
                    if let value = dict["hotTopic"] as? String {
                        self.hotTopic = value
                    }
                    if let value = dict["hotTopicVersion"] as? String {
                        self.hotTopicVersion = value
                    }
                    if let value = dict["hotValue"] as? Double {
                        self.hotValue = value
                    }
                    if let value = dict["images"] as? [Any?] {
                        var tmp : [RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries.Images] = []
                        for v in value {
                            if v != nil {
                                var model = RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries.Images()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.images = tmp
                    }
                    if let value = dict["news"] as? [Any?] {
                        var tmp : [RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries.News] = []
                        for v in value {
                            if v != nil {
                                var model = RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries.News()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.news = tmp
                    }
                    if let value = dict["pubTime"] as? String {
                        self.pubTime = value
                    }
                    if let value = dict["textSummary"] as? String {
                        self.textSummary = value
                    }
                    if let value = dict["url"] as? String {
                        self.url = value
                    }
                }
            }
            public class MultimodalMedias : Tea.TeaModel {
                public var fileUrl: String?

                public var mediaType: String?

                public var sortScore: Double?

                public override init() {
                    super.init()
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
                        map["fileUrl"] = self.fileUrl!
                    }
                    if self.mediaType != nil {
                        map["mediaType"] = self.mediaType!
                    }
                    if self.sortScore != nil {
                        map["sortScore"] = self.sortScore!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["fileUrl"] as? String {
                        self.fileUrl = value
                    }
                    if let value = dict["mediaType"] as? String {
                        self.mediaType = value
                    }
                    if let value = dict["sortScore"] as? Double {
                        self.sortScore = value
                    }
                }
            }
            public var articles: [RunHotTopicChatResponseBody.Payload.Output.Articles]?

            public var category: String?

            public var hotTopicSummaries: [RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries]?

            public var keyword: String?

            public var location: String?

            public var multimodalMedias: [RunHotTopicChatResponseBody.Payload.Output.MultimodalMedias]?

            public var recommendQueries: [String]?

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
                    map["articles"] = tmp
                }
                if self.category != nil {
                    map["category"] = self.category!
                }
                if self.hotTopicSummaries != nil {
                    var tmp : [Any] = []
                    for k in self.hotTopicSummaries! {
                        tmp.append(k.toMap())
                    }
                    map["hotTopicSummaries"] = tmp
                }
                if self.keyword != nil {
                    map["keyword"] = self.keyword!
                }
                if self.location != nil {
                    map["location"] = self.location!
                }
                if self.multimodalMedias != nil {
                    var tmp : [Any] = []
                    for k in self.multimodalMedias! {
                        tmp.append(k.toMap())
                    }
                    map["multimodalMedias"] = tmp
                }
                if self.recommendQueries != nil {
                    map["recommendQueries"] = self.recommendQueries!
                }
                if self.searchQuery != nil {
                    map["searchQuery"] = self.searchQuery!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["articles"] as? [Any?] {
                    var tmp : [RunHotTopicChatResponseBody.Payload.Output.Articles] = []
                    for v in value {
                        if v != nil {
                            var model = RunHotTopicChatResponseBody.Payload.Output.Articles()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.articles = tmp
                }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["hotTopicSummaries"] as? [Any?] {
                    var tmp : [RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries] = []
                    for v in value {
                        if v != nil {
                            var model = RunHotTopicChatResponseBody.Payload.Output.HotTopicSummaries()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.hotTopicSummaries = tmp
                }
                if let value = dict["keyword"] as? String {
                    self.keyword = value
                }
                if let value = dict["location"] as? String {
                    self.location = value
                }
                if let value = dict["multimodalMedias"] as? [Any?] {
                    var tmp : [RunHotTopicChatResponseBody.Payload.Output.MultimodalMedias] = []
                    for v in value {
                        if v != nil {
                            var model = RunHotTopicChatResponseBody.Payload.Output.MultimodalMedias()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.multimodalMedias = tmp
                }
                if let value = dict["recommendQueries"] as? [String] {
                    self.recommendQueries = value
                }
                if let value = dict["searchQuery"] as? String {
                    self.searchQuery = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunHotTopicChatResponseBody.Payload.Output?

        public var usage: RunHotTopicChatResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunHotTopicChatResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunHotTopicChatResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var header: RunHotTopicChatResponseBody.Header?

    public var payload: RunHotTopicChatResponseBody.Payload?

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
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunHotTopicChatResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunHotTopicChatResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RunHotTopicChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunHotTopicChatResponseBody?

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
            var model = RunHotTopicChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunHotTopicSummaryRequest : Tea.TeaModel {
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
                map["summaryImageCount"] = self.summaryImageCount!
            }
            if self.summaryModel != nil {
                map["summaryModel"] = self.summaryModel!
            }
            if self.summaryPrompt != nil {
                map["summaryPrompt"] = self.summaryPrompt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["summaryImageCount"] as? Int32 {
                self.summaryImageCount = value
            }
            if let value = dict["summaryModel"] as? String {
                self.summaryModel = value
            }
            if let value = dict["summaryPrompt"] as? String {
                self.summaryPrompt = value
            }
        }
    }
    public var hotTopicVersion: String?

    public var stepForCustomSummaryStyleConfig: RunHotTopicSummaryRequest.StepForCustomSummaryStyleConfig?

    public var topicIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stepForCustomSummaryStyleConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hotTopicVersion != nil {
            map["hotTopicVersion"] = self.hotTopicVersion!
        }
        if self.stepForCustomSummaryStyleConfig != nil {
            map["stepForCustomSummaryStyleConfig"] = self.stepForCustomSummaryStyleConfig?.toMap()
        }
        if self.topicIds != nil {
            map["topicIds"] = self.topicIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["hotTopicVersion"] as? String {
            self.hotTopicVersion = value
        }
        if let value = dict["stepForCustomSummaryStyleConfig"] as? [String: Any?] {
            var model = RunHotTopicSummaryRequest.StepForCustomSummaryStyleConfig()
            model.fromMap(value)
            self.stepForCustomSummaryStyleConfig = model
        }
        if let value = dict["topicIds"] as? [String] {
            self.topicIds = value
        }
    }
}

public class RunHotTopicSummaryShrinkRequest : Tea.TeaModel {
    public var hotTopicVersion: String?

    public var stepForCustomSummaryStyleConfigShrink: String?

    public var topicIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hotTopicVersion != nil {
            map["hotTopicVersion"] = self.hotTopicVersion!
        }
        if self.stepForCustomSummaryStyleConfigShrink != nil {
            map["stepForCustomSummaryStyleConfig"] = self.stepForCustomSummaryStyleConfigShrink!
        }
        if self.topicIdsShrink != nil {
            map["topicIds"] = self.topicIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["hotTopicVersion"] as? String {
            self.hotTopicVersion = value
        }
        if let value = dict["stepForCustomSummaryStyleConfig"] as? String {
            self.stepForCustomSummaryStyleConfigShrink = value
        }
        if let value = dict["topicIds"] as? String {
            self.topicIdsShrink = value
        }
    }
}

public class RunHotTopicSummaryResponseBody : Tea.TeaModel {
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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
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
                if self.text != nil {
                    map["text"] = self.text!
                }
                if self.topicId != nil {
                    map["topicId"] = self.topicId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["text"] as? String {
                    self.text = value
                }
                if let value = dict["topicId"] as? String {
                    self.topicId = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunHotTopicSummaryResponseBody.Payload.Output?

        public var usage: RunHotTopicSummaryResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunHotTopicSummaryResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunHotTopicSummaryResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var header: RunHotTopicSummaryResponseBody.Header?

    public var payload: RunHotTopicSummaryResponseBody.Payload?

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
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunHotTopicSummaryResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunHotTopicSummaryResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RunHotTopicSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunHotTopicSummaryResponseBody?

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
            var model = RunHotTopicSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunMarketingInformationExtractRequest : Tea.TeaModel {
    public var customPrompt: String?

    public var extractType: String?

    public var modelId: String?

    public var sourceMaterials: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customPrompt != nil {
            map["customPrompt"] = self.customPrompt!
        }
        if self.extractType != nil {
            map["extractType"] = self.extractType!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.sourceMaterials != nil {
            map["sourceMaterials"] = self.sourceMaterials!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["customPrompt"] as? String {
            self.customPrompt = value
        }
        if let value = dict["extractType"] as? String {
            self.extractType = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["sourceMaterials"] as? [String] {
            self.sourceMaterials = value
        }
    }
}

public class RunMarketingInformationExtractShrinkRequest : Tea.TeaModel {
    public var customPrompt: String?

    public var extractType: String?

    public var modelId: String?

    public var sourceMaterialsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customPrompt != nil {
            map["customPrompt"] = self.customPrompt!
        }
        if self.extractType != nil {
            map["extractType"] = self.extractType!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.sourceMaterialsShrink != nil {
            map["sourceMaterials"] = self.sourceMaterialsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["customPrompt"] as? String {
            self.customPrompt = value
        }
        if let value = dict["extractType"] as? String {
            self.extractType = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["sourceMaterials"] as? String {
            self.sourceMaterialsShrink = value
        }
    }
}

public class RunMarketingInformationExtractResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var event: String?

        public var eventInfo: String?

        public var requestId: String?

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
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["eventInfo"] as? String {
                self.eventInfo = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
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
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["text"] as? String {
                    self.text = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunMarketingInformationExtractResponseBody.Payload.Output?

        public var usage: RunMarketingInformationExtractResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunMarketingInformationExtractResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunMarketingInformationExtractResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunMarketingInformationExtractResponseBody.Header?

    public var payload: RunMarketingInformationExtractResponseBody.Payload?

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
            map["end"] = self.end!
        }
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["end"] as? Bool {
            self.end = value
        }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunMarketingInformationExtractResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunMarketingInformationExtractResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
    }
}

public class RunMarketingInformationExtractResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunMarketingInformationExtractResponseBody?

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
            var model = RunMarketingInformationExtractResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunMarketingInformationWritingRequest : Tea.TeaModel {
    public var apiKey: String?

    public var customLimitation: String?

    public var customPrompt: String?

    public var inputExample: String?

    public var modelId: String?

    public var outputExample: String?

    public var sourceMaterial: String?

    public var writingType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.customLimitation != nil {
            map["customLimitation"] = self.customLimitation!
        }
        if self.customPrompt != nil {
            map["customPrompt"] = self.customPrompt!
        }
        if self.inputExample != nil {
            map["inputExample"] = self.inputExample!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.outputExample != nil {
            map["outputExample"] = self.outputExample!
        }
        if self.sourceMaterial != nil {
            map["sourceMaterial"] = self.sourceMaterial!
        }
        if self.writingType != nil {
            map["writingType"] = self.writingType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["customLimitation"] as? String {
            self.customLimitation = value
        }
        if let value = dict["customPrompt"] as? String {
            self.customPrompt = value
        }
        if let value = dict["inputExample"] as? String {
            self.inputExample = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["outputExample"] as? String {
            self.outputExample = value
        }
        if let value = dict["sourceMaterial"] as? String {
            self.sourceMaterial = value
        }
        if let value = dict["writingType"] as? String {
            self.writingType = value
        }
    }
}

public class RunMarketingInformationWritingResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var requestId: String?

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
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["eventInfo"] as? String {
                self.eventInfo = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var reasonContent: String?

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
                if self.reasonContent != nil {
                    map["reasonContent"] = self.reasonContent!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["reasonContent"] as? String {
                    self.reasonContent = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunMarketingInformationWritingResponseBody.Payload.Output?

        public var usage: RunMarketingInformationWritingResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunMarketingInformationWritingResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunMarketingInformationWritingResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunMarketingInformationWritingResponseBody.Header?

    public var payload: RunMarketingInformationWritingResponseBody.Payload?

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
            map["end"] = self.end!
        }
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["end"] as? Bool {
            self.end = value
        }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunMarketingInformationWritingResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunMarketingInformationWritingResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
    }
}

public class RunMarketingInformationWritingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunMarketingInformationWritingResponseBody?

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
            var model = RunMarketingInformationWritingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunNetworkContentAuditRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var tagDefinePrompt: String?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagDefinePrompt != nil {
                map["tagDefinePrompt"] = self.tagDefinePrompt!
            }
            if self.tagName != nil {
                map["tagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagDefinePrompt"] as? String {
                self.tagDefinePrompt = value
            }
            if let value = dict["tagName"] as? String {
                self.tagName = value
            }
        }
    }
    public var apiKey: String?

    public var businessType: String?

    public var content: String?

    public var extraInfo: String?

    public var modelId: String?

    public var outputFormat: String?

    public var tags: [RunNetworkContentAuditRequest.Tags]?

    public var taskDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.businessType != nil {
            map["businessType"] = self.businessType!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.outputFormat != nil {
            map["outputFormat"] = self.outputFormat!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["businessType"] as? String {
            self.businessType = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["extraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["outputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [RunNetworkContentAuditRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = RunNetworkContentAuditRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
    }
}

public class RunNetworkContentAuditShrinkRequest : Tea.TeaModel {
    public var apiKey: String?

    public var businessType: String?

    public var content: String?

    public var extraInfo: String?

    public var modelId: String?

    public var outputFormat: String?

    public var tagsShrink: String?

    public var taskDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.businessType != nil {
            map["businessType"] = self.businessType!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.outputFormat != nil {
            map["outputFormat"] = self.outputFormat!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["businessType"] as? String {
            self.businessType = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["extraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["outputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
    }
}

public class RunNetworkContentAuditResponseBody : Tea.TeaModel {
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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
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
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["text"] as? String {
                    self.text = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunNetworkContentAuditResponseBody.Payload.Output?

        public var usage: RunNetworkContentAuditResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunNetworkContentAuditResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunNetworkContentAuditResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var header: RunNetworkContentAuditResponseBody.Header?

    public var payload: RunNetworkContentAuditResponseBody.Payload?

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
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunNetworkContentAuditResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunNetworkContentAuditResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RunNetworkContentAuditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunNetworkContentAuditResponseBody?

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
            var model = RunNetworkContentAuditResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunOcrParseRequest : Tea.TeaModel {
    public var fileKey: String?

    public var modelId: String?

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
        if self.fileKey != nil {
            map["fileKey"] = self.fileKey!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileKey"] as? String {
            self.fileKey = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["url"] as? String {
            self.url = value
        }
    }
}

public class RunOcrParseResponseBody : Tea.TeaModel {
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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
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
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["text"] as? String {
                    self.text = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunOcrParseResponseBody.Payload.Output?

        public var usage: RunOcrParseResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunOcrParseResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunOcrParseResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var header: RunOcrParseResponseBody.Header?

    public var payload: RunOcrParseResponseBody.Payload?

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
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunOcrParseResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunOcrParseResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RunOcrParseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunOcrParseResponseBody?

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
            var model = RunOcrParseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunScriptChatRequest : Tea.TeaModel {
    public var prompt: String?

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
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class RunScriptChatResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var requestId: String?

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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["eventInfo"] as? String {
                self.eventInfo = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
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
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["text"] as? String {
                    self.text = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunScriptChatResponseBody.Payload.Output?

        public var usage: RunScriptChatResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunScriptChatResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunScriptChatResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunScriptChatResponseBody.Header?

    public var payload: RunScriptChatResponseBody.Payload?

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
            map["end"] = self.end!
        }
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["end"] as? Bool {
            self.end = value
        }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunScriptChatResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunScriptChatResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
    }
}

public class RunScriptChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunScriptChatResponseBody?

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
            var model = RunScriptChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunScriptContinueRequest : Tea.TeaModel {
    public var scriptSummary: String?

    public var scriptTypeKeyword: String?

    public var userProvidedContent: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scriptSummary != nil {
            map["scriptSummary"] = self.scriptSummary!
        }
        if self.scriptTypeKeyword != nil {
            map["scriptTypeKeyword"] = self.scriptTypeKeyword!
        }
        if self.userProvidedContent != nil {
            map["userProvidedContent"] = self.userProvidedContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["scriptSummary"] as? String {
            self.scriptSummary = value
        }
        if let value = dict["scriptTypeKeyword"] as? String {
            self.scriptTypeKeyword = value
        }
        if let value = dict["userProvidedContent"] as? String {
            self.userProvidedContent = value
        }
    }
}

public class RunScriptContinueResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var requestId: String?

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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["eventInfo"] as? String {
                self.eventInfo = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
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
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["text"] as? String {
                    self.text = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunScriptContinueResponseBody.Payload.Output?

        public var usage: RunScriptContinueResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunScriptContinueResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunScriptContinueResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunScriptContinueResponseBody.Header?

    public var payload: RunScriptContinueResponseBody.Payload?

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
            map["end"] = self.end!
        }
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["end"] as? Bool {
            self.end = value
        }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunScriptContinueResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunScriptContinueResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
    }
}

public class RunScriptContinueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunScriptContinueResponseBody?

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
            var model = RunScriptContinueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunScriptPlanningRequest : Tea.TeaModel {
    public var additionalNote: String?

    public var dialogueInScene: Bool?

    public var plotConflict: Bool?

    public var scriptName: String?

    public var scriptShotCount: Int32?

    public var scriptSummary: String?

    public var scriptTypeKeyword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalNote != nil {
            map["additionalNote"] = self.additionalNote!
        }
        if self.dialogueInScene != nil {
            map["dialogueInScene"] = self.dialogueInScene!
        }
        if self.plotConflict != nil {
            map["plotConflict"] = self.plotConflict!
        }
        if self.scriptName != nil {
            map["scriptName"] = self.scriptName!
        }
        if self.scriptShotCount != nil {
            map["scriptShotCount"] = self.scriptShotCount!
        }
        if self.scriptSummary != nil {
            map["scriptSummary"] = self.scriptSummary!
        }
        if self.scriptTypeKeyword != nil {
            map["scriptTypeKeyword"] = self.scriptTypeKeyword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["additionalNote"] as? String {
            self.additionalNote = value
        }
        if let value = dict["dialogueInScene"] as? Bool {
            self.dialogueInScene = value
        }
        if let value = dict["plotConflict"] as? Bool {
            self.plotConflict = value
        }
        if let value = dict["scriptName"] as? String {
            self.scriptName = value
        }
        if let value = dict["scriptShotCount"] as? Int32 {
            self.scriptShotCount = value
        }
        if let value = dict["scriptSummary"] as? String {
            self.scriptSummary = value
        }
        if let value = dict["scriptTypeKeyword"] as? String {
            self.scriptTypeKeyword = value
        }
    }
}

public class RunScriptPlanningResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var requestId: String?

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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["eventInfo"] as? String {
                self.eventInfo = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
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
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["text"] as? String {
                    self.text = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunScriptPlanningResponseBody.Payload.Output?

        public var usage: RunScriptPlanningResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunScriptPlanningResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunScriptPlanningResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunScriptPlanningResponseBody.Header?

    public var payload: RunScriptPlanningResponseBody.Payload?

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
            map["end"] = self.end!
        }
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["end"] as? Bool {
            self.end = value
        }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunScriptPlanningResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunScriptPlanningResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
    }
}

public class RunScriptPlanningResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunScriptPlanningResponseBody?

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
            var model = RunScriptPlanningResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunScriptRefineRequest : Tea.TeaModel {
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class RunScriptRefineResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var requestId: String?

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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["eventInfo"] as? String {
                self.eventInfo = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public var content: [[String: String]]?

            public var outline: String?

            public var role: String?

            public var scene: String?

            public var summary: String?

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
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.outline != nil {
                    map["outline"] = self.outline!
                }
                if self.role != nil {
                    map["role"] = self.role!
                }
                if self.scene != nil {
                    map["scene"] = self.scene!
                }
                if self.summary != nil {
                    map["summary"] = self.summary!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? [[String: String]] {
                    self.content = value
                }
                if let value = dict["outline"] as? String {
                    self.outline = value
                }
                if let value = dict["role"] as? String {
                    self.role = value
                }
                if let value = dict["scene"] as? String {
                    self.scene = value
                }
                if let value = dict["summary"] as? String {
                    self.summary = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunScriptRefineResponseBody.Payload.Output?

        public var usage: RunScriptRefineResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunScriptRefineResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunScriptRefineResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunScriptRefineResponseBody.Header?

    public var payload: RunScriptRefineResponseBody.Payload?

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
            map["end"] = self.end!
        }
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["end"] as? Bool {
            self.end = value
        }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunScriptRefineResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunScriptRefineResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
    }
}

public class RunScriptRefineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunScriptRefineResponseBody?

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
            var model = RunScriptRefineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunStyleWritingRequest : Tea.TeaModel {
    public var learningSamples: [String]?

    public var processStage: String?

    public var referenceMaterials: [String]?

    public var styleFeature: String?

    public var useSearch: Bool?

    public var writingTheme: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.learningSamples != nil {
            map["learningSamples"] = self.learningSamples!
        }
        if self.processStage != nil {
            map["processStage"] = self.processStage!
        }
        if self.referenceMaterials != nil {
            map["referenceMaterials"] = self.referenceMaterials!
        }
        if self.styleFeature != nil {
            map["styleFeature"] = self.styleFeature!
        }
        if self.useSearch != nil {
            map["useSearch"] = self.useSearch!
        }
        if self.writingTheme != nil {
            map["writingTheme"] = self.writingTheme!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["learningSamples"] as? [String] {
            self.learningSamples = value
        }
        if let value = dict["processStage"] as? String {
            self.processStage = value
        }
        if let value = dict["referenceMaterials"] as? [String] {
            self.referenceMaterials = value
        }
        if let value = dict["styleFeature"] as? String {
            self.styleFeature = value
        }
        if let value = dict["useSearch"] as? Bool {
            self.useSearch = value
        }
        if let value = dict["writingTheme"] as? String {
            self.writingTheme = value
        }
    }
}

public class RunStyleWritingShrinkRequest : Tea.TeaModel {
    public var learningSamplesShrink: String?

    public var processStage: String?

    public var referenceMaterialsShrink: String?

    public var styleFeature: String?

    public var useSearch: Bool?

    public var writingTheme: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.learningSamplesShrink != nil {
            map["learningSamples"] = self.learningSamplesShrink!
        }
        if self.processStage != nil {
            map["processStage"] = self.processStage!
        }
        if self.referenceMaterialsShrink != nil {
            map["referenceMaterials"] = self.referenceMaterialsShrink!
        }
        if self.styleFeature != nil {
            map["styleFeature"] = self.styleFeature!
        }
        if self.useSearch != nil {
            map["useSearch"] = self.useSearch!
        }
        if self.writingTheme != nil {
            map["writingTheme"] = self.writingTheme!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["learningSamples"] as? String {
            self.learningSamplesShrink = value
        }
        if let value = dict["processStage"] as? String {
            self.processStage = value
        }
        if let value = dict["referenceMaterials"] as? String {
            self.referenceMaterialsShrink = value
        }
        if let value = dict["styleFeature"] as? String {
            self.styleFeature = value
        }
        if let value = dict["useSearch"] as? Bool {
            self.useSearch = value
        }
        if let value = dict["writingTheme"] as? String {
            self.writingTheme = value
        }
    }
}

public class RunStyleWritingResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var event: String?

        public var eventInfo: String?

        public var requestId: String?

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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["eventInfo"] as? String {
                self.eventInfo = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
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
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["text"] as? String {
                    self.text = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunStyleWritingResponseBody.Payload.Output?

        public var usage: RunStyleWritingResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunStyleWritingResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunStyleWritingResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var end: Bool?

    public var header: RunStyleWritingResponseBody.Header?

    public var payload: RunStyleWritingResponseBody.Payload?

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
            map["end"] = self.end!
        }
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["end"] as? Bool {
            self.end = value
        }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunStyleWritingResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunStyleWritingResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
    }
}

public class RunStyleWritingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunStyleWritingResponseBody?

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
            var model = RunStyleWritingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunTagMiningAnalysisRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var tagDefinePrompt: String?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagDefinePrompt != nil {
                map["tagDefinePrompt"] = self.tagDefinePrompt!
            }
            if self.tagName != nil {
                map["tagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagDefinePrompt"] as? String {
                self.tagDefinePrompt = value
            }
            if let value = dict["tagName"] as? String {
                self.tagName = value
            }
        }
    }
    public var apiKey: String?

    public var businessType: String?

    public var content: String?

    public var extraInfo: String?

    public var modelId: String?

    public var outputFormat: String?

    public var tags: [RunTagMiningAnalysisRequest.Tags]?

    public var taskDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.businessType != nil {
            map["businessType"] = self.businessType!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.outputFormat != nil {
            map["outputFormat"] = self.outputFormat!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["businessType"] as? String {
            self.businessType = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["extraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["outputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [RunTagMiningAnalysisRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = RunTagMiningAnalysisRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
    }
}

public class RunTagMiningAnalysisShrinkRequest : Tea.TeaModel {
    public var apiKey: String?

    public var businessType: String?

    public var content: String?

    public var extraInfo: String?

    public var modelId: String?

    public var outputFormat: String?

    public var tagsShrink: String?

    public var taskDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.businessType != nil {
            map["businessType"] = self.businessType!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.outputFormat != nil {
            map["outputFormat"] = self.outputFormat!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["businessType"] as? String {
            self.businessType = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["extraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["outputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
    }
}

public class RunTagMiningAnalysisResponseBody : Tea.TeaModel {
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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
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
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["text"] as? String {
                    self.text = value
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunTagMiningAnalysisResponseBody.Payload.Output?

        public var usage: RunTagMiningAnalysisResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunTagMiningAnalysisResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunTagMiningAnalysisResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var header: RunTagMiningAnalysisResponseBody.Header?

    public var payload: RunTagMiningAnalysisResponseBody.Payload?

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
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunTagMiningAnalysisResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunTagMiningAnalysisResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RunTagMiningAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunTagMiningAnalysisResponseBody?

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
            var model = RunTagMiningAnalysisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunVideoAnalysisRequest : Tea.TeaModel {
    public class AddDocumentParam : Tea.TeaModel {
        public class Document : Tea.TeaModel {
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
                if self.docId != nil {
                    map["docId"] = self.docId!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["docId"] as? String {
                    self.docId = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
                }
            }
        }
        public var datasetId: Int64?

        public var datasetName: String?

        public var document: RunVideoAnalysisRequest.AddDocumentParam.Document?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.document?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.datasetId != nil {
                map["datasetId"] = self.datasetId!
            }
            if self.datasetName != nil {
                map["datasetName"] = self.datasetName!
            }
            if self.document != nil {
                map["document"] = self.document?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["datasetId"] as? Int64 {
                self.datasetId = value
            }
            if let value = dict["datasetName"] as? String {
                self.datasetName = value
            }
            if let value = dict["document"] as? [String: Any?] {
                var model = RunVideoAnalysisRequest.AddDocumentParam.Document()
                model.fromMap(value)
                self.document = model
            }
        }
    }
    public class FrameSampleMethod : Tea.TeaModel {
        public var interval: Double?

        public var methodName: String?

        public var pixel: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.interval != nil {
                map["interval"] = self.interval!
            }
            if self.methodName != nil {
                map["methodName"] = self.methodName!
            }
            if self.pixel != nil {
                map["pixel"] = self.pixel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["interval"] as? Double {
                self.interval = value
            }
            if let value = dict["methodName"] as? String {
                self.methodName = value
            }
            if let value = dict["pixel"] as? Int32 {
                self.pixel = value
            }
        }
    }
    public class TextProcessTasks : Tea.TeaModel {
        public var modelCustomPromptTemplate: String?

        public var modelCustomPromptTemplateId: String?

        public var modelId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelCustomPromptTemplate != nil {
                map["modelCustomPromptTemplate"] = self.modelCustomPromptTemplate!
            }
            if self.modelCustomPromptTemplateId != nil {
                map["modelCustomPromptTemplateId"] = self.modelCustomPromptTemplateId!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["modelCustomPromptTemplate"] as? String {
                self.modelCustomPromptTemplate = value
            }
            if let value = dict["modelCustomPromptTemplateId"] as? String {
                self.modelCustomPromptTemplateId = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
        }
    }
    public class VideoCaptionInfo : Tea.TeaModel {
        public class VideoCaptions : Tea.TeaModel {
            public var endTime: Int64?

            public var speaker: String?

            public var startTime: Int64?

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
                if self.endTime != nil {
                    map["endTime"] = self.endTime!
                }
                if self.speaker != nil {
                    map["speaker"] = self.speaker!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["endTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["speaker"] as? String {
                    self.speaker = value
                }
                if let value = dict["startTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
                }
            }
        }
        public var videoCaptionFileUrl: String?

        public var videoCaptions: [RunVideoAnalysisRequest.VideoCaptionInfo.VideoCaptions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.videoCaptionFileUrl != nil {
                map["videoCaptionFileUrl"] = self.videoCaptionFileUrl!
            }
            if self.videoCaptions != nil {
                var tmp : [Any] = []
                for k in self.videoCaptions! {
                    tmp.append(k.toMap())
                }
                map["videoCaptions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["videoCaptionFileUrl"] as? String {
                self.videoCaptionFileUrl = value
            }
            if let value = dict["videoCaptions"] as? [Any?] {
                var tmp : [RunVideoAnalysisRequest.VideoCaptionInfo.VideoCaptions] = []
                for v in value {
                    if v != nil {
                        var model = RunVideoAnalysisRequest.VideoCaptionInfo.VideoCaptions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.videoCaptions = tmp
            }
        }
    }
    public class VideoRoles : Tea.TeaModel {
        public class TimeIntervals : Tea.TeaModel {
            public var endTime: Int64?

            public var startTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endTime != nil {
                    map["endTime"] = self.endTime!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["endTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["startTime"] as? Int64 {
                    self.startTime = value
                }
            }
        }
        public var isAutoRecognition: Bool?

        public var roleInfo: String?

        public var roleName: String?

        public var timeIntervals: [RunVideoAnalysisRequest.VideoRoles.TimeIntervals]?

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
            if self.isAutoRecognition != nil {
                map["isAutoRecognition"] = self.isAutoRecognition!
            }
            if self.roleInfo != nil {
                map["roleInfo"] = self.roleInfo!
            }
            if self.roleName != nil {
                map["roleName"] = self.roleName!
            }
            if self.timeIntervals != nil {
                var tmp : [Any] = []
                for k in self.timeIntervals! {
                    tmp.append(k.toMap())
                }
                map["timeIntervals"] = tmp
            }
            if self.urls != nil {
                map["urls"] = self.urls!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["isAutoRecognition"] as? Bool {
                self.isAutoRecognition = value
            }
            if let value = dict["roleInfo"] as? String {
                self.roleInfo = value
            }
            if let value = dict["roleName"] as? String {
                self.roleName = value
            }
            if let value = dict["timeIntervals"] as? [Any?] {
                var tmp : [RunVideoAnalysisRequest.VideoRoles.TimeIntervals] = []
                for v in value {
                    if v != nil {
                        var model = RunVideoAnalysisRequest.VideoRoles.TimeIntervals()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.timeIntervals = tmp
            }
            if let value = dict["urls"] as? [String] {
                self.urls = value
            }
        }
    }
    public var addDocumentParam: RunVideoAnalysisRequest.AddDocumentParam?

    public var autoRoleRecognitionVideoUrl: String?

    public var excludeGenerateOptions: [String]?

    public var faceIdentitySimilarityMinScore: Double?

    public var frameSampleMethod: RunVideoAnalysisRequest.FrameSampleMethod?

    public var generateOptions: [String]?

    public var language: String?

    public var modelCustomPromptTemplate: String?

    public var modelCustomPromptTemplateId: String?

    public var modelId: String?

    public var originalSessionId: String?

    public var snapshotInterval: Double?

    public var splitInterval: Int32?

    public var splitType: String?

    public var taskId: String?

    public var textProcessTasks: [RunVideoAnalysisRequest.TextProcessTasks]?

    public var videoCaptionInfo: RunVideoAnalysisRequest.VideoCaptionInfo?

    public var videoExtraInfo: String?

    public var videoModelCustomPromptTemplate: String?

    public var videoModelId: String?

    public var videoRoles: [RunVideoAnalysisRequest.VideoRoles]?

    public var videoShotFaceIdentityCount: Int32?

    public var videoUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.addDocumentParam?.validate()
        try self.frameSampleMethod?.validate()
        try self.videoCaptionInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addDocumentParam != nil {
            map["addDocumentParam"] = self.addDocumentParam?.toMap()
        }
        if self.autoRoleRecognitionVideoUrl != nil {
            map["autoRoleRecognitionVideoUrl"] = self.autoRoleRecognitionVideoUrl!
        }
        if self.excludeGenerateOptions != nil {
            map["excludeGenerateOptions"] = self.excludeGenerateOptions!
        }
        if self.faceIdentitySimilarityMinScore != nil {
            map["faceIdentitySimilarityMinScore"] = self.faceIdentitySimilarityMinScore!
        }
        if self.frameSampleMethod != nil {
            map["frameSampleMethod"] = self.frameSampleMethod?.toMap()
        }
        if self.generateOptions != nil {
            map["generateOptions"] = self.generateOptions!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.modelCustomPromptTemplate != nil {
            map["modelCustomPromptTemplate"] = self.modelCustomPromptTemplate!
        }
        if self.modelCustomPromptTemplateId != nil {
            map["modelCustomPromptTemplateId"] = self.modelCustomPromptTemplateId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.originalSessionId != nil {
            map["originalSessionId"] = self.originalSessionId!
        }
        if self.snapshotInterval != nil {
            map["snapshotInterval"] = self.snapshotInterval!
        }
        if self.splitInterval != nil {
            map["splitInterval"] = self.splitInterval!
        }
        if self.splitType != nil {
            map["splitType"] = self.splitType!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.textProcessTasks != nil {
            var tmp : [Any] = []
            for k in self.textProcessTasks! {
                tmp.append(k.toMap())
            }
            map["textProcessTasks"] = tmp
        }
        if self.videoCaptionInfo != nil {
            map["videoCaptionInfo"] = self.videoCaptionInfo?.toMap()
        }
        if self.videoExtraInfo != nil {
            map["videoExtraInfo"] = self.videoExtraInfo!
        }
        if self.videoModelCustomPromptTemplate != nil {
            map["videoModelCustomPromptTemplate"] = self.videoModelCustomPromptTemplate!
        }
        if self.videoModelId != nil {
            map["videoModelId"] = self.videoModelId!
        }
        if self.videoRoles != nil {
            var tmp : [Any] = []
            for k in self.videoRoles! {
                tmp.append(k.toMap())
            }
            map["videoRoles"] = tmp
        }
        if self.videoShotFaceIdentityCount != nil {
            map["videoShotFaceIdentityCount"] = self.videoShotFaceIdentityCount!
        }
        if self.videoUrl != nil {
            map["videoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["addDocumentParam"] as? [String: Any?] {
            var model = RunVideoAnalysisRequest.AddDocumentParam()
            model.fromMap(value)
            self.addDocumentParam = model
        }
        if let value = dict["autoRoleRecognitionVideoUrl"] as? String {
            self.autoRoleRecognitionVideoUrl = value
        }
        if let value = dict["excludeGenerateOptions"] as? [String] {
            self.excludeGenerateOptions = value
        }
        if let value = dict["faceIdentitySimilarityMinScore"] as? Double {
            self.faceIdentitySimilarityMinScore = value
        }
        if let value = dict["frameSampleMethod"] as? [String: Any?] {
            var model = RunVideoAnalysisRequest.FrameSampleMethod()
            model.fromMap(value)
            self.frameSampleMethod = model
        }
        if let value = dict["generateOptions"] as? [String] {
            self.generateOptions = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["modelCustomPromptTemplate"] as? String {
            self.modelCustomPromptTemplate = value
        }
        if let value = dict["modelCustomPromptTemplateId"] as? String {
            self.modelCustomPromptTemplateId = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["originalSessionId"] as? String {
            self.originalSessionId = value
        }
        if let value = dict["snapshotInterval"] as? Double {
            self.snapshotInterval = value
        }
        if let value = dict["splitInterval"] as? Int32 {
            self.splitInterval = value
        }
        if let value = dict["splitType"] as? String {
            self.splitType = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["textProcessTasks"] as? [Any?] {
            var tmp : [RunVideoAnalysisRequest.TextProcessTasks] = []
            for v in value {
                if v != nil {
                    var model = RunVideoAnalysisRequest.TextProcessTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.textProcessTasks = tmp
        }
        if let value = dict["videoCaptionInfo"] as? [String: Any?] {
            var model = RunVideoAnalysisRequest.VideoCaptionInfo()
            model.fromMap(value)
            self.videoCaptionInfo = model
        }
        if let value = dict["videoExtraInfo"] as? String {
            self.videoExtraInfo = value
        }
        if let value = dict["videoModelCustomPromptTemplate"] as? String {
            self.videoModelCustomPromptTemplate = value
        }
        if let value = dict["videoModelId"] as? String {
            self.videoModelId = value
        }
        if let value = dict["videoRoles"] as? [Any?] {
            var tmp : [RunVideoAnalysisRequest.VideoRoles] = []
            for v in value {
                if v != nil {
                    var model = RunVideoAnalysisRequest.VideoRoles()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.videoRoles = tmp
        }
        if let value = dict["videoShotFaceIdentityCount"] as? Int32 {
            self.videoShotFaceIdentityCount = value
        }
        if let value = dict["videoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class RunVideoAnalysisShrinkRequest : Tea.TeaModel {
    public var addDocumentParamShrink: String?

    public var autoRoleRecognitionVideoUrl: String?

    public var excludeGenerateOptionsShrink: String?

    public var faceIdentitySimilarityMinScore: Double?

    public var frameSampleMethodShrink: String?

    public var generateOptionsShrink: String?

    public var language: String?

    public var modelCustomPromptTemplate: String?

    public var modelCustomPromptTemplateId: String?

    public var modelId: String?

    public var originalSessionId: String?

    public var snapshotInterval: Double?

    public var splitInterval: Int32?

    public var splitType: String?

    public var taskId: String?

    public var textProcessTasksShrink: String?

    public var videoCaptionInfoShrink: String?

    public var videoExtraInfo: String?

    public var videoModelCustomPromptTemplate: String?

    public var videoModelId: String?

    public var videoRolesShrink: String?

    public var videoShotFaceIdentityCount: Int32?

    public var videoUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addDocumentParamShrink != nil {
            map["addDocumentParam"] = self.addDocumentParamShrink!
        }
        if self.autoRoleRecognitionVideoUrl != nil {
            map["autoRoleRecognitionVideoUrl"] = self.autoRoleRecognitionVideoUrl!
        }
        if self.excludeGenerateOptionsShrink != nil {
            map["excludeGenerateOptions"] = self.excludeGenerateOptionsShrink!
        }
        if self.faceIdentitySimilarityMinScore != nil {
            map["faceIdentitySimilarityMinScore"] = self.faceIdentitySimilarityMinScore!
        }
        if self.frameSampleMethodShrink != nil {
            map["frameSampleMethod"] = self.frameSampleMethodShrink!
        }
        if self.generateOptionsShrink != nil {
            map["generateOptions"] = self.generateOptionsShrink!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.modelCustomPromptTemplate != nil {
            map["modelCustomPromptTemplate"] = self.modelCustomPromptTemplate!
        }
        if self.modelCustomPromptTemplateId != nil {
            map["modelCustomPromptTemplateId"] = self.modelCustomPromptTemplateId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.originalSessionId != nil {
            map["originalSessionId"] = self.originalSessionId!
        }
        if self.snapshotInterval != nil {
            map["snapshotInterval"] = self.snapshotInterval!
        }
        if self.splitInterval != nil {
            map["splitInterval"] = self.splitInterval!
        }
        if self.splitType != nil {
            map["splitType"] = self.splitType!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.textProcessTasksShrink != nil {
            map["textProcessTasks"] = self.textProcessTasksShrink!
        }
        if self.videoCaptionInfoShrink != nil {
            map["videoCaptionInfo"] = self.videoCaptionInfoShrink!
        }
        if self.videoExtraInfo != nil {
            map["videoExtraInfo"] = self.videoExtraInfo!
        }
        if self.videoModelCustomPromptTemplate != nil {
            map["videoModelCustomPromptTemplate"] = self.videoModelCustomPromptTemplate!
        }
        if self.videoModelId != nil {
            map["videoModelId"] = self.videoModelId!
        }
        if self.videoRolesShrink != nil {
            map["videoRoles"] = self.videoRolesShrink!
        }
        if self.videoShotFaceIdentityCount != nil {
            map["videoShotFaceIdentityCount"] = self.videoShotFaceIdentityCount!
        }
        if self.videoUrl != nil {
            map["videoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["addDocumentParam"] as? String {
            self.addDocumentParamShrink = value
        }
        if let value = dict["autoRoleRecognitionVideoUrl"] as? String {
            self.autoRoleRecognitionVideoUrl = value
        }
        if let value = dict["excludeGenerateOptions"] as? String {
            self.excludeGenerateOptionsShrink = value
        }
        if let value = dict["faceIdentitySimilarityMinScore"] as? Double {
            self.faceIdentitySimilarityMinScore = value
        }
        if let value = dict["frameSampleMethod"] as? String {
            self.frameSampleMethodShrink = value
        }
        if let value = dict["generateOptions"] as? String {
            self.generateOptionsShrink = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["modelCustomPromptTemplate"] as? String {
            self.modelCustomPromptTemplate = value
        }
        if let value = dict["modelCustomPromptTemplateId"] as? String {
            self.modelCustomPromptTemplateId = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["originalSessionId"] as? String {
            self.originalSessionId = value
        }
        if let value = dict["snapshotInterval"] as? Double {
            self.snapshotInterval = value
        }
        if let value = dict["splitInterval"] as? Int32 {
            self.splitInterval = value
        }
        if let value = dict["splitType"] as? String {
            self.splitType = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["textProcessTasks"] as? String {
            self.textProcessTasksShrink = value
        }
        if let value = dict["videoCaptionInfo"] as? String {
            self.videoCaptionInfoShrink = value
        }
        if let value = dict["videoExtraInfo"] as? String {
            self.videoExtraInfo = value
        }
        if let value = dict["videoModelCustomPromptTemplate"] as? String {
            self.videoModelCustomPromptTemplate = value
        }
        if let value = dict["videoModelId"] as? String {
            self.videoModelId = value
        }
        if let value = dict["videoRoles"] as? String {
            self.videoRolesShrink = value
        }
        if let value = dict["videoShotFaceIdentityCount"] as? Int32 {
            self.videoShotFaceIdentityCount = value
        }
        if let value = dict["videoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class RunVideoAnalysisResponseBody : Tea.TeaModel {
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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["eventInfo"] as? String {
                self.eventInfo = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public class AddDatasetDocumentsResult : Tea.TeaModel {
                public var docId: String?

                public var docUuid: String?

                public var errorMessage: String?

                public var status: Int64?

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
                    if self.docId != nil {
                        map["docId"] = self.docId!
                    }
                    if self.docUuid != nil {
                        map["docUuid"] = self.docUuid!
                    }
                    if self.errorMessage != nil {
                        map["errorMessage"] = self.errorMessage!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.title != nil {
                        map["title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["docId"] as? String {
                        self.docId = value
                    }
                    if let value = dict["docUuid"] as? String {
                        self.docUuid = value
                    }
                    if let value = dict["errorMessage"] as? String {
                        self.errorMessage = value
                    }
                    if let value = dict["status"] as? Int64 {
                        self.status = value
                    }
                    if let value = dict["title"] as? String {
                        self.title = value
                    }
                }
            }
            public class VideoAnalysisResult : Tea.TeaModel {
                public class Usage : Tea.TeaModel {
                    public var imageTokens: Int64?

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
                        if self.imageTokens != nil {
                            map["imageTokens"] = self.imageTokens!
                        }
                        if self.inputTokens != nil {
                            map["inputTokens"] = self.inputTokens!
                        }
                        if self.outputTokens != nil {
                            map["outputTokens"] = self.outputTokens!
                        }
                        if self.totalTokens != nil {
                            map["totalTokens"] = self.totalTokens!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["imageTokens"] as? Int64 {
                            self.imageTokens = value
                        }
                        if let value = dict["inputTokens"] as? Int64 {
                            self.inputTokens = value
                        }
                        if let value = dict["outputTokens"] as? Int64 {
                            self.outputTokens = value
                        }
                        if let value = dict["totalTokens"] as? Int64 {
                            self.totalTokens = value
                        }
                    }
                }
                public class VideoShotAnalysisResults : Tea.TeaModel {
                    public var endTime: Int64?

                    public var startTime: Int64?

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
                        if self.endTime != nil {
                            map["endTime"] = self.endTime!
                        }
                        if self.startTime != nil {
                            map["startTime"] = self.startTime!
                        }
                        if self.text != nil {
                            map["text"] = self.text!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["endTime"] as? Int64 {
                            self.endTime = value
                        }
                        if let value = dict["startTime"] as? Int64 {
                            self.startTime = value
                        }
                        if let value = dict["text"] as? String {
                            self.text = value
                        }
                    }
                }
                public var generateFinished: Bool?

                public var modelId: String?

                public var text: String?

                public var usage: RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult.Usage?

                public var videoShotAnalysisResults: [RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult.VideoShotAnalysisResults]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.usage?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.generateFinished != nil {
                        map["generateFinished"] = self.generateFinished!
                    }
                    if self.modelId != nil {
                        map["modelId"] = self.modelId!
                    }
                    if self.text != nil {
                        map["text"] = self.text!
                    }
                    if self.usage != nil {
                        map["usage"] = self.usage?.toMap()
                    }
                    if self.videoShotAnalysisResults != nil {
                        var tmp : [Any] = []
                        for k in self.videoShotAnalysisResults! {
                            tmp.append(k.toMap())
                        }
                        map["videoShotAnalysisResults"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["generateFinished"] as? Bool {
                        self.generateFinished = value
                    }
                    if let value = dict["modelId"] as? String {
                        self.modelId = value
                    }
                    if let value = dict["text"] as? String {
                        self.text = value
                    }
                    if let value = dict["usage"] as? [String: Any?] {
                        var model = RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult.Usage()
                        model.fromMap(value)
                        self.usage = model
                    }
                    if let value = dict["videoShotAnalysisResults"] as? [Any?] {
                        var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult.VideoShotAnalysisResults] = []
                        for v in value {
                            if v != nil {
                                var model = RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult.VideoShotAnalysisResults()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.videoShotAnalysisResults = tmp
                    }
                }
            }
            public class VideoCalculatorResult : Tea.TeaModel {
                public class Items : Tea.TeaModel {
                    public var inputExpense: Double?

                    public var inputToken: Int64?

                    public var name: String?

                    public var outputExpense: Double?

                    public var outputToken: Int64?

                    public var time: Int64?

                    public var timeExpense: Double?

                    public var totalExpense: Double?

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
                        if self.inputExpense != nil {
                            map["inputExpense"] = self.inputExpense!
                        }
                        if self.inputToken != nil {
                            map["inputToken"] = self.inputToken!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.outputExpense != nil {
                            map["outputExpense"] = self.outputExpense!
                        }
                        if self.outputToken != nil {
                            map["outputToken"] = self.outputToken!
                        }
                        if self.time != nil {
                            map["time"] = self.time!
                        }
                        if self.timeExpense != nil {
                            map["timeExpense"] = self.timeExpense!
                        }
                        if self.totalExpense != nil {
                            map["totalExpense"] = self.totalExpense!
                        }
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["inputExpense"] as? Double {
                            self.inputExpense = value
                        }
                        if let value = dict["inputToken"] as? Int64 {
                            self.inputToken = value
                        }
                        if let value = dict["name"] as? String {
                            self.name = value
                        }
                        if let value = dict["outputExpense"] as? Double {
                            self.outputExpense = value
                        }
                        if let value = dict["outputToken"] as? Int64 {
                            self.outputToken = value
                        }
                        if let value = dict["time"] as? Int64 {
                            self.time = value
                        }
                        if let value = dict["timeExpense"] as? Double {
                            self.timeExpense = value
                        }
                        if let value = dict["totalExpense"] as? Double {
                            self.totalExpense = value
                        }
                        if let value = dict["type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var items: [RunVideoAnalysisResponseBody.Payload.Output.VideoCalculatorResult.Items]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.items != nil {
                        var tmp : [Any] = []
                        for k in self.items! {
                            tmp.append(k.toMap())
                        }
                        map["items"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["items"] as? [Any?] {
                        var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoCalculatorResult.Items] = []
                        for v in value {
                            if v != nil {
                                var model = RunVideoAnalysisResponseBody.Payload.Output.VideoCalculatorResult.Items()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.items = tmp
                    }
                }
            }
            public class VideoCaptionResult : Tea.TeaModel {
                public class VideoCaptions : Tea.TeaModel {
                    public var endTime: Int64?

                    public var endTimeFormat: String?

                    public var speaker: String?

                    public var startTime: Int64?

                    public var startTimeFormat: String?

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
                        if self.endTime != nil {
                            map["endTime"] = self.endTime!
                        }
                        if self.endTimeFormat != nil {
                            map["endTimeFormat"] = self.endTimeFormat!
                        }
                        if self.speaker != nil {
                            map["speaker"] = self.speaker!
                        }
                        if self.startTime != nil {
                            map["startTime"] = self.startTime!
                        }
                        if self.startTimeFormat != nil {
                            map["startTimeFormat"] = self.startTimeFormat!
                        }
                        if self.text != nil {
                            map["text"] = self.text!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["endTime"] as? Int64 {
                            self.endTime = value
                        }
                        if let value = dict["endTimeFormat"] as? String {
                            self.endTimeFormat = value
                        }
                        if let value = dict["speaker"] as? String {
                            self.speaker = value
                        }
                        if let value = dict["startTime"] as? Int64 {
                            self.startTime = value
                        }
                        if let value = dict["startTimeFormat"] as? String {
                            self.startTimeFormat = value
                        }
                        if let value = dict["text"] as? String {
                            self.text = value
                        }
                    }
                }
                public var generateFinished: Bool?

                public var videoCaptions: [RunVideoAnalysisResponseBody.Payload.Output.VideoCaptionResult.VideoCaptions]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.generateFinished != nil {
                        map["generateFinished"] = self.generateFinished!
                    }
                    if self.videoCaptions != nil {
                        var tmp : [Any] = []
                        for k in self.videoCaptions! {
                            tmp.append(k.toMap())
                        }
                        map["videoCaptions"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["generateFinished"] as? Bool {
                        self.generateFinished = value
                    }
                    if let value = dict["videoCaptions"] as? [Any?] {
                        var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoCaptionResult.VideoCaptions] = []
                        for v in value {
                            if v != nil {
                                var model = RunVideoAnalysisResponseBody.Payload.Output.VideoCaptionResult.VideoCaptions()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.videoCaptions = tmp
                    }
                }
            }
            public class VideoGenerateResult : Tea.TeaModel {
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
                            map["inputTokens"] = self.inputTokens!
                        }
                        if self.outputTokens != nil {
                            map["outputTokens"] = self.outputTokens!
                        }
                        if self.totalTokens != nil {
                            map["totalTokens"] = self.totalTokens!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["inputTokens"] as? Int64 {
                            self.inputTokens = value
                        }
                        if let value = dict["outputTokens"] as? Int64 {
                            self.outputTokens = value
                        }
                        if let value = dict["totalTokens"] as? Int64 {
                            self.totalTokens = value
                        }
                    }
                }
                public var generateFinished: Bool?

                public var index: Int32?

                public var modelId: String?

                public var modelReduce: Bool?

                public var reasonText: String?

                public var text: String?

                public var usage: RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResult.Usage?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.usage?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.generateFinished != nil {
                        map["generateFinished"] = self.generateFinished!
                    }
                    if self.index != nil {
                        map["index"] = self.index!
                    }
                    if self.modelId != nil {
                        map["modelId"] = self.modelId!
                    }
                    if self.modelReduce != nil {
                        map["modelReduce"] = self.modelReduce!
                    }
                    if self.reasonText != nil {
                        map["reasonText"] = self.reasonText!
                    }
                    if self.text != nil {
                        map["text"] = self.text!
                    }
                    if self.usage != nil {
                        map["usage"] = self.usage?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["generateFinished"] as? Bool {
                        self.generateFinished = value
                    }
                    if let value = dict["index"] as? Int32 {
                        self.index = value
                    }
                    if let value = dict["modelId"] as? String {
                        self.modelId = value
                    }
                    if let value = dict["modelReduce"] as? Bool {
                        self.modelReduce = value
                    }
                    if let value = dict["reasonText"] as? String {
                        self.reasonText = value
                    }
                    if let value = dict["text"] as? String {
                        self.text = value
                    }
                    if let value = dict["usage"] as? [String: Any?] {
                        var model = RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResult.Usage()
                        model.fromMap(value)
                        self.usage = model
                    }
                }
            }
            public class VideoGenerateResults : Tea.TeaModel {
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
                            map["inputTokens"] = self.inputTokens!
                        }
                        if self.outputTokens != nil {
                            map["outputTokens"] = self.outputTokens!
                        }
                        if self.totalTokens != nil {
                            map["totalTokens"] = self.totalTokens!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["inputTokens"] as? Int64 {
                            self.inputTokens = value
                        }
                        if let value = dict["outputTokens"] as? Int64 {
                            self.outputTokens = value
                        }
                        if let value = dict["totalTokens"] as? Int64 {
                            self.totalTokens = value
                        }
                    }
                }
                public var generateFinished: Bool?

                public var index: Int32?

                public var modelId: String?

                public var reasonText: String?

                public var text: String?

                public var usage: RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResults.Usage?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.usage?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.generateFinished != nil {
                        map["generateFinished"] = self.generateFinished!
                    }
                    if self.index != nil {
                        map["index"] = self.index!
                    }
                    if self.modelId != nil {
                        map["modelId"] = self.modelId!
                    }
                    if self.reasonText != nil {
                        map["reasonText"] = self.reasonText!
                    }
                    if self.text != nil {
                        map["text"] = self.text!
                    }
                    if self.usage != nil {
                        map["usage"] = self.usage?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["generateFinished"] as? Bool {
                        self.generateFinished = value
                    }
                    if let value = dict["index"] as? Int32 {
                        self.index = value
                    }
                    if let value = dict["modelId"] as? String {
                        self.modelId = value
                    }
                    if let value = dict["reasonText"] as? String {
                        self.reasonText = value
                    }
                    if let value = dict["text"] as? String {
                        self.text = value
                    }
                    if let value = dict["usage"] as? [String: Any?] {
                        var model = RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResults.Usage()
                        model.fromMap(value)
                        self.usage = model
                    }
                }
            }
            public class VideoMindMappingGenerateResult : Tea.TeaModel {
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
                            map["inputTokens"] = self.inputTokens!
                        }
                        if self.outputTokens != nil {
                            map["outputTokens"] = self.outputTokens!
                        }
                        if self.totalTokens != nil {
                            map["totalTokens"] = self.totalTokens!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["inputTokens"] as? Int64 {
                            self.inputTokens = value
                        }
                        if let value = dict["outputTokens"] as? Int64 {
                            self.outputTokens = value
                        }
                        if let value = dict["totalTokens"] as? Int64 {
                            self.totalTokens = value
                        }
                    }
                }
                public class VideoMindMappings : Tea.TeaModel {
                    public class ChildNodes : Tea.TeaModel {
                        public class ChildNodes : Tea.TeaModel {
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
                                if self.name != nil {
                                    map["name"] = self.name!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["name"] as? String {
                                    self.name = value
                                }
                            }
                        }
                        public var childNodes: [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes.ChildNodes]?

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
                            if self.childNodes != nil {
                                var tmp : [Any] = []
                                for k in self.childNodes! {
                                    tmp.append(k.toMap())
                                }
                                map["childNodes"] = tmp
                            }
                            if self.name != nil {
                                map["name"] = self.name!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["childNodes"] as? [Any?] {
                                var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes.ChildNodes] = []
                                for v in value {
                                    if v != nil {
                                        var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes.ChildNodes()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.childNodes = tmp
                            }
                            if let value = dict["name"] as? String {
                                self.name = value
                            }
                        }
                    }
                    public var childNodes: [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes]?

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
                        if self.childNodes != nil {
                            var tmp : [Any] = []
                            for k in self.childNodes! {
                                tmp.append(k.toMap())
                            }
                            map["childNodes"] = tmp
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["childNodes"] as? [Any?] {
                            var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes] = []
                            for v in value {
                                if v != nil {
                                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.childNodes = tmp
                        }
                        if let value = dict["name"] as? String {
                            self.name = value
                        }
                    }
                }
                public var generateFinished: Bool?

                public var modelId: String?

                public var modelReduce: Bool?

                public var text: String?

                public var usage: RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.Usage?

                public var videoMindMappings: [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.usage?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.generateFinished != nil {
                        map["generateFinished"] = self.generateFinished!
                    }
                    if self.modelId != nil {
                        map["modelId"] = self.modelId!
                    }
                    if self.modelReduce != nil {
                        map["modelReduce"] = self.modelReduce!
                    }
                    if self.text != nil {
                        map["text"] = self.text!
                    }
                    if self.usage != nil {
                        map["usage"] = self.usage?.toMap()
                    }
                    if self.videoMindMappings != nil {
                        var tmp : [Any] = []
                        for k in self.videoMindMappings! {
                            tmp.append(k.toMap())
                        }
                        map["videoMindMappings"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["generateFinished"] as? Bool {
                        self.generateFinished = value
                    }
                    if let value = dict["modelId"] as? String {
                        self.modelId = value
                    }
                    if let value = dict["modelReduce"] as? Bool {
                        self.modelReduce = value
                    }
                    if let value = dict["text"] as? String {
                        self.text = value
                    }
                    if let value = dict["usage"] as? [String: Any?] {
                        var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.Usage()
                        model.fromMap(value)
                        self.usage = model
                    }
                    if let value = dict["videoMindMappings"] as? [Any?] {
                        var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings] = []
                        for v in value {
                            if v != nil {
                                var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.videoMindMappings = tmp
                    }
                }
            }
            public class VideoRoleRecognitionResult : Tea.TeaModel {
                public class VideoRoles : Tea.TeaModel {
                    public class TimeIntervals : Tea.TeaModel {
                        public var endTime: Int64?

                        public var startTime: Int64?

                        public var timestamp: Int64?

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
                            if self.endTime != nil {
                                map["endTime"] = self.endTime!
                            }
                            if self.startTime != nil {
                                map["startTime"] = self.startTime!
                            }
                            if self.timestamp != nil {
                                map["timestamp"] = self.timestamp!
                            }
                            if self.url != nil {
                                map["url"] = self.url!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["endTime"] as? Int64 {
                                self.endTime = value
                            }
                            if let value = dict["startTime"] as? Int64 {
                                self.startTime = value
                            }
                            if let value = dict["timestamp"] as? Int64 {
                                self.timestamp = value
                            }
                            if let value = dict["url"] as? String {
                                self.url = value
                            }
                        }
                    }
                    public var isAutoRecognition: Bool?

                    public var ratio: Double?

                    public var roleInfo: String?

                    public var roleName: String?

                    public var timeIntervals: [RunVideoAnalysisResponseBody.Payload.Output.VideoRoleRecognitionResult.VideoRoles.TimeIntervals]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.isAutoRecognition != nil {
                            map["isAutoRecognition"] = self.isAutoRecognition!
                        }
                        if self.ratio != nil {
                            map["ratio"] = self.ratio!
                        }
                        if self.roleInfo != nil {
                            map["roleInfo"] = self.roleInfo!
                        }
                        if self.roleName != nil {
                            map["roleName"] = self.roleName!
                        }
                        if self.timeIntervals != nil {
                            var tmp : [Any] = []
                            for k in self.timeIntervals! {
                                tmp.append(k.toMap())
                            }
                            map["timeIntervals"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["isAutoRecognition"] as? Bool {
                            self.isAutoRecognition = value
                        }
                        if let value = dict["ratio"] as? Double {
                            self.ratio = value
                        }
                        if let value = dict["roleInfo"] as? String {
                            self.roleInfo = value
                        }
                        if let value = dict["roleName"] as? String {
                            self.roleName = value
                        }
                        if let value = dict["timeIntervals"] as? [Any?] {
                            var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoRoleRecognitionResult.VideoRoles.TimeIntervals] = []
                            for v in value {
                                if v != nil {
                                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoRoleRecognitionResult.VideoRoles.TimeIntervals()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.timeIntervals = tmp
                        }
                    }
                }
                public var videoRoles: [RunVideoAnalysisResponseBody.Payload.Output.VideoRoleRecognitionResult.VideoRoles]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.videoRoles != nil {
                        var tmp : [Any] = []
                        for k in self.videoRoles! {
                            tmp.append(k.toMap())
                        }
                        map["videoRoles"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["videoRoles"] as? [Any?] {
                        var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoRoleRecognitionResult.VideoRoles] = []
                        for v in value {
                            if v != nil {
                                var model = RunVideoAnalysisResponseBody.Payload.Output.VideoRoleRecognitionResult.VideoRoles()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.videoRoles = tmp
                    }
                }
            }
            public class VideoShotSnapshotResult : Tea.TeaModel {
                public class VideoShots : Tea.TeaModel {
                    public class VideoSnapshots : Tea.TeaModel {
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
                                map["url"] = self.url!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["url"] as? String {
                                self.url = value
                            }
                        }
                    }
                    public var endTime: Int64?

                    public var endTimeFormat: String?

                    public var startTime: Int64?

                    public var startTimeFormat: String?

                    public var videoSnapshots: [RunVideoAnalysisResponseBody.Payload.Output.VideoShotSnapshotResult.VideoShots.VideoSnapshots]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.endTime != nil {
                            map["endTime"] = self.endTime!
                        }
                        if self.endTimeFormat != nil {
                            map["endTimeFormat"] = self.endTimeFormat!
                        }
                        if self.startTime != nil {
                            map["startTime"] = self.startTime!
                        }
                        if self.startTimeFormat != nil {
                            map["startTimeFormat"] = self.startTimeFormat!
                        }
                        if self.videoSnapshots != nil {
                            var tmp : [Any] = []
                            for k in self.videoSnapshots! {
                                tmp.append(k.toMap())
                            }
                            map["videoSnapshots"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["endTime"] as? Int64 {
                            self.endTime = value
                        }
                        if let value = dict["endTimeFormat"] as? String {
                            self.endTimeFormat = value
                        }
                        if let value = dict["startTime"] as? Int64 {
                            self.startTime = value
                        }
                        if let value = dict["startTimeFormat"] as? String {
                            self.startTimeFormat = value
                        }
                        if let value = dict["videoSnapshots"] as? [Any?] {
                            var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoShotSnapshotResult.VideoShots.VideoSnapshots] = []
                            for v in value {
                                if v != nil {
                                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoShotSnapshotResult.VideoShots.VideoSnapshots()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.videoSnapshots = tmp
                        }
                    }
                }
                public var videoShots: [RunVideoAnalysisResponseBody.Payload.Output.VideoShotSnapshotResult.VideoShots]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.videoShots != nil {
                        var tmp : [Any] = []
                        for k in self.videoShots! {
                            tmp.append(k.toMap())
                        }
                        map["videoShots"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["videoShots"] as? [Any?] {
                        var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoShotSnapshotResult.VideoShots] = []
                        for v in value {
                            if v != nil {
                                var model = RunVideoAnalysisResponseBody.Payload.Output.VideoShotSnapshotResult.VideoShots()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.videoShots = tmp
                    }
                }
            }
            public class VideoTitleGenerateResult : Tea.TeaModel {
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
                            map["inputTokens"] = self.inputTokens!
                        }
                        if self.outputTokens != nil {
                            map["outputTokens"] = self.outputTokens!
                        }
                        if self.totalTokens != nil {
                            map["totalTokens"] = self.totalTokens!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["inputTokens"] as? Int64 {
                            self.inputTokens = value
                        }
                        if let value = dict["outputTokens"] as? Int64 {
                            self.outputTokens = value
                        }
                        if let value = dict["totalTokens"] as? Int64 {
                            self.totalTokens = value
                        }
                    }
                }
                public var generateFinished: Bool?

                public var modelId: String?

                public var modelReduce: Bool?

                public var text: String?

                public var usage: RunVideoAnalysisResponseBody.Payload.Output.VideoTitleGenerateResult.Usage?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.usage?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.generateFinished != nil {
                        map["generateFinished"] = self.generateFinished!
                    }
                    if self.modelId != nil {
                        map["modelId"] = self.modelId!
                    }
                    if self.modelReduce != nil {
                        map["modelReduce"] = self.modelReduce!
                    }
                    if self.text != nil {
                        map["text"] = self.text!
                    }
                    if self.usage != nil {
                        map["usage"] = self.usage?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["generateFinished"] as? Bool {
                        self.generateFinished = value
                    }
                    if let value = dict["modelId"] as? String {
                        self.modelId = value
                    }
                    if let value = dict["modelReduce"] as? Bool {
                        self.modelReduce = value
                    }
                    if let value = dict["text"] as? String {
                        self.text = value
                    }
                    if let value = dict["usage"] as? [String: Any?] {
                        var model = RunVideoAnalysisResponseBody.Payload.Output.VideoTitleGenerateResult.Usage()
                        model.fromMap(value)
                        self.usage = model
                    }
                }
            }
            public var addDatasetDocumentsResult: RunVideoAnalysisResponseBody.Payload.Output.AddDatasetDocumentsResult?

            public var resultJsonFileUrl: String?

            public var videoAnalysisResult: RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult?

            public var videoCalculatorResult: RunVideoAnalysisResponseBody.Payload.Output.VideoCalculatorResult?

            public var videoCaptionResult: RunVideoAnalysisResponseBody.Payload.Output.VideoCaptionResult?

            public var videoGenerateResult: RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResult?

            public var videoGenerateResults: [RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResults]?

            public var videoMindMappingGenerateResult: RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult?

            public var videoRoleRecognitionResult: RunVideoAnalysisResponseBody.Payload.Output.VideoRoleRecognitionResult?

            public var videoShotSnapshotResult: RunVideoAnalysisResponseBody.Payload.Output.VideoShotSnapshotResult?

            public var videoTitleGenerateResult: RunVideoAnalysisResponseBody.Payload.Output.VideoTitleGenerateResult?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.addDatasetDocumentsResult?.validate()
                try self.videoAnalysisResult?.validate()
                try self.videoCalculatorResult?.validate()
                try self.videoCaptionResult?.validate()
                try self.videoGenerateResult?.validate()
                try self.videoMindMappingGenerateResult?.validate()
                try self.videoRoleRecognitionResult?.validate()
                try self.videoShotSnapshotResult?.validate()
                try self.videoTitleGenerateResult?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addDatasetDocumentsResult != nil {
                    map["addDatasetDocumentsResult"] = self.addDatasetDocumentsResult?.toMap()
                }
                if self.resultJsonFileUrl != nil {
                    map["resultJsonFileUrl"] = self.resultJsonFileUrl!
                }
                if self.videoAnalysisResult != nil {
                    map["videoAnalysisResult"] = self.videoAnalysisResult?.toMap()
                }
                if self.videoCalculatorResult != nil {
                    map["videoCalculatorResult"] = self.videoCalculatorResult?.toMap()
                }
                if self.videoCaptionResult != nil {
                    map["videoCaptionResult"] = self.videoCaptionResult?.toMap()
                }
                if self.videoGenerateResult != nil {
                    map["videoGenerateResult"] = self.videoGenerateResult?.toMap()
                }
                if self.videoGenerateResults != nil {
                    var tmp : [Any] = []
                    for k in self.videoGenerateResults! {
                        tmp.append(k.toMap())
                    }
                    map["videoGenerateResults"] = tmp
                }
                if self.videoMindMappingGenerateResult != nil {
                    map["videoMindMappingGenerateResult"] = self.videoMindMappingGenerateResult?.toMap()
                }
                if self.videoRoleRecognitionResult != nil {
                    map["videoRoleRecognitionResult"] = self.videoRoleRecognitionResult?.toMap()
                }
                if self.videoShotSnapshotResult != nil {
                    map["videoShotSnapshotResult"] = self.videoShotSnapshotResult?.toMap()
                }
                if self.videoTitleGenerateResult != nil {
                    map["videoTitleGenerateResult"] = self.videoTitleGenerateResult?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["addDatasetDocumentsResult"] as? [String: Any?] {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.AddDatasetDocumentsResult()
                    model.fromMap(value)
                    self.addDatasetDocumentsResult = model
                }
                if let value = dict["resultJsonFileUrl"] as? String {
                    self.resultJsonFileUrl = value
                }
                if let value = dict["videoAnalysisResult"] as? [String: Any?] {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult()
                    model.fromMap(value)
                    self.videoAnalysisResult = model
                }
                if let value = dict["videoCalculatorResult"] as? [String: Any?] {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoCalculatorResult()
                    model.fromMap(value)
                    self.videoCalculatorResult = model
                }
                if let value = dict["videoCaptionResult"] as? [String: Any?] {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoCaptionResult()
                    model.fromMap(value)
                    self.videoCaptionResult = model
                }
                if let value = dict["videoGenerateResult"] as? [String: Any?] {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResult()
                    model.fromMap(value)
                    self.videoGenerateResult = model
                }
                if let value = dict["videoGenerateResults"] as? [Any?] {
                    var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResults] = []
                    for v in value {
                        if v != nil {
                            var model = RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResults()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.videoGenerateResults = tmp
                }
                if let value = dict["videoMindMappingGenerateResult"] as? [String: Any?] {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult()
                    model.fromMap(value)
                    self.videoMindMappingGenerateResult = model
                }
                if let value = dict["videoRoleRecognitionResult"] as? [String: Any?] {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoRoleRecognitionResult()
                    model.fromMap(value)
                    self.videoRoleRecognitionResult = model
                }
                if let value = dict["videoShotSnapshotResult"] as? [String: Any?] {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoShotSnapshotResult()
                    model.fromMap(value)
                    self.videoShotSnapshotResult = model
                }
                if let value = dict["videoTitleGenerateResult"] as? [String: Any?] {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoTitleGenerateResult()
                    model.fromMap(value)
                    self.videoTitleGenerateResult = model
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunVideoAnalysisResponseBody.Payload.Output?

        public var usage: RunVideoAnalysisResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunVideoAnalysisResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunVideoAnalysisResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var header: RunVideoAnalysisResponseBody.Header?

    public var payload: RunVideoAnalysisResponseBody.Payload?

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
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunVideoAnalysisResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunVideoAnalysisResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RunVideoAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunVideoAnalysisResponseBody?

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
            var model = RunVideoAnalysisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunVideoDetectShotRequest : Tea.TeaModel {
    public var intelliSimpPrompt: String?

    public var intelliSimpPromptTemplateId: String?

    public var language: String?

    public var modelCustomPromptTemplateId: String?

    public var modelId: String?

    public var modelVlCustomPromptTemplateId: String?

    public var options: [String]?

    public var originalSessionId: String?

    public var preModelId: String?

    public var prompt: String?

    public var recognitionOptions: [String]?

    public var taskId: String?

    public var videoUrl: String?

    public var vlPrompt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.intelliSimpPrompt != nil {
            map["intelliSimpPrompt"] = self.intelliSimpPrompt!
        }
        if self.intelliSimpPromptTemplateId != nil {
            map["intelliSimpPromptTemplateId"] = self.intelliSimpPromptTemplateId!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.modelCustomPromptTemplateId != nil {
            map["modelCustomPromptTemplateId"] = self.modelCustomPromptTemplateId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.modelVlCustomPromptTemplateId != nil {
            map["modelVlCustomPromptTemplateId"] = self.modelVlCustomPromptTemplateId!
        }
        if self.options != nil {
            map["options"] = self.options!
        }
        if self.originalSessionId != nil {
            map["originalSessionId"] = self.originalSessionId!
        }
        if self.preModelId != nil {
            map["preModelId"] = self.preModelId!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.recognitionOptions != nil {
            map["recognitionOptions"] = self.recognitionOptions!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.videoUrl != nil {
            map["videoUrl"] = self.videoUrl!
        }
        if self.vlPrompt != nil {
            map["vlPrompt"] = self.vlPrompt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["intelliSimpPrompt"] as? String {
            self.intelliSimpPrompt = value
        }
        if let value = dict["intelliSimpPromptTemplateId"] as? String {
            self.intelliSimpPromptTemplateId = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["modelCustomPromptTemplateId"] as? String {
            self.modelCustomPromptTemplateId = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["modelVlCustomPromptTemplateId"] as? String {
            self.modelVlCustomPromptTemplateId = value
        }
        if let value = dict["options"] as? [String] {
            self.options = value
        }
        if let value = dict["originalSessionId"] as? String {
            self.originalSessionId = value
        }
        if let value = dict["preModelId"] as? String {
            self.preModelId = value
        }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["recognitionOptions"] as? [String] {
            self.recognitionOptions = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["videoUrl"] as? String {
            self.videoUrl = value
        }
        if let value = dict["vlPrompt"] as? String {
            self.vlPrompt = value
        }
    }
}

public class RunVideoDetectShotShrinkRequest : Tea.TeaModel {
    public var intelliSimpPrompt: String?

    public var intelliSimpPromptTemplateId: String?

    public var language: String?

    public var modelCustomPromptTemplateId: String?

    public var modelId: String?

    public var modelVlCustomPromptTemplateId: String?

    public var optionsShrink: String?

    public var originalSessionId: String?

    public var preModelId: String?

    public var prompt: String?

    public var recognitionOptionsShrink: String?

    public var taskId: String?

    public var videoUrl: String?

    public var vlPrompt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.intelliSimpPrompt != nil {
            map["intelliSimpPrompt"] = self.intelliSimpPrompt!
        }
        if self.intelliSimpPromptTemplateId != nil {
            map["intelliSimpPromptTemplateId"] = self.intelliSimpPromptTemplateId!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.modelCustomPromptTemplateId != nil {
            map["modelCustomPromptTemplateId"] = self.modelCustomPromptTemplateId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.modelVlCustomPromptTemplateId != nil {
            map["modelVlCustomPromptTemplateId"] = self.modelVlCustomPromptTemplateId!
        }
        if self.optionsShrink != nil {
            map["options"] = self.optionsShrink!
        }
        if self.originalSessionId != nil {
            map["originalSessionId"] = self.originalSessionId!
        }
        if self.preModelId != nil {
            map["preModelId"] = self.preModelId!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.recognitionOptionsShrink != nil {
            map["recognitionOptions"] = self.recognitionOptionsShrink!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.videoUrl != nil {
            map["videoUrl"] = self.videoUrl!
        }
        if self.vlPrompt != nil {
            map["vlPrompt"] = self.vlPrompt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["intelliSimpPrompt"] as? String {
            self.intelliSimpPrompt = value
        }
        if let value = dict["intelliSimpPromptTemplateId"] as? String {
            self.intelliSimpPromptTemplateId = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["modelCustomPromptTemplateId"] as? String {
            self.modelCustomPromptTemplateId = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["modelVlCustomPromptTemplateId"] as? String {
            self.modelVlCustomPromptTemplateId = value
        }
        if let value = dict["options"] as? String {
            self.optionsShrink = value
        }
        if let value = dict["originalSessionId"] as? String {
            self.originalSessionId = value
        }
        if let value = dict["preModelId"] as? String {
            self.preModelId = value
        }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["recognitionOptions"] as? String {
            self.recognitionOptionsShrink = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["videoUrl"] as? String {
            self.videoUrl = value
        }
        if let value = dict["vlPrompt"] as? String {
            self.vlPrompt = value
        }
    }
}

public class RunVideoDetectShotResponseBody : Tea.TeaModel {
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
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventInfo != nil {
                map["eventInfo"] = self.eventInfo!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["eventInfo"] as? String {
                self.eventInfo = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public class VideoSplitResult : Tea.TeaModel {
                public class VideoRecognitionResult : Tea.TeaModel {
                    public var asr: String?

                    public var endTime: Int64?

                    public var ocr: String?

                    public var startTime: Int64?

                    public var vl: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.asr != nil {
                            map["asr"] = self.asr!
                        }
                        if self.endTime != nil {
                            map["endTime"] = self.endTime!
                        }
                        if self.ocr != nil {
                            map["ocr"] = self.ocr!
                        }
                        if self.startTime != nil {
                            map["startTime"] = self.startTime!
                        }
                        if self.vl != nil {
                            map["vl"] = self.vl!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["asr"] as? String {
                            self.asr = value
                        }
                        if let value = dict["endTime"] as? Int64 {
                            self.endTime = value
                        }
                        if let value = dict["ocr"] as? String {
                            self.ocr = value
                        }
                        if let value = dict["startTime"] as? Int64 {
                            self.startTime = value
                        }
                        if let value = dict["vl"] as? String {
                            self.vl = value
                        }
                    }
                }
                public var reasonText: String?

                public var text: String?

                public var videoParts: [[String: String]]?

                public var videoRecognitionResult: [RunVideoDetectShotResponseBody.Payload.Output.VideoSplitResult.VideoRecognitionResult]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.reasonText != nil {
                        map["reasonText"] = self.reasonText!
                    }
                    if self.text != nil {
                        map["text"] = self.text!
                    }
                    if self.videoParts != nil {
                        map["videoParts"] = self.videoParts!
                    }
                    if self.videoRecognitionResult != nil {
                        var tmp : [Any] = []
                        for k in self.videoRecognitionResult! {
                            tmp.append(k.toMap())
                        }
                        map["videoRecognitionResult"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["reasonText"] as? String {
                        self.reasonText = value
                    }
                    if let value = dict["text"] as? String {
                        self.text = value
                    }
                    if let value = dict["videoParts"] as? [[String: String]] {
                        self.videoParts = value
                    }
                    if let value = dict["videoRecognitionResult"] as? [Any?] {
                        var tmp : [RunVideoDetectShotResponseBody.Payload.Output.VideoSplitResult.VideoRecognitionResult] = []
                        for v in value {
                            if v != nil {
                                var model = RunVideoDetectShotResponseBody.Payload.Output.VideoSplitResult.VideoRecognitionResult()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.videoRecognitionResult = tmp
                    }
                }
            }
            public var videoSplitResult: RunVideoDetectShotResponseBody.Payload.Output.VideoSplitResult?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.videoSplitResult?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.videoSplitResult != nil {
                    map["videoSplitResult"] = self.videoSplitResult?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["videoSplitResult"] as? [String: Any?] {
                    var model = RunVideoDetectShotResponseBody.Payload.Output.VideoSplitResult()
                    model.fromMap(value)
                    self.videoSplitResult = model
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
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inputTokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var output: RunVideoDetectShotResponseBody.Payload.Output?

        public var usage: RunVideoDetectShotResponseBody.Payload.Usage?

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
                map["output"] = self.output?.toMap()
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [String: Any?] {
                var model = RunVideoDetectShotResponseBody.Payload.Output()
                model.fromMap(value)
                self.output = model
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = RunVideoDetectShotResponseBody.Payload.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var header: RunVideoDetectShotResponseBody.Header?

    public var payload: RunVideoDetectShotResponseBody.Payload?

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
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["header"] as? [String: Any?] {
            var model = RunVideoDetectShotResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? [String: Any?] {
            var model = RunVideoDetectShotResponseBody.Payload()
            model.fromMap(value)
            self.payload = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RunVideoDetectShotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunVideoDetectShotResponseBody?

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
            var model = RunVideoDetectShotResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitEnterpriseVocAnalysisTaskRequest : Tea.TeaModel {
    public class Contents : Tea.TeaModel {
        public var id: String?

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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.text != nil {
                map["text"] = self.text!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["text"] as? String {
                self.text = value
            }
        }
    }
    public class FilterTags : Tea.TeaModel {
        public var tagDefinePrompt: String?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagDefinePrompt != nil {
                map["tagDefinePrompt"] = self.tagDefinePrompt!
            }
            if self.tagName != nil {
                map["tagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagDefinePrompt"] as? String {
                self.tagDefinePrompt = value
            }
            if let value = dict["tagName"] as? String {
                self.tagName = value
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var tagDefinePrompt: String?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagDefinePrompt != nil {
                map["tagDefinePrompt"] = self.tagDefinePrompt!
            }
            if self.tagName != nil {
                map["tagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagDefinePrompt"] as? String {
                self.tagDefinePrompt = value
            }
            if let value = dict["tagName"] as? String {
                self.tagName = value
            }
        }
    }
    public var apiKey: String?

    public var contents: [SubmitEnterpriseVocAnalysisTaskRequest.Contents]?

    public var extraInfo: String?

    public var fileKey: String?

    public var filterTags: [SubmitEnterpriseVocAnalysisTaskRequest.FilterTags]?

    public var modelId: String?

    public var outputFormat: String?

    public var sourceTrace: Bool?

    public var tags: [SubmitEnterpriseVocAnalysisTaskRequest.Tags]?

    public var taskDescription: String?

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
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.contents != nil {
            var tmp : [Any] = []
            for k in self.contents! {
                tmp.append(k.toMap())
            }
            map["contents"] = tmp
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.fileKey != nil {
            map["fileKey"] = self.fileKey!
        }
        if self.filterTags != nil {
            var tmp : [Any] = []
            for k in self.filterTags! {
                tmp.append(k.toMap())
            }
            map["filterTags"] = tmp
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.outputFormat != nil {
            map["outputFormat"] = self.outputFormat!
        }
        if self.sourceTrace != nil {
            map["sourceTrace"] = self.sourceTrace!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["contents"] as? [Any?] {
            var tmp : [SubmitEnterpriseVocAnalysisTaskRequest.Contents] = []
            for v in value {
                if v != nil {
                    var model = SubmitEnterpriseVocAnalysisTaskRequest.Contents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.contents = tmp
        }
        if let value = dict["extraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["fileKey"] as? String {
            self.fileKey = value
        }
        if let value = dict["filterTags"] as? [Any?] {
            var tmp : [SubmitEnterpriseVocAnalysisTaskRequest.FilterTags] = []
            for v in value {
                if v != nil {
                    var model = SubmitEnterpriseVocAnalysisTaskRequest.FilterTags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filterTags = tmp
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["outputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["sourceTrace"] as? Bool {
            self.sourceTrace = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [SubmitEnterpriseVocAnalysisTaskRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = SubmitEnterpriseVocAnalysisTaskRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
        if let value = dict["url"] as? String {
            self.url = value
        }
    }
}

public class SubmitEnterpriseVocAnalysisTaskShrinkRequest : Tea.TeaModel {
    public var apiKey: String?

    public var contentsShrink: String?

    public var extraInfo: String?

    public var fileKey: String?

    public var filterTagsShrink: String?

    public var modelId: String?

    public var outputFormat: String?

    public var sourceTrace: Bool?

    public var tagsShrink: String?

    public var taskDescription: String?

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
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.contentsShrink != nil {
            map["contents"] = self.contentsShrink!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.fileKey != nil {
            map["fileKey"] = self.fileKey!
        }
        if self.filterTagsShrink != nil {
            map["filterTags"] = self.filterTagsShrink!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.outputFormat != nil {
            map["outputFormat"] = self.outputFormat!
        }
        if self.sourceTrace != nil {
            map["sourceTrace"] = self.sourceTrace!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["contents"] as? String {
            self.contentsShrink = value
        }
        if let value = dict["extraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["fileKey"] as? String {
            self.fileKey = value
        }
        if let value = dict["filterTags"] as? String {
            self.filterTagsShrink = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["outputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["sourceTrace"] as? Bool {
            self.sourceTrace = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
        if let value = dict["url"] as? String {
            self.url = value
        }
    }
}

public class SubmitEnterpriseVocAnalysisTaskResponseBody : Tea.TeaModel {
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
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: SubmitEnterpriseVocAnalysisTaskResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitEnterpriseVocAnalysisTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitEnterpriseVocAnalysisTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitEnterpriseVocAnalysisTaskResponseBody?

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
            var model = SubmitEnterpriseVocAnalysisTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitEssayCorrectionTaskRequest : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var answer: String?

        public var customId: String?

        public var grade: String?

        public var otherReviewPoints: String?

        public var question: String?

        public var subject: String?

        public var totalScore: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answer != nil {
                map["answer"] = self.answer!
            }
            if self.customId != nil {
                map["customId"] = self.customId!
            }
            if self.grade != nil {
                map["grade"] = self.grade!
            }
            if self.otherReviewPoints != nil {
                map["otherReviewPoints"] = self.otherReviewPoints!
            }
            if self.question != nil {
                map["question"] = self.question!
            }
            if self.subject != nil {
                map["subject"] = self.subject!
            }
            if self.totalScore != nil {
                map["totalScore"] = self.totalScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["answer"] as? String {
                self.answer = value
            }
            if let value = dict["customId"] as? String {
                self.customId = value
            }
            if let value = dict["grade"] as? String {
                self.grade = value
            }
            if let value = dict["otherReviewPoints"] as? String {
                self.otherReviewPoints = value
            }
            if let value = dict["question"] as? String {
                self.question = value
            }
            if let value = dict["subject"] as? String {
                self.subject = value
            }
            if let value = dict["totalScore"] as? Int32 {
                self.totalScore = value
            }
        }
    }
    public var grade: String?

    public var modelId: String?

    public var otherReviewPoints: String?

    public var question: String?

    public var subject: String?

    public var tasks: [SubmitEssayCorrectionTaskRequest.Tasks]?

    public var totalScore: Int32?

    public override init() {
        super.init()
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
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.otherReviewPoints != nil {
            map["otherReviewPoints"] = self.otherReviewPoints!
        }
        if self.question != nil {
            map["question"] = self.question!
        }
        if self.subject != nil {
            map["subject"] = self.subject!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["tasks"] = tmp
        }
        if self.totalScore != nil {
            map["totalScore"] = self.totalScore!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["grade"] as? String {
            self.grade = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["otherReviewPoints"] as? String {
            self.otherReviewPoints = value
        }
        if let value = dict["question"] as? String {
            self.question = value
        }
        if let value = dict["subject"] as? String {
            self.subject = value
        }
        if let value = dict["tasks"] as? [Any?] {
            var tmp : [SubmitEssayCorrectionTaskRequest.Tasks] = []
            for v in value {
                if v != nil {
                    var model = SubmitEssayCorrectionTaskRequest.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
        if let value = dict["totalScore"] as? Int32 {
            self.totalScore = value
        }
    }
}

public class SubmitEssayCorrectionTaskShrinkRequest : Tea.TeaModel {
    public var grade: String?

    public var modelId: String?

    public var otherReviewPoints: String?

    public var question: String?

    public var subject: String?

    public var tasksShrink: String?

    public var totalScore: Int32?

    public override init() {
        super.init()
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
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.otherReviewPoints != nil {
            map["otherReviewPoints"] = self.otherReviewPoints!
        }
        if self.question != nil {
            map["question"] = self.question!
        }
        if self.subject != nil {
            map["subject"] = self.subject!
        }
        if self.tasksShrink != nil {
            map["tasks"] = self.tasksShrink!
        }
        if self.totalScore != nil {
            map["totalScore"] = self.totalScore!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["grade"] as? String {
            self.grade = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["otherReviewPoints"] as? String {
            self.otherReviewPoints = value
        }
        if let value = dict["question"] as? String {
            self.question = value
        }
        if let value = dict["subject"] as? String {
            self.subject = value
        }
        if let value = dict["tasks"] as? String {
            self.tasksShrink = value
        }
        if let value = dict["totalScore"] as? Int32 {
            self.totalScore = value
        }
    }
}

public class SubmitEssayCorrectionTaskResponseBody : Tea.TeaModel {
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
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: SubmitEssayCorrectionTaskResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitEssayCorrectionTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitEssayCorrectionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitEssayCorrectionTaskResponseBody?

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
            var model = SubmitEssayCorrectionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitTagMiningAnalysisTaskRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var tagDefinePrompt: String?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagDefinePrompt != nil {
                map["tagDefinePrompt"] = self.tagDefinePrompt!
            }
            if self.tagName != nil {
                map["tagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["tagDefinePrompt"] as? String {
                self.tagDefinePrompt = value
            }
            if let value = dict["tagName"] as? String {
                self.tagName = value
            }
        }
    }
    public var apiKey: String?

    public var businessType: String?

    public var contents: [String]?

    public var extraInfo: String?

    public var modelId: String?

    public var outputFormat: String?

    public var tags: [SubmitTagMiningAnalysisTaskRequest.Tags]?

    public var taskDescription: String?

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
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.businessType != nil {
            map["businessType"] = self.businessType!
        }
        if self.contents != nil {
            map["contents"] = self.contents!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.outputFormat != nil {
            map["outputFormat"] = self.outputFormat!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["businessType"] as? String {
            self.businessType = value
        }
        if let value = dict["contents"] as? [String] {
            self.contents = value
        }
        if let value = dict["extraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["outputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [SubmitTagMiningAnalysisTaskRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = SubmitTagMiningAnalysisTaskRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
        if let value = dict["url"] as? String {
            self.url = value
        }
    }
}

public class SubmitTagMiningAnalysisTaskShrinkRequest : Tea.TeaModel {
    public var apiKey: String?

    public var businessType: String?

    public var contentsShrink: String?

    public var extraInfo: String?

    public var modelId: String?

    public var outputFormat: String?

    public var tagsShrink: String?

    public var taskDescription: String?

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
        if self.apiKey != nil {
            map["apiKey"] = self.apiKey!
        }
        if self.businessType != nil {
            map["businessType"] = self.businessType!
        }
        if self.contentsShrink != nil {
            map["contents"] = self.contentsShrink!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.outputFormat != nil {
            map["outputFormat"] = self.outputFormat!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["businessType"] as? String {
            self.businessType = value
        }
        if let value = dict["contents"] as? String {
            self.contentsShrink = value
        }
        if let value = dict["extraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["outputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
        if let value = dict["url"] as? String {
            self.url = value
        }
    }
}

public class SubmitTagMiningAnalysisTaskResponseBody : Tea.TeaModel {
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
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: SubmitTagMiningAnalysisTaskResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitTagMiningAnalysisTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitTagMiningAnalysisTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitTagMiningAnalysisTaskResponseBody?

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
            var model = SubmitTagMiningAnalysisTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitVideoAnalysisTaskRequest : Tea.TeaModel {
    public class AddDocumentParam : Tea.TeaModel {
        public class Document : Tea.TeaModel {
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
                if self.docId != nil {
                    map["docId"] = self.docId!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["docId"] as? String {
                    self.docId = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
                }
            }
        }
        public var datasetId: Int64?

        public var datasetName: String?

        public var document: SubmitVideoAnalysisTaskRequest.AddDocumentParam.Document?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.document?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.datasetId != nil {
                map["datasetId"] = self.datasetId!
            }
            if self.datasetName != nil {
                map["datasetName"] = self.datasetName!
            }
            if self.document != nil {
                map["document"] = self.document?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["datasetId"] as? Int64 {
                self.datasetId = value
            }
            if let value = dict["datasetName"] as? String {
                self.datasetName = value
            }
            if let value = dict["document"] as? [String: Any?] {
                var model = SubmitVideoAnalysisTaskRequest.AddDocumentParam.Document()
                model.fromMap(value)
                self.document = model
            }
        }
    }
    public class FrameSampleMethod : Tea.TeaModel {
        public var interval: Double?

        public var methodName: String?

        public var pixel: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.interval != nil {
                map["interval"] = self.interval!
            }
            if self.methodName != nil {
                map["methodName"] = self.methodName!
            }
            if self.pixel != nil {
                map["pixel"] = self.pixel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["interval"] as? Double {
                self.interval = value
            }
            if let value = dict["methodName"] as? String {
                self.methodName = value
            }
            if let value = dict["pixel"] as? Int32 {
                self.pixel = value
            }
        }
    }
    public class TextProcessTasks : Tea.TeaModel {
        public var modelCustomPromptTemplate: String?

        public var modelCustomPromptTemplateId: String?

        public var modelId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelCustomPromptTemplate != nil {
                map["modelCustomPromptTemplate"] = self.modelCustomPromptTemplate!
            }
            if self.modelCustomPromptTemplateId != nil {
                map["modelCustomPromptTemplateId"] = self.modelCustomPromptTemplateId!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["modelCustomPromptTemplate"] as? String {
                self.modelCustomPromptTemplate = value
            }
            if let value = dict["modelCustomPromptTemplateId"] as? String {
                self.modelCustomPromptTemplateId = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
        }
    }
    public class VideoCaptionInfo : Tea.TeaModel {
        public class VideoCaptions : Tea.TeaModel {
            public var endTime: Int64?

            public var speaker: String?

            public var startTime: Int64?

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
                if self.endTime != nil {
                    map["endTime"] = self.endTime!
                }
                if self.speaker != nil {
                    map["speaker"] = self.speaker!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["endTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["speaker"] as? String {
                    self.speaker = value
                }
                if let value = dict["startTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
                }
            }
        }
        public var videoCaptionFileUrl: String?

        public var videoCaptions: [SubmitVideoAnalysisTaskRequest.VideoCaptionInfo.VideoCaptions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.videoCaptionFileUrl != nil {
                map["videoCaptionFileUrl"] = self.videoCaptionFileUrl!
            }
            if self.videoCaptions != nil {
                var tmp : [Any] = []
                for k in self.videoCaptions! {
                    tmp.append(k.toMap())
                }
                map["videoCaptions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["videoCaptionFileUrl"] as? String {
                self.videoCaptionFileUrl = value
            }
            if let value = dict["videoCaptions"] as? [Any?] {
                var tmp : [SubmitVideoAnalysisTaskRequest.VideoCaptionInfo.VideoCaptions] = []
                for v in value {
                    if v != nil {
                        var model = SubmitVideoAnalysisTaskRequest.VideoCaptionInfo.VideoCaptions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.videoCaptions = tmp
            }
        }
    }
    public class VideoRoles : Tea.TeaModel {
        public class TimeIntervals : Tea.TeaModel {
            public var endTime: Int64?

            public var startTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endTime != nil {
                    map["endTime"] = self.endTime!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["endTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["startTime"] as? Int64 {
                    self.startTime = value
                }
            }
        }
        public var isAutoRecognition: Bool?

        public var roleInfo: String?

        public var roleName: String?

        public var timeIntervals: [SubmitVideoAnalysisTaskRequest.VideoRoles.TimeIntervals]?

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
            if self.isAutoRecognition != nil {
                map["isAutoRecognition"] = self.isAutoRecognition!
            }
            if self.roleInfo != nil {
                map["roleInfo"] = self.roleInfo!
            }
            if self.roleName != nil {
                map["roleName"] = self.roleName!
            }
            if self.timeIntervals != nil {
                var tmp : [Any] = []
                for k in self.timeIntervals! {
                    tmp.append(k.toMap())
                }
                map["timeIntervals"] = tmp
            }
            if self.urls != nil {
                map["urls"] = self.urls!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["isAutoRecognition"] as? Bool {
                self.isAutoRecognition = value
            }
            if let value = dict["roleInfo"] as? String {
                self.roleInfo = value
            }
            if let value = dict["roleName"] as? String {
                self.roleName = value
            }
            if let value = dict["timeIntervals"] as? [Any?] {
                var tmp : [SubmitVideoAnalysisTaskRequest.VideoRoles.TimeIntervals] = []
                for v in value {
                    if v != nil {
                        var model = SubmitVideoAnalysisTaskRequest.VideoRoles.TimeIntervals()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.timeIntervals = tmp
            }
            if let value = dict["urls"] as? [String] {
                self.urls = value
            }
        }
    }
    public var addDocumentParam: SubmitVideoAnalysisTaskRequest.AddDocumentParam?

    public var autoRoleRecognitionVideoUrl: String?

    public var deduplicationId: String?

    public var excludeGenerateOptions: [String]?

    public var faceIdentitySimilarityMinScore: Double?

    public var frameSampleMethod: SubmitVideoAnalysisTaskRequest.FrameSampleMethod?

    public var generateOptions: [String]?

    public var language: String?

    public var modelCustomPromptTemplate: String?

    public var modelCustomPromptTemplateId: String?

    public var modelId: String?

    public var snapshotInterval: Double?

    public var splitInterval: Int32?

    public var splitType: String?

    public var textProcessTasks: [SubmitVideoAnalysisTaskRequest.TextProcessTasks]?

    public var videoCaptionInfo: SubmitVideoAnalysisTaskRequest.VideoCaptionInfo?

    public var videoExtraInfo: String?

    public var videoModelCustomPromptTemplate: String?

    public var videoModelId: String?

    public var videoRoles: [SubmitVideoAnalysisTaskRequest.VideoRoles]?

    public var videoShotFaceIdentityCount: Int32?

    public var videoUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.addDocumentParam?.validate()
        try self.frameSampleMethod?.validate()
        try self.videoCaptionInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addDocumentParam != nil {
            map["addDocumentParam"] = self.addDocumentParam?.toMap()
        }
        if self.autoRoleRecognitionVideoUrl != nil {
            map["autoRoleRecognitionVideoUrl"] = self.autoRoleRecognitionVideoUrl!
        }
        if self.deduplicationId != nil {
            map["deduplicationId"] = self.deduplicationId!
        }
        if self.excludeGenerateOptions != nil {
            map["excludeGenerateOptions"] = self.excludeGenerateOptions!
        }
        if self.faceIdentitySimilarityMinScore != nil {
            map["faceIdentitySimilarityMinScore"] = self.faceIdentitySimilarityMinScore!
        }
        if self.frameSampleMethod != nil {
            map["frameSampleMethod"] = self.frameSampleMethod?.toMap()
        }
        if self.generateOptions != nil {
            map["generateOptions"] = self.generateOptions!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.modelCustomPromptTemplate != nil {
            map["modelCustomPromptTemplate"] = self.modelCustomPromptTemplate!
        }
        if self.modelCustomPromptTemplateId != nil {
            map["modelCustomPromptTemplateId"] = self.modelCustomPromptTemplateId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.snapshotInterval != nil {
            map["snapshotInterval"] = self.snapshotInterval!
        }
        if self.splitInterval != nil {
            map["splitInterval"] = self.splitInterval!
        }
        if self.splitType != nil {
            map["splitType"] = self.splitType!
        }
        if self.textProcessTasks != nil {
            var tmp : [Any] = []
            for k in self.textProcessTasks! {
                tmp.append(k.toMap())
            }
            map["textProcessTasks"] = tmp
        }
        if self.videoCaptionInfo != nil {
            map["videoCaptionInfo"] = self.videoCaptionInfo?.toMap()
        }
        if self.videoExtraInfo != nil {
            map["videoExtraInfo"] = self.videoExtraInfo!
        }
        if self.videoModelCustomPromptTemplate != nil {
            map["videoModelCustomPromptTemplate"] = self.videoModelCustomPromptTemplate!
        }
        if self.videoModelId != nil {
            map["videoModelId"] = self.videoModelId!
        }
        if self.videoRoles != nil {
            var tmp : [Any] = []
            for k in self.videoRoles! {
                tmp.append(k.toMap())
            }
            map["videoRoles"] = tmp
        }
        if self.videoShotFaceIdentityCount != nil {
            map["videoShotFaceIdentityCount"] = self.videoShotFaceIdentityCount!
        }
        if self.videoUrl != nil {
            map["videoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["addDocumentParam"] as? [String: Any?] {
            var model = SubmitVideoAnalysisTaskRequest.AddDocumentParam()
            model.fromMap(value)
            self.addDocumentParam = model
        }
        if let value = dict["autoRoleRecognitionVideoUrl"] as? String {
            self.autoRoleRecognitionVideoUrl = value
        }
        if let value = dict["deduplicationId"] as? String {
            self.deduplicationId = value
        }
        if let value = dict["excludeGenerateOptions"] as? [String] {
            self.excludeGenerateOptions = value
        }
        if let value = dict["faceIdentitySimilarityMinScore"] as? Double {
            self.faceIdentitySimilarityMinScore = value
        }
        if let value = dict["frameSampleMethod"] as? [String: Any?] {
            var model = SubmitVideoAnalysisTaskRequest.FrameSampleMethod()
            model.fromMap(value)
            self.frameSampleMethod = model
        }
        if let value = dict["generateOptions"] as? [String] {
            self.generateOptions = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["modelCustomPromptTemplate"] as? String {
            self.modelCustomPromptTemplate = value
        }
        if let value = dict["modelCustomPromptTemplateId"] as? String {
            self.modelCustomPromptTemplateId = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["snapshotInterval"] as? Double {
            self.snapshotInterval = value
        }
        if let value = dict["splitInterval"] as? Int32 {
            self.splitInterval = value
        }
        if let value = dict["splitType"] as? String {
            self.splitType = value
        }
        if let value = dict["textProcessTasks"] as? [Any?] {
            var tmp : [SubmitVideoAnalysisTaskRequest.TextProcessTasks] = []
            for v in value {
                if v != nil {
                    var model = SubmitVideoAnalysisTaskRequest.TextProcessTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.textProcessTasks = tmp
        }
        if let value = dict["videoCaptionInfo"] as? [String: Any?] {
            var model = SubmitVideoAnalysisTaskRequest.VideoCaptionInfo()
            model.fromMap(value)
            self.videoCaptionInfo = model
        }
        if let value = dict["videoExtraInfo"] as? String {
            self.videoExtraInfo = value
        }
        if let value = dict["videoModelCustomPromptTemplate"] as? String {
            self.videoModelCustomPromptTemplate = value
        }
        if let value = dict["videoModelId"] as? String {
            self.videoModelId = value
        }
        if let value = dict["videoRoles"] as? [Any?] {
            var tmp : [SubmitVideoAnalysisTaskRequest.VideoRoles] = []
            for v in value {
                if v != nil {
                    var model = SubmitVideoAnalysisTaskRequest.VideoRoles()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.videoRoles = tmp
        }
        if let value = dict["videoShotFaceIdentityCount"] as? Int32 {
            self.videoShotFaceIdentityCount = value
        }
        if let value = dict["videoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class SubmitVideoAnalysisTaskShrinkRequest : Tea.TeaModel {
    public var addDocumentParamShrink: String?

    public var autoRoleRecognitionVideoUrl: String?

    public var deduplicationId: String?

    public var excludeGenerateOptionsShrink: String?

    public var faceIdentitySimilarityMinScore: Double?

    public var frameSampleMethodShrink: String?

    public var generateOptionsShrink: String?

    public var language: String?

    public var modelCustomPromptTemplate: String?

    public var modelCustomPromptTemplateId: String?

    public var modelId: String?

    public var snapshotInterval: Double?

    public var splitInterval: Int32?

    public var splitType: String?

    public var textProcessTasksShrink: String?

    public var videoCaptionInfoShrink: String?

    public var videoExtraInfo: String?

    public var videoModelCustomPromptTemplate: String?

    public var videoModelId: String?

    public var videoRolesShrink: String?

    public var videoShotFaceIdentityCount: Int32?

    public var videoUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addDocumentParamShrink != nil {
            map["addDocumentParam"] = self.addDocumentParamShrink!
        }
        if self.autoRoleRecognitionVideoUrl != nil {
            map["autoRoleRecognitionVideoUrl"] = self.autoRoleRecognitionVideoUrl!
        }
        if self.deduplicationId != nil {
            map["deduplicationId"] = self.deduplicationId!
        }
        if self.excludeGenerateOptionsShrink != nil {
            map["excludeGenerateOptions"] = self.excludeGenerateOptionsShrink!
        }
        if self.faceIdentitySimilarityMinScore != nil {
            map["faceIdentitySimilarityMinScore"] = self.faceIdentitySimilarityMinScore!
        }
        if self.frameSampleMethodShrink != nil {
            map["frameSampleMethod"] = self.frameSampleMethodShrink!
        }
        if self.generateOptionsShrink != nil {
            map["generateOptions"] = self.generateOptionsShrink!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.modelCustomPromptTemplate != nil {
            map["modelCustomPromptTemplate"] = self.modelCustomPromptTemplate!
        }
        if self.modelCustomPromptTemplateId != nil {
            map["modelCustomPromptTemplateId"] = self.modelCustomPromptTemplateId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.snapshotInterval != nil {
            map["snapshotInterval"] = self.snapshotInterval!
        }
        if self.splitInterval != nil {
            map["splitInterval"] = self.splitInterval!
        }
        if self.splitType != nil {
            map["splitType"] = self.splitType!
        }
        if self.textProcessTasksShrink != nil {
            map["textProcessTasks"] = self.textProcessTasksShrink!
        }
        if self.videoCaptionInfoShrink != nil {
            map["videoCaptionInfo"] = self.videoCaptionInfoShrink!
        }
        if self.videoExtraInfo != nil {
            map["videoExtraInfo"] = self.videoExtraInfo!
        }
        if self.videoModelCustomPromptTemplate != nil {
            map["videoModelCustomPromptTemplate"] = self.videoModelCustomPromptTemplate!
        }
        if self.videoModelId != nil {
            map["videoModelId"] = self.videoModelId!
        }
        if self.videoRolesShrink != nil {
            map["videoRoles"] = self.videoRolesShrink!
        }
        if self.videoShotFaceIdentityCount != nil {
            map["videoShotFaceIdentityCount"] = self.videoShotFaceIdentityCount!
        }
        if self.videoUrl != nil {
            map["videoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["addDocumentParam"] as? String {
            self.addDocumentParamShrink = value
        }
        if let value = dict["autoRoleRecognitionVideoUrl"] as? String {
            self.autoRoleRecognitionVideoUrl = value
        }
        if let value = dict["deduplicationId"] as? String {
            self.deduplicationId = value
        }
        if let value = dict["excludeGenerateOptions"] as? String {
            self.excludeGenerateOptionsShrink = value
        }
        if let value = dict["faceIdentitySimilarityMinScore"] as? Double {
            self.faceIdentitySimilarityMinScore = value
        }
        if let value = dict["frameSampleMethod"] as? String {
            self.frameSampleMethodShrink = value
        }
        if let value = dict["generateOptions"] as? String {
            self.generateOptionsShrink = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["modelCustomPromptTemplate"] as? String {
            self.modelCustomPromptTemplate = value
        }
        if let value = dict["modelCustomPromptTemplateId"] as? String {
            self.modelCustomPromptTemplateId = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["snapshotInterval"] as? Double {
            self.snapshotInterval = value
        }
        if let value = dict["splitInterval"] as? Int32 {
            self.splitInterval = value
        }
        if let value = dict["splitType"] as? String {
            self.splitType = value
        }
        if let value = dict["textProcessTasks"] as? String {
            self.textProcessTasksShrink = value
        }
        if let value = dict["videoCaptionInfo"] as? String {
            self.videoCaptionInfoShrink = value
        }
        if let value = dict["videoExtraInfo"] as? String {
            self.videoExtraInfo = value
        }
        if let value = dict["videoModelCustomPromptTemplate"] as? String {
            self.videoModelCustomPromptTemplate = value
        }
        if let value = dict["videoModelId"] as? String {
            self.videoModelId = value
        }
        if let value = dict["videoRoles"] as? String {
            self.videoRolesShrink = value
        }
        if let value = dict["videoShotFaceIdentityCount"] as? Int32 {
            self.videoShotFaceIdentityCount = value
        }
        if let value = dict["videoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class SubmitVideoAnalysisTaskResponseBody : Tea.TeaModel {
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
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: SubmitVideoAnalysisTaskResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitVideoAnalysisTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitVideoAnalysisTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitVideoAnalysisTaskResponseBody?

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
            var model = SubmitVideoAnalysisTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitVideoDetectShotTaskRequest : Tea.TeaModel {
    public var deduplicationId: String?

    public var intelliSimpPrompt: String?

    public var intelliSimpPromptTemplateId: String?

    public var language: String?

    public var modelCustomPromptTemplateId: String?

    public var modelId: String?

    public var modelVlCustomPromptTemplateId: String?

    public var options: [String]?

    public var originalSessionId: String?

    public var preModelId: String?

    public var prompt: String?

    public var recognitionOptions: [String]?

    public var taskId: String?

    public var videoUrl: String?

    public var vlPrompt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deduplicationId != nil {
            map["deduplicationId"] = self.deduplicationId!
        }
        if self.intelliSimpPrompt != nil {
            map["intelliSimpPrompt"] = self.intelliSimpPrompt!
        }
        if self.intelliSimpPromptTemplateId != nil {
            map["intelliSimpPromptTemplateId"] = self.intelliSimpPromptTemplateId!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.modelCustomPromptTemplateId != nil {
            map["modelCustomPromptTemplateId"] = self.modelCustomPromptTemplateId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.modelVlCustomPromptTemplateId != nil {
            map["modelVlCustomPromptTemplateId"] = self.modelVlCustomPromptTemplateId!
        }
        if self.options != nil {
            map["options"] = self.options!
        }
        if self.originalSessionId != nil {
            map["originalSessionId"] = self.originalSessionId!
        }
        if self.preModelId != nil {
            map["preModelId"] = self.preModelId!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.recognitionOptions != nil {
            map["recognitionOptions"] = self.recognitionOptions!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.videoUrl != nil {
            map["videoUrl"] = self.videoUrl!
        }
        if self.vlPrompt != nil {
            map["vlPrompt"] = self.vlPrompt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deduplicationId"] as? String {
            self.deduplicationId = value
        }
        if let value = dict["intelliSimpPrompt"] as? String {
            self.intelliSimpPrompt = value
        }
        if let value = dict["intelliSimpPromptTemplateId"] as? String {
            self.intelliSimpPromptTemplateId = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["modelCustomPromptTemplateId"] as? String {
            self.modelCustomPromptTemplateId = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["modelVlCustomPromptTemplateId"] as? String {
            self.modelVlCustomPromptTemplateId = value
        }
        if let value = dict["options"] as? [String] {
            self.options = value
        }
        if let value = dict["originalSessionId"] as? String {
            self.originalSessionId = value
        }
        if let value = dict["preModelId"] as? String {
            self.preModelId = value
        }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["recognitionOptions"] as? [String] {
            self.recognitionOptions = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["videoUrl"] as? String {
            self.videoUrl = value
        }
        if let value = dict["vlPrompt"] as? String {
            self.vlPrompt = value
        }
    }
}

public class SubmitVideoDetectShotTaskShrinkRequest : Tea.TeaModel {
    public var deduplicationId: String?

    public var intelliSimpPrompt: String?

    public var intelliSimpPromptTemplateId: String?

    public var language: String?

    public var modelCustomPromptTemplateId: String?

    public var modelId: String?

    public var modelVlCustomPromptTemplateId: String?

    public var optionsShrink: String?

    public var originalSessionId: String?

    public var preModelId: String?

    public var prompt: String?

    public var recognitionOptionsShrink: String?

    public var taskId: String?

    public var videoUrl: String?

    public var vlPrompt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deduplicationId != nil {
            map["deduplicationId"] = self.deduplicationId!
        }
        if self.intelliSimpPrompt != nil {
            map["intelliSimpPrompt"] = self.intelliSimpPrompt!
        }
        if self.intelliSimpPromptTemplateId != nil {
            map["intelliSimpPromptTemplateId"] = self.intelliSimpPromptTemplateId!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.modelCustomPromptTemplateId != nil {
            map["modelCustomPromptTemplateId"] = self.modelCustomPromptTemplateId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.modelVlCustomPromptTemplateId != nil {
            map["modelVlCustomPromptTemplateId"] = self.modelVlCustomPromptTemplateId!
        }
        if self.optionsShrink != nil {
            map["options"] = self.optionsShrink!
        }
        if self.originalSessionId != nil {
            map["originalSessionId"] = self.originalSessionId!
        }
        if self.preModelId != nil {
            map["preModelId"] = self.preModelId!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.recognitionOptionsShrink != nil {
            map["recognitionOptions"] = self.recognitionOptionsShrink!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.videoUrl != nil {
            map["videoUrl"] = self.videoUrl!
        }
        if self.vlPrompt != nil {
            map["vlPrompt"] = self.vlPrompt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deduplicationId"] as? String {
            self.deduplicationId = value
        }
        if let value = dict["intelliSimpPrompt"] as? String {
            self.intelliSimpPrompt = value
        }
        if let value = dict["intelliSimpPromptTemplateId"] as? String {
            self.intelliSimpPromptTemplateId = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["modelCustomPromptTemplateId"] as? String {
            self.modelCustomPromptTemplateId = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["modelVlCustomPromptTemplateId"] as? String {
            self.modelVlCustomPromptTemplateId = value
        }
        if let value = dict["options"] as? String {
            self.optionsShrink = value
        }
        if let value = dict["originalSessionId"] as? String {
            self.originalSessionId = value
        }
        if let value = dict["preModelId"] as? String {
            self.preModelId = value
        }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["recognitionOptions"] as? String {
            self.recognitionOptionsShrink = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["videoUrl"] as? String {
            self.videoUrl = value
        }
        if let value = dict["vlPrompt"] as? String {
            self.vlPrompt = value
        }
    }
}

public class SubmitVideoDetectShotTaskResponseBody : Tea.TeaModel {
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
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: SubmitVideoDetectShotTaskResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitVideoDetectShotTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitVideoDetectShotTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitVideoDetectShotTaskResponseBody?

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
            var model = SubmitVideoDetectShotTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVideoAnalysisConfigRequest : Tea.TeaModel {
    public var asyncConcurrency: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asyncConcurrency != nil {
            map["asyncConcurrency"] = self.asyncConcurrency!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["asyncConcurrency"] as? Int32 {
            self.asyncConcurrency = value
        }
    }
}

public class UpdateVideoAnalysisConfigResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateVideoAnalysisConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVideoAnalysisConfigResponseBody?

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
            var model = UpdateVideoAnalysisConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVideoAnalysisTaskRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["taskStatus"] = self.taskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["taskStatus"] as? String {
            self.taskStatus = value
        }
    }
}

public class UpdateVideoAnalysisTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskErrorMessage: String?

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
            if self.taskErrorMessage != nil {
                map["taskErrorMessage"] = self.taskErrorMessage!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["taskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskErrorMessage"] as? String {
                self.taskErrorMessage = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public var code: String?

    public var data: UpdateVideoAnalysisTaskResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateVideoAnalysisTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateVideoAnalysisTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVideoAnalysisTaskResponseBody?

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
            var model = UpdateVideoAnalysisTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVideoAnalysisTasksRequest : Tea.TeaModel {
    public var taskIds: [String]?

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
        if self.taskIds != nil {
            map["taskIds"] = self.taskIds!
        }
        if self.taskStatus != nil {
            map["taskStatus"] = self.taskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskIds"] as? [String] {
            self.taskIds = value
        }
        if let value = dict["taskStatus"] as? String {
            self.taskStatus = value
        }
    }
}

public class UpdateVideoAnalysisTasksShrinkRequest : Tea.TeaModel {
    public var taskIdsShrink: String?

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
        if self.taskIdsShrink != nil {
            map["taskIds"] = self.taskIdsShrink!
        }
        if self.taskStatus != nil {
            map["taskStatus"] = self.taskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskIds"] as? String {
            self.taskIdsShrink = value
        }
        if let value = dict["taskStatus"] as? String {
            self.taskStatus = value
        }
    }
}

public class UpdateVideoAnalysisTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskErrorCode: String?

        public var taskErrorMessage: String?

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
            if self.taskErrorCode != nil {
                map["taskErrorCode"] = self.taskErrorCode!
            }
            if self.taskErrorMessage != nil {
                map["taskErrorMessage"] = self.taskErrorMessage!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["taskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskErrorCode"] as? String {
                self.taskErrorCode = value
            }
            if let value = dict["taskErrorMessage"] as? String {
                self.taskErrorMessage = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public var code: String?

    public var data: [UpdateVideoAnalysisTasksResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [UpdateVideoAnalysisTasksResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = UpdateVideoAnalysisTasksResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateVideoAnalysisTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVideoAnalysisTasksResponseBody?

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
            var model = UpdateVideoAnalysisTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVideoDetectShotConfigRequest : Tea.TeaModel {
    public var asyncConcurrency: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asyncConcurrency != nil {
            map["asyncConcurrency"] = self.asyncConcurrency!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["asyncConcurrency"] as? Int32 {
            self.asyncConcurrency = value
        }
    }
}

public class UpdateVideoDetectShotConfigResponseBody : Tea.TeaModel {
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
            map["code"] = self.code!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateVideoDetectShotConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVideoDetectShotConfigResponseBody?

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
            var model = UpdateVideoDetectShotConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVideoDetectShotTaskRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["taskStatus"] = self.taskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["taskStatus"] as? String {
            self.taskStatus = value
        }
    }
}

public class UpdateVideoDetectShotTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskErrorMessage: String?

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
            if self.taskErrorMessage != nil {
                map["taskErrorMessage"] = self.taskErrorMessage!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["taskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskErrorMessage"] as? String {
                self.taskErrorMessage = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public var code: String?

    public var data: UpdateVideoDetectShotTaskResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateVideoDetectShotTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateVideoDetectShotTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVideoDetectShotTaskResponseBody?

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
            var model = UpdateVideoDetectShotTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
