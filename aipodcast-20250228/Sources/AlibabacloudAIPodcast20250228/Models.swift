import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class PodcastTaskResultQueryRequest : Tea.TeaModel {
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
            map["taskId"] = self.taskId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class PodcastTaskResultQueryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var extraResult: Any?

        public var resultUrl: Any?

        public var script: String?

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
            if self.extraResult != nil {
                map["extraResult"] = self.extraResult!
            }
            if self.resultUrl != nil {
                map["resultUrl"] = self.resultUrl!
            }
            if self.script != nil {
                map["script"] = self.script!
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
            if let value = dict["extraResult"] as? Any {
                self.extraResult = value
            }
            if let value = dict["resultUrl"] as? Any {
                self.resultUrl = value
            }
            if let value = dict["script"] as? String {
                self.script = value
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

    public var data: PodcastTaskResultQueryResponseBody.Data?

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
            var model = PodcastTaskResultQueryResponseBody.Data()
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

public class PodcastTaskResultQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PodcastTaskResultQueryResponseBody?

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
            var model = PodcastTaskResultQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PodcastTaskSubmitRequest : Tea.TeaModel {
    public var counts: Int32?

    public var fileUrls: [String]?

    public var sourceLang: String?

    public var text: String?

    public var topic: String?

    public var voices: [String]?

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
        if self.counts != nil {
            map["counts"] = self.counts!
        }
        if self.fileUrls != nil {
            map["fileUrls"] = self.fileUrls!
        }
        if self.sourceLang != nil {
            map["sourceLang"] = self.sourceLang!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        if self.voices != nil {
            map["voices"] = self.voices!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["counts"] as? Int32 {
            self.counts = value
        }
        if let value = dict["fileUrls"] as? [String] {
            self.fileUrls = value
        }
        if let value = dict["sourceLang"] as? String {
            self.sourceLang = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["topic"] as? String {
            self.topic = value
        }
        if let value = dict["voices"] as? [String] {
            self.voices = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class PodcastTaskSubmitShrinkRequest : Tea.TeaModel {
    public var counts: Int32?

    public var fileUrlsShrink: String?

    public var sourceLang: String?

    public var text: String?

    public var topic: String?

    public var voicesShrink: String?

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
        if self.counts != nil {
            map["counts"] = self.counts!
        }
        if self.fileUrlsShrink != nil {
            map["fileUrls"] = self.fileUrlsShrink!
        }
        if self.sourceLang != nil {
            map["sourceLang"] = self.sourceLang!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.topic != nil {
            map["topic"] = self.topic!
        }
        if self.voicesShrink != nil {
            map["voices"] = self.voicesShrink!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["counts"] as? Int32 {
            self.counts = value
        }
        if let value = dict["fileUrls"] as? String {
            self.fileUrlsShrink = value
        }
        if let value = dict["sourceLang"] as? String {
            self.sourceLang = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["topic"] as? String {
            self.topic = value
        }
        if let value = dict["voices"] as? String {
            self.voicesShrink = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class PodcastTaskSubmitResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var code: String?

    public var data: PodcastTaskSubmitResponseBody.Data?

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
            var model = PodcastTaskSubmitResponseBody.Data()
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

public class PodcastTaskSubmitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PodcastTaskSubmitResponseBody?

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
            var model = PodcastTaskSubmitResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
