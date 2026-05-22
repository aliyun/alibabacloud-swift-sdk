import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class EngineSearchRequest : Tea.TeaModel {
    public class Query : Tea.TeaModel {
        public var excludeIds: [String]?

        public var imageUrls: [String]?

        public var pageNo: Int32?

        public var pageSize: Int32?

        public var texts: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.excludeIds != nil {
                map["excludeIds"] = self.excludeIds!
            }
            if self.imageUrls != nil {
                map["imageUrls"] = self.imageUrls!
            }
            if self.pageNo != nil {
                map["pageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.texts != nil {
                map["texts"] = self.texts!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["excludeIds"] as? [String] {
                self.excludeIds = value
            }
            if let value = dict["imageUrls"] as? [String] {
                self.imageUrls = value
            }
            if let value = dict["pageNo"] as? Int32 {
                self.pageNo = value
            }
            if let value = dict["pageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["texts"] as? [String] {
                self.texts = value
            }
        }
    }
    public class Recall : Tea.TeaModel {
        public var closeRecallAsr: Bool?

        public var needMergeSegments: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.closeRecallAsr != nil {
                map["closeRecallAsr"] = self.closeRecallAsr!
            }
            if self.needMergeSegments != nil {
                map["needMergeSegments"] = self.needMergeSegments!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["closeRecallAsr"] as? Bool {
                self.closeRecallAsr = value
            }
            if let value = dict["needMergeSegments"] as? Bool {
                self.needMergeSegments = value
            }
        }
    }
    public class User : Tea.TeaModel {
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
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
        }
    }
    public var appId: String?

    public var grey: Bool?

    public var query: EngineSearchRequest.Query?

    public var recall: EngineSearchRequest.Recall?

    public var sessionId: String?

    public var strategyId: String?

    public var user: EngineSearchRequest.User?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.query?.validate()
        try self.recall?.validate()
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["appId"] = self.appId!
        }
        if self.grey != nil {
            map["grey"] = self.grey!
        }
        if self.query != nil {
            map["query"] = self.query?.toMap()
        }
        if self.recall != nil {
            map["recall"] = self.recall?.toMap()
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.strategyId != nil {
            map["strategyId"] = self.strategyId!
        }
        if self.user != nil {
            map["user"] = self.user?.toMap()
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["grey"] as? Bool {
            self.grey = value
        }
        if let value = dict["query"] as? [String: Any?] {
            var model = EngineSearchRequest.Query()
            model.fromMap(value)
            self.query = model
        }
        if let value = dict["recall"] as? [String: Any?] {
            var model = EngineSearchRequest.Recall()
            model.fromMap(value)
            self.recall = model
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["strategyId"] as? String {
            self.strategyId = value
        }
        if let value = dict["user"] as? [String: Any?] {
            var model = EngineSearchRequest.User()
            model.fromMap(value)
            self.user = model
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class EngineSearchResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var algorithm: [String: Any]?

            public var content: [String: Any]?

            public var id: String?

            public var score: Double?

            public var traceInfo: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.algorithm != nil {
                    map["algorithm"] = self.algorithm!
                }
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.score != nil {
                    map["score"] = self.score!
                }
                if self.traceInfo != nil {
                    map["traceInfo"] = self.traceInfo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["algorithm"] as? [String: Any] {
                    self.algorithm = value
                }
                if let value = dict["content"] as? [String: Any] {
                    self.content = value
                }
                if let value = dict["id"] as? String {
                    self.id = value
                }
                if let value = dict["score"] as? Double {
                    self.score = value
                }
                if let value = dict["traceInfo"] as? [String: Any] {
                    self.traceInfo = value
                }
            }
        }
        public var errorMessage: String?

        public var extra: [String: Any]?

        public var items: [EngineSearchResponseBody.Data.Items]?

        public var page: Int32?

        public var requestId: String?

        public var size: Int32?

        public var status: String?

        public var total: Int32?

        public var traceInfo: [String: Any]?

        public override init() {
            super.init()
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
            if self.extra != nil {
                map["extra"] = self.extra!
            }
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.page != nil {
                map["page"] = self.page!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            if self.traceInfo != nil {
                map["traceInfo"] = self.traceInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["extra"] as? [String: Any] {
                self.extra = value
            }
            if let value = dict["items"] as? [Any?] {
                var tmp : [EngineSearchResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = EngineSearchResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["page"] as? Int32 {
                self.page = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["size"] as? Int32 {
                self.size = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["total"] as? Int32 {
                self.total = value
            }
            if let value = dict["traceInfo"] as? [String: Any] {
                self.traceInfo = value
            }
        }
    }
    public var code: Int32?

    public var data: EngineSearchResponseBody.Data?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? Int32 {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = EngineSearchResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
    }
}

public class EngineSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EngineSearchResponseBody?

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
            var model = EngineSearchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QaChatRequest : Tea.TeaModel {
    public class Message : Tea.TeaModel {
        public class Parts : Tea.TeaModel {
            public var data: Any?

            public var mediaType: String?

            public var text: String?

            public var type: String?

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
                if self.data != nil {
                    map["data"] = self.data!
                }
                if self.mediaType != nil {
                    map["mediaType"] = self.mediaType!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["data"] as? Any {
                    self.data = value
                }
                if let value = dict["mediaType"] as? String {
                    self.mediaType = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public var parts: [QaChatRequest.Message.Parts]?

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
            if self.parts != nil {
                var tmp : [Any] = []
                for k in self.parts! {
                    tmp.append(k.toMap())
                }
                map["parts"] = tmp
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["parts"] as? [Any?] {
                var tmp : [QaChatRequest.Message.Parts] = []
                for v in value {
                    if v != nil {
                        var model = QaChatRequest.Message.Parts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.parts = tmp
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public var appId: String?

    public var message: QaChatRequest.Message?

    public var options: [String: Any]?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.message?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["appId"] = self.appId!
        }
        if self.message != nil {
            map["message"] = self.message?.toMap()
        }
        if self.options != nil {
            map["options"] = self.options!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["message"] as? [String: Any?] {
            var model = QaChatRequest.Message()
            model.fromMap(value)
            self.message = model
        }
        if let value = dict["options"] as? [String: Any] {
            self.options = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class QaChatResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var data: String?

        public var delta: String?

        public var errorCode: String?

        public var errorText: String?

        public var finishReason: String?

        public var id: String?

        public var requestId: String?

        public var retryable: Bool?

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
            if self.data != nil {
                map["data"] = self.data!
            }
            if self.delta != nil {
                map["delta"] = self.delta!
            }
            if self.errorCode != nil {
                map["errorCode"] = self.errorCode!
            }
            if self.errorText != nil {
                map["errorText"] = self.errorText!
            }
            if self.finishReason != nil {
                map["finishReason"] = self.finishReason!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.retryable != nil {
                map["retryable"] = self.retryable!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["data"] as? String {
                self.data = value
            }
            if let value = dict["delta"] as? String {
                self.delta = value
            }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorText"] as? String {
                self.errorText = value
            }
            if let value = dict["finishReason"] as? String {
                self.finishReason = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["retryable"] as? Bool {
                self.retryable = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var data: QaChatResponseBody.Data?

    public var event: String?

    public var id: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.event != nil {
            map["event"] = self.event!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = QaChatResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["event"] as? String {
            self.event = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
    }
}

public class QaChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QaChatResponseBody?

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
            var model = QaChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
