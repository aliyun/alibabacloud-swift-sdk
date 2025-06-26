import Foundation
import Tea
import TeaUtils
import AlibabacloudGatewayPOP
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil

public class CreateAudioAsrTaskRequest : Tea.TeaModel {
    public class Input : Tea.TeaModel {
        public var content: String?

        public var fileName: String?

        public var oss: String?

        public override init() {
            super.init()
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
            if self.fileName != nil {
                map["file_name"] = self.fileName!
            }
            if self.oss != nil {
                map["oss"] = self.oss!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["file_name"] as? String {
                self.fileName = value
            }
            if let value = dict["oss"] as? String {
                self.oss = value
            }
        }
    }
    public class Output : Tea.TeaModel {
        public var oss: String?

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
            if self.oss != nil {
                map["oss"] = self.oss!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["oss"] as? String {
                self.oss = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var input: CreateAudioAsrTaskRequest.Input?

    public var output: CreateAudioAsrTaskRequest.Output?

    public var parameters: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.input?.validate()
        try self.output?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.input != nil {
            map["input"] = self.input?.toMap()
        }
        if self.output != nil {
            map["output"] = self.output?.toMap()
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["input"] as? [String: Any?] {
            var model = CreateAudioAsrTaskRequest.Input()
            model.fromMap(value)
            self.input = model
        }
        if let value = dict["output"] as? [String: Any?] {
            var model = CreateAudioAsrTaskRequest.Output()
            model.fromMap(value)
            self.output = model
        }
        if let value = dict["parameters"] as? [String: Any] {
            self.parameters = value
        }
    }
}

public class CreateAudioAsrTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: CreateAudioAsrTaskResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateAudioAsrTaskResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateAudioAsrTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAudioAsrTaskResponseBody?

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
            var model = CreateAudioAsrTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDocumentAnalyzeTaskRequest : Tea.TeaModel {
    public class Document : Tea.TeaModel {
        public var content: String?

        public var fileName: String?

        public var fileType: String?

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
            if self.fileName != nil {
                map["file_name"] = self.fileName!
            }
            if self.fileType != nil {
                map["file_type"] = self.fileType!
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
            if let value = dict["file_name"] as? String {
                self.fileName = value
            }
            if let value = dict["file_type"] as? String {
                self.fileType = value
            }
            if let value = dict["url"] as? String {
                self.url = value
            }
        }
    }
    public class Output : Tea.TeaModel {
        public var imageStorage: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageStorage != nil {
                map["image_storage"] = self.imageStorage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["image_storage"] as? String {
                self.imageStorage = value
            }
        }
    }
    public class Strategy : Tea.TeaModel {
        public var enableSemantic: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableSemantic != nil {
                map["enable_semantic"] = self.enableSemantic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enable_semantic"] as? Bool {
                self.enableSemantic = value
            }
        }
    }
    public var document: CreateDocumentAnalyzeTaskRequest.Document?

    public var output: CreateDocumentAnalyzeTaskRequest.Output?

    public var strategy: CreateDocumentAnalyzeTaskRequest.Strategy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.document?.validate()
        try self.output?.validate()
        try self.strategy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.document != nil {
            map["document"] = self.document?.toMap()
        }
        if self.output != nil {
            map["output"] = self.output?.toMap()
        }
        if self.strategy != nil {
            map["strategy"] = self.strategy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["document"] as? [String: Any?] {
            var model = CreateDocumentAnalyzeTaskRequest.Document()
            model.fromMap(value)
            self.document = model
        }
        if let value = dict["output"] as? [String: Any?] {
            var model = CreateDocumentAnalyzeTaskRequest.Output()
            model.fromMap(value)
            self.output = model
        }
        if let value = dict["strategy"] as? [String: Any?] {
            var model = CreateDocumentAnalyzeTaskRequest.Strategy()
            model.fromMap(value)
            self.strategy = model
        }
    }
}

public class CreateDocumentAnalyzeTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: CreateDocumentAnalyzeTaskResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateDocumentAnalyzeTaskResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateDocumentAnalyzeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDocumentAnalyzeTaskResponseBody?

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
            var model = CreateDocumentAnalyzeTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateImageAnalyzeTaskRequest : Tea.TeaModel {
    public class Document : Tea.TeaModel {
        public var content: String?

        public var fileName: String?

        public var fileType: String?

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
            if self.fileName != nil {
                map["file_name"] = self.fileName!
            }
            if self.fileType != nil {
                map["file_type"] = self.fileType!
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
            if let value = dict["file_name"] as? String {
                self.fileName = value
            }
            if let value = dict["file_type"] as? String {
                self.fileType = value
            }
            if let value = dict["url"] as? String {
                self.url = value
            }
        }
    }
    public var document: CreateImageAnalyzeTaskRequest.Document?

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
        if self.document != nil {
            map["document"] = self.document?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["document"] as? [String: Any?] {
            var model = CreateImageAnalyzeTaskRequest.Document()
            model.fromMap(value)
            self.document = model
        }
    }
}

public class CreateImageAnalyzeTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: CreateImageAnalyzeTaskResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateImageAnalyzeTaskResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateImageAnalyzeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageAnalyzeTaskResponseBody?

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
            var model = CreateImageAnalyzeTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVideoSnapshotTaskRequest : Tea.TeaModel {
    public class Input : Tea.TeaModel {
        public var content: String?

        public var fileName: String?

        public var oss: String?

        public override init() {
            super.init()
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
            if self.fileName != nil {
                map["file_name"] = self.fileName!
            }
            if self.oss != nil {
                map["oss"] = self.oss!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["file_name"] as? String {
                self.fileName = value
            }
            if let value = dict["oss"] as? String {
                self.oss = value
            }
        }
    }
    public class Output : Tea.TeaModel {
        public var oss: String?

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
            if self.oss != nil {
                map["oss"] = self.oss!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["oss"] as? String {
                self.oss = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var input: CreateVideoSnapshotTaskRequest.Input?

    public var output: CreateVideoSnapshotTaskRequest.Output?

    public var parameters: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.input?.validate()
        try self.output?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.input != nil {
            map["input"] = self.input?.toMap()
        }
        if self.output != nil {
            map["output"] = self.output?.toMap()
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["input"] as? [String: Any?] {
            var model = CreateVideoSnapshotTaskRequest.Input()
            model.fromMap(value)
            self.input = model
        }
        if let value = dict["output"] as? [String: Any?] {
            var model = CreateVideoSnapshotTaskRequest.Output()
            model.fromMap(value)
            self.output = model
        }
        if let value = dict["parameters"] as? [String: Any] {
            self.parameters = value
        }
    }
}

public class CreateVideoSnapshotTaskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: CreateVideoSnapshotTaskResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = CreateVideoSnapshotTaskResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CreateVideoSnapshotTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVideoSnapshotTaskResponseBody?

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
            var model = CreateVideoSnapshotTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAudioAsrTaskStatusRequest : Tea.TeaModel {
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
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["task_id"] as? String {
            self.taskId = value
        }
    }
}

public class GetAudioAsrTaskStatusResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var end: Double?

            public var start: Double?

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
                if self.end != nil {
                    map["end"] = self.end!
                }
                if self.start != nil {
                    map["start"] = self.start!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["end"] as? Double {
                    self.end = value
                }
                if let value = dict["start"] as? Double {
                    self.start = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
                }
            }
        }
        public var data: [GetAudioAsrTaskStatusResponseBody.Result.Data]?

        public var error: String?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["data"] = tmp
            }
            if self.error != nil {
                map["error"] = self.error!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["data"] as? [Any?] {
                var tmp : [GetAudioAsrTaskStatusResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = GetAudioAsrTaskStatusResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["error"] as? String {
                self.error = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var duration: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.duration != nil {
                map["duration"] = self.duration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["duration"] as? Double {
                self.duration = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: GetAudioAsrTaskStatusResponseBody.Result?

    public var usage: GetAudioAsrTaskStatusResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetAudioAsrTaskStatusResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = GetAudioAsrTaskStatusResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class GetAudioAsrTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAudioAsrTaskStatusResponseBody?

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
            var model = GetAudioAsrTaskStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDocumentAnalyzeTaskStatusRequest : Tea.TeaModel {
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
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["task_id"] as? String {
            self.taskId = value
        }
    }
}

public class GetDocumentAnalyzeTaskStatusResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var content: String?

            public var contentType: String?

            public var pageNum: Int32?

            public override init() {
                super.init()
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
                if self.contentType != nil {
                    map["content_type"] = self.contentType!
                }
                if self.pageNum != nil {
                    map["page_num"] = self.pageNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["content_type"] as? String {
                    self.contentType = value
                }
                if let value = dict["page_num"] as? Int32 {
                    self.pageNum = value
                }
            }
        }
        public var data: GetDocumentAnalyzeTaskStatusResponseBody.Result.Data?

        public var error: String?

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
            try self.data?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                map["data"] = self.data?.toMap()
            }
            if self.error != nil {
                map["error"] = self.error!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["data"] as? [String: Any?] {
                var model = GetDocumentAnalyzeTaskStatusResponseBody.Result.Data()
                model.fromMap(value)
                self.data = model
            }
            if let value = dict["error"] as? String {
                self.error = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var imageCount: Int64?

        public var tableCount: Int64?

        public var tokenCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageCount != nil {
                map["image_count"] = self.imageCount!
            }
            if self.tableCount != nil {
                map["table_count"] = self.tableCount!
            }
            if self.tokenCount != nil {
                map["token_count"] = self.tokenCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["image_count"] as? Int64 {
                self.imageCount = value
            }
            if let value = dict["table_count"] as? Int64 {
                self.tableCount = value
            }
            if let value = dict["token_count"] as? Int64 {
                self.tokenCount = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: GetDocumentAnalyzeTaskStatusResponseBody.Result?

    public var usage: GetDocumentAnalyzeTaskStatusResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetDocumentAnalyzeTaskStatusResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = GetDocumentAnalyzeTaskStatusResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class GetDocumentAnalyzeTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocumentAnalyzeTaskStatusResponseBody?

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
            var model = GetDocumentAnalyzeTaskStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDocumentRankRequest : Tea.TeaModel {
    public var docs: [String]?

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
        if self.docs != nil {
            map["docs"] = self.docs!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["docs"] as? [String] {
            self.docs = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
    }
}

public class GetDocumentRankResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Scores : Tea.TeaModel {
            public var index: Int32?

            public var score: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.score != nil {
                    map["score"] = self.score!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["index"] as? Int32 {
                    self.index = value
                }
                if let value = dict["score"] as? Double {
                    self.score = value
                }
            }
        }
        public var scores: [GetDocumentRankResponseBody.Result.Scores]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scores != nil {
                var tmp : [Any] = []
                for k in self.scores! {
                    tmp.append(k.toMap())
                }
                map["scores"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["scores"] as? [Any?] {
                var tmp : [GetDocumentRankResponseBody.Result.Scores] = []
                for v in value {
                    if v != nil {
                        var model = GetDocumentRankResponseBody.Result.Scores()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scores = tmp
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var docCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.docCount != nil {
                map["doc_count"] = self.docCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["doc_count"] as? Int64 {
                self.docCount = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: GetDocumentRankResponseBody.Result?

    public var usage: GetDocumentRankResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetDocumentRankResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = GetDocumentRankResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class GetDocumentRankResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocumentRankResponseBody?

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
            var model = GetDocumentRankResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDocumentSplitRequest : Tea.TeaModel {
    public class Document : Tea.TeaModel {
        public var content: String?

        public var contentEncoding: String?

        public var contentType: String?

        public override init() {
            super.init()
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
            if self.contentEncoding != nil {
                map["content_encoding"] = self.contentEncoding!
            }
            if self.contentType != nil {
                map["content_type"] = self.contentType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["content_encoding"] as? String {
                self.contentEncoding = value
            }
            if let value = dict["content_type"] as? String {
                self.contentType = value
            }
        }
    }
    public class Strategy : Tea.TeaModel {
        public var computeType: String?

        public var maxChunkSize: Int64?

        public var needSentence: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.computeType != nil {
                map["compute_type"] = self.computeType!
            }
            if self.maxChunkSize != nil {
                map["max_chunk_size"] = self.maxChunkSize!
            }
            if self.needSentence != nil {
                map["need_sentence"] = self.needSentence!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["compute_type"] as? String {
                self.computeType = value
            }
            if let value = dict["max_chunk_size"] as? Int64 {
                self.maxChunkSize = value
            }
            if let value = dict["need_sentence"] as? Bool {
                self.needSentence = value
            }
        }
    }
    public var document: GetDocumentSplitRequest.Document?

    public var strategy: GetDocumentSplitRequest.Strategy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.document?.validate()
        try self.strategy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.document != nil {
            map["document"] = self.document?.toMap()
        }
        if self.strategy != nil {
            map["strategy"] = self.strategy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["document"] as? [String: Any?] {
            var model = GetDocumentSplitRequest.Document()
            model.fromMap(value)
            self.document = model
        }
        if let value = dict["strategy"] as? [String: Any?] {
            var model = GetDocumentSplitRequest.Strategy()
            model.fromMap(value)
            self.strategy = model
        }
    }
}

public class GetDocumentSplitResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Chunks : Tea.TeaModel {
            public var content: String?

            public var meta: [String: String]?

            public override init() {
                super.init()
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
                if self.meta != nil {
                    map["meta"] = self.meta!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["meta"] as? [String: String] {
                    self.meta = value
                }
            }
        }
        public class RichTexts : Tea.TeaModel {
            public var content: String?

            public var meta: [String: String]?

            public override init() {
                super.init()
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
                if self.meta != nil {
                    map["meta"] = self.meta!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["meta"] as? [String: String] {
                    self.meta = value
                }
            }
        }
        public class Sentences : Tea.TeaModel {
            public var content: String?

            public var meta: [String: String]?

            public override init() {
                super.init()
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
                if self.meta != nil {
                    map["meta"] = self.meta!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["meta"] as? [String: String] {
                    self.meta = value
                }
            }
        }
        public var chunks: [GetDocumentSplitResponseBody.Result.Chunks]?

        public var nodes: [[String: String]]?

        public var richTexts: [GetDocumentSplitResponseBody.Result.RichTexts]?

        public var sentences: [GetDocumentSplitResponseBody.Result.Sentences]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chunks != nil {
                var tmp : [Any] = []
                for k in self.chunks! {
                    tmp.append(k.toMap())
                }
                map["chunks"] = tmp
            }
            if self.nodes != nil {
                map["nodes"] = self.nodes!
            }
            if self.richTexts != nil {
                var tmp : [Any] = []
                for k in self.richTexts! {
                    tmp.append(k.toMap())
                }
                map["rich_texts"] = tmp
            }
            if self.sentences != nil {
                var tmp : [Any] = []
                for k in self.sentences! {
                    tmp.append(k.toMap())
                }
                map["sentences"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chunks"] as? [Any?] {
                var tmp : [GetDocumentSplitResponseBody.Result.Chunks] = []
                for v in value {
                    if v != nil {
                        var model = GetDocumentSplitResponseBody.Result.Chunks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.chunks = tmp
            }
            if let value = dict["nodes"] as? [[String: String]] {
                self.nodes = value
            }
            if let value = dict["rich_texts"] as? [Any?] {
                var tmp : [GetDocumentSplitResponseBody.Result.RichTexts] = []
                for v in value {
                    if v != nil {
                        var model = GetDocumentSplitResponseBody.Result.RichTexts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.richTexts = tmp
            }
            if let value = dict["sentences"] as? [Any?] {
                var tmp : [GetDocumentSplitResponseBody.Result.Sentences] = []
                for v in value {
                    if v != nil {
                        var model = GetDocumentSplitResponseBody.Result.Sentences()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sentences = tmp
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var tokenCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tokenCount != nil {
                map["token_count"] = self.tokenCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["token_count"] as? Int64 {
                self.tokenCount = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: GetDocumentSplitResponseBody.Result?

    public var usage: GetDocumentSplitResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetDocumentSplitResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = GetDocumentSplitResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class GetDocumentSplitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocumentSplitResponseBody?

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
            var model = GetDocumentSplitResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEmbeddingTuningRequest : Tea.TeaModel {
    public var input: [[Double]]?

    public var parameters: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.input != nil {
            map["input"] = self.input!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["input"] as? [[Double]] {
            self.input = value
        }
        if let value = dict["parameters"] as? [String: Any] {
            self.parameters = value
        }
    }
}

public class GetEmbeddingTuningResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var output: [[Double]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["output"] = self.output!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["output"] as? [[Double]] {
                self.output = value
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var docCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.docCount != nil {
                map["doc_count"] = self.docCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["doc_count"] as? Int32 {
                self.docCount = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: GetEmbeddingTuningResponseBody.Result?

    public var usage: GetEmbeddingTuningResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetEmbeddingTuningResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = GetEmbeddingTuningResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class GetEmbeddingTuningResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEmbeddingTuningResponseBody?

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
            var model = GetEmbeddingTuningResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetImageAnalyzeTaskStatusRequest : Tea.TeaModel {
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
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["task_id"] as? String {
            self.taskId = value
        }
    }
}

public class GetImageAnalyzeTaskStatusResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var content: String?

            public var contentType: String?

            public var pageNum: Int32?

            public override init() {
                super.init()
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
                if self.contentType != nil {
                    map["content_type"] = self.contentType!
                }
                if self.pageNum != nil {
                    map["page_num"] = self.pageNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["content_type"] as? String {
                    self.contentType = value
                }
                if let value = dict["page_num"] as? Int32 {
                    self.pageNum = value
                }
            }
        }
        public var data: GetImageAnalyzeTaskStatusResponseBody.Result.Data?

        public var error: String?

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
            try self.data?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                map["data"] = self.data?.toMap()
            }
            if self.error != nil {
                map["error"] = self.error!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["data"] as? [String: Any?] {
                var model = GetImageAnalyzeTaskStatusResponseBody.Result.Data()
                model.fromMap(value)
                self.data = model
            }
            if let value = dict["error"] as? String {
                self.error = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var pvCount: Int64?

        public var tokenCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pvCount != nil {
                map["pv_count"] = self.pvCount!
            }
            if self.tokenCount != nil {
                map["token_count"] = self.tokenCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["pv_count"] as? Int64 {
                self.pvCount = value
            }
            if let value = dict["token_count"] as? Int64 {
                self.tokenCount = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: GetImageAnalyzeTaskStatusResponseBody.Result?

    public var usage: GetImageAnalyzeTaskStatusResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetImageAnalyzeTaskStatusResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = GetImageAnalyzeTaskStatusResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class GetImageAnalyzeTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageAnalyzeTaskStatusResponseBody?

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
            var model = GetImageAnalyzeTaskStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMultiModalEmbeddingRequest : Tea.TeaModel {
    public class Input : Tea.TeaModel {
        public var image: String?

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
            if self.image != nil {
                map["image"] = self.image!
            }
            if self.text != nil {
                map["text"] = self.text!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["image"] as? String {
                self.image = value
            }
            if let value = dict["text"] as? String {
                self.text = value
            }
        }
    }
    public var input: [GetMultiModalEmbeddingRequest.Input]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.input != nil {
            var tmp : [Any] = []
            for k in self.input! {
                tmp.append(k.toMap())
            }
            map["input"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["input"] as? [Any?] {
            var tmp : [GetMultiModalEmbeddingRequest.Input] = []
            for v in value {
                if v != nil {
                    var model = GetMultiModalEmbeddingRequest.Input()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.input = tmp
        }
    }
}

public class GetMultiModalEmbeddingResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Embeddings : Tea.TeaModel {
            public var embedding: [Double]?

            public var index: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.embedding != nil {
                    map["embedding"] = self.embedding!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["embedding"] as? [Double] {
                    self.embedding = value
                }
                if let value = dict["index"] as? Int64 {
                    self.index = value
                }
            }
        }
        public var embeddings: [GetMultiModalEmbeddingResponseBody.Result.Embeddings]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.embeddings != nil {
                var tmp : [Any] = []
                for k in self.embeddings! {
                    tmp.append(k.toMap())
                }
                map["embeddings"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["embeddings"] as? [Any?] {
                var tmp : [GetMultiModalEmbeddingResponseBody.Result.Embeddings] = []
                for v in value {
                    if v != nil {
                        var model = GetMultiModalEmbeddingResponseBody.Result.Embeddings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.embeddings = tmp
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var image: Int64?

        public var tokenCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.image != nil {
                map["image"] = self.image!
            }
            if self.tokenCount != nil {
                map["token_count"] = self.tokenCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["image"] as? Int64 {
                self.image = value
            }
            if let value = dict["token_count"] as? Int64 {
                self.tokenCount = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: GetMultiModalEmbeddingResponseBody.Result?

    public var usage: GetMultiModalEmbeddingResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetMultiModalEmbeddingResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = GetMultiModalEmbeddingResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class GetMultiModalEmbeddingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMultiModalEmbeddingResponseBody?

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
            var model = GetMultiModalEmbeddingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPredictionHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

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
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class GetPredictionRequest : Tea.TeaModel {
    public var body: String?

    public override init() {
        super.init()
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
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.body = value
        }
    }
}

public class GetPredictionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
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
            map["body"] = self.body!
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
        if let value = dict["body"] as? String {
            self.body = value
        }
    }
}

public class GetQueryAnalysisRequest : Tea.TeaModel {
    public class Functions : Tea.TeaModel {
        public var name: String?

        public var parameters: [String: Any]?

        public override init() {
            super.init()
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
            if self.parameters != nil {
                map["parameters"] = self.parameters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["parameters"] as? [String: Any] {
                self.parameters = value
            }
        }
    }
    public class History : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public var functions: [GetQueryAnalysisRequest.Functions]?

    public var history: [GetQueryAnalysisRequest.History]?

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
        if self.functions != nil {
            var tmp : [Any] = []
            for k in self.functions! {
                tmp.append(k.toMap())
            }
            map["functions"] = tmp
        }
        if self.history != nil {
            var tmp : [Any] = []
            for k in self.history! {
                tmp.append(k.toMap())
            }
            map["history"] = tmp
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["functions"] as? [Any?] {
            var tmp : [GetQueryAnalysisRequest.Functions] = []
            for v in value {
                if v != nil {
                    var model = GetQueryAnalysisRequest.Functions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.functions = tmp
        }
        if let value = dict["history"] as? [Any?] {
            var tmp : [GetQueryAnalysisRequest.History] = []
            for v in value {
                if v != nil {
                    var model = GetQueryAnalysisRequest.History()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.history = tmp
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
    }
}

public class GetQueryAnalysisResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var intent: String?

        public var queries: [String]?

        public var query: String?

        public var sql: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.intent != nil {
                map["intent"] = self.intent!
            }
            if self.queries != nil {
                map["queries"] = self.queries!
            }
            if self.query != nil {
                map["query"] = self.query!
            }
            if self.sql != nil {
                map["sql"] = self.sql!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["intent"] as? String {
                self.intent = value
            }
            if let value = dict["queries"] as? [String] {
                self.queries = value
            }
            if let value = dict["query"] as? String {
                self.query = value
            }
            if let value = dict["sql"] as? [String: Any] {
                self.sql = value
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
                map["input_tokens"] = self.inputTokens!
            }
            if self.outputTokens != nil {
                map["output_tokens"] = self.outputTokens!
            }
            if self.totalTokens != nil {
                map["total_tokens"] = self.totalTokens!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["input_tokens"] as? Int64 {
                self.inputTokens = value
            }
            if let value = dict["output_tokens"] as? Int64 {
                self.outputTokens = value
            }
            if let value = dict["total_tokens"] as? Int64 {
                self.totalTokens = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: GetQueryAnalysisResponseBody.Result?

    public var usage: GetQueryAnalysisResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetQueryAnalysisResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = GetQueryAnalysisResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class GetQueryAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQueryAnalysisResponseBody?

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
            var model = GetQueryAnalysisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTextEmbeddingRequest : Tea.TeaModel {
    public var input: [String]?

    public var inputType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.input != nil {
            map["input"] = self.input!
        }
        if self.inputType != nil {
            map["input_type"] = self.inputType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["input"] as? [String] {
            self.input = value
        }
        if let value = dict["input_type"] as? String {
            self.inputType = value
        }
    }
}

public class GetTextEmbeddingResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Embeddings : Tea.TeaModel {
            public var embedding: [Double]?

            public var index: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.embedding != nil {
                    map["embedding"] = self.embedding!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["embedding"] as? [Double] {
                    self.embedding = value
                }
                if let value = dict["index"] as? Int32 {
                    self.index = value
                }
            }
        }
        public var embeddings: [GetTextEmbeddingResponseBody.Result.Embeddings]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.embeddings != nil {
                var tmp : [Any] = []
                for k in self.embeddings! {
                    tmp.append(k.toMap())
                }
                map["embeddings"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["embeddings"] as? [Any?] {
                var tmp : [GetTextEmbeddingResponseBody.Result.Embeddings] = []
                for v in value {
                    if v != nil {
                        var model = GetTextEmbeddingResponseBody.Result.Embeddings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.embeddings = tmp
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var tokenCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tokenCount != nil {
                map["token_count"] = self.tokenCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["token_count"] as? Int64 {
                self.tokenCount = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: GetTextEmbeddingResponseBody.Result?

    public var usage: GetTextEmbeddingResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetTextEmbeddingResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = GetTextEmbeddingResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class GetTextEmbeddingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTextEmbeddingResponseBody?

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
            var model = GetTextEmbeddingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTextGenerationRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public var csiLevel: String?

    public var enableSearch: Bool?

    public var messages: [GetTextGenerationRequest.Messages]?

    public var parameters: [String: Any]?

    public var stream: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.csiLevel != nil {
            map["csi_level"] = self.csiLevel!
        }
        if self.enableSearch != nil {
            map["enable_search"] = self.enableSearch!
        }
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["messages"] = tmp
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["csi_level"] as? String {
            self.csiLevel = value
        }
        if let value = dict["enable_search"] as? Bool {
            self.enableSearch = value
        }
        if let value = dict["messages"] as? [Any?] {
            var tmp : [GetTextGenerationRequest.Messages] = []
            for v in value {
                if v != nil {
                    var model = GetTextGenerationRequest.Messages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messages = tmp
        }
        if let value = dict["parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
    }
}

public class GetTextGenerationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class SearchResults : Tea.TeaModel {
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
        public var searchResults: [GetTextGenerationResponseBody.Result.SearchResults]?

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
            if self.searchResults != nil {
                var tmp : [Any] = []
                for k in self.searchResults! {
                    tmp.append(k.toMap())
                }
                map["search_results"] = tmp
            }
            if self.text != nil {
                map["text"] = self.text!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["search_results"] as? [Any?] {
                var tmp : [GetTextGenerationResponseBody.Result.SearchResults] = []
                for v in value {
                    if v != nil {
                        var model = GetTextGenerationResponseBody.Result.SearchResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.searchResults = tmp
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
                map["input_tokens"] = self.inputTokens!
            }
            if self.outputTokens != nil {
                map["output_tokens"] = self.outputTokens!
            }
            if self.totalTokens != nil {
                map["total_tokens"] = self.totalTokens!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["input_tokens"] as? Int64 {
                self.inputTokens = value
            }
            if let value = dict["output_tokens"] as? Int64 {
                self.outputTokens = value
            }
            if let value = dict["total_tokens"] as? Int64 {
                self.totalTokens = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: GetTextGenerationResponseBody.Result?

    public var usage: GetTextGenerationResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetTextGenerationResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = GetTextGenerationResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class GetTextGenerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTextGenerationResponseBody?

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
            var model = GetTextGenerationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTextSparseEmbeddingRequest : Tea.TeaModel {
    public var input: [String]?

    public var inputType: String?

    public var returnToken: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.input != nil {
            map["input"] = self.input!
        }
        if self.inputType != nil {
            map["input_type"] = self.inputType!
        }
        if self.returnToken != nil {
            map["return_token"] = self.returnToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["input"] as? [String] {
            self.input = value
        }
        if let value = dict["input_type"] as? String {
            self.inputType = value
        }
        if let value = dict["return_token"] as? Bool {
            self.returnToken = value
        }
    }
}

public class GetTextSparseEmbeddingResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class SparseEmbeddings : Tea.TeaModel {
            public class Embedding : Tea.TeaModel {
                public var token: String?

                public var tokenId: Int32?

                public var weight: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.token != nil {
                        map["token"] = self.token!
                    }
                    if self.tokenId != nil {
                        map["token_id"] = self.tokenId!
                    }
                    if self.weight != nil {
                        map["weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["token"] as? String {
                        self.token = value
                    }
                    if let value = dict["token_id"] as? Int32 {
                        self.tokenId = value
                    }
                    if let value = dict["weight"] as? Double {
                        self.weight = value
                    }
                }
            }
            public var embedding: [GetTextSparseEmbeddingResponseBody.Result.SparseEmbeddings.Embedding]?

            public var index: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.embedding != nil {
                    var tmp : [Any] = []
                    for k in self.embedding! {
                        tmp.append(k.toMap())
                    }
                    map["embedding"] = tmp
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["embedding"] as? [Any?] {
                    var tmp : [GetTextSparseEmbeddingResponseBody.Result.SparseEmbeddings.Embedding] = []
                    for v in value {
                        if v != nil {
                            var model = GetTextSparseEmbeddingResponseBody.Result.SparseEmbeddings.Embedding()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.embedding = tmp
                }
                if let value = dict["index"] as? Int32 {
                    self.index = value
                }
            }
        }
        public var sparseEmbeddings: [GetTextSparseEmbeddingResponseBody.Result.SparseEmbeddings]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sparseEmbeddings != nil {
                var tmp : [Any] = []
                for k in self.sparseEmbeddings! {
                    tmp.append(k.toMap())
                }
                map["sparse_embeddings"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["sparse_embeddings"] as? [Any?] {
                var tmp : [GetTextSparseEmbeddingResponseBody.Result.SparseEmbeddings] = []
                for v in value {
                    if v != nil {
                        var model = GetTextSparseEmbeddingResponseBody.Result.SparseEmbeddings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sparseEmbeddings = tmp
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var tokenCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tokenCount != nil {
                map["token_count"] = self.tokenCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["token_count"] as? Int64 {
                self.tokenCount = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: GetTextSparseEmbeddingResponseBody.Result?

    public var usage: GetTextSparseEmbeddingResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetTextSparseEmbeddingResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = GetTextSparseEmbeddingResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class GetTextSparseEmbeddingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTextSparseEmbeddingResponseBody?

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
            var model = GetTextSparseEmbeddingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoSnapshotTaskStatusRequest : Tea.TeaModel {
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
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["task_id"] as? String {
            self.taskId = value
        }
    }
}

public class GetVideoSnapshotTaskStatusResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var frameIndex: Int64?

            public var frameTime: Double?

            public var path: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.frameIndex != nil {
                    map["frame_index"] = self.frameIndex!
                }
                if self.frameTime != nil {
                    map["frame_time"] = self.frameTime!
                }
                if self.path != nil {
                    map["path"] = self.path!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["frame_index"] as? Int64 {
                    self.frameIndex = value
                }
                if let value = dict["frame_time"] as? Double {
                    self.frameTime = value
                }
                if let value = dict["path"] as? String {
                    self.path = value
                }
            }
        }
        public var data: [GetVideoSnapshotTaskStatusResponseBody.Result.Data]?

        public var error: String?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["data"] = tmp
            }
            if self.error != nil {
                map["error"] = self.error!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["task_id"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["data"] as? [Any?] {
                var tmp : [GetVideoSnapshotTaskStatusResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = GetVideoSnapshotTaskStatusResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["error"] as? String {
                self.error = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["task_id"] as? String {
                self.taskId = value
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var imageCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageCount != nil {
                map["image_count"] = self.imageCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["image_count"] as? Int64 {
                self.imageCount = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: GetVideoSnapshotTaskStatusResponseBody.Result?

    public var usage: GetVideoSnapshotTaskStatusResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetVideoSnapshotTaskStatusResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = GetVideoSnapshotTaskStatusResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class GetVideoSnapshotTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoSnapshotTaskStatusResponseBody?

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
            var model = GetVideoSnapshotTaskStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWebSearchRequest : Tea.TeaModel {
    public class History : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public var contentType: String?

    public var history: [GetWebSearchRequest.History]?

    public var query: String?

    public var queryRewrite: Bool?

    public var topK: Int64?

    public var way: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentType != nil {
            map["content_type"] = self.contentType!
        }
        if self.history != nil {
            var tmp : [Any] = []
            for k in self.history! {
                tmp.append(k.toMap())
            }
            map["history"] = tmp
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.queryRewrite != nil {
            map["query_rewrite"] = self.queryRewrite!
        }
        if self.topK != nil {
            map["top_k"] = self.topK!
        }
        if self.way != nil {
            map["way"] = self.way!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content_type"] as? String {
            self.contentType = value
        }
        if let value = dict["history"] as? [Any?] {
            var tmp : [GetWebSearchRequest.History] = []
            for v in value {
                if v != nil {
                    var model = GetWebSearchRequest.History()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.history = tmp
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["query_rewrite"] as? Bool {
            self.queryRewrite = value
        }
        if let value = dict["top_k"] as? Int64 {
            self.topK = value
        }
        if let value = dict["way"] as? String {
            self.way = value
        }
    }
}

public class GetWebSearchResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class SearchResult : Tea.TeaModel {
            public var content: String?

            public var link: String?

            public var position: Int64?

            public var snippet: String?

            public var tilte: String?

            public override init() {
                super.init()
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
                if self.link != nil {
                    map["link"] = self.link!
                }
                if self.position != nil {
                    map["position"] = self.position!
                }
                if self.snippet != nil {
                    map["snippet"] = self.snippet!
                }
                if self.tilte != nil {
                    map["tilte"] = self.tilte!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["link"] as? String {
                    self.link = value
                }
                if let value = dict["position"] as? Int64 {
                    self.position = value
                }
                if let value = dict["snippet"] as? String {
                    self.snippet = value
                }
                if let value = dict["tilte"] as? String {
                    self.tilte = value
                }
            }
        }
        public var searchResult: [GetWebSearchResponseBody.Result.SearchResult]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.searchResult != nil {
                var tmp : [Any] = []
                for k in self.searchResult! {
                    tmp.append(k.toMap())
                }
                map["search_result"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["search_result"] as? [Any?] {
                var tmp : [GetWebSearchResponseBody.Result.SearchResult] = []
                for v in value {
                    if v != nil {
                        var model = GetWebSearchResponseBody.Result.SearchResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.searchResult = tmp
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public class FilterModel : Tea.TeaModel {
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
                    map["input_tokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["output_tokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["total_tokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["input_tokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["output_tokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["total_tokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public class RewriteModel : Tea.TeaModel {
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
                    map["input_tokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["output_tokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["total_tokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["input_tokens"] as? Int64 {
                    self.inputTokens = value
                }
                if let value = dict["output_tokens"] as? Int64 {
                    self.outputTokens = value
                }
                if let value = dict["total_tokens"] as? Int64 {
                    self.totalTokens = value
                }
            }
        }
        public var filterModel: GetWebSearchResponseBody.Usage.FilterModel?

        public var rewriteModel: GetWebSearchResponseBody.Usage.RewriteModel?

        public var searchCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.filterModel?.validate()
            try self.rewriteModel?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.filterModel != nil {
                map["filter_model"] = self.filterModel?.toMap()
            }
            if self.rewriteModel != nil {
                map["rewrite_model"] = self.rewriteModel?.toMap()
            }
            if self.searchCount != nil {
                map["search_count"] = self.searchCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["filter_model"] as? [String: Any?] {
                var model = GetWebSearchResponseBody.Usage.FilterModel()
                model.fromMap(value)
                self.filterModel = model
            }
            if let value = dict["rewrite_model"] as? [String: Any?] {
                var model = GetWebSearchResponseBody.Usage.RewriteModel()
                model.fromMap(value)
                self.rewriteModel = model
            }
            if let value = dict["search_count"] as? Int64 {
                self.searchCount = value
            }
        }
    }
    public var latency: Int32?

    public var requestId: String?

    public var result: GetWebSearchResponseBody.Result?

    public var usage: GetWebSearchResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latency != nil {
            map["latency"] = self.latency!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latency"] as? Int32 {
            self.latency = value
        }
        if let value = dict["request_id"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any?] {
            var model = GetWebSearchResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = GetWebSearchResponseBody.Usage()
            model.fromMap(value)
            self.usage = model
        }
    }
}

public class GetWebSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWebSearchResponseBody?

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
            var model = GetWebSearchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
