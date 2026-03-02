import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateCommandRequest : Tea.TeaModel {
    public class ToolExamples : Tea.TeaModel {
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
            if self.query != nil {
                map["Query"] = self.query!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Query"] as? String {
                self.query = value
            }
        }
    }
    public class ToolParams : Tea.TeaModel {
        public var paramDesc: String?

        public var paramExample: String?

        public var paramName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.paramDesc != nil {
                map["ParamDesc"] = self.paramDesc!
            }
            if self.paramExample != nil {
                map["ParamExample"] = self.paramExample!
            }
            if self.paramName != nil {
                map["ParamName"] = self.paramName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParamDesc"] as? String {
                self.paramDesc = value
            }
            if let value = dict["ParamExample"] as? String {
                self.paramExample = value
            }
            if let value = dict["ParamName"] as? String {
                self.paramName = value
            }
        }
    }
    public var appId: String?

    public var domainCode: String?

    public var domainName: String?

    public var toolDescription: String?

    public var toolExamples: [CreateCommandRequest.ToolExamples]?

    public var toolName: String?

    public var toolParams: [CreateCommandRequest.ToolParams]?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.toolDescription != nil {
            map["ToolDescription"] = self.toolDescription!
        }
        if self.toolExamples != nil {
            var tmp : [Any] = []
            for k in self.toolExamples! {
                tmp.append(k.toMap())
            }
            map["ToolExamples"] = tmp
        }
        if self.toolName != nil {
            map["ToolName"] = self.toolName!
        }
        if self.toolParams != nil {
            var tmp : [Any] = []
            for k in self.toolParams! {
                tmp.append(k.toMap())
            }
            map["ToolParams"] = tmp
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["ToolDescription"] as? String {
            self.toolDescription = value
        }
        if let value = dict["ToolExamples"] as? [Any?] {
            var tmp : [CreateCommandRequest.ToolExamples] = []
            for v in value {
                if v != nil {
                    var model = CreateCommandRequest.ToolExamples()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.toolExamples = tmp
        }
        if let value = dict["ToolName"] as? String {
            self.toolName = value
        }
        if let value = dict["ToolParams"] as? [Any?] {
            var tmp : [CreateCommandRequest.ToolParams] = []
            for v in value {
                if v != nil {
                    var model = CreateCommandRequest.ToolParams()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.toolParams = tmp
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateCommandShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var domainCode: String?

    public var domainName: String?

    public var toolDescription: String?

    public var toolExamplesShrink: String?

    public var toolName: String?

    public var toolParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.toolDescription != nil {
            map["ToolDescription"] = self.toolDescription!
        }
        if self.toolExamplesShrink != nil {
            map["ToolExamples"] = self.toolExamplesShrink!
        }
        if self.toolName != nil {
            map["ToolName"] = self.toolName!
        }
        if self.toolParamsShrink != nil {
            map["ToolParams"] = self.toolParamsShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["ToolDescription"] as? String {
            self.toolDescription = value
        }
        if let value = dict["ToolExamples"] as? String {
            self.toolExamplesShrink = value
        }
        if let value = dict["ToolName"] as? String {
            self.toolName = value
        }
        if let value = dict["ToolParams"] as? String {
            self.toolParamsShrink = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateCommandResponseBody : Tea.TeaModel {
    public var domainCode: String?

    public var requestId: String?

    public var toolId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.toolId != nil {
            map["ToolId"] = self.toolId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ToolId"] as? String {
            self.toolId = value
        }
    }
}

public class CreateCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCommandResponseBody?

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
            var model = CreateCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMemoryRequest : Tea.TeaModel {
    public var appId: String?

    public var content: String?

    public var messagesJson: String?

    public var metaData: [String: String]?

    public var projectId: String?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.messagesJson != nil {
            map["MessagesJson"] = self.messagesJson!
        }
        if self.metaData != nil {
            map["MetaData"] = self.metaData!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["MessagesJson"] as? String {
            self.messagesJson = value
        }
        if let value = dict["MetaData"] as? [String: String] {
            self.metaData = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateMemoryShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var content: String?

    public var messagesJson: String?

    public var metaDataShrink: String?

    public var projectId: String?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.messagesJson != nil {
            map["MessagesJson"] = self.messagesJson!
        }
        if self.metaDataShrink != nil {
            map["MetaData"] = self.metaDataShrink!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["MessagesJson"] as? String {
            self.messagesJson = value
        }
        if let value = dict["MetaData"] as? String {
            self.metaDataShrink = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateMemoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class MemoryNodes : Tea.TeaModel {
            public var content: String?

            public var event: String?

            public var memoryNodeId: String?

            public override init() {
                super.init()
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
                    map["Content"] = self.content!
                }
                if self.event != nil {
                    map["Event"] = self.event!
                }
                if self.memoryNodeId != nil {
                    map["MemoryNodeId"] = self.memoryNodeId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["Event"] as? String {
                    self.event = value
                }
                if let value = dict["MemoryNodeId"] as? String {
                    self.memoryNodeId = value
                }
            }
        }
        public var memoryNodes: [CreateMemoryResponseBody.Data.MemoryNodes]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memoryNodes != nil {
                var tmp : [Any] = []
                for k in self.memoryNodes! {
                    tmp.append(k.toMap())
                }
                map["MemoryNodes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MemoryNodes"] as? [Any?] {
                var tmp : [CreateMemoryResponseBody.Data.MemoryNodes] = []
                for v in value {
                    if v != nil {
                        var model = CreateMemoryResponseBody.Data.MemoryNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.memoryNodes = tmp
            }
        }
    }
    public var code: String?

    public var data: CreateMemoryResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateMemoryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMemoryResponseBody?

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
            var model = CreateMemoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMmAppRequest : Tea.TeaModel {
    public class BindingConfig : Tea.TeaModel {
        public class Commands : Tea.TeaModel {
            public class Tools : Tea.TeaModel {
                public var toolId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.toolId != nil {
                        map["ToolId"] = self.toolId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ToolId"] as? String {
                        self.toolId = value
                    }
                }
            }
            public var domainCode: String?

            public var tools: [CreateMmAppRequest.BindingConfig.Commands.Tools]?

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
                if self.domainCode != nil {
                    map["DomainCode"] = self.domainCode!
                }
                if self.tools != nil {
                    var tmp : [Any] = []
                    for k in self.tools! {
                        tmp.append(k.toMap())
                    }
                    map["Tools"] = tmp
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DomainCode"] as? String {
                    self.domainCode = value
                }
                if let value = dict["Tools"] as? [Any?] {
                    var tmp : [CreateMmAppRequest.BindingConfig.Commands.Tools] = []
                    for v in value {
                        if v != nil {
                            var model = CreateMmAppRequest.BindingConfig.Commands.Tools()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tools = tmp
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var commands: [CreateMmAppRequest.BindingConfig.Commands]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commands != nil {
                var tmp : [Any] = []
                for k in self.commands! {
                    tmp.append(k.toMap())
                }
                map["Commands"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Commands"] as? [Any?] {
                var tmp : [CreateMmAppRequest.BindingConfig.Commands] = []
                for v in value {
                    if v != nil {
                        var model = CreateMmAppRequest.BindingConfig.Commands()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.commands = tmp
            }
        }
    }
    public class ConversationConfig : Tea.TeaModel {
        public var asrModel: String?

        public var openAsr: Bool?

        public var openTts: Bool?

        public var ttsModel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asrModel != nil {
                map["AsrModel"] = self.asrModel!
            }
            if self.openAsr != nil {
                map["OpenAsr"] = self.openAsr!
            }
            if self.openTts != nil {
                map["OpenTts"] = self.openTts!
            }
            if self.ttsModel != nil {
                map["TtsModel"] = self.ttsModel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AsrModel"] as? String {
                self.asrModel = value
            }
            if let value = dict["OpenAsr"] as? Bool {
                self.openAsr = value
            }
            if let value = dict["OpenTts"] as? Bool {
                self.openTts = value
            }
            if let value = dict["TtsModel"] as? String {
                self.ttsModel = value
            }
        }
    }
    public class ModelConfig : Tea.TeaModel {
        public var historyLimit: Int32?

        public var modelType: String?

        public var openWebSearch: Bool?

        public var textModal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.historyLimit != nil {
                map["HistoryLimit"] = self.historyLimit!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.openWebSearch != nil {
                map["OpenWebSearch"] = self.openWebSearch!
            }
            if self.textModal != nil {
                map["TextModal"] = self.textModal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HistoryLimit"] as? Int32 {
                self.historyLimit = value
            }
            if let value = dict["ModelType"] as? String {
                self.modelType = value
            }
            if let value = dict["OpenWebSearch"] as? Bool {
                self.openWebSearch = value
            }
            if let value = dict["TextModal"] as? String {
                self.textModal = value
            }
        }
    }
    public var appName: String?

    public var bindingConfig: CreateMmAppRequest.BindingConfig?

    public var conversationConfig: CreateMmAppRequest.ConversationConfig?

    public var modelConfig: CreateMmAppRequest.ModelConfig?

    public var prompt: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bindingConfig?.validate()
        try self.conversationConfig?.validate()
        try self.modelConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bindingConfig != nil {
            map["BindingConfig"] = self.bindingConfig?.toMap()
        }
        if self.conversationConfig != nil {
            map["ConversationConfig"] = self.conversationConfig?.toMap()
        }
        if self.modelConfig != nil {
            map["ModelConfig"] = self.modelConfig?.toMap()
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BindingConfig"] as? [String: Any?] {
            var model = CreateMmAppRequest.BindingConfig()
            model.fromMap(value)
            self.bindingConfig = model
        }
        if let value = dict["ConversationConfig"] as? [String: Any?] {
            var model = CreateMmAppRequest.ConversationConfig()
            model.fromMap(value)
            self.conversationConfig = model
        }
        if let value = dict["ModelConfig"] as? [String: Any?] {
            var model = CreateMmAppRequest.ModelConfig()
            model.fromMap(value)
            self.modelConfig = model
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateMmAppShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var bindingConfigShrink: String?

    public var conversationConfigShrink: String?

    public var modelConfigShrink: String?

    public var prompt: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bindingConfigShrink != nil {
            map["BindingConfig"] = self.bindingConfigShrink!
        }
        if self.conversationConfigShrink != nil {
            map["ConversationConfig"] = self.conversationConfigShrink!
        }
        if self.modelConfigShrink != nil {
            map["ModelConfig"] = self.modelConfigShrink!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BindingConfig"] as? String {
            self.bindingConfigShrink = value
        }
        if let value = dict["ConversationConfig"] as? String {
            self.conversationConfigShrink = value
        }
        if let value = dict["ModelConfig"] as? String {
            self.modelConfigShrink = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateMmAppResponseBody : Tea.TeaModel {
    public var appId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateMmAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMmAppResponseBody?

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
            var model = CreateMmAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProfileRequest : Tea.TeaModel {
    public class Attributes : Tea.TeaModel {
        public var defaultValue: String?

        public var description_: String?

        public var immutable: Bool?

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
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.immutable != nil {
                map["Immutable"] = self.immutable!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultValue"] as? String {
                self.defaultValue = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Immutable"] as? Bool {
                self.immutable = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var appId: String?

    public var attributes: [CreateProfileRequest.Attributes]?

    public var description_: String?

    public var name: String?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.attributes != nil {
            var tmp : [Any] = []
            for k in self.attributes! {
                tmp.append(k.toMap())
            }
            map["Attributes"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Attributes"] as? [Any?] {
            var tmp : [CreateProfileRequest.Attributes] = []
            for v in value {
                if v != nil {
                    var model = CreateProfileRequest.Attributes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attributes = tmp
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateProfileShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var attributesShrink: String?

    public var description_: String?

    public var name: String?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.attributesShrink != nil {
            map["Attributes"] = self.attributesShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Attributes"] as? String {
            self.attributesShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateProfileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var schemaId: String?

        public override init() {
            super.init()
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
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.schemaId != nil {
                map["SchemaId"] = self.schemaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SchemaId"] as? String {
                self.schemaId = value
            }
        }
    }
    public var code: String?

    public var data: CreateProfileResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateProfileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProfileResponseBody?

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
            var model = CreateProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCommandRequest : Tea.TeaModel {
    public var appId: String?

    public var domainCode: String?

    public var toolId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.toolId != nil {
            map["ToolId"] = self.toolId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["ToolId"] as? String {
            self.toolId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteCommandResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCommandResponseBody?

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
            var model = DeleteCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMemoryRequest : Tea.TeaModel {
    public var appId: String?

    public var memoryNodeId: String?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.memoryNodeId != nil {
            map["MemoryNodeId"] = self.memoryNodeId!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["MemoryNodeId"] as? String {
            self.memoryNodeId = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteMemoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
                map["RequestId"] = self.requestId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
        }
    }
    public var code: String?

    public var data: DeleteMemoryResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteMemoryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMemoryResponseBody?

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
            var model = DeleteMemoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMmAppRequest : Tea.TeaModel {
    public var appId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteMmAppResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteMmAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMmAppResponseBody?

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
            var model = DeleteMmAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteProfileRequest : Tea.TeaModel {
    public var appId: String?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteProfileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var schemaId: String?

        public override init() {
            super.init()
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
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.schemaId != nil {
                map["SchemaId"] = self.schemaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SchemaId"] as? String {
                self.schemaId = value
            }
        }
    }
    public var code: String?

    public var data: DeleteProfileResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteProfileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProfileResponseBody?

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
            var model = DeleteProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCommandRequest : Tea.TeaModel {
    public var appId: String?

    public var domainCode: String?

    public var toolId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.toolId != nil {
            map["ToolId"] = self.toolId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["ToolId"] as? String {
            self.toolId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DescribeCommandResponseBody : Tea.TeaModel {
    public class ToolExamples : Tea.TeaModel {
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
            if self.query != nil {
                map["Query"] = self.query!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Query"] as? String {
                self.query = value
            }
        }
    }
    public class ToolParams : Tea.TeaModel {
        public var paramDesc: String?

        public var paramExample: String?

        public var paramName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.paramDesc != nil {
                map["ParamDesc"] = self.paramDesc!
            }
            if self.paramExample != nil {
                map["ParamExample"] = self.paramExample!
            }
            if self.paramName != nil {
                map["ParamName"] = self.paramName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParamDesc"] as? String {
                self.paramDesc = value
            }
            if let value = dict["ParamExample"] as? String {
                self.paramExample = value
            }
            if let value = dict["ParamName"] as? String {
                self.paramName = value
            }
        }
    }
    public var appId: String?

    public var createUserId: String?

    public var createUserName: String?

    public var description_: String?

    public var domainCode: String?

    public var domainName: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var modifyUserId: String?

    public var modifyUserName: String?

    public var requestId: String?

    public var toolExamples: [DescribeCommandResponseBody.ToolExamples]?

    public var toolId: String?

    public var toolName: String?

    public var toolParams: [DescribeCommandResponseBody.ToolParams]?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.modifyUserId != nil {
            map["ModifyUserId"] = self.modifyUserId!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.toolExamples != nil {
            var tmp : [Any] = []
            for k in self.toolExamples! {
                tmp.append(k.toMap())
            }
            map["ToolExamples"] = tmp
        }
        if self.toolId != nil {
            map["ToolId"] = self.toolId!
        }
        if self.toolName != nil {
            map["ToolName"] = self.toolName!
        }
        if self.toolParams != nil {
            var tmp : [Any] = []
            for k in self.toolParams! {
                tmp.append(k.toMap())
            }
            map["ToolParams"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["CreateUserId"] as? String {
            self.createUserId = value
        }
        if let value = dict["CreateUserName"] as? String {
            self.createUserName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["ModifyUserId"] as? String {
            self.modifyUserId = value
        }
        if let value = dict["ModifyUserName"] as? String {
            self.modifyUserName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ToolExamples"] as? [Any?] {
            var tmp : [DescribeCommandResponseBody.ToolExamples] = []
            for v in value {
                if v != nil {
                    var model = DescribeCommandResponseBody.ToolExamples()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.toolExamples = tmp
        }
        if let value = dict["ToolId"] as? String {
            self.toolId = value
        }
        if let value = dict["ToolName"] as? String {
            self.toolName = value
        }
        if let value = dict["ToolParams"] as? [Any?] {
            var tmp : [DescribeCommandResponseBody.ToolParams] = []
            for v in value {
                if v != nil {
                    var model = DescribeCommandResponseBody.ToolParams()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.toolParams = tmp
        }
    }
}

public class DescribeCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCommandResponseBody?

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
            var model = DescribeCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMmAppRequest : Tea.TeaModel {
    public var appId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DescribeMmAppResponseBody : Tea.TeaModel {
    public class ConversationConfig : Tea.TeaModel {
        public var asrModel: String?

        public var openAsr: Bool?

        public var openTts: Bool?

        public var ttsModel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asrModel != nil {
                map["AsrModel"] = self.asrModel!
            }
            if self.openAsr != nil {
                map["OpenAsr"] = self.openAsr!
            }
            if self.openTts != nil {
                map["OpenTts"] = self.openTts!
            }
            if self.ttsModel != nil {
                map["TtsModel"] = self.ttsModel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AsrModel"] as? String {
                self.asrModel = value
            }
            if let value = dict["OpenAsr"] as? Bool {
                self.openAsr = value
            }
            if let value = dict["OpenTts"] as? Bool {
                self.openTts = value
            }
            if let value = dict["TtsModel"] as? String {
                self.ttsModel = value
            }
        }
    }
    public class ModelConfig : Tea.TeaModel {
        public var historyLimit: Int32?

        public var modelType: String?

        public var openWebSearch: Bool?

        public var textModal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.historyLimit != nil {
                map["HistoryLimit"] = self.historyLimit!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.openWebSearch != nil {
                map["OpenWebSearch"] = self.openWebSearch!
            }
            if self.textModal != nil {
                map["TextModal"] = self.textModal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HistoryLimit"] as? Int32 {
                self.historyLimit = value
            }
            if let value = dict["ModelType"] as? String {
                self.modelType = value
            }
            if let value = dict["OpenWebSearch"] as? Bool {
                self.openWebSearch = value
            }
            if let value = dict["TextModal"] as? String {
                self.textModal = value
            }
        }
    }
    public var appId: String?

    public var appName: String?

    public var conversationConfig: DescribeMmAppResponseBody.ConversationConfig?

    public var createUserId: String?

    public var createUserName: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var modelConfig: DescribeMmAppResponseBody.ModelConfig?

    public var modifyUserId: String?

    public var modifyUserName: String?

    public var prompt: String?

    public var publishVersion: Int64?

    public var requestId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.conversationConfig?.validate()
        try self.modelConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.conversationConfig != nil {
            map["ConversationConfig"] = self.conversationConfig?.toMap()
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.modelConfig != nil {
            map["ModelConfig"] = self.modelConfig?.toMap()
        }
        if self.modifyUserId != nil {
            map["ModifyUserId"] = self.modifyUserId!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.publishVersion != nil {
            map["PublishVersion"] = self.publishVersion!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ConversationConfig"] as? [String: Any?] {
            var model = DescribeMmAppResponseBody.ConversationConfig()
            model.fromMap(value)
            self.conversationConfig = model
        }
        if let value = dict["CreateUserId"] as? String {
            self.createUserId = value
        }
        if let value = dict["CreateUserName"] as? String {
            self.createUserName = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["ModelConfig"] as? [String: Any?] {
            var model = DescribeMmAppResponseBody.ModelConfig()
            model.fromMap(value)
            self.modelConfig = model
        }
        if let value = dict["ModifyUserId"] as? String {
            self.modifyUserId = value
        }
        if let value = dict["ModifyUserName"] as? String {
            self.modifyUserName = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["PublishVersion"] as? Int64 {
            self.publishVersion = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeMmAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMmAppResponseBody?

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
            var model = DescribeMmAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCommandRequest : Tea.TeaModel {
    public var appId: String?

    public var domainCode: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var toolName: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.toolName != nil {
            map["ToolName"] = self.toolName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ToolName"] as? String {
            self.toolName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListCommandResponseBody : Tea.TeaModel {
    public class ToolInfoList : Tea.TeaModel {
        public class ToolExamples : Tea.TeaModel {
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
                if self.query != nil {
                    map["Query"] = self.query!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Query"] as? String {
                    self.query = value
                }
            }
        }
        public class ToolParams : Tea.TeaModel {
            public var paramDesc: String?

            public var paramExample: String?

            public var paramName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.paramDesc != nil {
                    map["ParamDesc"] = self.paramDesc!
                }
                if self.paramExample != nil {
                    map["ParamExample"] = self.paramExample!
                }
                if self.paramName != nil {
                    map["ParamName"] = self.paramName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParamDesc"] as? String {
                    self.paramDesc = value
                }
                if let value = dict["ParamExample"] as? String {
                    self.paramExample = value
                }
                if let value = dict["ParamName"] as? String {
                    self.paramName = value
                }
            }
        }
        public var appId: String?

        public var createUserId: String?

        public var createUserName: String?

        public var description_: String?

        public var domainCode: String?

        public var domainName: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var modifyUserId: String?

        public var modifyUserName: String?

        public var toolExamples: [ListCommandResponseBody.ToolInfoList.ToolExamples]?

        public var toolId: String?

        public var toolName: String?

        public var toolParams: [ListCommandResponseBody.ToolInfoList.ToolParams]?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.createUserId != nil {
                map["CreateUserId"] = self.createUserId!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.domainCode != nil {
                map["DomainCode"] = self.domainCode!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.modifyUserId != nil {
                map["ModifyUserId"] = self.modifyUserId!
            }
            if self.modifyUserName != nil {
                map["ModifyUserName"] = self.modifyUserName!
            }
            if self.toolExamples != nil {
                var tmp : [Any] = []
                for k in self.toolExamples! {
                    tmp.append(k.toMap())
                }
                map["ToolExamples"] = tmp
            }
            if self.toolId != nil {
                map["ToolId"] = self.toolId!
            }
            if self.toolName != nil {
                map["ToolName"] = self.toolName!
            }
            if self.toolParams != nil {
                var tmp : [Any] = []
                for k in self.toolParams! {
                    tmp.append(k.toMap())
                }
                map["ToolParams"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["CreateUserId"] as? String {
                self.createUserId = value
            }
            if let value = dict["CreateUserName"] as? String {
                self.createUserName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DomainCode"] as? String {
                self.domainCode = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["ModifyUserId"] as? String {
                self.modifyUserId = value
            }
            if let value = dict["ModifyUserName"] as? String {
                self.modifyUserName = value
            }
            if let value = dict["ToolExamples"] as? [Any?] {
                var tmp : [ListCommandResponseBody.ToolInfoList.ToolExamples] = []
                for v in value {
                    if v != nil {
                        var model = ListCommandResponseBody.ToolInfoList.ToolExamples()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.toolExamples = tmp
            }
            if let value = dict["ToolId"] as? String {
                self.toolId = value
            }
            if let value = dict["ToolName"] as? String {
                self.toolName = value
            }
            if let value = dict["ToolParams"] as? [Any?] {
                var tmp : [ListCommandResponseBody.ToolInfoList.ToolParams] = []
                for v in value {
                    if v != nil {
                        var model = ListCommandResponseBody.ToolInfoList.ToolParams()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.toolParams = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var toolInfoList: [ListCommandResponseBody.ToolInfoList]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.toolInfoList != nil {
            var tmp : [Any] = []
            for k in self.toolInfoList! {
                tmp.append(k.toMap())
            }
            map["ToolInfoList"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ToolInfoList"] as? [Any?] {
            var tmp : [ListCommandResponseBody.ToolInfoList] = []
            for v in value {
                if v != nil {
                    var model = ListCommandResponseBody.ToolInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.toolInfoList = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCommandResponseBody?

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
            var model = ListCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMmAppRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: Int32?

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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListMmAppResponseBody : Tea.TeaModel {
    public class AppInfoList : Tea.TeaModel {
        public class ConversationConfig : Tea.TeaModel {
            public var asrModel: String?

            public var openAsr: Bool?

            public var openTts: Bool?

            public var ttsModel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.asrModel != nil {
                    map["AsrModel"] = self.asrModel!
                }
                if self.openAsr != nil {
                    map["OpenAsr"] = self.openAsr!
                }
                if self.openTts != nil {
                    map["OpenTts"] = self.openTts!
                }
                if self.ttsModel != nil {
                    map["TtsModel"] = self.ttsModel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AsrModel"] as? String {
                    self.asrModel = value
                }
                if let value = dict["OpenAsr"] as? Bool {
                    self.openAsr = value
                }
                if let value = dict["OpenTts"] as? Bool {
                    self.openTts = value
                }
                if let value = dict["TtsModel"] as? String {
                    self.ttsModel = value
                }
            }
        }
        public class ModelConfig : Tea.TeaModel {
            public var historyLimit: String?

            public var modelType: String?

            public var openWebSearch: Bool?

            public var textModal: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.historyLimit != nil {
                    map["HistoryLimit"] = self.historyLimit!
                }
                if self.modelType != nil {
                    map["ModelType"] = self.modelType!
                }
                if self.openWebSearch != nil {
                    map["OpenWebSearch"] = self.openWebSearch!
                }
                if self.textModal != nil {
                    map["TextModal"] = self.textModal!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HistoryLimit"] as? String {
                    self.historyLimit = value
                }
                if let value = dict["ModelType"] as? String {
                    self.modelType = value
                }
                if let value = dict["OpenWebSearch"] as? Bool {
                    self.openWebSearch = value
                }
                if let value = dict["TextModal"] as? String {
                    self.textModal = value
                }
            }
        }
        public var appId: String?

        public var appName: String?

        public var conversationConfig: ListMmAppResponseBody.AppInfoList.ConversationConfig?

        public var createUserId: String?

        public var createUserName: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var modelConfig: ListMmAppResponseBody.AppInfoList.ModelConfig?

        public var modifyUserId: String?

        public var modifyUserName: String?

        public var prompt: String?

        public var publishVersion: Int64?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.conversationConfig?.validate()
            try self.modelConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.conversationConfig != nil {
                map["ConversationConfig"] = self.conversationConfig?.toMap()
            }
            if self.createUserId != nil {
                map["CreateUserId"] = self.createUserId!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.modelConfig != nil {
                map["ModelConfig"] = self.modelConfig?.toMap()
            }
            if self.modifyUserId != nil {
                map["ModifyUserId"] = self.modifyUserId!
            }
            if self.modifyUserName != nil {
                map["ModifyUserName"] = self.modifyUserName!
            }
            if self.prompt != nil {
                map["Prompt"] = self.prompt!
            }
            if self.publishVersion != nil {
                map["PublishVersion"] = self.publishVersion!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["ConversationConfig"] as? [String: Any?] {
                var model = ListMmAppResponseBody.AppInfoList.ConversationConfig()
                model.fromMap(value)
                self.conversationConfig = model
            }
            if let value = dict["CreateUserId"] as? String {
                self.createUserId = value
            }
            if let value = dict["CreateUserName"] as? String {
                self.createUserName = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["ModelConfig"] as? [String: Any?] {
                var model = ListMmAppResponseBody.AppInfoList.ModelConfig()
                model.fromMap(value)
                self.modelConfig = model
            }
            if let value = dict["ModifyUserId"] as? String {
                self.modifyUserId = value
            }
            if let value = dict["ModifyUserName"] as? String {
                self.modifyUserName = value
            }
            if let value = dict["Prompt"] as? String {
                self.prompt = value
            }
            if let value = dict["PublishVersion"] as? Int64 {
                self.publishVersion = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var appInfoList: [ListMmAppResponseBody.AppInfoList]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.appInfoList != nil {
            var tmp : [Any] = []
            for k in self.appInfoList! {
                tmp.append(k.toMap())
            }
            map["AppInfoList"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInfoList"] as? [Any?] {
            var tmp : [ListMmAppResponseBody.AppInfoList] = []
            for v in value {
                if v != nil {
                    var model = ListMmAppResponseBody.AppInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.appInfoList = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListMmAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMmAppResponseBody?

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
            var model = ListMmAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPublishedMmAppRequest : Tea.TeaModel {
    public var appId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListPublishedMmAppResponseBody : Tea.TeaModel {
    public class PublishedVersionInfoList : Tea.TeaModel {
        public var appId: String?

        public var appName: String?

        public var createUserId: String?

        public var createUserName: String?

        public var description_: String?

        public var gmtCreate: String?

        public var publishTime: String?

        public var version: Int64?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.createUserId != nil {
                map["CreateUserId"] = self.createUserId!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.publishTime != nil {
                map["PublishTime"] = self.publishTime!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["CreateUserId"] as? String {
                self.createUserId = value
            }
            if let value = dict["CreateUserName"] as? String {
                self.createUserName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["PublishTime"] as? String {
                self.publishTime = value
            }
            if let value = dict["Version"] as? Int64 {
                self.version = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var publishedVersionInfoList: [ListPublishedMmAppResponseBody.PublishedVersionInfoList]?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.publishedVersionInfoList != nil {
            var tmp : [Any] = []
            for k in self.publishedVersionInfoList! {
                tmp.append(k.toMap())
            }
            map["PublishedVersionInfoList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PublishedVersionInfoList"] as? [Any?] {
            var tmp : [ListPublishedMmAppResponseBody.PublishedVersionInfoList] = []
            for v in value {
                if v != nil {
                    var model = ListPublishedMmAppResponseBody.PublishedVersionInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.publishedVersionInfoList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListPublishedMmAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublishedMmAppResponseBody?

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
            var model = ListPublishedMmAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PatchMemoryConfigRequest : Tea.TeaModel {
    public var appId: String?

    public var autoUpdate: Bool?

    public var expirationTime: Int32?

    public var prompt: String?

    public var threshold: Double?

    public var topK: Int32?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.autoUpdate != nil {
            map["AutoUpdate"] = self.autoUpdate!
        }
        if self.expirationTime != nil {
            map["ExpirationTime"] = self.expirationTime!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        if self.topK != nil {
            map["TopK"] = self.topK!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AutoUpdate"] as? Bool {
            self.autoUpdate = value
        }
        if let value = dict["ExpirationTime"] as? Int32 {
            self.expirationTime = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["Threshold"] as? Double {
            self.threshold = value
        }
        if let value = dict["TopK"] as? Int32 {
            self.topK = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class PatchMemoryConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var autoUpdate: Bool?

        public var expirationTime: Int32?

        public var prompt: String?

        public var threshold: Double?

        public var topK: Int32?

        public var userDefinedId: String?

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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.autoUpdate != nil {
                map["AutoUpdate"] = self.autoUpdate!
            }
            if self.expirationTime != nil {
                map["ExpirationTime"] = self.expirationTime!
            }
            if self.prompt != nil {
                map["Prompt"] = self.prompt!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            if self.topK != nil {
                map["TopK"] = self.topK!
            }
            if self.userDefinedId != nil {
                map["UserDefinedId"] = self.userDefinedId!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AutoUpdate"] as? Bool {
                self.autoUpdate = value
            }
            if let value = dict["ExpirationTime"] as? Int32 {
                self.expirationTime = value
            }
            if let value = dict["Prompt"] as? String {
                self.prompt = value
            }
            if let value = dict["Threshold"] as? Double {
                self.threshold = value
            }
            if let value = dict["TopK"] as? Int32 {
                self.topK = value
            }
            if let value = dict["UserDefinedId"] as? String {
                self.userDefinedId = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: PatchMemoryConfigResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = PatchMemoryConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PatchMemoryConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PatchMemoryConfigResponseBody?

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
            var model = PatchMemoryConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PublishMmAppRequest : Tea.TeaModel {
    public var appId: String?

    public var description_: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class PublishMmAppResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PublishMmAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishMmAppResponseBody?

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
            var model = PublishMmAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMemoryConfigRequest : Tea.TeaModel {
    public var appId: String?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryMemoryConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var autoUpdate: Bool?

        public var expirationTime: Int32?

        public var prompt: String?

        public var threshold: Double?

        public var topK: Int32?

        public var userDefinedId: String?

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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.autoUpdate != nil {
                map["AutoUpdate"] = self.autoUpdate!
            }
            if self.expirationTime != nil {
                map["ExpirationTime"] = self.expirationTime!
            }
            if self.prompt != nil {
                map["Prompt"] = self.prompt!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            if self.topK != nil {
                map["TopK"] = self.topK!
            }
            if self.userDefinedId != nil {
                map["UserDefinedId"] = self.userDefinedId!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AutoUpdate"] as? Bool {
                self.autoUpdate = value
            }
            if let value = dict["ExpirationTime"] as? Int32 {
                self.expirationTime = value
            }
            if let value = dict["Prompt"] as? String {
                self.prompt = value
            }
            if let value = dict["Threshold"] as? Double {
                self.threshold = value
            }
            if let value = dict["TopK"] as? Int32 {
                self.topK = value
            }
            if let value = dict["UserDefinedId"] as? String {
                self.userDefinedId = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var code: String?

    public var data: QueryMemoryConfigResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryMemoryConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryMemoryConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMemoryConfigResponseBody?

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
            var model = QueryMemoryConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMemoryListRequest : Tea.TeaModel {
    public var appId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProjectId"] as? String {
            self.projectId = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryMemoryListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class MemoryNodes : Tea.TeaModel {
            public var content: String?

            public var createTime: Int64?

            public var event: String?

            public var memoryNodeId: String?

            public var metaData: [String: Any]?

            public var metaDataJson: String?

            public var oldContent: String?

            public var projectId: String?

            public var timestamp: Int64?

            public var updateTime: Int64?

            public override init() {
                super.init()
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
                    map["Content"] = self.content!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.event != nil {
                    map["Event"] = self.event!
                }
                if self.memoryNodeId != nil {
                    map["MemoryNodeId"] = self.memoryNodeId!
                }
                if self.metaData != nil {
                    map["MetaData"] = self.metaData!
                }
                if self.metaDataJson != nil {
                    map["MetaDataJson"] = self.metaDataJson!
                }
                if self.oldContent != nil {
                    map["OldContent"] = self.oldContent!
                }
                if self.projectId != nil {
                    map["ProjectId"] = self.projectId!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Event"] as? String {
                    self.event = value
                }
                if let value = dict["MemoryNodeId"] as? String {
                    self.memoryNodeId = value
                }
                if let value = dict["MetaData"] as? [String: Any] {
                    self.metaData = value
                }
                if let value = dict["MetaDataJson"] as? String {
                    self.metaDataJson = value
                }
                if let value = dict["OldContent"] as? String {
                    self.oldContent = value
                }
                if let value = dict["ProjectId"] as? String {
                    self.projectId = value
                }
                if let value = dict["Timestamp"] as? Int64 {
                    self.timestamp = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
            }
        }
        public var memoryNodes: [QueryMemoryListResponseBody.Data.MemoryNodes]?

        public var pageNum: String?

        public var pageSize: String?

        public var total: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memoryNodes != nil {
                var tmp : [Any] = []
                for k in self.memoryNodes! {
                    tmp.append(k.toMap())
                }
                map["MemoryNodes"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MemoryNodes"] as? [Any?] {
                var tmp : [QueryMemoryListResponseBody.Data.MemoryNodes] = []
                for v in value {
                    if v != nil {
                        var model = QueryMemoryListResponseBody.Data.MemoryNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.memoryNodes = tmp
            }
            if let value = dict["PageNum"] as? String {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? String {
                self.pageSize = value
            }
            if let value = dict["Total"] as? String {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: QueryMemoryListResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryMemoryListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryMemoryListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMemoryListResponseBody?

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
            var model = QueryMemoryListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryProfileRequest : Tea.TeaModel {
    public var appId: String?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryProfileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Attributes : Tea.TeaModel {
            public var attributeId: String?

            public var defaultValue: String?

            public var description_: String?

            public var immutable: String?

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
                if self.attributeId != nil {
                    map["AttributeId"] = self.attributeId!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.immutable != nil {
                    map["Immutable"] = self.immutable!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttributeId"] as? String {
                    self.attributeId = value
                }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Immutable"] as? String {
                    self.immutable = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var attributes: [QueryProfileResponseBody.Data.Attributes]?

        public var description_: String?

        public var name: String?

        public var schemaId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributes != nil {
                var tmp : [Any] = []
                for k in self.attributes! {
                    tmp.append(k.toMap())
                }
                map["Attributes"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.schemaId != nil {
                map["SchemaId"] = self.schemaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [Any?] {
                var tmp : [QueryProfileResponseBody.Data.Attributes] = []
                for v in value {
                    if v != nil {
                        var model = QueryProfileResponseBody.Data.Attributes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.attributes = tmp
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SchemaId"] as? String {
                self.schemaId = value
            }
        }
    }
    public var code: String?

    public var data: QueryProfileResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryProfileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryProfileResponseBody?

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
            var model = QueryProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUserProfileRequest : Tea.TeaModel {
    public var appId: String?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryUserProfileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Attributes : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public var value: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var attributes: [QueryUserProfileResponseBody.Data.Attributes]?

        public var description_: String?

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
            if self.attributes != nil {
                var tmp : [Any] = []
                for k in self.attributes! {
                    tmp.append(k.toMap())
                }
                map["Attributes"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [Any?] {
                var tmp : [QueryUserProfileResponseBody.Data.Attributes] = []
                for v in value {
                    if v != nil {
                        var model = QueryUserProfileResponseBody.Data.Attributes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.attributes = tmp
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var code: String?

    public var data: QueryUserProfileResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryUserProfileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryUserProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUserProfileResponseBody?

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
            var model = QueryUserProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCommandRequest : Tea.TeaModel {
    public class ToolExamples : Tea.TeaModel {
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
            if self.query != nil {
                map["Query"] = self.query!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Query"] as? String {
                self.query = value
            }
        }
    }
    public class ToolParams : Tea.TeaModel {
        public var paramDesc: String?

        public var paramExample: String?

        public var paramName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.paramDesc != nil {
                map["ParamDesc"] = self.paramDesc!
            }
            if self.paramExample != nil {
                map["ParamExample"] = self.paramExample!
            }
            if self.paramName != nil {
                map["ParamName"] = self.paramName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParamDesc"] as? String {
                self.paramDesc = value
            }
            if let value = dict["ParamExample"] as? String {
                self.paramExample = value
            }
            if let value = dict["ParamName"] as? String {
                self.paramName = value
            }
        }
    }
    public var appId: String?

    public var domainCode: String?

    public var domainName: String?

    public var toolDescription: String?

    public var toolExamples: [UpdateCommandRequest.ToolExamples]?

    public var toolId: String?

    public var toolName: String?

    public var toolParams: [UpdateCommandRequest.ToolParams]?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.toolDescription != nil {
            map["ToolDescription"] = self.toolDescription!
        }
        if self.toolExamples != nil {
            var tmp : [Any] = []
            for k in self.toolExamples! {
                tmp.append(k.toMap())
            }
            map["ToolExamples"] = tmp
        }
        if self.toolId != nil {
            map["ToolId"] = self.toolId!
        }
        if self.toolName != nil {
            map["ToolName"] = self.toolName!
        }
        if self.toolParams != nil {
            var tmp : [Any] = []
            for k in self.toolParams! {
                tmp.append(k.toMap())
            }
            map["ToolParams"] = tmp
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["ToolDescription"] as? String {
            self.toolDescription = value
        }
        if let value = dict["ToolExamples"] as? [Any?] {
            var tmp : [UpdateCommandRequest.ToolExamples] = []
            for v in value {
                if v != nil {
                    var model = UpdateCommandRequest.ToolExamples()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.toolExamples = tmp
        }
        if let value = dict["ToolId"] as? String {
            self.toolId = value
        }
        if let value = dict["ToolName"] as? String {
            self.toolName = value
        }
        if let value = dict["ToolParams"] as? [Any?] {
            var tmp : [UpdateCommandRequest.ToolParams] = []
            for v in value {
                if v != nil {
                    var model = UpdateCommandRequest.ToolParams()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.toolParams = tmp
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateCommandShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var domainCode: String?

    public var domainName: String?

    public var toolDescription: String?

    public var toolExamplesShrink: String?

    public var toolId: String?

    public var toolName: String?

    public var toolParamsShrink: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.domainCode != nil {
            map["DomainCode"] = self.domainCode!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.toolDescription != nil {
            map["ToolDescription"] = self.toolDescription!
        }
        if self.toolExamplesShrink != nil {
            map["ToolExamples"] = self.toolExamplesShrink!
        }
        if self.toolId != nil {
            map["ToolId"] = self.toolId!
        }
        if self.toolName != nil {
            map["ToolName"] = self.toolName!
        }
        if self.toolParamsShrink != nil {
            map["ToolParams"] = self.toolParamsShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["DomainCode"] as? String {
            self.domainCode = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["ToolDescription"] as? String {
            self.toolDescription = value
        }
        if let value = dict["ToolExamples"] as? String {
            self.toolExamplesShrink = value
        }
        if let value = dict["ToolId"] as? String {
            self.toolId = value
        }
        if let value = dict["ToolName"] as? String {
            self.toolName = value
        }
        if let value = dict["ToolParams"] as? String {
            self.toolParamsShrink = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateCommandResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCommandResponseBody?

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
            var model = UpdateCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMemoryRequest : Tea.TeaModel {
    public var appId: String?

    public var content: String?

    public var memoryNodeId: String?

    public var metaData: [String: String]?

    public var source: String?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.memoryNodeId != nil {
            map["MemoryNodeId"] = self.memoryNodeId!
        }
        if self.metaData != nil {
            map["MetaData"] = self.metaData!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["MemoryNodeId"] as? String {
            self.memoryNodeId = value
        }
        if let value = dict["MetaData"] as? [String: String] {
            self.metaData = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateMemoryShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var content: String?

    public var memoryNodeId: String?

    public var metaDataShrink: String?

    public var source: String?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.memoryNodeId != nil {
            map["MemoryNodeId"] = self.memoryNodeId!
        }
        if self.metaDataShrink != nil {
            map["MetaData"] = self.metaDataShrink!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["MemoryNodeId"] as? String {
            self.memoryNodeId = value
        }
        if let value = dict["MetaData"] as? String {
            self.metaDataShrink = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateMemoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
                map["RequestId"] = self.requestId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateMemoryResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateMemoryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMemoryResponseBody?

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
            var model = UpdateMemoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMmAppRequest : Tea.TeaModel {
    public class BindingConfig : Tea.TeaModel {
        public class Commands : Tea.TeaModel {
            public class Tools : Tea.TeaModel {
                public var toolId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.toolId != nil {
                        map["ToolId"] = self.toolId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ToolId"] as? String {
                        self.toolId = value
                    }
                }
            }
            public var domainCode: String?

            public var tools: [UpdateMmAppRequest.BindingConfig.Commands.Tools]?

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
                if self.domainCode != nil {
                    map["DomainCode"] = self.domainCode!
                }
                if self.tools != nil {
                    var tmp : [Any] = []
                    for k in self.tools! {
                        tmp.append(k.toMap())
                    }
                    map["Tools"] = tmp
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DomainCode"] as? String {
                    self.domainCode = value
                }
                if let value = dict["Tools"] as? [Any?] {
                    var tmp : [UpdateMmAppRequest.BindingConfig.Commands.Tools] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateMmAppRequest.BindingConfig.Commands.Tools()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tools = tmp
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var commands: [UpdateMmAppRequest.BindingConfig.Commands]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commands != nil {
                var tmp : [Any] = []
                for k in self.commands! {
                    tmp.append(k.toMap())
                }
                map["Commands"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Commands"] as? [Any?] {
                var tmp : [UpdateMmAppRequest.BindingConfig.Commands] = []
                for v in value {
                    if v != nil {
                        var model = UpdateMmAppRequest.BindingConfig.Commands()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.commands = tmp
            }
        }
    }
    public class ConversationConfig : Tea.TeaModel {
        public var asrModel: String?

        public var openAsr: Bool?

        public var openTts: Bool?

        public var ttsModel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asrModel != nil {
                map["AsrModel"] = self.asrModel!
            }
            if self.openAsr != nil {
                map["OpenAsr"] = self.openAsr!
            }
            if self.openTts != nil {
                map["OpenTts"] = self.openTts!
            }
            if self.ttsModel != nil {
                map["TtsModel"] = self.ttsModel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AsrModel"] as? String {
                self.asrModel = value
            }
            if let value = dict["OpenAsr"] as? Bool {
                self.openAsr = value
            }
            if let value = dict["OpenTts"] as? Bool {
                self.openTts = value
            }
            if let value = dict["TtsModel"] as? String {
                self.ttsModel = value
            }
        }
    }
    public class ModelConfig : Tea.TeaModel {
        public var historyLimit: Int32?

        public var modelType: String?

        public var openWebSearch: Bool?

        public var textModal: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.historyLimit != nil {
                map["HistoryLimit"] = self.historyLimit!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.openWebSearch != nil {
                map["OpenWebSearch"] = self.openWebSearch!
            }
            if self.textModal != nil {
                map["TextModal"] = self.textModal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HistoryLimit"] as? Int32 {
                self.historyLimit = value
            }
            if let value = dict["ModelType"] as? String {
                self.modelType = value
            }
            if let value = dict["OpenWebSearch"] as? Bool {
                self.openWebSearch = value
            }
            if let value = dict["TextModal"] as? String {
                self.textModal = value
            }
        }
    }
    public var appId: String?

    public var appName: String?

    public var bindingConfig: UpdateMmAppRequest.BindingConfig?

    public var conversationConfig: UpdateMmAppRequest.ConversationConfig?

    public var modelConfig: UpdateMmAppRequest.ModelConfig?

    public var prompt: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bindingConfig?.validate()
        try self.conversationConfig?.validate()
        try self.modelConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bindingConfig != nil {
            map["BindingConfig"] = self.bindingConfig?.toMap()
        }
        if self.conversationConfig != nil {
            map["ConversationConfig"] = self.conversationConfig?.toMap()
        }
        if self.modelConfig != nil {
            map["ModelConfig"] = self.modelConfig?.toMap()
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BindingConfig"] as? [String: Any?] {
            var model = UpdateMmAppRequest.BindingConfig()
            model.fromMap(value)
            self.bindingConfig = model
        }
        if let value = dict["ConversationConfig"] as? [String: Any?] {
            var model = UpdateMmAppRequest.ConversationConfig()
            model.fromMap(value)
            self.conversationConfig = model
        }
        if let value = dict["ModelConfig"] as? [String: Any?] {
            var model = UpdateMmAppRequest.ModelConfig()
            model.fromMap(value)
            self.modelConfig = model
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateMmAppShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var appName: String?

    public var bindingConfigShrink: String?

    public var conversationConfigShrink: String?

    public var modelConfigShrink: String?

    public var prompt: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bindingConfigShrink != nil {
            map["BindingConfig"] = self.bindingConfigShrink!
        }
        if self.conversationConfigShrink != nil {
            map["ConversationConfig"] = self.conversationConfigShrink!
        }
        if self.modelConfigShrink != nil {
            map["ModelConfig"] = self.modelConfigShrink!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BindingConfig"] as? String {
            self.bindingConfigShrink = value
        }
        if let value = dict["ConversationConfig"] as? String {
            self.conversationConfigShrink = value
        }
        if let value = dict["ModelConfig"] as? String {
            self.modelConfigShrink = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateMmAppResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateMmAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMmAppResponseBody?

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
            var model = UpdateMmAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateProfileRequest : Tea.TeaModel {
    public class AttributesOperations : Tea.TeaModel {
        public var attributeId: String?

        public var defaultValue: String?

        public var description_: String?

        public var name: String?

        public var op: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributeId != nil {
                map["AttributeId"] = self.attributeId!
            }
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.op != nil {
                map["Op"] = self.op!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttributeId"] as? String {
                self.attributeId = value
            }
            if let value = dict["DefaultValue"] as? String {
                self.defaultValue = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Op"] as? String {
                self.op = value
            }
        }
    }
    public var appId: String?

    public var attributesOperations: [UpdateProfileRequest.AttributesOperations]?

    public var description_: String?

    public var name: String?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.attributesOperations != nil {
            var tmp : [Any] = []
            for k in self.attributesOperations! {
                tmp.append(k.toMap())
            }
            map["AttributesOperations"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AttributesOperations"] as? [Any?] {
            var tmp : [UpdateProfileRequest.AttributesOperations] = []
            for v in value {
                if v != nil {
                    var model = UpdateProfileRequest.AttributesOperations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attributesOperations = tmp
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateProfileShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var attributesOperationsShrink: String?

    public var description_: String?

    public var name: String?

    public var userDefinedId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.attributesOperationsShrink != nil {
            map["AttributesOperations"] = self.attributesOperationsShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.userDefinedId != nil {
            map["UserDefinedId"] = self.userDefinedId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AttributesOperations"] as? String {
            self.attributesOperationsShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["UserDefinedId"] as? String {
            self.userDefinedId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateProfileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var schemaId: String?

        public override init() {
            super.init()
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
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.schemaId != nil {
                map["SchemaId"] = self.schemaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SchemaId"] as? String {
                self.schemaId = value
            }
        }
    }
    public var code: String?

    public var data: UpdateProfileResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateProfileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProfileResponseBody?

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
            var model = UpdateProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
