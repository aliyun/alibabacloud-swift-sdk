import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateAgentSessionRequest : Tea.TeaModel {
    public class Params : Tea.TeaModel {
        public class Meta : Tea.TeaModel {
            public class Agent : Tea.TeaModel {
                public var agentName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.agentName != nil {
                        map["AgentName"] = self.agentName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AgentName"] as? String {
                        self.agentName = value
                    }
                }
            }
            public class Config : Tea.TeaModel {
                public class SessionTags : Tea.TeaModel {
                    public var sessionTagCode: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.sessionTagCode != nil {
                            map["SessionTagCode"] = self.sessionTagCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["SessionTagCode"] as? String {
                            self.sessionTagCode = value
                        }
                    }
                }
                public var sessionSource: String?

                public var sessionTags: [CreateAgentSessionRequest.Params.Meta.Config.SessionTags]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.sessionSource != nil {
                        map["SessionSource"] = self.sessionSource!
                    }
                    if self.sessionTags != nil {
                        var tmp : [Any] = []
                        for k in self.sessionTags! {
                            tmp.append(k.toMap())
                        }
                        map["SessionTags"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SessionSource"] as? String {
                        self.sessionSource = value
                    }
                    if let value = dict["SessionTags"] as? [Any?] {
                        var tmp : [CreateAgentSessionRequest.Params.Meta.Config.SessionTags] = []
                        for v in value {
                            if v != nil {
                                var model = CreateAgentSessionRequest.Params.Meta.Config.SessionTags()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.sessionTags = tmp
                    }
                }
            }
            public class InitialConfigOptions : Tea.TeaModel {
                public var executionLane: String?

                public var mode: String?

                public var resourceGroupId: String?

                public var skills: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.executionLane != nil {
                        map["ExecutionLane"] = self.executionLane!
                    }
                    if self.mode != nil {
                        map["Mode"] = self.mode!
                    }
                    if self.resourceGroupId != nil {
                        map["ResourceGroupId"] = self.resourceGroupId!
                    }
                    if self.skills != nil {
                        map["Skills"] = self.skills!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ExecutionLane"] as? String {
                        self.executionLane = value
                    }
                    if let value = dict["Mode"] as? String {
                        self.mode = value
                    }
                    if let value = dict["ResourceGroupId"] as? String {
                        self.resourceGroupId = value
                    }
                    if let value = dict["Skills"] as? String {
                        self.skills = value
                    }
                }
            }
            public var agent: CreateAgentSessionRequest.Params.Meta.Agent?

            public var config: CreateAgentSessionRequest.Params.Meta.Config?

            public var initialConfigOptions: CreateAgentSessionRequest.Params.Meta.InitialConfigOptions?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.agent?.validate()
                try self.config?.validate()
                try self.initialConfigOptions?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agent != nil {
                    map["Agent"] = self.agent?.toMap()
                }
                if self.config != nil {
                    map["Config"] = self.config?.toMap()
                }
                if self.initialConfigOptions != nil {
                    map["InitialConfigOptions"] = self.initialConfigOptions?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Agent"] as? [String: Any?] {
                    var model = CreateAgentSessionRequest.Params.Meta.Agent()
                    model.fromMap(value)
                    self.agent = model
                }
                if let value = dict["Config"] as? [String: Any?] {
                    var model = CreateAgentSessionRequest.Params.Meta.Config()
                    model.fromMap(value)
                    self.config = model
                }
                if let value = dict["InitialConfigOptions"] as? [String: Any?] {
                    var model = CreateAgentSessionRequest.Params.Meta.InitialConfigOptions()
                    model.fromMap(value)
                    self.initialConfigOptions = model
                }
            }
        }
        public var meta: CreateAgentSessionRequest.Params.Meta?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.meta?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.meta != nil {
                map["Meta"] = self.meta?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Meta"] as? [String: Any?] {
                var model = CreateAgentSessionRequest.Params.Meta()
                model.fromMap(value)
                self.meta = model
            }
        }
    }
    public var id: String?

    public var jsonrpc: String?

    public var params: CreateAgentSessionRequest.Params?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.params?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.jsonrpc != nil {
            map["Jsonrpc"] = self.jsonrpc!
        }
        if self.params != nil {
            map["Params"] = self.params?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Jsonrpc"] as? String {
            self.jsonrpc = value
        }
        if let value = dict["Params"] as? [String: Any?] {
            var model = CreateAgentSessionRequest.Params()
            model.fromMap(value)
            self.params = model
        }
    }
}

public class CreateAgentSessionShrinkRequest : Tea.TeaModel {
    public var id: String?

    public var jsonrpc: String?

    public var paramsShrink: String?

    public override init() {
        super.init()
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
        if self.jsonrpc != nil {
            map["Jsonrpc"] = self.jsonrpc!
        }
        if self.paramsShrink != nil {
            map["Params"] = self.paramsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Jsonrpc"] as? String {
            self.jsonrpc = value
        }
        if let value = dict["Params"] as? String {
            self.paramsShrink = value
        }
    }
}

