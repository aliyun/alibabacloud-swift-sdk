import Foundation
import Tea
import TeaUtils
import AlibabaCloudOssSdk
import AlibabacloudOpenPlatform20191219
import AlibabaCloudOSSUtil
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateTextFileRequest : Tea.TeaModel {
    public var clientToken: String?

    public var createTime: String?

    public var textFileName: String?

    public var textFileUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.textFileName != nil {
            map["TextFileName"] = self.textFileName!
        }
        if self.textFileUrl != nil {
            map["TextFileUrl"] = self.textFileUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("TextFileName") {
            self.textFileName = dict["TextFileName"] as! String
        }
        if dict.keys.contains("TextFileUrl") {
            self.textFileUrl = dict["TextFileUrl"] as! String
        }
    }
}

public class CreateTextFileAdvanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var createTime: String?

    public var textFileName: String?

    public var textFileUrlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.textFileName != nil {
            map["TextFileName"] = self.textFileName!
        }
        if self.textFileUrlObject != nil {
            map["TextFileUrl"] = self.textFileUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("TextFileName") {
            self.textFileName = dict["TextFileName"] as! String
        }
        if dict.keys.contains("TextFileUrl") {
            self.textFileUrlObject = dict["TextFileUrl"] as! InputStream
        }
    }
}

public class CreateTextFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var textFileId: String?

        public var textFileName: String?

        public var textFileUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.textFileId != nil {
                map["TextFileId"] = self.textFileId!
            }
            if self.textFileName != nil {
                map["TextFileName"] = self.textFileName!
            }
            if self.textFileUrl != nil {
                map["TextFileUrl"] = self.textFileUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TextFileId") {
                self.textFileId = dict["TextFileId"] as! String
            }
            if dict.keys.contains("TextFileName") {
                self.textFileName = dict["TextFileName"] as! String
            }
            if dict.keys.contains("TextFileUrl") {
                self.textFileUrl = dict["TextFileUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateTextFileResponseBody.Data?

    public var httpStatusCode: Int64?

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
            var model = CreateTextFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int64
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

public class CreateTextFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTextFileResponseBody?

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
            var model = CreateTextFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunLegalAdviceConsultationRequest : Tea.TeaModel {
    public class Assistant : Tea.TeaModel {
        public var id: String?

        public var metaData: [String: String]?

        public var type: String?

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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.metaData != nil {
                map["metaData"] = self.metaData!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("metaData") {
                self.metaData = dict["metaData"] as! [String: String]
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("version") {
                self.version = dict["version"] as! String
            }
        }
    }
    public class Thread : Tea.TeaModel {
        public class Messages : Tea.TeaModel {
            public var content: String?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
                }
            }
        }
        public var messages: [RunLegalAdviceConsultationRequest.Thread.Messages]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("messages") {
                var tmp : [RunLegalAdviceConsultationRequest.Thread.Messages] = []
                for v in dict["messages"] as! [Any] {
                    var model = RunLegalAdviceConsultationRequest.Thread.Messages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.messages = tmp
            }
        }
    }
    public var appId: String?

    public var assistant: RunLegalAdviceConsultationRequest.Assistant?

    public var stream: Bool?

    public var thread: RunLegalAdviceConsultationRequest.Thread?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.assistant?.validate()
        try self.thread?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["appId"] = self.appId!
        }
        if self.assistant != nil {
            map["assistant"] = self.assistant?.toMap()
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.thread != nil {
            map["thread"] = self.thread?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appId") {
            self.appId = dict["appId"] as! String
        }
        if dict.keys.contains("assistant") {
            var model = RunLegalAdviceConsultationRequest.Assistant()
            model.fromMap(dict["assistant"] as! [String: Any])
            self.assistant = model
        }
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
        }
        if dict.keys.contains("thread") {
            var model = RunLegalAdviceConsultationRequest.Thread()
            model.fromMap(dict["thread"] as! [String: Any])
            self.thread = model
        }
    }
}

public class RunLegalAdviceConsultationShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var assistantShrink: String?

    public var stream: Bool?

    public var threadShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["appId"] = self.appId!
        }
        if self.assistantShrink != nil {
            map["assistant"] = self.assistantShrink!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.threadShrink != nil {
            map["thread"] = self.threadShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appId") {
            self.appId = dict["appId"] as! String
        }
        if dict.keys.contains("assistant") {
            self.assistantShrink = dict["assistant"] as! String
        }
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
        }
        if dict.keys.contains("thread") {
            self.threadShrink = dict["thread"] as! String
        }
    }
}

public class RunLegalAdviceConsultationResponseBody : Tea.TeaModel {
    public class Usage : Tea.TeaModel {
        public var inputTokens: Int32?

        public var outputTokens: Int32?

        public var totalTokens: Int32?

        public override init() {
            super.init()
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
                self.inputTokens = dict["InputTokens"] as! Int32
            }
            if dict.keys.contains("OutputTokens") {
                self.outputTokens = dict["OutputTokens"] as! Int32
            }
            if dict.keys.contains("TotalTokens") {
                self.totalTokens = dict["TotalTokens"] as! Int32
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var responseMarkdown: String?

    public var round: Int32?

    public var status: String?

    public var success: Bool?

    public var usage: RunLegalAdviceConsultationResponseBody.Usage?

    public var httpStatusCode: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.responseMarkdown != nil {
            map["ResponseMarkdown"] = self.responseMarkdown!
        }
        if self.round != nil {
            map["Round"] = self.round!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.usage != nil {
            map["Usage"] = self.usage?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseMarkdown") {
            self.responseMarkdown = dict["ResponseMarkdown"] as! String
        }
        if dict.keys.contains("Round") {
            self.round = dict["Round"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Usage") {
            var model = RunLegalAdviceConsultationResponseBody.Usage()
            model.fromMap(dict["Usage"] as! [String: Any])
            self.usage = model
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! String
        }
    }
}

public class RunLegalAdviceConsultationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunLegalAdviceConsultationResponseBody?

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
            var model = RunLegalAdviceConsultationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
