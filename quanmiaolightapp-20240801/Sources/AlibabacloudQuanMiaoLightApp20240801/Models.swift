import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("customPrompt") {
            self.customPrompt = dict["customPrompt"] as! String
        }
        if dict.keys.contains("extractType") {
            self.extractType = dict["extractType"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("sourceMaterials") {
            self.sourceMaterials = dict["sourceMaterials"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("customPrompt") {
            self.customPrompt = dict["customPrompt"] as! String
        }
        if dict.keys.contains("extractType") {
            self.extractType = dict["extractType"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("sourceMaterials") {
            self.sourceMaterialsShrink = dict["sourceMaterials"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("eventInfo") {
                self.eventInfo = dict["eventInfo"] as! String
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunMarketingInformationExtractResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("usage") {
                var model = RunMarketingInformationExtractResponseBody.Payload.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Bool
        }
        if dict.keys.contains("header") {
            var model = RunMarketingInformationExtractResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunMarketingInformationExtractResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunMarketingInformationExtractResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunMarketingInformationWritingRequest : Tea.TeaModel {
    public var customPrompt: String?

    public var modelId: String?

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
        if self.customPrompt != nil {
            map["customPrompt"] = self.customPrompt!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.sourceMaterial != nil {
            map["sourceMaterial"] = self.sourceMaterial!
        }
        if self.writingType != nil {
            map["writingType"] = self.writingType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("customPrompt") {
            self.customPrompt = dict["customPrompt"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("sourceMaterial") {
            self.sourceMaterial = dict["sourceMaterial"] as! String
        }
        if dict.keys.contains("writingType") {
            self.writingType = dict["writingType"] as! String
        }
    }
}

public class RunMarketingInformationWritingResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("eventInfo") {
                self.eventInfo = dict["eventInfo"] as! String
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunMarketingInformationWritingResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("usage") {
                var model = RunMarketingInformationWritingResponseBody.Payload.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Bool
        }
        if dict.keys.contains("header") {
            var model = RunMarketingInformationWritingResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunMarketingInformationWritingResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunMarketingInformationWritingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("scriptSummary") {
            self.scriptSummary = dict["scriptSummary"] as! String
        }
        if dict.keys.contains("scriptTypeKeyword") {
            self.scriptTypeKeyword = dict["scriptTypeKeyword"] as! String
        }
        if dict.keys.contains("userProvidedContent") {
            self.userProvidedContent = dict["userProvidedContent"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("errorCode") {
                self.errorCode = dict["errorCode"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("eventInfo") {
                self.eventInfo = dict["eventInfo"] as! String
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunScriptContinueResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("usage") {
                var model = RunScriptContinueResponseBody.Payload.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Bool
        }
        if dict.keys.contains("header") {
            var model = RunScriptContinueResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunScriptContinueResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunScriptContinueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("additionalNote") {
            self.additionalNote = dict["additionalNote"] as! String
        }
        if dict.keys.contains("dialogueInScene") {
            self.dialogueInScene = dict["dialogueInScene"] as! Bool
        }
        if dict.keys.contains("plotConflict") {
            self.plotConflict = dict["plotConflict"] as! Bool
        }
        if dict.keys.contains("scriptName") {
            self.scriptName = dict["scriptName"] as! String
        }
        if dict.keys.contains("scriptShotCount") {
            self.scriptShotCount = dict["scriptShotCount"] as! Int32
        }
        if dict.keys.contains("scriptSummary") {
            self.scriptSummary = dict["scriptSummary"] as! String
        }
        if dict.keys.contains("scriptTypeKeyword") {
            self.scriptTypeKeyword = dict["scriptTypeKeyword"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("errorCode") {
                self.errorCode = dict["errorCode"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("eventInfo") {
                self.eventInfo = dict["eventInfo"] as! String
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunScriptPlanningResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("usage") {
                var model = RunScriptPlanningResponseBody.Payload.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Bool
        }
        if dict.keys.contains("header") {
            var model = RunScriptPlanningResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunScriptPlanningResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunScriptPlanningResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunStyleWritingRequest : Tea.TeaModel {
    public var learningSamples: [String]?

    public var referenceMaterials: [String]?

    public var styleFeature: String?

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
        if self.referenceMaterials != nil {
            map["referenceMaterials"] = self.referenceMaterials!
        }
        if self.styleFeature != nil {
            map["styleFeature"] = self.styleFeature!
        }
        if self.writingTheme != nil {
            map["writingTheme"] = self.writingTheme!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("learningSamples") {
            self.learningSamples = dict["learningSamples"] as! [String]
        }
        if dict.keys.contains("referenceMaterials") {
            self.referenceMaterials = dict["referenceMaterials"] as! [String]
        }
        if dict.keys.contains("styleFeature") {
            self.styleFeature = dict["styleFeature"] as! String
        }
        if dict.keys.contains("writingTheme") {
            self.writingTheme = dict["writingTheme"] as! String
        }
    }
}

public class RunStyleWritingShrinkRequest : Tea.TeaModel {
    public var learningSamplesShrink: String?

    public var referenceMaterialsShrink: String?

    public var styleFeature: String?

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
        if self.referenceMaterialsShrink != nil {
            map["referenceMaterials"] = self.referenceMaterialsShrink!
        }
        if self.styleFeature != nil {
            map["styleFeature"] = self.styleFeature!
        }
        if self.writingTheme != nil {
            map["writingTheme"] = self.writingTheme!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("learningSamples") {
            self.learningSamplesShrink = dict["learningSamples"] as! String
        }
        if dict.keys.contains("referenceMaterials") {
            self.referenceMaterialsShrink = dict["referenceMaterials"] as! String
        }
        if dict.keys.contains("styleFeature") {
            self.styleFeature = dict["styleFeature"] as! String
        }
        if dict.keys.contains("writingTheme") {
            self.writingTheme = dict["writingTheme"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("errorCode") {
                self.errorCode = dict["errorCode"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("eventInfo") {
                self.eventInfo = dict["eventInfo"] as! String
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("text") {
                    self.text = dict["text"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int64
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int64
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunStyleWritingResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
            }
            if dict.keys.contains("usage") {
                var model = RunStyleWritingResponseBody.Payload.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Bool
        }
        if dict.keys.contains("header") {
            var model = RunStyleWritingResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunStyleWritingResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunStyleWritingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunVideoAnalysisRequest : Tea.TeaModel {
    public var generateOptions: [String]?

    public var modelCustomPromptTemplate: String?

    public var modelCustomPromptTemplateId: String?

    public var modelId: String?

    public var originalSessionId: String?

    public var taskId: String?

    public var videoModelCustomPromptTemplate: String?

    public var videoModelId: String?

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
        if self.generateOptions != nil {
            map["generateOptions"] = self.generateOptions!
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
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.videoModelCustomPromptTemplate != nil {
            map["videoModelCustomPromptTemplate"] = self.videoModelCustomPromptTemplate!
        }
        if self.videoModelId != nil {
            map["videoModelId"] = self.videoModelId!
        }
        if self.videoUrl != nil {
            map["videoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("generateOptions") {
            self.generateOptions = dict["generateOptions"] as! [String]
        }
        if dict.keys.contains("modelCustomPromptTemplate") {
            self.modelCustomPromptTemplate = dict["modelCustomPromptTemplate"] as! String
        }
        if dict.keys.contains("modelCustomPromptTemplateId") {
            self.modelCustomPromptTemplateId = dict["modelCustomPromptTemplateId"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("originalSessionId") {
            self.originalSessionId = dict["originalSessionId"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
        if dict.keys.contains("videoModelCustomPromptTemplate") {
            self.videoModelCustomPromptTemplate = dict["videoModelCustomPromptTemplate"] as! String
        }
        if dict.keys.contains("videoModelId") {
            self.videoModelId = dict["videoModelId"] as! String
        }
        if dict.keys.contains("videoUrl") {
            self.videoUrl = dict["videoUrl"] as! String
        }
    }
}

public class RunVideoAnalysisShrinkRequest : Tea.TeaModel {
    public var generateOptionsShrink: String?

    public var modelCustomPromptTemplate: String?

    public var modelCustomPromptTemplateId: String?

    public var modelId: String?

    public var originalSessionId: String?

    public var taskId: String?

    public var videoModelCustomPromptTemplate: String?

    public var videoModelId: String?

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
        if self.generateOptionsShrink != nil {
            map["generateOptions"] = self.generateOptionsShrink!
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
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.videoModelCustomPromptTemplate != nil {
            map["videoModelCustomPromptTemplate"] = self.videoModelCustomPromptTemplate!
        }
        if self.videoModelId != nil {
            map["videoModelId"] = self.videoModelId!
        }
        if self.videoUrl != nil {
            map["videoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("generateOptions") {
            self.generateOptionsShrink = dict["generateOptions"] as! String
        }
        if dict.keys.contains("modelCustomPromptTemplate") {
            self.modelCustomPromptTemplate = dict["modelCustomPromptTemplate"] as! String
        }
        if dict.keys.contains("modelCustomPromptTemplateId") {
            self.modelCustomPromptTemplateId = dict["modelCustomPromptTemplateId"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("originalSessionId") {
            self.originalSessionId = dict["originalSessionId"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
        if dict.keys.contains("videoModelCustomPromptTemplate") {
            self.videoModelCustomPromptTemplate = dict["videoModelCustomPromptTemplate"] as! String
        }
        if dict.keys.contains("videoModelId") {
            self.videoModelId = dict["videoModelId"] as! String
        }
        if dict.keys.contains("videoUrl") {
            self.videoUrl = dict["videoUrl"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("errorCode") {
                self.errorCode = dict["errorCode"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("eventInfo") {
                self.eventInfo = dict["eventInfo"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
            }
        }
    }
    public class Payload : Tea.TeaModel {
        public class Output : Tea.TeaModel {
            public class VideoAnalysisResult : Tea.TeaModel {
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("inputTokens") {
                            self.inputTokens = dict["inputTokens"] as! Int64
                        }
                        if dict.keys.contains("outputTokens") {
                            self.outputTokens = dict["outputTokens"] as! Int64
                        }
                        if dict.keys.contains("totalTokens") {
                            self.totalTokens = dict["totalTokens"] as! Int64
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("endTime") {
                            self.endTime = dict["endTime"] as! Int64
                        }
                        if dict.keys.contains("startTime") {
                            self.startTime = dict["startTime"] as! Int64
                        }
                        if dict.keys.contains("text") {
                            self.text = dict["text"] as! String
                        }
                    }
                }
                public var generateFinished: Bool?

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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("generateFinished") {
                        self.generateFinished = dict["generateFinished"] as! Bool
                    }
                    if dict.keys.contains("text") {
                        self.text = dict["text"] as! String
                    }
                    if dict.keys.contains("usage") {
                        var model = RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult.Usage()
                        model.fromMap(dict["usage"] as! [String: Any])
                        self.usage = model
                    }
                    if dict.keys.contains("videoShotAnalysisResults") {
                        var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult.VideoShotAnalysisResults] = []
                        for v in dict["videoShotAnalysisResults"] as! [Any] {
                            var model = RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult.VideoShotAnalysisResults()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.videoShotAnalysisResults = tmp
                    }
                }
            }
            public class VideoCaptionResult : Tea.TeaModel {
                public class VideoCaptions : Tea.TeaModel {
                    public var endTime: Int64?

                    public var endTimeFormat: String?

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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("endTime") {
                            self.endTime = dict["endTime"] as! Int64
                        }
                        if dict.keys.contains("endTimeFormat") {
                            self.endTimeFormat = dict["endTimeFormat"] as! String
                        }
                        if dict.keys.contains("startTime") {
                            self.startTime = dict["startTime"] as! Int64
                        }
                        if dict.keys.contains("startTimeFormat") {
                            self.startTimeFormat = dict["startTimeFormat"] as! String
                        }
                        if dict.keys.contains("text") {
                            self.text = dict["text"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("generateFinished") {
                        self.generateFinished = dict["generateFinished"] as! Bool
                    }
                    if dict.keys.contains("videoCaptions") {
                        var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoCaptionResult.VideoCaptions] = []
                        for v in dict["videoCaptions"] as! [Any] {
                            var model = RunVideoAnalysisResponseBody.Payload.Output.VideoCaptionResult.VideoCaptions()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("inputTokens") {
                            self.inputTokens = dict["inputTokens"] as! Int64
                        }
                        if dict.keys.contains("outputTokens") {
                            self.outputTokens = dict["outputTokens"] as! Int64
                        }
                        if dict.keys.contains("totalTokens") {
                            self.totalTokens = dict["totalTokens"] as! Int64
                        }
                    }
                }
                public var generateFinished: Bool?

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
                    if self.text != nil {
                        map["text"] = self.text!
                    }
                    if self.usage != nil {
                        map["usage"] = self.usage?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("generateFinished") {
                        self.generateFinished = dict["generateFinished"] as! Bool
                    }
                    if dict.keys.contains("text") {
                        self.text = dict["text"] as! String
                    }
                    if dict.keys.contains("usage") {
                        var model = RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResult.Usage()
                        model.fromMap(dict["usage"] as! [String: Any])
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("inputTokens") {
                            self.inputTokens = dict["inputTokens"] as! Int64
                        }
                        if dict.keys.contains("outputTokens") {
                            self.outputTokens = dict["outputTokens"] as! Int64
                        }
                        if dict.keys.contains("totalTokens") {
                            self.totalTokens = dict["totalTokens"] as! Int64
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

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("name") {
                                    self.name = dict["name"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("childNodes") {
                                var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes.ChildNodes] = []
                                for v in dict["childNodes"] as! [Any] {
                                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes.ChildNodes()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.childNodes = tmp
                            }
                            if dict.keys.contains("name") {
                                self.name = dict["name"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("childNodes") {
                            var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes] = []
                            for v in dict["childNodes"] as! [Any] {
                                var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings.ChildNodes()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.childNodes = tmp
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                    }
                }
                public var generateFinished: Bool?

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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("generateFinished") {
                        self.generateFinished = dict["generateFinished"] as! Bool
                    }
                    if dict.keys.contains("text") {
                        self.text = dict["text"] as! String
                    }
                    if dict.keys.contains("usage") {
                        var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.Usage()
                        model.fromMap(dict["usage"] as! [String: Any])
                        self.usage = model
                    }
                    if dict.keys.contains("videoMindMappings") {
                        var tmp : [RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings] = []
                        for v in dict["videoMindMappings"] as! [Any] {
                            var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult.VideoMindMappings()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.videoMindMappings = tmp
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("inputTokens") {
                            self.inputTokens = dict["inputTokens"] as! Int64
                        }
                        if dict.keys.contains("outputTokens") {
                            self.outputTokens = dict["outputTokens"] as! Int64
                        }
                        if dict.keys.contains("totalTokens") {
                            self.totalTokens = dict["totalTokens"] as! Int64
                        }
                    }
                }
                public var generateFinished: Bool?

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
                    if self.text != nil {
                        map["text"] = self.text!
                    }
                    if self.usage != nil {
                        map["usage"] = self.usage?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("generateFinished") {
                        self.generateFinished = dict["generateFinished"] as! Bool
                    }
                    if dict.keys.contains("text") {
                        self.text = dict["text"] as! String
                    }
                    if dict.keys.contains("usage") {
                        var model = RunVideoAnalysisResponseBody.Payload.Output.VideoTitleGenerateResult.Usage()
                        model.fromMap(dict["usage"] as! [String: Any])
                        self.usage = model
                    }
                }
            }
            public var videoAnalysisResult: RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult?

            public var videoCaptionResult: RunVideoAnalysisResponseBody.Payload.Output.VideoCaptionResult?

            public var videoGenerateResult: RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResult?

            public var videoMindMappingGenerateResult: RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult?

            public var videoTitleGenerateResult: RunVideoAnalysisResponseBody.Payload.Output.VideoTitleGenerateResult?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.videoAnalysisResult?.validate()
                try self.videoCaptionResult?.validate()
                try self.videoGenerateResult?.validate()
                try self.videoMindMappingGenerateResult?.validate()
                try self.videoTitleGenerateResult?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.videoAnalysisResult != nil {
                    map["videoAnalysisResult"] = self.videoAnalysisResult?.toMap()
                }
                if self.videoCaptionResult != nil {
                    map["videoCaptionResult"] = self.videoCaptionResult?.toMap()
                }
                if self.videoGenerateResult != nil {
                    map["videoGenerateResult"] = self.videoGenerateResult?.toMap()
                }
                if self.videoMindMappingGenerateResult != nil {
                    map["videoMindMappingGenerateResult"] = self.videoMindMappingGenerateResult?.toMap()
                }
                if self.videoTitleGenerateResult != nil {
                    map["videoTitleGenerateResult"] = self.videoTitleGenerateResult?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("videoAnalysisResult") {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoAnalysisResult()
                    model.fromMap(dict["videoAnalysisResult"] as! [String: Any])
                    self.videoAnalysisResult = model
                }
                if dict.keys.contains("videoCaptionResult") {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoCaptionResult()
                    model.fromMap(dict["videoCaptionResult"] as! [String: Any])
                    self.videoCaptionResult = model
                }
                if dict.keys.contains("videoGenerateResult") {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoGenerateResult()
                    model.fromMap(dict["videoGenerateResult"] as! [String: Any])
                    self.videoGenerateResult = model
                }
                if dict.keys.contains("videoMindMappingGenerateResult") {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoMindMappingGenerateResult()
                    model.fromMap(dict["videoMindMappingGenerateResult"] as! [String: Any])
                    self.videoMindMappingGenerateResult = model
                }
                if dict.keys.contains("videoTitleGenerateResult") {
                    var model = RunVideoAnalysisResponseBody.Payload.Output.VideoTitleGenerateResult()
                    model.fromMap(dict["videoTitleGenerateResult"] as! [String: Any])
                    self.videoTitleGenerateResult = model
                }
            }
        }
        public var output: RunVideoAnalysisResponseBody.Payload.Output?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.output?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.output != nil {
                map["output"] = self.output?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("output") {
                var model = RunVideoAnalysisResponseBody.Payload.Output()
                model.fromMap(dict["output"] as! [String: Any])
                self.output = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("header") {
            var model = RunVideoAnalysisResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            var model = RunVideoAnalysisResponseBody.Payload()
            model.fromMap(dict["payload"] as! [String: Any])
            self.payload = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunVideoAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