public class CreateAgentSessionResponseBody : Tea.TeaModel {
    public class JsonRpcResponse : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var sessionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.sessionId != nil {
                    map["SessionId"] = self.sessionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SessionId"] as? String {
                    self.sessionId = value
                }
            }
        }
        public var id: String?

        public var jsonrpc: String?

        public var result: CreateAgentSessionResponseBody.JsonRpcResponse.Result?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.jsonrpc != nil {
                map["Jsonrpc"] = self.jsonrpc!
            }
            if self.result != nil {
                map["Result"] = self.result?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Jsonrpc"] as? String {
                self.jsonrpc = value
            }
            if let value = dict["Result"] as? [String: Any?] {
                var model = CreateAgentSessionResponseBody.JsonRpcResponse.Result()
                model.fromMap(value)
                self.result = model
            }
        }
    }
    public var jsonRpcResponse: CreateAgentSessionResponseBody.JsonRpcResponse?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jsonRpcResponse?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jsonRpcResponse != nil {
            map["JsonRpcResponse"] = self.jsonRpcResponse?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JsonRpcResponse"] as? [String: Any?] {
            var model = CreateAgentSessionResponseBody.JsonRpcResponse()
            model.fromMap(value)
            self.jsonRpcResponse = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAgentSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAgentSessionResponseBody?

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
            var model = CreateAgentSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PromptAgentSessionRequest : Tea.TeaModel {
    public class Params : Tea.TeaModel {
        public class Meta : Tea.TeaModel {
            public var context: Any?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.context != nil {
                    map["Context"] = self.context!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Context"] as? Any {
                    self.context = value
                }
            }
        }
        public class Prompt : Tea.TeaModel {
            public class Meta : Tea.TeaModel {
                public var hide: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.hide != nil {
                        map["Hide"] = self.hide!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Hide"] as? Bool {
                        self.hide = value
                    }
                }
            }
            public var description_: String?

            public var meta: PromptAgentSessionRequest.Params.Prompt.Meta?

            public var mimeType: String?

            public var name: String?

            public var size: Int64?

            public var text: String?

            public var title: String?

            public var type: String?

            public var uri: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.meta?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.meta != nil {
                    map["Meta"] = self.meta?.toMap()
                }
                if self.mimeType != nil {
                    map["MimeType"] = self.mimeType!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.uri != nil {
                    map["Uri"] = self.uri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Meta"] as? [String: Any?] {
                    var model = PromptAgentSessionRequest.Params.Prompt.Meta()
                    model.fromMap(value)
                    self.meta = model
                }
                if let value = dict["MimeType"] as? String {
                    self.mimeType = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Size"] as? Int64 {
                    self.size = value
                }
                if let value = dict["Text"] as? String {
                    self.text = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Uri"] as? String {
                    self.uri = value
                }
            }
        }
        public var meta: PromptAgentSessionRequest.Params.Meta?

        public var prompt: [PromptAgentSessionRequest.Params.Prompt]?

        public var sessionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.meta?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.meta != nil {
                map["Meta"] = self.meta?.toMap()
            }
            if self.prompt != nil {
                var tmp : [Any] = []
                for k in self.prompt! {
                    tmp.append(k.toMap())
                }
                map["Prompt"] = tmp
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Meta"] as? [String: Any?] {
                var model = PromptAgentSessionRequest.Params.Meta()
                model.fromMap(value)
                self.meta = model
            }
            if let value = dict["Prompt"] as? [Any?] {
                var tmp : [PromptAgentSessionRequest.Params.Prompt] = []
                for v in value {
                    if v != nil {
                        var model = PromptAgentSessionRequest.Params.Prompt()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.prompt = tmp
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
        }
    }
    public var callerContext: String?

    public var id: String?

    public var jsonrpc: String?

    public var params: PromptAgentSessionRequest.Params?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.params?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callerContext != nil {
            map["Caller-Context"] = self.callerContext!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.jsonrpc != nil {
            map["Jsonrpc"] = self.jsonrpc!
        }
        if self.params != nil {
            map["Params"] = self.params?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Caller-Context"] as? String {
            self.callerContext = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Jsonrpc"] as? String {
            self.jsonrpc = value
        }
        if let value = dict["Params"] as? [String: Any?] {
            var model = PromptAgentSessionRequest.Params()
            model.fromMap(value)
            self.params = model
        }
    }
}

public class PromptAgentSessionShrinkRequest : Tea.TeaModel {
    public var callerContext: String?

    public var id: String?

    public var jsonrpc: String?

    public var paramsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callerContext != nil {
            map["Caller-Context"] = self.callerContext!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.jsonrpc != nil {
            map["Jsonrpc"] = self.jsonrpc!
        }
        if self.paramsShrink != nil {
            map["Params"] = self.paramsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Caller-Context"] as? String {
            self.callerContext = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Jsonrpc"] as? String {
            self.jsonrpc = value
        }
        if let value = dict["Params"] as? String {
            self.paramsShrink = value
        }
    }
}

public class PromptAgentSessionResponseBody : Tea.TeaModel {
    public var error: Any?

    public var id: String?

    public var jsonrpc: String?

    public var method: String?

    public var params: Any?

    public var requestId: String?

    public var result: Any?

    public var timestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.jsonrpc != nil {
            map["Jsonrpc"] = self.jsonrpc!
        }
        if self.method != nil {
            map["Method"] = self.method!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Error"] as? Any {
            self.error = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Jsonrpc"] as? String {
            self.jsonrpc = value
        }
        if let value = dict["Method"] as? String {
            self.method = value
        }
        if let value = dict["Params"] as? Any {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Any {
            self.result = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class PromptAgentSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PromptAgentSessionResponseBody?

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
            var model = PromptAgentSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
