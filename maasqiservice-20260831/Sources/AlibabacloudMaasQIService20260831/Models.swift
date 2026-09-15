import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AigcChatCompletionStreamHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xQIAgentApiKey: String?

    public var xQIInstanceId: String?

    public var xQISessionId: String?

    public override init() {
        super.init()
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
        if self.xQIAgentApiKey != nil {
            map["X-QI-Agent-Api-Key"] = self.xQIAgentApiKey!
        }
        if self.xQIInstanceId != nil {
            map["X-QI-Instance-Id"] = self.xQIInstanceId!
        }
        if self.xQISessionId != nil {
            map["X-QI-Session-Id"] = self.xQISessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-QI-Agent-Api-Key"] as? String {
            self.xQIAgentApiKey = value
        }
        if let value = dict["X-QI-Instance-Id"] as? String {
            self.xQIInstanceId = value
        }
        if let value = dict["X-QI-Session-Id"] as? String {
            self.xQISessionId = value
        }
    }
}

public class AigcChatCompletionStreamRequest : Tea.TeaModel {
    public class Messages : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public class ImageUrl : Tea.TeaModel {
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
            public class VideoUrl : Tea.TeaModel {
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
            public var imageUrl: AigcChatCompletionStreamRequest.Messages.Content.ImageUrl?

            public var text: String?

            public var type: String?

