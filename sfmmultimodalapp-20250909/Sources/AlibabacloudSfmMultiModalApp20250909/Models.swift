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