            public var videoUrl: AigcChatCompletionStreamRequest.Messages.Content.VideoUrl?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.imageUrl?.validate()
                try self.videoUrl?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.imageUrl != nil {
                    map["imageUrl"] = self.imageUrl?.toMap()
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.videoUrl != nil {
                    map["videoUrl"] = self.videoUrl?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["imageUrl"] as? [String: Any?] {
                    var model = AigcChatCompletionStreamRequest.Messages.Content.ImageUrl()
                    model.fromMap(value)
                    self.imageUrl = model
                }
                if let value = dict["text"] as? String {
                    self.text = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["videoUrl"] as? [String: Any?] {
                    var model = AigcChatCompletionStreamRequest.Messages.Content.VideoUrl()
                    model.fromMap(value)
                    self.videoUrl = model
                }
            }
        }
        public var content: [AigcChatCompletionStreamRequest.Messages.Content]?

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
                var tmp : [Any] = []
                for k in self.content! {
                    tmp.append(k.toMap())
                }
                map["content"] = tmp
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? [Any?] {
                var tmp : [AigcChatCompletionStreamRequest.Messages.Content] = []
                for v in value {
                    if v != nil {
                        var model = AigcChatCompletionStreamRequest.Messages.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public class Metadata : Tea.TeaModel {
        public class Parameters : Tea.TeaModel {
            public var guidanceScale: Double?

            public var n: Int64?

            public var negativePrompt: String?

            public var numInferenceSteps: Int64?

            public var seed: Int64?

            public var size: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.guidanceScale != nil {
                    map["guidanceScale"] = self.guidanceScale!
                }
                if self.n != nil {
                    map["n"] = self.n!
                }
                if self.negativePrompt != nil {
                    map["negativePrompt"] = self.negativePrompt!
                }
                if self.numInferenceSteps != nil {
                    map["numInferenceSteps"] = self.numInferenceSteps!
                }
                if self.seed != nil {
                    map["seed"] = self.seed!
                }
                if self.size != nil {
                    map["size"] = self.size!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["guidanceScale"] as? Double {
                    self.guidanceScale = value
                }
                if let value = dict["n"] as? Int64 {
                    self.n = value
                }
                if let value = dict["negativePrompt"] as? String {
                    self.negativePrompt = value
                }
                if let value = dict["numInferenceSteps"] as? Int64 {
                    self.numInferenceSteps = value
                }
                if let value = dict["seed"] as? Int64 {
                    self.seed = value
                }
                if let value = dict["size"] as? String {
                    self.size = value
                }
            }
        }
        public var parameters: AigcChatCompletionStreamRequest.Metadata.Parameters?

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
            if self.parameters != nil {
                map["parameters"] = self.parameters?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["parameters"] as? [String: Any?] {
                var model = AigcChatCompletionStreamRequest.Metadata.Parameters()
                model.fromMap(value)
                self.parameters = model
            }
        }
    }
    public class StreamOptions : Tea.TeaModel {
        public var includeUsage: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.includeUsage != nil {
                map["includeUsage"] = self.includeUsage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["includeUsage"] as? Bool {
                self.includeUsage = value
            }
        }
    }
    public var messages: [AigcChatCompletionStreamRequest.Messages]?

    public var metadata: AigcChatCompletionStreamRequest.Metadata?

    public var model: String?

    public var stream: Bool?

    public var streamOptions: AigcChatCompletionStreamRequest.StreamOptions?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metadata?.validate()
        try self.streamOptions?.validate()
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
        if self.metadata != nil {
            map["metadata"] = self.metadata?.toMap()
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.streamOptions != nil {
            map["streamOptions"] = self.streamOptions?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["messages"] as? [Any?] {
            var tmp : [AigcChatCompletionStreamRequest.Messages] = []
            for v in value {
                if v != nil {
                    var model = AigcChatCompletionStreamRequest.Messages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messages = tmp
        }
        if let value = dict["metadata"] as? [String: Any?] {
            var model = AigcChatCompletionStreamRequest.Metadata()
            model.fromMap(value)
            self.metadata = model
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["streamOptions"] as? [String: Any?] {
            var model = AigcChatCompletionStreamRequest.StreamOptions()
            model.fromMap(value)
            self.streamOptions = model
        }
    }
}

public class AigcChatCompletionStreamResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class AigcChatCompletionStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AigcChatCompletionStreamResponseBody?

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
            var model = AigcChatCompletionStreamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GuiChatCompletionStreamHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xQIAgentApiKey: String?

    public var xQIInstanceId: String?

    public var xQISessionId: String?

    public override init() {
        super.init()
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
        if self.xQIAgentApiKey != nil {
            map["X-QI-Agent-Api-Key"] = self.xQIAgentApiKey!
        }
        if self.xQIInstanceId != nil {
            map["X-QI-Instance-Id"] = self.xQIInstanceId!
        }
        if self.xQISessionId != nil {
            map["X-QI-Session-Id"] = self.xQISessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-QI-Agent-Api-Key"] as? String {
            self.xQIAgentApiKey = value
        }
        if let value = dict["X-QI-Instance-Id"] as? String {
            self.xQIInstanceId = value
        }
        if let value = dict["X-QI-Session-Id"] as? String {
            self.xQISessionId = value
        }
    }
}

public class GuiChatCompletionStreamRequest : Tea.TeaModel {
    public class ChatTemplateKwargs : Tea.TeaModel {
        public var enableThinking: Bool?

        public var preserveThinking: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableThinking != nil {
                map["enableThinking"] = self.enableThinking!
            }
            if self.preserveThinking != nil {
                map["preserveThinking"] = self.preserveThinking!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enableThinking"] as? Bool {
                self.enableThinking = value
            }
            if let value = dict["preserveThinking"] as? Bool {
                self.preserveThinking = value
            }
        }
    }
    public class Messages : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public class ImageUrl : Tea.TeaModel {
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
            public var imageData: String?

            public var imageUrl: GuiChatCompletionStreamRequest.Messages.Content.ImageUrl?

            public var text: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.imageUrl?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.imageData != nil {
                    map["imageData"] = self.imageData!
                }
                if self.imageUrl != nil {
                    map["imageUrl"] = self.imageUrl?.toMap()
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["imageData"] as? String {
                    self.imageData = value
                }
                if let value = dict["imageUrl"] as? [String: Any?] {
                    var model = GuiChatCompletionStreamRequest.Messages.Content.ImageUrl()
                    model.fromMap(value)
                    self.imageUrl = model
                }
                if let value = dict["text"] as? String {
                    self.text = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var content: [GuiChatCompletionStreamRequest.Messages.Content]?

        public var role: String?

        public var toolCallId: String?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.content! {
                    tmp.append(k.toMap())
                }
                map["content"] = tmp
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            if self.toolCallId != nil {
                map["toolCallId"] = self.toolCallId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? [Any?] {
                var tmp : [GuiChatCompletionStreamRequest.Messages.Content] = []
                for v in value {
                    if v != nil {
                        var model = GuiChatCompletionStreamRequest.Messages.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
            if let value = dict["toolCallId"] as? String {
                self.toolCallId = value
            }
        }
    }
    public class Metadata : Tea.TeaModel {
        public var appList: [String]?

        public var availableApps: [String]?

        public var harnessMessage: String?

        public var screenHeight: Int64?

        public var screenWidth: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appList != nil {
                map["appList"] = self.appList!
            }
            if self.availableApps != nil {
                map["availableApps"] = self.availableApps!
            }
            if self.harnessMessage != nil {
                map["harnessMessage"] = self.harnessMessage!
            }
            if self.screenHeight != nil {
                map["screenHeight"] = self.screenHeight!
            }
            if self.screenWidth != nil {
                map["screenWidth"] = self.screenWidth!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appList"] as? [String] {
                self.appList = value
            }
            if let value = dict["availableApps"] as? [String] {
                self.availableApps = value
            }
            if let value = dict["harnessMessage"] as? String {
                self.harnessMessage = value
            }
            if let value = dict["screenHeight"] as? Int64 {
                self.screenHeight = value
            }
            if let value = dict["screenWidth"] as? Int64 {
                self.screenWidth = value
            }
        }
    }
    public class MmProcessorKwargs : Tea.TeaModel {
        public var maxDynamicPatch: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxDynamicPatch != nil {
                map["maxDynamicPatch"] = self.maxDynamicPatch!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["maxDynamicPatch"] as? Int64 {
                self.maxDynamicPatch = value
            }
        }
    }
    public class ResponseFormat : Tea.TeaModel {
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
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class StreamOptions : Tea.TeaModel {
        public var includeUsage: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.includeUsage != nil {
                map["includeUsage"] = self.includeUsage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["includeUsage"] as? Bool {
                self.includeUsage = value
            }
        }
    }
    public class StructuredOutputs : Tea.TeaModel {
        public var choice: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.choice != nil {
                map["choice"] = self.choice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["choice"] as? [String] {
                self.choice = value
            }
        }
    }
    public var allowedTokenIds: [Int64]?

    public var badWords: [String]?

    public var chatTemplateKwargs: GuiChatCompletionStreamRequest.ChatTemplateKwargs?

    public var frequencyPenalty: Double?

    public var ignoreEos: Bool?

    public var includeReasoning: Bool?

    public var logprobs: Bool?

    public var maxCompletionTokens: Int64?

    public var maxTokens: Int64?

    public var messages: [GuiChatCompletionStreamRequest.Messages]?

    public var metadata: GuiChatCompletionStreamRequest.Metadata?

    public var minP: Double?

    public var minTokens: Int64?

    public var mmProcessorKwargs: GuiChatCompletionStreamRequest.MmProcessorKwargs?

    public var model: String?

    public var n: Int64?

    public var parallelToolCalls: Bool?

    public var presencePenalty: Double?

    public var promptLogprobs: Int64?

    public var reasoningEffort: String?

    public var repetitionPenalty: Double?

    public var responseFormat: GuiChatCompletionStreamRequest.ResponseFormat?

    public var seed: Int64?

    public var skipSpecialTokens: Bool?

    public var stop: [String]?

    public var stopTokenIds: [Int64]?

    public var stream: Bool?

    public var streamOptions: GuiChatCompletionStreamRequest.StreamOptions?

    public var structuredOutputs: GuiChatCompletionStreamRequest.StructuredOutputs?

    public var temperature: Double?

    public var topK: Int64?

    public var topLogprobs: Int64?

    public var topP: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.chatTemplateKwargs?.validate()
        try self.metadata?.validate()
        try self.mmProcessorKwargs?.validate()
        try self.responseFormat?.validate()
        try self.streamOptions?.validate()
        try self.structuredOutputs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedTokenIds != nil {
            map["allowedTokenIds"] = self.allowedTokenIds!
        }
        if self.badWords != nil {
            map["badWords"] = self.badWords!
        }
        if self.chatTemplateKwargs != nil {
            map["chatTemplateKwargs"] = self.chatTemplateKwargs?.toMap()
        }
        if self.frequencyPenalty != nil {
            map["frequencyPenalty"] = self.frequencyPenalty!
        }
        if self.ignoreEos != nil {
            map["ignoreEos"] = self.ignoreEos!
        }
        if self.includeReasoning != nil {
            map["includeReasoning"] = self.includeReasoning!
        }
        if self.logprobs != nil {
            map["logprobs"] = self.logprobs!
        }
        if self.maxCompletionTokens != nil {
            map["maxCompletionTokens"] = self.maxCompletionTokens!
        }
        if self.maxTokens != nil {
            map["maxTokens"] = self.maxTokens!
        }
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["messages"] = tmp
        }
        if self.metadata != nil {
            map["metadata"] = self.metadata?.toMap()
        }
        if self.minP != nil {
            map["minP"] = self.minP!
        }
        if self.minTokens != nil {
            map["minTokens"] = self.minTokens!
        }
        if self.mmProcessorKwargs != nil {
            map["mmProcessorKwargs"] = self.mmProcessorKwargs?.toMap()
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.n != nil {
            map["n"] = self.n!
        }
        if self.parallelToolCalls != nil {
            map["parallelToolCalls"] = self.parallelToolCalls!
        }
        if self.presencePenalty != nil {
            map["presencePenalty"] = self.presencePenalty!
        }
        if self.promptLogprobs != nil {
            map["promptLogprobs"] = self.promptLogprobs!
        }
        if self.reasoningEffort != nil {
            map["reasoningEffort"] = self.reasoningEffort!
        }
        if self.repetitionPenalty != nil {
            map["repetitionPenalty"] = self.repetitionPenalty!
        }
        if self.responseFormat != nil {
            map["responseFormat"] = self.responseFormat?.toMap()
        }
        if self.seed != nil {
            map["seed"] = self.seed!
        }
        if self.skipSpecialTokens != nil {
            map["skipSpecialTokens"] = self.skipSpecialTokens!
        }
        if self.stop != nil {
            map["stop"] = self.stop!
        }
        if self.stopTokenIds != nil {
            map["stopTokenIds"] = self.stopTokenIds!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.streamOptions != nil {
            map["streamOptions"] = self.streamOptions?.toMap()
        }
        if self.structuredOutputs != nil {
            map["structuredOutputs"] = self.structuredOutputs?.toMap()
        }
        if self.temperature != nil {
            map["temperature"] = self.temperature!
        }
        if self.topK != nil {
            map["topK"] = self.topK!
        }
        if self.topLogprobs != nil {
            map["topLogprobs"] = self.topLogprobs!
        }
        if self.topP != nil {
            map["topP"] = self.topP!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["allowedTokenIds"] as? [Int64] {
            self.allowedTokenIds = value
        }
        if let value = dict["badWords"] as? [String] {
            self.badWords = value
        }
        if let value = dict["chatTemplateKwargs"] as? [String: Any?] {
            var model = GuiChatCompletionStreamRequest.ChatTemplateKwargs()
            model.fromMap(value)
            self.chatTemplateKwargs = model
        }
        if let value = dict["frequencyPenalty"] as? Double {
            self.frequencyPenalty = value
        }
        if let value = dict["ignoreEos"] as? Bool {
            self.ignoreEos = value
        }
        if let value = dict["includeReasoning"] as? Bool {
            self.includeReasoning = value
        }
        if let value = dict["logprobs"] as? Bool {
            self.logprobs = value
        }
        if let value = dict["maxCompletionTokens"] as? Int64 {
            self.maxCompletionTokens = value
        }
        if let value = dict["maxTokens"] as? Int64 {
            self.maxTokens = value
        }
        if let value = dict["messages"] as? [Any?] {
            var tmp : [GuiChatCompletionStreamRequest.Messages] = []
            for v in value {
                if v != nil {
                    var model = GuiChatCompletionStreamRequest.Messages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messages = tmp
        }
        if let value = dict["metadata"] as? [String: Any?] {
            var model = GuiChatCompletionStreamRequest.Metadata()
            model.fromMap(value)
            self.metadata = model
        }
        if let value = dict["minP"] as? Double {
            self.minP = value
        }
        if let value = dict["minTokens"] as? Int64 {
            self.minTokens = value
        }
        if let value = dict["mmProcessorKwargs"] as? [String: Any?] {
            var model = GuiChatCompletionStreamRequest.MmProcessorKwargs()
            model.fromMap(value)
            self.mmProcessorKwargs = model
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["n"] as? Int64 {
            self.n = value
        }
        if let value = dict["parallelToolCalls"] as? Bool {
            self.parallelToolCalls = value
        }
        if let value = dict["presencePenalty"] as? Double {
            self.presencePenalty = value
        }
        if let value = dict["promptLogprobs"] as? Int64 {
            self.promptLogprobs = value
        }
        if let value = dict["reasoningEffort"] as? String {
            self.reasoningEffort = value
        }
        if let value = dict["repetitionPenalty"] as? Double {
            self.repetitionPenalty = value
        }
        if let value = dict["responseFormat"] as? [String: Any?] {
            var model = GuiChatCompletionStreamRequest.ResponseFormat()
            model.fromMap(value)
            self.responseFormat = model
        }
        if let value = dict["seed"] as? Int64 {
            self.seed = value
        }
        if let value = dict["skipSpecialTokens"] as? Bool {
            self.skipSpecialTokens = value
        }
        if let value = dict["stop"] as? [String] {
            self.stop = value
        }
        if let value = dict["stopTokenIds"] as? [Int64] {
            self.stopTokenIds = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["streamOptions"] as? [String: Any?] {
            var model = GuiChatCompletionStreamRequest.StreamOptions()
            model.fromMap(value)
            self.streamOptions = model
        }
        if let value = dict["structuredOutputs"] as? [String: Any?] {
            var model = GuiChatCompletionStreamRequest.StructuredOutputs()
            model.fromMap(value)
            self.structuredOutputs = model
        }
        if let value = dict["temperature"] as? Double {
            self.temperature = value
        }
        if let value = dict["topK"] as? Int64 {
            self.topK = value
        }
        if let value = dict["topLogprobs"] as? Int64 {
            self.topLogprobs = value
        }
        if let value = dict["topP"] as? Double {
            self.topP = value
        }
    }
}

public class GuiChatCompletionStreamResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GuiChatCompletionStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GuiChatCompletionStreamResponseBody?

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
            var model = GuiChatCompletionStreamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PaChatCompletionStreamHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xQIAgentApiKey: String?

    public var xQIInstanceId: String?

    public var xQISessionId: String?

    public override init() {
        super.init()
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
        if self.xQIAgentApiKey != nil {
            map["X-QI-Agent-Api-Key"] = self.xQIAgentApiKey!
        }
        if self.xQIInstanceId != nil {
            map["X-QI-Instance-Id"] = self.xQIInstanceId!
        }
        if self.xQISessionId != nil {
            map["X-QI-Session-Id"] = self.xQISessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-QI-Agent-Api-Key"] as? String {
            self.xQIAgentApiKey = value
        }
        if let value = dict["X-QI-Instance-Id"] as? String {
            self.xQIInstanceId = value
        }
        if let value = dict["X-QI-Session-Id"] as? String {
            self.xQISessionId = value
        }
    }
}

public class PaChatCompletionStreamRequest : Tea.TeaModel {
    public class ChatTemplateKwargs : Tea.TeaModel {
        public var enableThinking: Bool?

        public var preserveThinking: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableThinking != nil {
                map["enableThinking"] = self.enableThinking!
            }
            if self.preserveThinking != nil {
                map["preserveThinking"] = self.preserveThinking!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enableThinking"] as? Bool {
                self.enableThinking = value
            }
            if let value = dict["preserveThinking"] as? Bool {
                self.preserveThinking = value
            }
        }
    }
    public class Messages : Tea.TeaModel {
        public class Content : Tea.TeaModel {
            public class ImageUrl : Tea.TeaModel {
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
            public var imageUrl: PaChatCompletionStreamRequest.Messages.Content.ImageUrl?

            public var text: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.imageUrl?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.imageUrl != nil {
                    map["imageUrl"] = self.imageUrl?.toMap()
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["imageUrl"] as? [String: Any?] {
                    var model = PaChatCompletionStreamRequest.Messages.Content.ImageUrl()
                    model.fromMap(value)
                    self.imageUrl = model
                }
                if let value = dict["text"] as? String {
                    self.text = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class ToolCalls : Tea.TeaModel {
            public class Function : Tea.TeaModel {
                public var arguments: String?

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
                    if self.arguments != nil {
                        map["arguments"] = self.arguments!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["arguments"] as? String {
                        self.arguments = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                }
            }
            public var function: PaChatCompletionStreamRequest.Messages.ToolCalls.Function?

            public var id: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.function?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.function != nil {
                    map["function"] = self.function?.toMap()
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["function"] as? [String: Any?] {
                    var model = PaChatCompletionStreamRequest.Messages.ToolCalls.Function()
                    model.fromMap(value)
                    self.function = model
                }
                if let value = dict["id"] as? String {
                    self.id = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var content: [PaChatCompletionStreamRequest.Messages.Content]?

        public var role: String?

        public var toolCallId: String?

        public var toolCalls: [PaChatCompletionStreamRequest.Messages.ToolCalls]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.content! {
                    tmp.append(k.toMap())
                }
                map["content"] = tmp
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            if self.toolCallId != nil {
                map["toolCallId"] = self.toolCallId!
            }
            if self.toolCalls != nil {
                var tmp : [Any] = []
                for k in self.toolCalls! {
                    tmp.append(k.toMap())
                }
                map["toolCalls"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? [Any?] {
                var tmp : [PaChatCompletionStreamRequest.Messages.Content] = []
                for v in value {
                    if v != nil {
                        var model = PaChatCompletionStreamRequest.Messages.Content()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.content = tmp
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
            if let value = dict["toolCallId"] as? String {
                self.toolCallId = value
            }
            if let value = dict["toolCalls"] as? [Any?] {
                var tmp : [PaChatCompletionStreamRequest.Messages.ToolCalls] = []
                for v in value {
                    if v != nil {
                        var model = PaChatCompletionStreamRequest.Messages.ToolCalls()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.toolCalls = tmp
            }
        }
    }
    public class MmProcessorKwargs : Tea.TeaModel {
        public var maxDynamicPatch: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxDynamicPatch != nil {
                map["maxDynamicPatch"] = self.maxDynamicPatch!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["maxDynamicPatch"] as? Int64 {
                self.maxDynamicPatch = value
            }
        }
    }
    public class ResponseFormat : Tea.TeaModel {
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
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class StreamOptions : Tea.TeaModel {
        public var includeUsage: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.includeUsage != nil {
                map["includeUsage"] = self.includeUsage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["includeUsage"] as? Bool {
                self.includeUsage = value
            }
        }
    }
    public class StructuredOutputs : Tea.TeaModel {
        public var choice: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.choice != nil {
                map["choice"] = self.choice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["choice"] as? [String] {
                self.choice = value
            }
        }
    }
    public class Tools : Tea.TeaModel {
        public class Function : Tea.TeaModel {
            public class Parameters : Tea.TeaModel {
                public class Properties : Tea.TeaModel {
                    public class City : Tea.TeaModel {
                        public var description_: String?

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
                            if self.description_ != nil {
                                map["description"] = self.description_!
                            }
                            if self.type != nil {
                                map["type"] = self.type!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["description"] as? String {
                                self.description_ = value
                            }
                            if let value = dict["type"] as? String {
                                self.type = value
                            }
                        }
                    }
                    public var city: PaChatCompletionStreamRequest.Tools.Function.Parameters.Properties.City?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.city?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.city != nil {
                            map["city"] = self.city?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["city"] as? [String: Any?] {
                            var model = PaChatCompletionStreamRequest.Tools.Function.Parameters.Properties.City()
                            model.fromMap(value)
                            self.city = model
                        }
                    }
                }
                public var properties: PaChatCompletionStreamRequest.Tools.Function.Parameters.Properties?

                public var required_: [String]?

                public var type: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.properties?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.properties != nil {
                        map["properties"] = self.properties?.toMap()
                    }
                    if self.required_ != nil {
                        map["required"] = self.required_!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["properties"] as? [String: Any?] {
                        var model = PaChatCompletionStreamRequest.Tools.Function.Parameters.Properties()
                        model.fromMap(value)
                        self.properties = model
                    }
                    if let value = dict["required"] as? [String] {
                        self.required_ = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public var description_: String?

            public var name: String?

            public var parameters: PaChatCompletionStreamRequest.Tools.Function.Parameters?

            public var strict: Bool?

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
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters?.toMap()
                }
                if self.strict != nil {
                    map["strict"] = self.strict!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: Any?] {
                    var model = PaChatCompletionStreamRequest.Tools.Function.Parameters()
                    model.fromMap(value)
                    self.parameters = model
                }
                if let value = dict["strict"] as? Bool {
                    self.strict = value
                }
            }
        }
        public var function: PaChatCompletionStreamRequest.Tools.Function?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.function?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.function != nil {
                map["function"] = self.function?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["function"] as? [String: Any?] {
                var model = PaChatCompletionStreamRequest.Tools.Function()
                model.fromMap(value)
                self.function = model
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var allowedTokenIds: [Int64]?

    public var badWords: [String]?

    public var chatTemplateKwargs: PaChatCompletionStreamRequest.ChatTemplateKwargs?

    public var frequencyPenalty: Double?

    public var ignoreEos: Bool?

    public var includeReasoning: Bool?

    public var logprobs: Bool?

    public var maxCompletionTokens: Int64?

    public var maxTokens: Int64?

    public var messages: [PaChatCompletionStreamRequest.Messages]?

    public var minP: Double?

    public var minTokens: Int64?

    public var mmProcessorKwargs: PaChatCompletionStreamRequest.MmProcessorKwargs?

    public var model: String?

    public var n: Int64?

    public var parallelToolCalls: Bool?

    public var presencePenalty: Double?

    public var promptLogprobs: Int64?

    public var reasoningEffort: String?

    public var repetitionPenalty: Double?

    public var responseFormat: PaChatCompletionStreamRequest.ResponseFormat?

    public var seed: Int64?

    public var skipSpecialTokens: Bool?

    public var stop: [String]?

    public var stopTokenIds: [Int64]?

    public var stream: Bool?

    public var streamOptions: PaChatCompletionStreamRequest.StreamOptions?

    public var structuredOutputs: PaChatCompletionStreamRequest.StructuredOutputs?

    public var temperature: Double?

    public var toolChoice: String?

    public var tools: [PaChatCompletionStreamRequest.Tools]?

    public var topK: Int64?

    public var topLogprobs: Int64?

    public var topP: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.chatTemplateKwargs?.validate()
        try self.mmProcessorKwargs?.validate()
        try self.responseFormat?.validate()
        try self.streamOptions?.validate()
        try self.structuredOutputs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedTokenIds != nil {
            map["allowedTokenIds"] = self.allowedTokenIds!
        }
        if self.badWords != nil {
            map["badWords"] = self.badWords!
        }
        if self.chatTemplateKwargs != nil {
            map["chatTemplateKwargs"] = self.chatTemplateKwargs?.toMap()
        }
        if self.frequencyPenalty != nil {
            map["frequencyPenalty"] = self.frequencyPenalty!
        }
        if self.ignoreEos != nil {
            map["ignoreEos"] = self.ignoreEos!
        }
        if self.includeReasoning != nil {
            map["includeReasoning"] = self.includeReasoning!
        }
        if self.logprobs != nil {
            map["logprobs"] = self.logprobs!
        }
        if self.maxCompletionTokens != nil {
            map["maxCompletionTokens"] = self.maxCompletionTokens!
        }
        if self.maxTokens != nil {
            map["maxTokens"] = self.maxTokens!
        }
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["messages"] = tmp
        }
        if self.minP != nil {
            map["minP"] = self.minP!
        }
        if self.minTokens != nil {
            map["minTokens"] = self.minTokens!
        }
        if self.mmProcessorKwargs != nil {
            map["mmProcessorKwargs"] = self.mmProcessorKwargs?.toMap()
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.n != nil {
            map["n"] = self.n!
        }
        if self.parallelToolCalls != nil {
            map["parallelToolCalls"] = self.parallelToolCalls!
        }
        if self.presencePenalty != nil {
            map["presencePenalty"] = self.presencePenalty!
        }
        if self.promptLogprobs != nil {
            map["promptLogprobs"] = self.promptLogprobs!
        }
        if self.reasoningEffort != nil {
            map["reasoningEffort"] = self.reasoningEffort!
        }
        if self.repetitionPenalty != nil {
            map["repetitionPenalty"] = self.repetitionPenalty!
        }
        if self.responseFormat != nil {
            map["responseFormat"] = self.responseFormat?.toMap()
        }
        if self.seed != nil {
            map["seed"] = self.seed!
        }
        if self.skipSpecialTokens != nil {
            map["skipSpecialTokens"] = self.skipSpecialTokens!
        }
        if self.stop != nil {
            map["stop"] = self.stop!
        }
        if self.stopTokenIds != nil {
            map["stopTokenIds"] = self.stopTokenIds!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.streamOptions != nil {
            map["streamOptions"] = self.streamOptions?.toMap()
        }
        if self.structuredOutputs != nil {
            map["structuredOutputs"] = self.structuredOutputs?.toMap()
        }
        if self.temperature != nil {
            map["temperature"] = self.temperature!
        }
        if self.toolChoice != nil {
            map["toolChoice"] = self.toolChoice!
        }
        if self.tools != nil {
            var tmp : [Any] = []
            for k in self.tools! {
                tmp.append(k.toMap())
            }
            map["tools"] = tmp
        }
        if self.topK != nil {
            map["topK"] = self.topK!
        }
        if self.topLogprobs != nil {
            map["topLogprobs"] = self.topLogprobs!
        }
        if self.topP != nil {
            map["topP"] = self.topP!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["allowedTokenIds"] as? [Int64] {
            self.allowedTokenIds = value
        }
        if let value = dict["badWords"] as? [String] {
            self.badWords = value
        }
        if let value = dict["chatTemplateKwargs"] as? [String: Any?] {
            var model = PaChatCompletionStreamRequest.ChatTemplateKwargs()
            model.fromMap(value)
            self.chatTemplateKwargs = model
        }
        if let value = dict["frequencyPenalty"] as? Double {
            self.frequencyPenalty = value
        }
        if let value = dict["ignoreEos"] as? Bool {
            self.ignoreEos = value
        }
        if let value = dict["includeReasoning"] as? Bool {
            self.includeReasoning = value
        }
        if let value = dict["logprobs"] as? Bool {
            self.logprobs = value
        }
        if let value = dict["maxCompletionTokens"] as? Int64 {
            self.maxCompletionTokens = value
        }
        if let value = dict["maxTokens"] as? Int64 {
            self.maxTokens = value
        }
        if let value = dict["messages"] as? [Any?] {
            var tmp : [PaChatCompletionStreamRequest.Messages] = []
            for v in value {
                if v != nil {
                    var model = PaChatCompletionStreamRequest.Messages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messages = tmp
        }
        if let value = dict["minP"] as? Double {
            self.minP = value
        }
        if let value = dict["minTokens"] as? Int64 {
            self.minTokens = value
        }
        if let value = dict["mmProcessorKwargs"] as? [String: Any?] {
            var model = PaChatCompletionStreamRequest.MmProcessorKwargs()
            model.fromMap(value)
            self.mmProcessorKwargs = model
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["n"] as? Int64 {
            self.n = value
        }
        if let value = dict["parallelToolCalls"] as? Bool {
            self.parallelToolCalls = value
        }
        if let value = dict["presencePenalty"] as? Double {
            self.presencePenalty = value
        }
        if let value = dict["promptLogprobs"] as? Int64 {
            self.promptLogprobs = value
        }
        if let value = dict["reasoningEffort"] as? String {
            self.reasoningEffort = value
        }
        if let value = dict["repetitionPenalty"] as? Double {
            self.repetitionPenalty = value
        }
        if let value = dict["responseFormat"] as? [String: Any?] {
            var model = PaChatCompletionStreamRequest.ResponseFormat()
            model.fromMap(value)
            self.responseFormat = model
        }
        if let value = dict["seed"] as? Int64 {
            self.seed = value
        }
        if let value = dict["skipSpecialTokens"] as? Bool {
            self.skipSpecialTokens = value
        }
        if let value = dict["stop"] as? [String] {
            self.stop = value
        }
        if let value = dict["stopTokenIds"] as? [Int64] {
            self.stopTokenIds = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["streamOptions"] as? [String: Any?] {
            var model = PaChatCompletionStreamRequest.StreamOptions()
            model.fromMap(value)
            self.streamOptions = model
        }
        if let value = dict["structuredOutputs"] as? [String: Any?] {
            var model = PaChatCompletionStreamRequest.StructuredOutputs()
            model.fromMap(value)
            self.structuredOutputs = model
        }
        if let value = dict["temperature"] as? Double {
            self.temperature = value
        }
        if let value = dict["toolChoice"] as? String {
            self.toolChoice = value
        }
        if let value = dict["tools"] as? [Any?] {
            var tmp : [PaChatCompletionStreamRequest.Tools] = []
            for v in value {
                if v != nil {
                    var model = PaChatCompletionStreamRequest.Tools()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tools = tmp
        }
        if let value = dict["topK"] as? Int64 {
            self.topK = value
        }
        if let value = dict["topLogprobs"] as? Int64 {
            self.topLogprobs = value
        }
        if let value = dict["topP"] as? Double {
            self.topP = value
        }
    }
}

public class PaChatCompletionStreamResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class PaChatCompletionStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PaChatCompletionStreamResponseBody?

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
            var model = PaChatCompletionStreamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
