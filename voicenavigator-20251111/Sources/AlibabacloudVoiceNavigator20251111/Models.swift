import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateCloneVoiceRequest : Tea.TeaModel {
    public var fileKey: String?

    public var instanceId: String?

    public var model: String?

    public override init() {
        super.init()
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
            map["FileKey"] = self.fileKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileKey"] as? String {
            self.fileKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
    }
}

public class CreateCloneVoiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cloneVoiceId: String?

        public var voice: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cloneVoiceId != nil {
                map["CloneVoiceId"] = self.cloneVoiceId!
            }
            if self.voice != nil {
                map["Voice"] = self.voice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CloneVoiceId"] as? String {
                self.cloneVoiceId = value
            }
            if let value = dict["Voice"] as? String {
                self.voice = value
            }
        }
    }
    public var code: String?

    public var data: CreateCloneVoiceResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateCloneVoiceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCloneVoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCloneVoiceResponseBody?

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
            var model = CreateCloneVoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLlmAccessProfileRequest : Tea.TeaModel {
    public class Profile : Tea.TeaModel {
        public var apiKey: String?

        public var endpoint: String?

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
            if self.apiKey != nil {
                map["ApiKey"] = self.apiKey!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var instanceId: String?

    public var profile: CreateLlmAccessProfileRequest.Profile?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.profile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.profile != nil {
            map["Profile"] = self.profile?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Profile"] as? [String: Any?] {
            var model = CreateLlmAccessProfileRequest.Profile()
            model.fromMap(value)
            self.profile = model
        }
    }
}

public class CreateLlmAccessProfileShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var profileShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.profileShrink != nil {
            map["Profile"] = self.profileShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Profile"] as? String {
            self.profileShrink = value
        }
    }
}

public class CreateLlmAccessProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateLlmAccessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLlmAccessProfileResponseBody?

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
            var model = CreateLlmAccessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateScriptRequest : Tea.TeaModel {
    public var concurrency: Int32?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var nluEngine: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nluEngine != nil {
            map["NluEngine"] = self.nluEngine!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Concurrency"] as? Int32 {
            self.concurrency = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NluEngine"] as? String {
            self.nluEngine = value
        }
    }
}

public class CreateScriptResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScriptResponseBody?

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
            var model = CreateScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateScriptVersionRequest : Tea.TeaModel {
    public class InteractionConfig : Tea.TeaModel {
        public class EndConversationConfig : Tea.TeaModel {
            public class Triggers : Tea.TeaModel {
                public var closingStatement: String?

                public var keyWords: [String]?

                public var triggerType: String?

                public var turnLimit: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.closingStatement != nil {
                        map["ClosingStatement"] = self.closingStatement!
                    }
                    if self.keyWords != nil {
                        map["KeyWords"] = self.keyWords!
                    }
                    if self.triggerType != nil {
                        map["TriggerType"] = self.triggerType!
                    }
                    if self.turnLimit != nil {
                        map["TurnLimit"] = self.turnLimit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClosingStatement"] as? String {
                        self.closingStatement = value
                    }
                    if let value = dict["KeyWords"] as? [String] {
                        self.keyWords = value
                    }
                    if let value = dict["TriggerType"] as? String {
                        self.triggerType = value
                    }
                    if let value = dict["TurnLimit"] as? Int32 {
                        self.turnLimit = value
                    }
                }
            }
            public var delay: Int32?

            public var triggers: [CreateScriptVersionRequest.InteractionConfig.EndConversationConfig.Triggers]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.delay != nil {
                    map["Delay"] = self.delay!
                }
                if self.triggers != nil {
                    var tmp : [Any] = []
                    for k in self.triggers! {
                        tmp.append(k.toMap())
                    }
                    map["Triggers"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Delay"] as? Int32 {
                    self.delay = value
                }
                if let value = dict["Triggers"] as? [Any?] {
                    var tmp : [CreateScriptVersionRequest.InteractionConfig.EndConversationConfig.Triggers] = []
                    for v in value {
                        if v != nil {
                            var model = CreateScriptVersionRequest.InteractionConfig.EndConversationConfig.Triggers()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.triggers = tmp
                }
            }
        }
        public class SilenceDetectionConfig : Tea.TeaModel {
            public var maxRepeats: Int32?

            public var timeout: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxRepeats != nil {
                    map["MaxRepeats"] = self.maxRepeats!
                }
                if self.timeout != nil {
                    map["Timeout"] = self.timeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MaxRepeats"] as? Int32 {
                    self.maxRepeats = value
                }
                if let value = dict["Timeout"] as? Int32 {
                    self.timeout = value
                }
            }
        }
        public var backgroundMusicId: String?

        public var endConversationConfig: CreateScriptVersionRequest.InteractionConfig.EndConversationConfig?

        public var initialGreetingDelayMilliseconds: Int32?

        public var silenceDetectionConfig: CreateScriptVersionRequest.InteractionConfig.SilenceDetectionConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.endConversationConfig?.validate()
            try self.silenceDetectionConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backgroundMusicId != nil {
                map["BackgroundMusicId"] = self.backgroundMusicId!
            }
            if self.endConversationConfig != nil {
                map["EndConversationConfig"] = self.endConversationConfig?.toMap()
            }
            if self.initialGreetingDelayMilliseconds != nil {
                map["InitialGreetingDelayMilliseconds"] = self.initialGreetingDelayMilliseconds!
            }
            if self.silenceDetectionConfig != nil {
                map["SilenceDetectionConfig"] = self.silenceDetectionConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackgroundMusicId"] as? String {
                self.backgroundMusicId = value
            }
            if let value = dict["EndConversationConfig"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.InteractionConfig.EndConversationConfig()
                model.fromMap(value)
                self.endConversationConfig = model
            }
            if let value = dict["InitialGreetingDelayMilliseconds"] as? Int32 {
                self.initialGreetingDelayMilliseconds = value
            }
            if let value = dict["SilenceDetectionConfig"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.InteractionConfig.SilenceDetectionConfig()
                model.fromMap(value)
                self.silenceDetectionConfig = model
            }
        }
    }
    public class LabelConfig : Tea.TeaModel {
        public var candidateValues: [String]?

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
            if self.candidateValues != nil {
                map["CandidateValues"] = self.candidateValues!
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
            if let value = dict["CandidateValues"] as? [String] {
                self.candidateValues = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public class ScriptProfile : Tea.TeaModel {
        public class AgentProfile : Tea.TeaModel {
            public var promptsJson: String?

            public var scriptProfileTemplateId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.promptsJson != nil {
                    map["PromptsJson"] = self.promptsJson!
                }
                if self.scriptProfileTemplateId != nil {
                    map["ScriptProfileTemplateId"] = self.scriptProfileTemplateId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PromptsJson"] as? String {
                    self.promptsJson = value
                }
                if let value = dict["ScriptProfileTemplateId"] as? String {
                    self.scriptProfileTemplateId = value
                }
            }
        }
        public class FunctionMeta : Tea.TeaModel {
            public var functionId: String?

            public var functionName: String?

            public var httpTriggerName: String?

            public var httpTriggerUrl: String?

            public var regionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.functionId != nil {
                    map["FunctionId"] = self.functionId!
                }
                if self.functionName != nil {
                    map["FunctionName"] = self.functionName!
                }
                if self.httpTriggerName != nil {
                    map["HttpTriggerName"] = self.httpTriggerName!
                }
                if self.httpTriggerUrl != nil {
                    map["HttpTriggerUrl"] = self.httpTriggerUrl!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FunctionId"] as? String {
                    self.functionId = value
                }
                if let value = dict["FunctionName"] as? String {
                    self.functionName = value
                }
                if let value = dict["HttpTriggerName"] as? String {
                    self.httpTriggerName = value
                }
                if let value = dict["HttpTriggerUrl"] as? String {
                    self.httpTriggerUrl = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
            }
        }
        public class NluAccessProfile : Tea.TeaModel {
            public var accessProfileId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessProfileId != nil {
                    map["AccessProfileId"] = self.accessProfileId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessProfileId"] as? String {
                    self.accessProfileId = value
                }
            }
        }
        public var agentKey: String?

        public var agentProfile: CreateScriptVersionRequest.ScriptProfile.AgentProfile?

        public var chatbotId: String?

        public var functionMeta: CreateScriptVersionRequest.ScriptProfile.FunctionMeta?

        public var model: String?

        public var nluAccessProfile: CreateScriptVersionRequest.ScriptProfile.NluAccessProfile?

        public var nluAccessType: String?

        public var omniModel: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.agentProfile?.validate()
            try self.functionMeta?.validate()
            try self.nluAccessProfile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentKey != nil {
                map["AgentKey"] = self.agentKey!
            }
            if self.agentProfile != nil {
                map["AgentProfile"] = self.agentProfile?.toMap()
            }
            if self.chatbotId != nil {
                map["ChatbotId"] = self.chatbotId!
            }
            if self.functionMeta != nil {
                map["FunctionMeta"] = self.functionMeta?.toMap()
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.nluAccessProfile != nil {
                map["NluAccessProfile"] = self.nluAccessProfile?.toMap()
            }
            if self.nluAccessType != nil {
                map["NluAccessType"] = self.nluAccessType!
            }
            if self.omniModel != nil {
                map["OmniModel"] = self.omniModel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentKey"] as? String {
                self.agentKey = value
            }
            if let value = dict["AgentProfile"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.ScriptProfile.AgentProfile()
                model.fromMap(value)
                self.agentProfile = model
            }
            if let value = dict["ChatbotId"] as? String {
                self.chatbotId = value
            }
            if let value = dict["FunctionMeta"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.ScriptProfile.FunctionMeta()
                model.fromMap(value)
                self.functionMeta = model
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["NluAccessProfile"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.ScriptProfile.NluAccessProfile()
                model.fromMap(value)
                self.nluAccessProfile = model
            }
            if let value = dict["NluAccessType"] as? String {
                self.nluAccessType = value
            }
            if let value = dict["OmniModel"] as? Bool {
                self.omniModel = value
            }
        }
    }
    public class SynthesizerConfig : Tea.TeaModel {
        public class NlsAccessProfile : Tea.TeaModel {
            public var accessProfileId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessProfileId != nil {
                    map["AccessProfileId"] = self.accessProfileId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessProfileId"] as? String {
                    self.accessProfileId = value
                }
            }
        }
        public class PronRules : Tea.TeaModel {
            public var pattern: String?

            public var replacement: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pattern != nil {
                    map["Pattern"] = self.pattern!
                }
                if self.replacement != nil {
                    map["Replacement"] = self.replacement!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Pattern"] as? String {
                    self.pattern = value
                }
                if let value = dict["Replacement"] as? String {
                    self.replacement = value
                }
            }
        }
        public var model: String?

        public var nlsAccessProfile: CreateScriptVersionRequest.SynthesizerConfig.NlsAccessProfile?

        public var nlsAccessType: String?

        public var nlsEngine: String?

        public var pitchRate: Int32?

        public var pronRules: [CreateScriptVersionRequest.SynthesizerConfig.PronRules]?

        public var speechRate: Int32?

        public var voice: String?

        public var volume: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.nlsAccessProfile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.nlsAccessProfile != nil {
                map["NlsAccessProfile"] = self.nlsAccessProfile?.toMap()
            }
            if self.nlsAccessType != nil {
                map["NlsAccessType"] = self.nlsAccessType!
            }
            if self.nlsEngine != nil {
                map["NlsEngine"] = self.nlsEngine!
            }
            if self.pitchRate != nil {
                map["PitchRate"] = self.pitchRate!
            }
            if self.pronRules != nil {
                var tmp : [Any] = []
                for k in self.pronRules! {
                    tmp.append(k.toMap())
                }
                map["PronRules"] = tmp
            }
            if self.speechRate != nil {
                map["SpeechRate"] = self.speechRate!
            }
            if self.voice != nil {
                map["Voice"] = self.voice!
            }
            if self.volume != nil {
                map["Volume"] = self.volume!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["NlsAccessProfile"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.SynthesizerConfig.NlsAccessProfile()
                model.fromMap(value)
                self.nlsAccessProfile = model
            }
            if let value = dict["NlsAccessType"] as? String {
                self.nlsAccessType = value
            }
            if let value = dict["NlsEngine"] as? String {
                self.nlsEngine = value
            }
            if let value = dict["PitchRate"] as? Int32 {
                self.pitchRate = value
            }
            if let value = dict["PronRules"] as? [Any?] {
                var tmp : [CreateScriptVersionRequest.SynthesizerConfig.PronRules] = []
                for v in value {
                    if v != nil {
                        var model = CreateScriptVersionRequest.SynthesizerConfig.PronRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pronRules = tmp
            }
            if let value = dict["SpeechRate"] as? Int32 {
                self.speechRate = value
            }
            if let value = dict["Voice"] as? String {
                self.voice = value
            }
            if let value = dict["Volume"] as? Int32 {
                self.volume = value
            }
        }
    }
    public class TranscriberConfig : Tea.TeaModel {
        public class NlsAccessProfile : Tea.TeaModel {
            public var accessProfileId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessProfileId != nil {
                    map["AccessProfileId"] = self.accessProfileId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessProfileId"] as? String {
                    self.accessProfileId = value
                }
            }
        }
        public var customizationId: String?

        public var endSilenceTimeout: Int32?

        public var model: String?

        public var nlsAccessProfile: CreateScriptVersionRequest.TranscriberConfig.NlsAccessProfile?

        public var nlsAccessType: String?

        public var nlsEngine: String?

        public var speechNoiseThreshold: Int32?

        public var vocabularyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.nlsAccessProfile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customizationId != nil {
                map["CustomizationId"] = self.customizationId!
            }
            if self.endSilenceTimeout != nil {
                map["EndSilenceTimeout"] = self.endSilenceTimeout!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.nlsAccessProfile != nil {
                map["NlsAccessProfile"] = self.nlsAccessProfile?.toMap()
            }
            if self.nlsAccessType != nil {
                map["NlsAccessType"] = self.nlsAccessType!
            }
            if self.nlsEngine != nil {
                map["NlsEngine"] = self.nlsEngine!
            }
            if self.speechNoiseThreshold != nil {
                map["SpeechNoiseThreshold"] = self.speechNoiseThreshold!
            }
            if self.vocabularyId != nil {
                map["VocabularyId"] = self.vocabularyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomizationId"] as? String {
                self.customizationId = value
            }
            if let value = dict["EndSilenceTimeout"] as? Int32 {
                self.endSilenceTimeout = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["NlsAccessProfile"] as? [String: Any?] {
                var model = CreateScriptVersionRequest.TranscriberConfig.NlsAccessProfile()
                model.fromMap(value)
                self.nlsAccessProfile = model
            }
            if let value = dict["NlsAccessType"] as? String {
                self.nlsAccessType = value
            }
            if let value = dict["NlsEngine"] as? String {
                self.nlsEngine = value
            }
            if let value = dict["SpeechNoiseThreshold"] as? Int32 {
                self.speechNoiseThreshold = value
            }
            if let value = dict["VocabularyId"] as? String {
                self.vocabularyId = value
            }
        }
    }
    public var instanceId: String?

    public var interactionConfig: CreateScriptVersionRequest.InteractionConfig?

    public var labelConfig: [CreateScriptVersionRequest.LabelConfig]?

    public var scriptId: String?

    public var scriptProfile: CreateScriptVersionRequest.ScriptProfile?

    public var sourceVersionId: String?

    public var synthesizerConfig: CreateScriptVersionRequest.SynthesizerConfig?

    public var transcriberConfig: CreateScriptVersionRequest.TranscriberConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.interactionConfig?.validate()
        try self.scriptProfile?.validate()
        try self.synthesizerConfig?.validate()
        try self.transcriberConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.interactionConfig != nil {
            map["InteractionConfig"] = self.interactionConfig?.toMap()
        }
        if self.labelConfig != nil {
            var tmp : [Any] = []
            for k in self.labelConfig! {
                tmp.append(k.toMap())
            }
            map["LabelConfig"] = tmp
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.scriptProfile != nil {
            map["ScriptProfile"] = self.scriptProfile?.toMap()
        }
        if self.sourceVersionId != nil {
            map["SourceVersionId"] = self.sourceVersionId!
        }
        if self.synthesizerConfig != nil {
            map["SynthesizerConfig"] = self.synthesizerConfig?.toMap()
        }
        if self.transcriberConfig != nil {
            map["TranscriberConfig"] = self.transcriberConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InteractionConfig"] as? [String: Any?] {
            var model = CreateScriptVersionRequest.InteractionConfig()
            model.fromMap(value)
            self.interactionConfig = model
        }
        if let value = dict["LabelConfig"] as? [Any?] {
            var tmp : [CreateScriptVersionRequest.LabelConfig] = []
            for v in value {
                if v != nil {
                    var model = CreateScriptVersionRequest.LabelConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labelConfig = tmp
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["ScriptProfile"] as? [String: Any?] {
            var model = CreateScriptVersionRequest.ScriptProfile()
            model.fromMap(value)
            self.scriptProfile = model
        }
        if let value = dict["SourceVersionId"] as? String {
            self.sourceVersionId = value
        }
        if let value = dict["SynthesizerConfig"] as? [String: Any?] {
            var model = CreateScriptVersionRequest.SynthesizerConfig()
            model.fromMap(value)
            self.synthesizerConfig = model
        }
        if let value = dict["TranscriberConfig"] as? [String: Any?] {
            var model = CreateScriptVersionRequest.TranscriberConfig()
            model.fromMap(value)
            self.transcriberConfig = model
        }
    }
}

public class CreateScriptVersionShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var interactionConfigShrink: String?

    public var labelConfigShrink: String?

    public var scriptId: String?

    public var scriptProfileShrink: String?

    public var sourceVersionId: String?

    public var synthesizerConfigShrink: String?

    public var transcriberConfigShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.interactionConfigShrink != nil {
            map["InteractionConfig"] = self.interactionConfigShrink!
        }
        if self.labelConfigShrink != nil {
            map["LabelConfig"] = self.labelConfigShrink!
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.scriptProfileShrink != nil {
            map["ScriptProfile"] = self.scriptProfileShrink!
        }
        if self.sourceVersionId != nil {
            map["SourceVersionId"] = self.sourceVersionId!
        }
        if self.synthesizerConfigShrink != nil {
            map["SynthesizerConfig"] = self.synthesizerConfigShrink!
        }
        if self.transcriberConfigShrink != nil {
            map["TranscriberConfig"] = self.transcriberConfigShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InteractionConfig"] as? String {
            self.interactionConfigShrink = value
        }
        if let value = dict["LabelConfig"] as? String {
            self.labelConfigShrink = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["ScriptProfile"] as? String {
            self.scriptProfileShrink = value
        }
        if let value = dict["SourceVersionId"] as? String {
            self.sourceVersionId = value
        }
        if let value = dict["SynthesizerConfig"] as? String {
            self.synthesizerConfigShrink = value
        }
        if let value = dict["TranscriberConfig"] as? String {
            self.transcriberConfigShrink = value
        }
    }
}

public class CreateScriptVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateScriptVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScriptVersionResponseBody?

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
            var model = CreateScriptVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVariableRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var instanceId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class CreateVariableResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateVariableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVariableResponseBody?

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
            var model = CreateVariableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVocabularyRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var words: [String: String]?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.words != nil {
            map["Words"] = self.words!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Words"] as? [String: String] {
            self.words = value
        }
    }
}

public class CreateVocabularyShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var wordsShrink: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.wordsShrink != nil {
            map["Words"] = self.wordsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Words"] as? String {
            self.wordsShrink = value
        }
    }
}

public class CreateVocabularyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateVocabularyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVocabularyResponseBody?

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
            var model = CreateVocabularyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVoiceAccessProfileRequest : Tea.TeaModel {
    public class Profile : Tea.TeaModel {
        public var accessKey: String?

        public var apiKey: String?

        public var apiSecret: String?

        public var appId: String?

        public var appKey: String?

        public var asrAppKey: String?

        public var ttsApiKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKey != nil {
                map["AccessKey"] = self.accessKey!
            }
            if self.apiKey != nil {
                map["ApiKey"] = self.apiKey!
            }
            if self.apiSecret != nil {
                map["ApiSecret"] = self.apiSecret!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.asrAppKey != nil {
                map["AsrAppKey"] = self.asrAppKey!
            }
            if self.ttsApiKey != nil {
                map["TtsApiKey"] = self.ttsApiKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKey"] as? String {
                self.accessKey = value
            }
            if let value = dict["ApiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["ApiSecret"] as? String {
                self.apiSecret = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppKey"] as? String {
                self.appKey = value
            }
            if let value = dict["AsrAppKey"] as? String {
                self.asrAppKey = value
            }
            if let value = dict["TtsApiKey"] as? String {
                self.ttsApiKey = value
            }
        }
    }
    public var instanceId: String?

    public var nlsEngine: String?

    public var profile: CreateVoiceAccessProfileRequest.Profile?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.profile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nlsEngine != nil {
            map["NlsEngine"] = self.nlsEngine!
        }
        if self.profile != nil {
            map["Profile"] = self.profile?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NlsEngine"] as? String {
            self.nlsEngine = value
        }
        if let value = dict["Profile"] as? [String: Any?] {
            var model = CreateVoiceAccessProfileRequest.Profile()
            model.fromMap(value)
            self.profile = model
        }
    }
}

public class CreateVoiceAccessProfileShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nlsEngine: String?

    public var profileShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nlsEngine != nil {
            map["NlsEngine"] = self.nlsEngine!
        }
        if self.profileShrink != nil {
            map["Profile"] = self.profileShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NlsEngine"] as? String {
            self.nlsEngine = value
        }
        if let value = dict["Profile"] as? String {
            self.profileShrink = value
        }
    }
}

public class CreateVoiceAccessProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateVoiceAccessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVoiceAccessProfileResponseBody?

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
            var model = CreateVoiceAccessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCloneVoiceRequest : Tea.TeaModel {
    public var cloneVoiceId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cloneVoiceId != nil {
            map["CloneVoiceId"] = self.cloneVoiceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloneVoiceId"] as? String {
            self.cloneVoiceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteCloneVoiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteCloneVoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCloneVoiceResponseBody?

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
            var model = DeleteCloneVoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLlmAccessProfileRequest : Tea.TeaModel {
    public var accessProfileId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessProfileId != nil {
            map["AccessProfileId"] = self.accessProfileId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfileId"] as? String {
            self.accessProfileId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteLlmAccessProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteLlmAccessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLlmAccessProfileResponseBody?

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
            var model = DeleteLlmAccessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteScriptRequest : Tea.TeaModel {
    public var instanceId: String?

    public var scriptId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
    }
}

public class DeleteScriptResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScriptResponseBody?

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
            var model = DeleteScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVariableRequest : Tea.TeaModel {
    public var instanceId: String?

    public var variableId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.variableId != nil {
            map["VariableId"] = self.variableId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VariableId"] as? String {
            self.variableId = value
        }
    }
}

public class DeleteVariableResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteVariableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVariableResponseBody?

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
            var model = DeleteVariableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVocabularyRequest : Tea.TeaModel {
    public var instanceId: String?

    public var vocabularyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.vocabularyId != nil {
            map["VocabularyId"] = self.vocabularyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VocabularyId"] as? String {
            self.vocabularyId = value
        }
    }
}

public class DeleteVocabularyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteVocabularyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVocabularyResponseBody?

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
            var model = DeleteVocabularyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVoiceAccessProfileRequest : Tea.TeaModel {
    public var accessProfileId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessProfileId != nil {
            map["AccessProfileId"] = self.accessProfileId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfileId"] as? String {
            self.accessProfileId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteVoiceAccessProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteVoiceAccessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVoiceAccessProfileResponseBody?

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
            var model = DeleteVoiceAccessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableSubscriptionRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DisableSubscriptionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DisableSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableSubscriptionResponseBody?

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
            var model = DisableSubscriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportScriptRequest : Tea.TeaModel {
    public var instanceId: String?

    public var scriptId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
    }
}

public class ExportScriptResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExportScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportScriptResponseBody?

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
            var model = ExportScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportVocabularyRequest : Tea.TeaModel {
    public var instanceId: String?

    public var vocabularyIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.vocabularyIds != nil {
            map["VocabularyIds"] = self.vocabularyIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VocabularyIds"] as? [String] {
            self.vocabularyIds = value
        }
    }
}

public class ExportVocabularyShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var vocabularyIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.vocabularyIdsShrink != nil {
            map["VocabularyIds"] = self.vocabularyIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VocabularyIds"] as? String {
            self.vocabularyIdsShrink = value
        }
    }
}

public class ExportVocabularyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExportVocabularyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportVocabularyResponseBody?

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
            var model = ExportVocabularyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateFileUploadParamsRequest : Tea.TeaModel {
    public var businessType: String?

    public var fileName: String?

    public var instanceId: String?

    public override init() {
        super.init()
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
            map["BusinessType"] = self.businessType!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessType"] as? String {
            self.businessType = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GenerateFileUploadParamsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var bucket: String?

        public var expirationTime: Int64?

        public var fileKey: String?

        public var host: String?

        public var policy: String?

        public var region: String?

        public var securityToken: String?

        public var signature: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.expirationTime != nil {
                map["ExpirationTime"] = self.expirationTime!
            }
            if self.fileKey != nil {
                map["FileKey"] = self.fileKey!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["AccessKeySecret"] as? String {
                self.accessKeySecret = value
            }
            if let value = dict["Bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["ExpirationTime"] as? Int64 {
                self.expirationTime = value
            }
            if let value = dict["FileKey"] as? String {
                self.fileKey = value
            }
            if let value = dict["Host"] as? String {
                self.host = value
            }
            if let value = dict["Policy"] as? String {
                self.policy = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
            }
            if let value = dict["Signature"] as? String {
                self.signature = value
            }
        }
    }
    public var code: String?

    public var data: GenerateFileUploadParamsResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GenerateFileUploadParamsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateFileUploadParamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateFileUploadParamsResponseBody?

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
            var model = GenerateFileUploadParamsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCallDetailRecordRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class GetCallDetailRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Transcripts : Tea.TeaModel {
            public var answer: String?

            public var backchannels: Bool?

            public var beginTime: Int64?

            public var controlParamsList: String?

            public var endTime: Int64?

            public var eventTime: String?

            public var extras: String?

            public var interrupted: Bool?

            public var legacy: Bool?

            public var playedWords: Int32?

            public var role: String?

            public var streamEnd: Bool?

            public var streamId: String?

            public var utterance: String?

            public var vendorParams: String?

            public override init() {
                super.init()
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
                    map["Answer"] = self.answer!
                }
                if self.backchannels != nil {
                    map["Backchannels"] = self.backchannels!
                }
                if self.beginTime != nil {
                    map["BeginTime"] = self.beginTime!
                }
                if self.controlParamsList != nil {
                    map["ControlParamsList"] = self.controlParamsList!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.eventTime != nil {
                    map["EventTime"] = self.eventTime!
                }
                if self.extras != nil {
                    map["Extras"] = self.extras!
                }
                if self.interrupted != nil {
                    map["Interrupted"] = self.interrupted!
                }
                if self.legacy != nil {
                    map["Legacy"] = self.legacy!
                }
                if self.playedWords != nil {
                    map["PlayedWords"] = self.playedWords!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.streamEnd != nil {
                    map["StreamEnd"] = self.streamEnd!
                }
                if self.streamId != nil {
                    map["StreamId"] = self.streamId!
                }
                if self.utterance != nil {
                    map["Utterance"] = self.utterance!
                }
                if self.vendorParams != nil {
                    map["VendorParams"] = self.vendorParams!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Answer"] as? String {
                    self.answer = value
                }
                if let value = dict["Backchannels"] as? Bool {
                    self.backchannels = value
                }
                if let value = dict["BeginTime"] as? Int64 {
                    self.beginTime = value
                }
                if let value = dict["ControlParamsList"] as? String {
                    self.controlParamsList = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["EventTime"] as? String {
                    self.eventTime = value
                }
                if let value = dict["Extras"] as? String {
                    self.extras = value
                }
                if let value = dict["Interrupted"] as? Bool {
                    self.interrupted = value
                }
                if let value = dict["Legacy"] as? Bool {
                    self.legacy = value
                }
                if let value = dict["PlayedWords"] as? Int32 {
                    self.playedWords = value
                }
                if let value = dict["Role"] as? String {
                    self.role = value
                }
                if let value = dict["StreamEnd"] as? Bool {
                    self.streamEnd = value
                }
                if let value = dict["StreamId"] as? String {
                    self.streamId = value
                }
                if let value = dict["Utterance"] as? String {
                    self.utterance = value
                }
                if let value = dict["VendorParams"] as? String {
                    self.vendorParams = value
                }
            }
        }
        public var callee: String?

        public var caller: String?

        public var dispositionCode: String?

        public var dispositionReason: String?

        public var duration: Int32?

        public var endTime: Int64?

        public var issueResolved: Bool?

        public var releaseInitiator: String?

        public var resolutionEvidence: String?

        public var sessionId: String?

        public var startTime: Int64?

        public var talkTime: Int32?

        public var talkTurns: Int32?

        public var transcripts: [GetCallDetailRecordResponseBody.Data.Transcripts]?

        public var transferTarget: String?

        public var transferType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callee != nil {
                map["Callee"] = self.callee!
            }
            if self.caller != nil {
                map["Caller"] = self.caller!
            }
            if self.dispositionCode != nil {
                map["DispositionCode"] = self.dispositionCode!
            }
            if self.dispositionReason != nil {
                map["DispositionReason"] = self.dispositionReason!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.issueResolved != nil {
                map["IssueResolved"] = self.issueResolved!
            }
            if self.releaseInitiator != nil {
                map["ReleaseInitiator"] = self.releaseInitiator!
            }
            if self.resolutionEvidence != nil {
                map["ResolutionEvidence"] = self.resolutionEvidence!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.talkTime != nil {
                map["TalkTime"] = self.talkTime!
            }
            if self.talkTurns != nil {
                map["TalkTurns"] = self.talkTurns!
            }
            if self.transcripts != nil {
                var tmp : [Any] = []
                for k in self.transcripts! {
                    tmp.append(k.toMap())
                }
                map["Transcripts"] = tmp
            }
            if self.transferTarget != nil {
                map["TransferTarget"] = self.transferTarget!
            }
            if self.transferType != nil {
                map["TransferType"] = self.transferType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Callee"] as? String {
                self.callee = value
            }
            if let value = dict["Caller"] as? String {
                self.caller = value
            }
            if let value = dict["DispositionCode"] as? String {
                self.dispositionCode = value
            }
            if let value = dict["DispositionReason"] as? String {
                self.dispositionReason = value
            }
            if let value = dict["Duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["IssueResolved"] as? Bool {
                self.issueResolved = value
            }
            if let value = dict["ReleaseInitiator"] as? String {
                self.releaseInitiator = value
            }
            if let value = dict["ResolutionEvidence"] as? String {
                self.resolutionEvidence = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["TalkTime"] as? Int32 {
                self.talkTime = value
            }
            if let value = dict["TalkTurns"] as? Int32 {
                self.talkTurns = value
            }
            if let value = dict["Transcripts"] as? [Any?] {
                var tmp : [GetCallDetailRecordResponseBody.Data.Transcripts] = []
                for v in value {
                    if v != nil {
                        var model = GetCallDetailRecordResponseBody.Data.Transcripts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.transcripts = tmp
            }
            if let value = dict["TransferTarget"] as? String {
                self.transferTarget = value
            }
            if let value = dict["TransferType"] as? String {
                self.transferType = value
            }
        }
    }
    public var code: String?

    public var data: GetCallDetailRecordResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetCallDetailRecordResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetCallDetailRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCallDetailRecordResponseBody?

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
            var model = GetCallDetailRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRealtimeInstanceStatsRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetRealtimeInstanceStatsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RealtimeScriptStatsList : Tea.TeaModel {
            public var configuredConcurrency: Int32?

            public var scriptId: String?

            public var scriptName: String?

            public var statsTime: Int64?

            public var usedConcurrency: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configuredConcurrency != nil {
                    map["ConfiguredConcurrency"] = self.configuredConcurrency!
                }
                if self.scriptId != nil {
                    map["ScriptId"] = self.scriptId!
                }
                if self.scriptName != nil {
                    map["ScriptName"] = self.scriptName!
                }
                if self.statsTime != nil {
                    map["StatsTime"] = self.statsTime!
                }
                if self.usedConcurrency != nil {
                    map["UsedConcurrency"] = self.usedConcurrency!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfiguredConcurrency"] as? Int32 {
                    self.configuredConcurrency = value
                }
                if let value = dict["ScriptId"] as? String {
                    self.scriptId = value
                }
                if let value = dict["ScriptName"] as? String {
                    self.scriptName = value
                }
                if let value = dict["StatsTime"] as? Int64 {
                    self.statsTime = value
                }
                if let value = dict["UsedConcurrency"] as? Int32 {
                    self.usedConcurrency = value
                }
            }
        }
        public var configuredConcurrency: Int32?

        public var realtimeScriptStatsList: [GetRealtimeInstanceStatsResponseBody.Data.RealtimeScriptStatsList]?

        public var statsTime: Int64?

        public var usedConcurrency: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configuredConcurrency != nil {
                map["ConfiguredConcurrency"] = self.configuredConcurrency!
            }
            if self.realtimeScriptStatsList != nil {
                var tmp : [Any] = []
                for k in self.realtimeScriptStatsList! {
                    tmp.append(k.toMap())
                }
                map["RealtimeScriptStatsList"] = tmp
            }
            if self.statsTime != nil {
                map["StatsTime"] = self.statsTime!
            }
            if self.usedConcurrency != nil {
                map["UsedConcurrency"] = self.usedConcurrency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfiguredConcurrency"] as? Int32 {
                self.configuredConcurrency = value
            }
            if let value = dict["RealtimeScriptStatsList"] as? [Any?] {
                var tmp : [GetRealtimeInstanceStatsResponseBody.Data.RealtimeScriptStatsList] = []
                for v in value {
                    if v != nil {
                        var model = GetRealtimeInstanceStatsResponseBody.Data.RealtimeScriptStatsList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.realtimeScriptStatsList = tmp
            }
            if let value = dict["StatsTime"] as? Int64 {
                self.statsTime = value
            }
            if let value = dict["UsedConcurrency"] as? Int32 {
                self.usedConcurrency = value
            }
        }
    }
    public var code: String?

    public var data: GetRealtimeInstanceStatsResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetRealtimeInstanceStatsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRealtimeInstanceStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRealtimeInstanceStatsResponseBody?

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
            var model = GetRealtimeInstanceStatsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRecordingRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class GetRecordingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileName: String?

        public var fileUrl: String?

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
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FileUrl"] as? String {
                self.fileUrl = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
        }
    }
    public var code: String?

    public var data: GetRecordingResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetRecordingResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRecordingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRecordingResponseBody?

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
            var model = GetRecordingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetScriptRequest : Tea.TeaModel {
    public var instanceId: String?

    public var scriptId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
    }
}

public class GetScriptResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DraftVersion : Tea.TeaModel {
            public class InteractionConfig : Tea.TeaModel {
                public class EndConversationConfig : Tea.TeaModel {
                    public class Triggers : Tea.TeaModel {
                        public var closingStatement: String?

                        public var keyWords: [String]?

                        public var triggerType: String?

                        public var turnLimit: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.closingStatement != nil {
                                map["ClosingStatement"] = self.closingStatement!
                            }
                            if self.keyWords != nil {
                                map["KeyWords"] = self.keyWords!
                            }
                            if self.triggerType != nil {
                                map["TriggerType"] = self.triggerType!
                            }
                            if self.turnLimit != nil {
                                map["TurnLimit"] = self.turnLimit!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ClosingStatement"] as? String {
                                self.closingStatement = value
                            }
                            if let value = dict["KeyWords"] as? [String] {
                                self.keyWords = value
                            }
                            if let value = dict["TriggerType"] as? String {
                                self.triggerType = value
                            }
                            if let value = dict["TurnLimit"] as? Int32 {
                                self.turnLimit = value
                            }
                        }
                    }
                    public var delay: Int32?

                    public var triggers: [GetScriptResponseBody.Data.DraftVersion.InteractionConfig.EndConversationConfig.Triggers]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.delay != nil {
                            map["Delay"] = self.delay!
                        }
                        if self.triggers != nil {
                            var tmp : [Any] = []
                            for k in self.triggers! {
                                tmp.append(k.toMap())
                            }
                            map["Triggers"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Delay"] as? Int32 {
                            self.delay = value
                        }
                        if let value = dict["Triggers"] as? [Any?] {
                            var tmp : [GetScriptResponseBody.Data.DraftVersion.InteractionConfig.EndConversationConfig.Triggers] = []
                            for v in value {
                                if v != nil {
                                    var model = GetScriptResponseBody.Data.DraftVersion.InteractionConfig.EndConversationConfig.Triggers()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.triggers = tmp
                        }
                    }
                }
                public class SilenceDetectionConfig : Tea.TeaModel {
                    public var maxRepeats: Int32?

                    public var timeout: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.maxRepeats != nil {
                            map["MaxRepeats"] = self.maxRepeats!
                        }
                        if self.timeout != nil {
                            map["Timeout"] = self.timeout!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["MaxRepeats"] as? Int32 {
                            self.maxRepeats = value
                        }
                        if let value = dict["Timeout"] as? Int32 {
                            self.timeout = value
                        }
                    }
                }
                public var backgroundMusicId: String?

                public var endConversationConfig: GetScriptResponseBody.Data.DraftVersion.InteractionConfig.EndConversationConfig?

                public var initialGreetingDelayMilliseconds: Int32?

                public var silenceDetectionConfig: GetScriptResponseBody.Data.DraftVersion.InteractionConfig.SilenceDetectionConfig?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.endConversationConfig?.validate()
                    try self.silenceDetectionConfig?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.backgroundMusicId != nil {
                        map["BackgroundMusicId"] = self.backgroundMusicId!
                    }
                    if self.endConversationConfig != nil {
                        map["EndConversationConfig"] = self.endConversationConfig?.toMap()
                    }
                    if self.initialGreetingDelayMilliseconds != nil {
                        map["InitialGreetingDelayMilliseconds"] = self.initialGreetingDelayMilliseconds!
                    }
                    if self.silenceDetectionConfig != nil {
                        map["SilenceDetectionConfig"] = self.silenceDetectionConfig?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BackgroundMusicId"] as? String {
                        self.backgroundMusicId = value
                    }
                    if let value = dict["EndConversationConfig"] as? [String: Any?] {
                        var model = GetScriptResponseBody.Data.DraftVersion.InteractionConfig.EndConversationConfig()
                        model.fromMap(value)
                        self.endConversationConfig = model
                    }
                    if let value = dict["InitialGreetingDelayMilliseconds"] as? Int32 {
                        self.initialGreetingDelayMilliseconds = value
                    }
                    if let value = dict["SilenceDetectionConfig"] as? [String: Any?] {
                        var model = GetScriptResponseBody.Data.DraftVersion.InteractionConfig.SilenceDetectionConfig()
                        model.fromMap(value)
                        self.silenceDetectionConfig = model
                    }
                }
            }
            public class LabelConfig : Tea.TeaModel {
                public var candidateValues: [String]?

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
                    if self.candidateValues != nil {
                        map["CandidateValues"] = self.candidateValues!
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
                    if let value = dict["CandidateValues"] as? [String] {
                        self.candidateValues = value
                    }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                }
            }
            public class ScriptProfile : Tea.TeaModel {
                public class AgentProfile : Tea.TeaModel {
                    public var promptsJson: String?

                    public var scriptProfileTemplateId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.promptsJson != nil {
                            map["PromptsJson"] = self.promptsJson!
                        }
                        if self.scriptProfileTemplateId != nil {
                            map["ScriptProfileTemplateId"] = self.scriptProfileTemplateId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["PromptsJson"] as? String {
                            self.promptsJson = value
                        }
                        if let value = dict["ScriptProfileTemplateId"] as? String {
                            self.scriptProfileTemplateId = value
                        }
                    }
                }
                public class FunctionMeta : Tea.TeaModel {
                    public var functionId: String?

                    public var functionName: String?

                    public var httpTriggerName: String?

                    public var httpTriggerUrl: String?

                    public var regionId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.functionId != nil {
                            map["FunctionId"] = self.functionId!
                        }
                        if self.functionName != nil {
                            map["FunctionName"] = self.functionName!
                        }
                        if self.httpTriggerName != nil {
                            map["HttpTriggerName"] = self.httpTriggerName!
                        }
                        if self.httpTriggerUrl != nil {
                            map["HttpTriggerUrl"] = self.httpTriggerUrl!
                        }
                        if self.regionId != nil {
                            map["RegionId"] = self.regionId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["FunctionId"] as? String {
                            self.functionId = value
                        }
                        if let value = dict["FunctionName"] as? String {
                            self.functionName = value
                        }
                        if let value = dict["HttpTriggerName"] as? String {
                            self.httpTriggerName = value
                        }
                        if let value = dict["HttpTriggerUrl"] as? String {
                            self.httpTriggerUrl = value
                        }
                        if let value = dict["RegionId"] as? String {
                            self.regionId = value
                        }
                    }
                }
                public class NluAccessProfile : Tea.TeaModel {
                    public var accessProfileId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessProfileId != nil {
                            map["AccessProfileId"] = self.accessProfileId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AccessProfileId"] as? String {
                            self.accessProfileId = value
                        }
                    }
                }
                public var agentKey: String?

                public var agentProfile: GetScriptResponseBody.Data.DraftVersion.ScriptProfile.AgentProfile?

                public var chatbotId: String?

                public var functionMeta: GetScriptResponseBody.Data.DraftVersion.ScriptProfile.FunctionMeta?

                public var model: String?

                public var nluAccessProfile: GetScriptResponseBody.Data.DraftVersion.ScriptProfile.NluAccessProfile?

                public var nluAccessType: String?

                public var nluEngine: String?

                public var omniModel: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.agentProfile?.validate()
                    try self.functionMeta?.validate()
                    try self.nluAccessProfile?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.agentKey != nil {
                        map["AgentKey"] = self.agentKey!
                    }
                    if self.agentProfile != nil {
                        map["AgentProfile"] = self.agentProfile?.toMap()
                    }
                    if self.chatbotId != nil {
                        map["ChatbotId"] = self.chatbotId!
                    }
                    if self.functionMeta != nil {
                        map["FunctionMeta"] = self.functionMeta?.toMap()
                    }
                    if self.model != nil {
                        map["Model"] = self.model!
                    }
                    if self.nluAccessProfile != nil {
                        map["NluAccessProfile"] = self.nluAccessProfile?.toMap()
                    }
                    if self.nluAccessType != nil {
                        map["NluAccessType"] = self.nluAccessType!
                    }
                    if self.nluEngine != nil {
                        map["NluEngine"] = self.nluEngine!
                    }
                    if self.omniModel != nil {
                        map["OmniModel"] = self.omniModel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AgentKey"] as? String {
                        self.agentKey = value
                    }
                    if let value = dict["AgentProfile"] as? [String: Any?] {
                        var model = GetScriptResponseBody.Data.DraftVersion.ScriptProfile.AgentProfile()
                        model.fromMap(value)
                        self.agentProfile = model
                    }
                    if let value = dict["ChatbotId"] as? String {
                        self.chatbotId = value
                    }
                    if let value = dict["FunctionMeta"] as? [String: Any?] {
                        var model = GetScriptResponseBody.Data.DraftVersion.ScriptProfile.FunctionMeta()
                        model.fromMap(value)
                        self.functionMeta = model
                    }
                    if let value = dict["Model"] as? String {
                        self.model = value
                    }
                    if let value = dict["NluAccessProfile"] as? [String: Any?] {
                        var model = GetScriptResponseBody.Data.DraftVersion.ScriptProfile.NluAccessProfile()
                        model.fromMap(value)
                        self.nluAccessProfile = model
                    }
                    if let value = dict["NluAccessType"] as? String {
                        self.nluAccessType = value
                    }
                    if let value = dict["NluEngine"] as? String {
                        self.nluEngine = value
                    }
                    if let value = dict["OmniModel"] as? Bool {
                        self.omniModel = value
                    }
                }
            }
            public class SynthesizerConfig : Tea.TeaModel {
                public class NlsAccessProfile : Tea.TeaModel {
                    public var accessProfileId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessProfileId != nil {
                            map["AccessProfileId"] = self.accessProfileId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AccessProfileId"] as? String {
                            self.accessProfileId = value
                        }
                    }
                }
                public class PronRules : Tea.TeaModel {
                    public var pattern: String?

                    public var replacement: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.pattern != nil {
                            map["Pattern"] = self.pattern!
                        }
                        if self.replacement != nil {
                            map["Replacement"] = self.replacement!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Pattern"] as? String {
                            self.pattern = value
                        }
                        if let value = dict["Replacement"] as? String {
                            self.replacement = value
                        }
                    }
                }
                public var model: String?

                public var nlsAccessProfile: GetScriptResponseBody.Data.DraftVersion.SynthesizerConfig.NlsAccessProfile?

                public var nlsAccessType: String?

                public var nlsEngine: String?

                public var pitchRate: Int32?

                public var pronRules: [GetScriptResponseBody.Data.DraftVersion.SynthesizerConfig.PronRules]?

                public var speechRate: Int32?

                public var voice: String?

                public var volume: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.nlsAccessProfile?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.model != nil {
                        map["Model"] = self.model!
                    }
                    if self.nlsAccessProfile != nil {
                        map["NlsAccessProfile"] = self.nlsAccessProfile?.toMap()
                    }
                    if self.nlsAccessType != nil {
                        map["NlsAccessType"] = self.nlsAccessType!
                    }
                    if self.nlsEngine != nil {
                        map["NlsEngine"] = self.nlsEngine!
                    }
                    if self.pitchRate != nil {
                        map["PitchRate"] = self.pitchRate!
                    }
                    if self.pronRules != nil {
                        var tmp : [Any] = []
                        for k in self.pronRules! {
                            tmp.append(k.toMap())
                        }
                        map["PronRules"] = tmp
                    }
                    if self.speechRate != nil {
                        map["SpeechRate"] = self.speechRate!
                    }
                    if self.voice != nil {
                        map["Voice"] = self.voice!
                    }
                    if self.volume != nil {
                        map["Volume"] = self.volume!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Model"] as? String {
                        self.model = value
                    }
                    if let value = dict["NlsAccessProfile"] as? [String: Any?] {
                        var model = GetScriptResponseBody.Data.DraftVersion.SynthesizerConfig.NlsAccessProfile()
                        model.fromMap(value)
                        self.nlsAccessProfile = model
                    }
                    if let value = dict["NlsAccessType"] as? String {
                        self.nlsAccessType = value
                    }
                    if let value = dict["NlsEngine"] as? String {
                        self.nlsEngine = value
                    }
                    if let value = dict["PitchRate"] as? Int32 {
                        self.pitchRate = value
                    }
                    if let value = dict["PronRules"] as? [Any?] {
                        var tmp : [GetScriptResponseBody.Data.DraftVersion.SynthesizerConfig.PronRules] = []
                        for v in value {
                            if v != nil {
                                var model = GetScriptResponseBody.Data.DraftVersion.SynthesizerConfig.PronRules()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.pronRules = tmp
                    }
                    if let value = dict["SpeechRate"] as? Int32 {
                        self.speechRate = value
                    }
                    if let value = dict["Voice"] as? String {
                        self.voice = value
                    }
                    if let value = dict["Volume"] as? Int32 {
                        self.volume = value
                    }
                }
            }
            public class TranscriberConfig : Tea.TeaModel {
                public class NlsAccessProfile : Tea.TeaModel {
                    public var accessProfileId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessProfileId != nil {
                            map["AccessProfileId"] = self.accessProfileId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AccessProfileId"] as? String {
                            self.accessProfileId = value
                        }
                    }
                }
                public var customizationId: String?

                public var endSilenceTimeout: Int32?

                public var model: String?

                public var nlsAccessProfile: GetScriptResponseBody.Data.DraftVersion.TranscriberConfig.NlsAccessProfile?

                public var nlsAccessType: String?

                public var nlsEngine: String?

                public var speechNoiseThreshold: String?

                public var vocabularyId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.nlsAccessProfile?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.customizationId != nil {
                        map["CustomizationId"] = self.customizationId!
                    }
                    if self.endSilenceTimeout != nil {
                        map["EndSilenceTimeout"] = self.endSilenceTimeout!
                    }
                    if self.model != nil {
                        map["Model"] = self.model!
                    }
                    if self.nlsAccessProfile != nil {
                        map["NlsAccessProfile"] = self.nlsAccessProfile?.toMap()
                    }
                    if self.nlsAccessType != nil {
                        map["NlsAccessType"] = self.nlsAccessType!
                    }
                    if self.nlsEngine != nil {
                        map["NlsEngine"] = self.nlsEngine!
                    }
                    if self.speechNoiseThreshold != nil {
                        map["SpeechNoiseThreshold"] = self.speechNoiseThreshold!
                    }
                    if self.vocabularyId != nil {
                        map["VocabularyId"] = self.vocabularyId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CustomizationId"] as? String {
                        self.customizationId = value
                    }
                    if let value = dict["EndSilenceTimeout"] as? Int32 {
                        self.endSilenceTimeout = value
                    }
                    if let value = dict["Model"] as? String {
                        self.model = value
                    }
                    if let value = dict["NlsAccessProfile"] as? [String: Any?] {
                        var model = GetScriptResponseBody.Data.DraftVersion.TranscriberConfig.NlsAccessProfile()
                        model.fromMap(value)
                        self.nlsAccessProfile = model
                    }
                    if let value = dict["NlsAccessType"] as? String {
                        self.nlsAccessType = value
                    }
                    if let value = dict["NlsEngine"] as? String {
                        self.nlsEngine = value
                    }
                    if let value = dict["SpeechNoiseThreshold"] as? String {
                        self.speechNoiseThreshold = value
                    }
                    if let value = dict["VocabularyId"] as? String {
                        self.vocabularyId = value
                    }
                }
            }
            public var interactionConfig: GetScriptResponseBody.Data.DraftVersion.InteractionConfig?

            public var labelConfig: [GetScriptResponseBody.Data.DraftVersion.LabelConfig]?

            public var scriptProfile: GetScriptResponseBody.Data.DraftVersion.ScriptProfile?

            public var synthesizerConfig: GetScriptResponseBody.Data.DraftVersion.SynthesizerConfig?

            public var transcriberConfig: GetScriptResponseBody.Data.DraftVersion.TranscriberConfig?

            public var versionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.interactionConfig?.validate()
                try self.scriptProfile?.validate()
                try self.synthesizerConfig?.validate()
                try self.transcriberConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.interactionConfig != nil {
                    map["InteractionConfig"] = self.interactionConfig?.toMap()
                }
                if self.labelConfig != nil {
                    var tmp : [Any] = []
                    for k in self.labelConfig! {
                        tmp.append(k.toMap())
                    }
                    map["LabelConfig"] = tmp
                }
                if self.scriptProfile != nil {
                    map["ScriptProfile"] = self.scriptProfile?.toMap()
                }
                if self.synthesizerConfig != nil {
                    map["SynthesizerConfig"] = self.synthesizerConfig?.toMap()
                }
                if self.transcriberConfig != nil {
                    map["TranscriberConfig"] = self.transcriberConfig?.toMap()
                }
                if self.versionId != nil {
                    map["VersionId"] = self.versionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InteractionConfig"] as? [String: Any?] {
                    var model = GetScriptResponseBody.Data.DraftVersion.InteractionConfig()
                    model.fromMap(value)
                    self.interactionConfig = model
                }
                if let value = dict["LabelConfig"] as? [Any?] {
                    var tmp : [GetScriptResponseBody.Data.DraftVersion.LabelConfig] = []
                    for v in value {
                        if v != nil {
                            var model = GetScriptResponseBody.Data.DraftVersion.LabelConfig()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.labelConfig = tmp
                }
                if let value = dict["ScriptProfile"] as? [String: Any?] {
                    var model = GetScriptResponseBody.Data.DraftVersion.ScriptProfile()
                    model.fromMap(value)
                    self.scriptProfile = model
                }
                if let value = dict["SynthesizerConfig"] as? [String: Any?] {
                    var model = GetScriptResponseBody.Data.DraftVersion.SynthesizerConfig()
                    model.fromMap(value)
                    self.synthesizerConfig = model
                }
                if let value = dict["TranscriberConfig"] as? [String: Any?] {
                    var model = GetScriptResponseBody.Data.DraftVersion.TranscriberConfig()
                    model.fromMap(value)
                    self.transcriberConfig = model
                }
                if let value = dict["VersionId"] as? String {
                    self.versionId = value
                }
            }
        }
        public class PublishedVersion : Tea.TeaModel {
            public class InteractionConfig : Tea.TeaModel {
                public class EndConversationConfig : Tea.TeaModel {
                    public class Triggers : Tea.TeaModel {
                        public var closingStatement: String?

                        public var keyWords: [String]?

                        public var triggerType: String?

                        public var turnLimit: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.closingStatement != nil {
                                map["ClosingStatement"] = self.closingStatement!
                            }
                            if self.keyWords != nil {
                                map["KeyWords"] = self.keyWords!
                            }
                            if self.triggerType != nil {
                                map["TriggerType"] = self.triggerType!
                            }
                            if self.turnLimit != nil {
                                map["TurnLimit"] = self.turnLimit!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ClosingStatement"] as? String {
                                self.closingStatement = value
                            }
                            if let value = dict["KeyWords"] as? [String] {
                                self.keyWords = value
                            }
                            if let value = dict["TriggerType"] as? String {
                                self.triggerType = value
                            }
                            if let value = dict["TurnLimit"] as? Int32 {
                                self.turnLimit = value
                            }
                        }
                    }
                    public var delay: Int32?

                    public var triggers: [GetScriptResponseBody.Data.PublishedVersion.InteractionConfig.EndConversationConfig.Triggers]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.delay != nil {
                            map["Delay"] = self.delay!
                        }
                        if self.triggers != nil {
                            var tmp : [Any] = []
                            for k in self.triggers! {
                                tmp.append(k.toMap())
                            }
                            map["Triggers"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Delay"] as? Int32 {
                            self.delay = value
                        }
                        if let value = dict["Triggers"] as? [Any?] {
                            var tmp : [GetScriptResponseBody.Data.PublishedVersion.InteractionConfig.EndConversationConfig.Triggers] = []
                            for v in value {
                                if v != nil {
                                    var model = GetScriptResponseBody.Data.PublishedVersion.InteractionConfig.EndConversationConfig.Triggers()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.triggers = tmp
                        }
                    }
                }
                public class SilenceDetectionConfig : Tea.TeaModel {
                    public var maxRepeats: Int32?

                    public var timeout: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.maxRepeats != nil {
                            map["MaxRepeats"] = self.maxRepeats!
                        }
                        if self.timeout != nil {
                            map["Timeout"] = self.timeout!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["MaxRepeats"] as? Int32 {
                            self.maxRepeats = value
                        }
                        if let value = dict["Timeout"] as? Int32 {
                            self.timeout = value
                        }
                    }
                }
                public var backgroundMusicId: String?

                public var endConversationConfig: GetScriptResponseBody.Data.PublishedVersion.InteractionConfig.EndConversationConfig?

                public var initialGreetingDelayMilliseconds: Int32?

                public var silenceDetectionConfig: GetScriptResponseBody.Data.PublishedVersion.InteractionConfig.SilenceDetectionConfig?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.endConversationConfig?.validate()
                    try self.silenceDetectionConfig?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.backgroundMusicId != nil {
                        map["BackgroundMusicId"] = self.backgroundMusicId!
                    }
                    if self.endConversationConfig != nil {
                        map["EndConversationConfig"] = self.endConversationConfig?.toMap()
                    }
                    if self.initialGreetingDelayMilliseconds != nil {
                        map["InitialGreetingDelayMilliseconds"] = self.initialGreetingDelayMilliseconds!
                    }
                    if self.silenceDetectionConfig != nil {
                        map["SilenceDetectionConfig"] = self.silenceDetectionConfig?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BackgroundMusicId"] as? String {
                        self.backgroundMusicId = value
                    }
                    if let value = dict["EndConversationConfig"] as? [String: Any?] {
                        var model = GetScriptResponseBody.Data.PublishedVersion.InteractionConfig.EndConversationConfig()
                        model.fromMap(value)
                        self.endConversationConfig = model
                    }
                    if let value = dict["InitialGreetingDelayMilliseconds"] as? Int32 {
                        self.initialGreetingDelayMilliseconds = value
                    }
                    if let value = dict["SilenceDetectionConfig"] as? [String: Any?] {
                        var model = GetScriptResponseBody.Data.PublishedVersion.InteractionConfig.SilenceDetectionConfig()
                        model.fromMap(value)
                        self.silenceDetectionConfig = model
                    }
                }
            }
            public class LabelConfig : Tea.TeaModel {
                public var candidateValues: [String]?

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
                    if self.candidateValues != nil {
                        map["CandidateValues"] = self.candidateValues!
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
                    if let value = dict["CandidateValues"] as? [String] {
                        self.candidateValues = value
                    }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                }
            }
            public class ScriptProfile : Tea.TeaModel {
                public class AgentProfile : Tea.TeaModel {
                    public var description_: String?

                    public var name: String?

                    public var promptsJson: String?

                    public var scriptProfileTemplateId: String?

                    public override init() {
                        super.init()
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
                        if self.promptsJson != nil {
                            map["PromptsJson"] = self.promptsJson!
                        }
                        if self.scriptProfileTemplateId != nil {
                            map["ScriptProfileTemplateId"] = self.scriptProfileTemplateId!
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
                        if let value = dict["PromptsJson"] as? String {
                            self.promptsJson = value
                        }
                        if let value = dict["ScriptProfileTemplateId"] as? String {
                            self.scriptProfileTemplateId = value
                        }
                    }
                }
                public class FunctionMeta : Tea.TeaModel {
                    public var functionId: String?

                    public var functionName: String?

                    public var httpTriggerName: String?

                    public var httpTriggerUrl: String?

                    public var regionId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.functionId != nil {
                            map["FunctionId"] = self.functionId!
                        }
                        if self.functionName != nil {
                            map["FunctionName"] = self.functionName!
                        }
                        if self.httpTriggerName != nil {
                            map["HttpTriggerName"] = self.httpTriggerName!
                        }
                        if self.httpTriggerUrl != nil {
                            map["HttpTriggerUrl"] = self.httpTriggerUrl!
                        }
                        if self.regionId != nil {
                            map["RegionId"] = self.regionId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["FunctionId"] as? String {
                            self.functionId = value
                        }
                        if let value = dict["FunctionName"] as? String {
                            self.functionName = value
                        }
                        if let value = dict["HttpTriggerName"] as? String {
                            self.httpTriggerName = value
                        }
                        if let value = dict["HttpTriggerUrl"] as? String {
                            self.httpTriggerUrl = value
                        }
                        if let value = dict["RegionId"] as? String {
                            self.regionId = value
                        }
                    }
                }
                public class NluAccessProfile : Tea.TeaModel {
                    public var accessProfileId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessProfileId != nil {
                            map["AccessProfileId"] = self.accessProfileId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AccessProfileId"] as? String {
                            self.accessProfileId = value
                        }
                    }
                }
                public var agentKey: String?

                public var agentProfile: GetScriptResponseBody.Data.PublishedVersion.ScriptProfile.AgentProfile?

                public var chatbotId: String?

                public var functionMeta: GetScriptResponseBody.Data.PublishedVersion.ScriptProfile.FunctionMeta?

                public var model: String?

                public var nluAccessProfile: GetScriptResponseBody.Data.PublishedVersion.ScriptProfile.NluAccessProfile?

                public var nluAccessType: String?

                public var nluEngine: String?

                public var omniModel: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.agentProfile?.validate()
                    try self.functionMeta?.validate()
                    try self.nluAccessProfile?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.agentKey != nil {
                        map["AgentKey"] = self.agentKey!
                    }
                    if self.agentProfile != nil {
                        map["AgentProfile"] = self.agentProfile?.toMap()
                    }
                    if self.chatbotId != nil {
                        map["ChatbotId"] = self.chatbotId!
                    }
                    if self.functionMeta != nil {
                        map["FunctionMeta"] = self.functionMeta?.toMap()
                    }
                    if self.model != nil {
                        map["Model"] = self.model!
                    }
                    if self.nluAccessProfile != nil {
                        map["NluAccessProfile"] = self.nluAccessProfile?.toMap()
                    }
                    if self.nluAccessType != nil {
                        map["NluAccessType"] = self.nluAccessType!
                    }
                    if self.nluEngine != nil {
                        map["NluEngine"] = self.nluEngine!
                    }
                    if self.omniModel != nil {
                        map["OmniModel"] = self.omniModel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AgentKey"] as? String {
                        self.agentKey = value
                    }
                    if let value = dict["AgentProfile"] as? [String: Any?] {
                        var model = GetScriptResponseBody.Data.PublishedVersion.ScriptProfile.AgentProfile()
                        model.fromMap(value)
                        self.agentProfile = model
                    }
                    if let value = dict["ChatbotId"] as? String {
                        self.chatbotId = value
                    }
                    if let value = dict["FunctionMeta"] as? [String: Any?] {
                        var model = GetScriptResponseBody.Data.PublishedVersion.ScriptProfile.FunctionMeta()
                        model.fromMap(value)
                        self.functionMeta = model
                    }
                    if let value = dict["Model"] as? String {
                        self.model = value
                    }
                    if let value = dict["NluAccessProfile"] as? [String: Any?] {
                        var model = GetScriptResponseBody.Data.PublishedVersion.ScriptProfile.NluAccessProfile()
                        model.fromMap(value)
                        self.nluAccessProfile = model
                    }
                    if let value = dict["NluAccessType"] as? String {
                        self.nluAccessType = value
                    }
                    if let value = dict["NluEngine"] as? String {
                        self.nluEngine = value
                    }
                    if let value = dict["OmniModel"] as? Bool {
                        self.omniModel = value
                    }
                }
            }
            public class SynthesizerConfig : Tea.TeaModel {
                public class NlsAccessProfile : Tea.TeaModel {
                    public var accessProfileId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessProfileId != nil {
                            map["AccessProfileId"] = self.accessProfileId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AccessProfileId"] as? String {
                            self.accessProfileId = value
                        }
                    }
                }
                public class PronRules : Tea.TeaModel {
                    public var pattern: String?

                    public var replacement: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.pattern != nil {
                            map["Pattern"] = self.pattern!
                        }
                        if self.replacement != nil {
                            map["Replacement"] = self.replacement!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Pattern"] as? String {
                            self.pattern = value
                        }
                        if let value = dict["Replacement"] as? String {
                            self.replacement = value
                        }
                    }
                }
                public var model: String?

                public var nlsAccessProfile: GetScriptResponseBody.Data.PublishedVersion.SynthesizerConfig.NlsAccessProfile?

                public var nlsAccessType: String?

                public var nlsEngine: String?

                public var pitchRate: Int32?

                public var pronRules: [GetScriptResponseBody.Data.PublishedVersion.SynthesizerConfig.PronRules]?

                public var speechRate: Int32?

                public var voice: String?

                public var volume: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.nlsAccessProfile?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.model != nil {
                        map["Model"] = self.model!
                    }
                    if self.nlsAccessProfile != nil {
                        map["NlsAccessProfile"] = self.nlsAccessProfile?.toMap()
                    }
                    if self.nlsAccessType != nil {
                        map["NlsAccessType"] = self.nlsAccessType!
                    }
                    if self.nlsEngine != nil {
                        map["NlsEngine"] = self.nlsEngine!
                    }
                    if self.pitchRate != nil {
                        map["PitchRate"] = self.pitchRate!
                    }
                    if self.pronRules != nil {
                        var tmp : [Any] = []
                        for k in self.pronRules! {
                            tmp.append(k.toMap())
                        }
                        map["PronRules"] = tmp
                    }
                    if self.speechRate != nil {
                        map["SpeechRate"] = self.speechRate!
                    }
                    if self.voice != nil {
                        map["Voice"] = self.voice!
                    }
                    if self.volume != nil {
                        map["Volume"] = self.volume!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Model"] as? String {
                        self.model = value
                    }
                    if let value = dict["NlsAccessProfile"] as? [String: Any?] {
                        var model = GetScriptResponseBody.Data.PublishedVersion.SynthesizerConfig.NlsAccessProfile()
                        model.fromMap(value)
                        self.nlsAccessProfile = model
                    }
                    if let value = dict["NlsAccessType"] as? String {
                        self.nlsAccessType = value
                    }
                    if let value = dict["NlsEngine"] as? String {
                        self.nlsEngine = value
                    }
                    if let value = dict["PitchRate"] as? Int32 {
                        self.pitchRate = value
                    }
                    if let value = dict["PronRules"] as? [Any?] {
                        var tmp : [GetScriptResponseBody.Data.PublishedVersion.SynthesizerConfig.PronRules] = []
                        for v in value {
                            if v != nil {
                                var model = GetScriptResponseBody.Data.PublishedVersion.SynthesizerConfig.PronRules()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.pronRules = tmp
                    }
                    if let value = dict["SpeechRate"] as? Int32 {
                        self.speechRate = value
                    }
                    if let value = dict["Voice"] as? String {
                        self.voice = value
                    }
                    if let value = dict["Volume"] as? Int32 {
                        self.volume = value
                    }
                }
            }
            public class TranscriberConfig : Tea.TeaModel {
                public class NlsAccessProfile : Tea.TeaModel {
                    public var accessProfileId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessProfileId != nil {
                            map["AccessProfileId"] = self.accessProfileId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AccessProfileId"] as? String {
                            self.accessProfileId = value
                        }
                    }
                }
                public var customizationId: String?

                public var endSilenceTimeout: Int32?

                public var model: String?

                public var nlsAccessProfile: GetScriptResponseBody.Data.PublishedVersion.TranscriberConfig.NlsAccessProfile?

                public var nlsAccessType: String?

                public var nlsEngine: String?

                public var speechNoiseThreshold: String?

                public var vocabularyId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.nlsAccessProfile?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.customizationId != nil {
                        map["CustomizationId"] = self.customizationId!
                    }
                    if self.endSilenceTimeout != nil {
                        map["EndSilenceTimeout"] = self.endSilenceTimeout!
                    }
                    if self.model != nil {
                        map["Model"] = self.model!
                    }
                    if self.nlsAccessProfile != nil {
                        map["NlsAccessProfile"] = self.nlsAccessProfile?.toMap()
                    }
                    if self.nlsAccessType != nil {
                        map["NlsAccessType"] = self.nlsAccessType!
                    }
                    if self.nlsEngine != nil {
                        map["NlsEngine"] = self.nlsEngine!
                    }
                    if self.speechNoiseThreshold != nil {
                        map["SpeechNoiseThreshold"] = self.speechNoiseThreshold!
                    }
                    if self.vocabularyId != nil {
                        map["VocabularyId"] = self.vocabularyId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CustomizationId"] as? String {
                        self.customizationId = value
                    }
                    if let value = dict["EndSilenceTimeout"] as? Int32 {
                        self.endSilenceTimeout = value
                    }
                    if let value = dict["Model"] as? String {
                        self.model = value
                    }
                    if let value = dict["NlsAccessProfile"] as? [String: Any?] {
                        var model = GetScriptResponseBody.Data.PublishedVersion.TranscriberConfig.NlsAccessProfile()
                        model.fromMap(value)
                        self.nlsAccessProfile = model
                    }
                    if let value = dict["NlsAccessType"] as? String {
                        self.nlsAccessType = value
                    }
                    if let value = dict["NlsEngine"] as? String {
                        self.nlsEngine = value
                    }
                    if let value = dict["SpeechNoiseThreshold"] as? String {
                        self.speechNoiseThreshold = value
                    }
                    if let value = dict["VocabularyId"] as? String {
                        self.vocabularyId = value
                    }
                }
            }
            public var interactionConfig: GetScriptResponseBody.Data.PublishedVersion.InteractionConfig?

            public var labelConfig: [GetScriptResponseBody.Data.PublishedVersion.LabelConfig]?

            public var scriptProfile: GetScriptResponseBody.Data.PublishedVersion.ScriptProfile?

            public var synthesizerConfig: GetScriptResponseBody.Data.PublishedVersion.SynthesizerConfig?

            public var transcriberConfig: GetScriptResponseBody.Data.PublishedVersion.TranscriberConfig?

            public var versionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.interactionConfig?.validate()
                try self.scriptProfile?.validate()
                try self.synthesizerConfig?.validate()
                try self.transcriberConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.interactionConfig != nil {
                    map["InteractionConfig"] = self.interactionConfig?.toMap()
                }
                if self.labelConfig != nil {
                    var tmp : [Any] = []
                    for k in self.labelConfig! {
                        tmp.append(k.toMap())
                    }
                    map["LabelConfig"] = tmp
                }
                if self.scriptProfile != nil {
                    map["ScriptProfile"] = self.scriptProfile?.toMap()
                }
                if self.synthesizerConfig != nil {
                    map["SynthesizerConfig"] = self.synthesizerConfig?.toMap()
                }
                if self.transcriberConfig != nil {
                    map["TranscriberConfig"] = self.transcriberConfig?.toMap()
                }
                if self.versionId != nil {
                    map["VersionId"] = self.versionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InteractionConfig"] as? [String: Any?] {
                    var model = GetScriptResponseBody.Data.PublishedVersion.InteractionConfig()
                    model.fromMap(value)
                    self.interactionConfig = model
                }
                if let value = dict["LabelConfig"] as? [Any?] {
                    var tmp : [GetScriptResponseBody.Data.PublishedVersion.LabelConfig] = []
                    for v in value {
                        if v != nil {
                            var model = GetScriptResponseBody.Data.PublishedVersion.LabelConfig()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.labelConfig = tmp
                }
                if let value = dict["ScriptProfile"] as? [String: Any?] {
                    var model = GetScriptResponseBody.Data.PublishedVersion.ScriptProfile()
                    model.fromMap(value)
                    self.scriptProfile = model
                }
                if let value = dict["SynthesizerConfig"] as? [String: Any?] {
                    var model = GetScriptResponseBody.Data.PublishedVersion.SynthesizerConfig()
                    model.fromMap(value)
                    self.synthesizerConfig = model
                }
                if let value = dict["TranscriberConfig"] as? [String: Any?] {
                    var model = GetScriptResponseBody.Data.PublishedVersion.TranscriberConfig()
                    model.fromMap(value)
                    self.transcriberConfig = model
                }
                if let value = dict["VersionId"] as? String {
                    self.versionId = value
                }
            }
        }
        public var concurrency: Int32?

        public var createdTime: Int64?

        public var description_: String?

        public var draftVersion: GetScriptResponseBody.Data.DraftVersion?

        public var name: String?

        public var nluEngine: String?

        public var publishedVersion: GetScriptResponseBody.Data.PublishedVersion?

        public var scriptId: String?

        public var status: String?

        public var updatedTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.draftVersion?.validate()
            try self.publishedVersion?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.draftVersion != nil {
                map["DraftVersion"] = self.draftVersion?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nluEngine != nil {
                map["NluEngine"] = self.nluEngine!
            }
            if self.publishedVersion != nil {
                map["PublishedVersion"] = self.publishedVersion?.toMap()
            }
            if self.scriptId != nil {
                map["ScriptId"] = self.scriptId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Concurrency"] as? Int32 {
                self.concurrency = value
            }
            if let value = dict["CreatedTime"] as? Int64 {
                self.createdTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DraftVersion"] as? [String: Any?] {
                var model = GetScriptResponseBody.Data.DraftVersion()
                model.fromMap(value)
                self.draftVersion = model
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NluEngine"] as? String {
                self.nluEngine = value
            }
            if let value = dict["PublishedVersion"] as? [String: Any?] {
                var model = GetScriptResponseBody.Data.PublishedVersion()
                model.fromMap(value)
                self.publishedVersion = model
            }
            if let value = dict["ScriptId"] as? String {
                self.scriptId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdatedTime"] as? Int64 {
                self.updatedTime = value
            }
        }
    }
    public var code: String?

    public var data: GetScriptResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetScriptResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScriptResponseBody?

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
            var model = GetScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSubscriptionRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetSubscriptionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EventList : Tea.TeaModel {
            public var disabled: Bool?

            public var displayName: String?

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
                if self.disabled != nil {
                    map["Disabled"] = self.disabled!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Disabled"] as? Bool {
                    self.disabled = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var disabled: Bool?

        public var endpoint: String?

        public var eventList: [GetSubscriptionResponseBody.Data.EventList]?

        public var instanceId: String?

        public var mqInstanceId: String?

        public var mqType: String?

        public var password: String?

        public var producerId: String?

        public var topic: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.disabled != nil {
                map["Disabled"] = self.disabled!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.eventList != nil {
                var tmp : [Any] = []
                for k in self.eventList! {
                    tmp.append(k.toMap())
                }
                map["EventList"] = tmp
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.mqInstanceId != nil {
                map["MqInstanceId"] = self.mqInstanceId!
            }
            if self.mqType != nil {
                map["MqType"] = self.mqType!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.producerId != nil {
                map["ProducerId"] = self.producerId!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Disabled"] as? Bool {
                self.disabled = value
            }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["EventList"] as? [Any?] {
                var tmp : [GetSubscriptionResponseBody.Data.EventList] = []
                for v in value {
                    if v != nil {
                        var model = GetSubscriptionResponseBody.Data.EventList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.eventList = tmp
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MqInstanceId"] as? String {
                self.mqInstanceId = value
            }
            if let value = dict["MqType"] as? String {
                self.mqType = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["ProducerId"] as? String {
                self.producerId = value
            }
            if let value = dict["Topic"] as? String {
                self.topic = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public var code: String?

    public var data: GetSubscriptionResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetSubscriptionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubscriptionResponseBody?

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
            var model = GetSubscriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVocabularyRequest : Tea.TeaModel {
    public var instanceId: String?

    public var vocabularyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.vocabularyId != nil {
            map["VocabularyId"] = self.vocabularyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VocabularyId"] as? String {
            self.vocabularyId = value
        }
    }
}

public class GetVocabularyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdTime: Int64?

        public var description_: String?

        public var instanceId: String?

        public var name: String?

        public var tenantId: String?

        public var updatedTime: Int64?

        public var vocabularyId: String?

        public var wordCount: String?

        public var words: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            if self.vocabularyId != nil {
                map["VocabularyId"] = self.vocabularyId!
            }
            if self.wordCount != nil {
                map["WordCount"] = self.wordCount!
            }
            if self.words != nil {
                map["Words"] = self.words!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedTime"] as? Int64 {
                self.createdTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["UpdatedTime"] as? Int64 {
                self.updatedTime = value
            }
            if let value = dict["VocabularyId"] as? String {
                self.vocabularyId = value
            }
            if let value = dict["WordCount"] as? String {
                self.wordCount = value
            }
            if let value = dict["Words"] as? String {
                self.words = value
            }
        }
    }
    public var code: String?

    public var data: GetVocabularyResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetVocabularyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetVocabularyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVocabularyResponseBody?

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
            var model = GetVocabularyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImportVocabularyRequest : Tea.TeaModel {
    public var fileKey: String?

    public var instanceId: String?

    public override init() {
        super.init()
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
            map["FileKey"] = self.fileKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileKey"] as? String {
            self.fileKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ImportVocabularyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String] {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ImportVocabularyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportVocabularyResponseBody?

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
            var model = ImportVocabularyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBackgroundMusicsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListBackgroundMusicsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BackgroundMusics : Tea.TeaModel {
            public var id: String?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
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
            }
        }
        public var backgroundMusics: [ListBackgroundMusicsResponseBody.Data.BackgroundMusics]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.backgroundMusics != nil {
                var tmp : [Any] = []
                for k in self.backgroundMusics! {
                    tmp.append(k.toMap())
                }
                map["BackgroundMusics"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackgroundMusics"] as? [Any?] {
                var tmp : [ListBackgroundMusicsResponseBody.Data.BackgroundMusics] = []
                for v in value {
                    if v != nil {
                        var model = ListBackgroundMusicsResponseBody.Data.BackgroundMusics()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.backgroundMusics = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListBackgroundMusicsResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListBackgroundMusicsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListBackgroundMusicsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBackgroundMusicsResponseBody?

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
            var model = ListBackgroundMusicsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCallDetailRecordsRequest : Tea.TeaModel {
    public var accessChannelId: String?

    public var accessChannelType: String?

    public var callee: String?

    public var caller: String?

    public var dispositionCodes: [String]?

    public var dispositionReasons: [String]?

    public var draftVersion: Bool?

    public var endTime: String?

    public var instanceId: String?

    public var issueResolved: Bool?

    public var maxTalkTurns: Int32?

    public var minTalkTurns: Int32?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var scriptId: String?

    public var sessionIds: [String]?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessChannelId != nil {
            map["AccessChannelId"] = self.accessChannelId!
        }
        if self.accessChannelType != nil {
            map["AccessChannelType"] = self.accessChannelType!
        }
        if self.callee != nil {
            map["Callee"] = self.callee!
        }
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.dispositionCodes != nil {
            map["DispositionCodes"] = self.dispositionCodes!
        }
        if self.dispositionReasons != nil {
            map["DispositionReasons"] = self.dispositionReasons!
        }
        if self.draftVersion != nil {
            map["DraftVersion"] = self.draftVersion!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.issueResolved != nil {
            map["IssueResolved"] = self.issueResolved!
        }
        if self.maxTalkTurns != nil {
            map["MaxTalkTurns"] = self.maxTalkTurns!
        }
        if self.minTalkTurns != nil {
            map["MinTalkTurns"] = self.minTalkTurns!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.sessionIds != nil {
            map["SessionIds"] = self.sessionIds!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessChannelId"] as? String {
            self.accessChannelId = value
        }
        if let value = dict["AccessChannelType"] as? String {
            self.accessChannelType = value
        }
        if let value = dict["Callee"] as? String {
            self.callee = value
        }
        if let value = dict["Caller"] as? String {
            self.caller = value
        }
        if let value = dict["DispositionCodes"] as? [String] {
            self.dispositionCodes = value
        }
        if let value = dict["DispositionReasons"] as? [String] {
            self.dispositionReasons = value
        }
        if let value = dict["DraftVersion"] as? Bool {
            self.draftVersion = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IssueResolved"] as? Bool {
            self.issueResolved = value
        }
        if let value = dict["MaxTalkTurns"] as? Int32 {
            self.maxTalkTurns = value
        }
        if let value = dict["MinTalkTurns"] as? Int32 {
            self.minTalkTurns = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["SessionIds"] as? [String] {
            self.sessionIds = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class ListCallDetailRecordsShrinkRequest : Tea.TeaModel {
    public var accessChannelId: String?

    public var accessChannelType: String?

    public var callee: String?

    public var caller: String?

    public var dispositionCodesShrink: String?

    public var dispositionReasonsShrink: String?

    public var draftVersion: Bool?

    public var endTime: String?

    public var instanceId: String?

    public var issueResolved: Bool?

    public var maxTalkTurns: Int32?

    public var minTalkTurns: Int32?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var scriptId: String?

    public var sessionIdsShrink: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessChannelId != nil {
            map["AccessChannelId"] = self.accessChannelId!
        }
        if self.accessChannelType != nil {
            map["AccessChannelType"] = self.accessChannelType!
        }
        if self.callee != nil {
            map["Callee"] = self.callee!
        }
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.dispositionCodesShrink != nil {
            map["DispositionCodes"] = self.dispositionCodesShrink!
        }
        if self.dispositionReasonsShrink != nil {
            map["DispositionReasons"] = self.dispositionReasonsShrink!
        }
        if self.draftVersion != nil {
            map["DraftVersion"] = self.draftVersion!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.issueResolved != nil {
            map["IssueResolved"] = self.issueResolved!
        }
        if self.maxTalkTurns != nil {
            map["MaxTalkTurns"] = self.maxTalkTurns!
        }
        if self.minTalkTurns != nil {
            map["MinTalkTurns"] = self.minTalkTurns!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.sessionIdsShrink != nil {
            map["SessionIds"] = self.sessionIdsShrink!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessChannelId"] as? String {
            self.accessChannelId = value
        }
        if let value = dict["AccessChannelType"] as? String {
            self.accessChannelType = value
        }
        if let value = dict["Callee"] as? String {
            self.callee = value
        }
        if let value = dict["Caller"] as? String {
            self.caller = value
        }
        if let value = dict["DispositionCodes"] as? String {
            self.dispositionCodesShrink = value
        }
        if let value = dict["DispositionReasons"] as? String {
            self.dispositionReasonsShrink = value
        }
        if let value = dict["DraftVersion"] as? Bool {
            self.draftVersion = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IssueResolved"] as? Bool {
            self.issueResolved = value
        }
        if let value = dict["MaxTalkTurns"] as? Int32 {
            self.maxTalkTurns = value
        }
        if let value = dict["MinTalkTurns"] as? Int32 {
            self.minTalkTurns = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["SessionIds"] as? String {
            self.sessionIdsShrink = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class ListCallDetailRecordsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CallDetailRecords : Tea.TeaModel {
            public var callee: String?

            public var caller: String?

            public var dispositionCode: String?

            public var dispositionReason: String?

            public var duration: Int32?

            public var endTime: Int64?

            public var issueResolved: Bool?

            public var releaseInitiator: String?

            public var resolutionEvidence: String?

            public var sessionId: String?

            public var startTime: Int64?

            public var talkTime: Int32?

            public var talkTurns: Int32?

            public var transferTarget: String?

            public var transferType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callee != nil {
                    map["Callee"] = self.callee!
                }
                if self.caller != nil {
                    map["Caller"] = self.caller!
                }
                if self.dispositionCode != nil {
                    map["DispositionCode"] = self.dispositionCode!
                }
                if self.dispositionReason != nil {
                    map["DispositionReason"] = self.dispositionReason!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.issueResolved != nil {
                    map["IssueResolved"] = self.issueResolved!
                }
                if self.releaseInitiator != nil {
                    map["ReleaseInitiator"] = self.releaseInitiator!
                }
                if self.resolutionEvidence != nil {
                    map["ResolutionEvidence"] = self.resolutionEvidence!
                }
                if self.sessionId != nil {
                    map["SessionId"] = self.sessionId!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.talkTime != nil {
                    map["TalkTime"] = self.talkTime!
                }
                if self.talkTurns != nil {
                    map["TalkTurns"] = self.talkTurns!
                }
                if self.transferTarget != nil {
                    map["TransferTarget"] = self.transferTarget!
                }
                if self.transferType != nil {
                    map["TransferType"] = self.transferType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Callee"] as? String {
                    self.callee = value
                }
                if let value = dict["Caller"] as? String {
                    self.caller = value
                }
                if let value = dict["DispositionCode"] as? String {
                    self.dispositionCode = value
                }
                if let value = dict["DispositionReason"] as? String {
                    self.dispositionReason = value
                }
                if let value = dict["Duration"] as? Int32 {
                    self.duration = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["IssueResolved"] as? Bool {
                    self.issueResolved = value
                }
                if let value = dict["ReleaseInitiator"] as? String {
                    self.releaseInitiator = value
                }
                if let value = dict["ResolutionEvidence"] as? String {
                    self.resolutionEvidence = value
                }
                if let value = dict["SessionId"] as? String {
                    self.sessionId = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["TalkTime"] as? Int32 {
                    self.talkTime = value
                }
                if let value = dict["TalkTurns"] as? Int32 {
                    self.talkTurns = value
                }
                if let value = dict["TransferTarget"] as? String {
                    self.transferTarget = value
                }
                if let value = dict["TransferType"] as? String {
                    self.transferType = value
                }
            }
        }
        public var callDetailRecords: [ListCallDetailRecordsResponseBody.Data.CallDetailRecords]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.callDetailRecords != nil {
                var tmp : [Any] = []
                for k in self.callDetailRecords! {
                    tmp.append(k.toMap())
                }
                map["CallDetailRecords"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CallDetailRecords"] as? [Any?] {
                var tmp : [ListCallDetailRecordsResponseBody.Data.CallDetailRecords] = []
                for v in value {
                    if v != nil {
                        var model = ListCallDetailRecordsResponseBody.Data.CallDetailRecords()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.callDetailRecords = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListCallDetailRecordsResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListCallDetailRecordsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListCallDetailRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCallDetailRecordsResponseBody?

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
            var model = ListCallDetailRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCloneVoiceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListCloneVoiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CloneVoices : Tea.TeaModel {
            public var cloneVoiceId: String?

            public var createdTime: Int64?

            public var instanceId: String?

            public var model: String?

            public var name: String?

            public var nlsEngine: String?

            public var status: String?

            public var tenantId: String?

            public var updatedTime: Int64?

            public var voice: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cloneVoiceId != nil {
                    map["CloneVoiceId"] = self.cloneVoiceId!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nlsEngine != nil {
                    map["NlsEngine"] = self.nlsEngine!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                if self.voice != nil {
                    map["Voice"] = self.voice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CloneVoiceId"] as? String {
                    self.cloneVoiceId = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Model"] as? String {
                    self.model = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NlsEngine"] as? String {
                    self.nlsEngine = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
                if let value = dict["Voice"] as? String {
                    self.voice = value
                }
            }
        }
        public var cloneVoices: [ListCloneVoiceResponseBody.Data.CloneVoices]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.cloneVoices != nil {
                var tmp : [Any] = []
                for k in self.cloneVoices! {
                    tmp.append(k.toMap())
                }
                map["CloneVoices"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CloneVoices"] as? [Any?] {
                var tmp : [ListCloneVoiceResponseBody.Data.CloneVoices] = []
                for v in value {
                    if v != nil {
                        var model = ListCloneVoiceResponseBody.Data.CloneVoices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cloneVoices = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListCloneVoiceResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListCloneVoiceResponseBody.Data()
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
    }
}

public class ListCloneVoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCloneVoiceResponseBody?

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
            var model = ListCloneVoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCloneVoiceModelsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
    }
}

public class ListCloneVoiceModelsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CloneVoiceModels : Tea.TeaModel {
            public var description_: String?

            public var displayName: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var cloneVoiceModels: [ListCloneVoiceModelsResponseBody.Data.CloneVoiceModels]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.cloneVoiceModels != nil {
                var tmp : [Any] = []
                for k in self.cloneVoiceModels! {
                    tmp.append(k.toMap())
                }
                map["CloneVoiceModels"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CloneVoiceModels"] as? [Any?] {
                var tmp : [ListCloneVoiceModelsResponseBody.Data.CloneVoiceModels] = []
                for v in value {
                    if v != nil {
                        var model = ListCloneVoiceModelsResponseBody.Data.CloneVoiceModels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cloneVoiceModels = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListCloneVoiceModelsResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListCloneVoiceModelsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListCloneVoiceModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCloneVoiceModelsResponseBody?

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
            var model = ListCloneVoiceModelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLlmAccessProfilesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListLlmAccessProfilesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class LlmAccessProfiles : Tea.TeaModel {
            public class Profile : Tea.TeaModel {
                public var apiKey: String?

                public var endpoint: String?

                public var name: String?

                public var nluAccessType: String?

                public var nluEngine: String?

                public override init() {
                    super.init()
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
                        map["ApiKey"] = self.apiKey!
                    }
                    if self.endpoint != nil {
                        map["Endpoint"] = self.endpoint!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.nluAccessType != nil {
                        map["NluAccessType"] = self.nluAccessType!
                    }
                    if self.nluEngine != nil {
                        map["NluEngine"] = self.nluEngine!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApiKey"] as? String {
                        self.apiKey = value
                    }
                    if let value = dict["Endpoint"] as? String {
                        self.endpoint = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["NluAccessType"] as? String {
                        self.nluAccessType = value
                    }
                    if let value = dict["NluEngine"] as? String {
                        self.nluEngine = value
                    }
                }
            }
            public var accessProfileId: String?

            public var createdTime: Int64?

            public var instanceId: String?

            public var profile: ListLlmAccessProfilesResponseBody.Data.LlmAccessProfiles.Profile?

            public var updatedTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.profile?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessProfileId != nil {
                    map["AccessProfileId"] = self.accessProfileId!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.profile != nil {
                    map["Profile"] = self.profile?.toMap()
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessProfileId"] as? String {
                    self.accessProfileId = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Profile"] as? [String: Any?] {
                    var model = ListLlmAccessProfilesResponseBody.Data.LlmAccessProfiles.Profile()
                    model.fromMap(value)
                    self.profile = model
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
            }
        }
        public var llmAccessProfiles: [ListLlmAccessProfilesResponseBody.Data.LlmAccessProfiles]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.llmAccessProfiles != nil {
                var tmp : [Any] = []
                for k in self.llmAccessProfiles! {
                    tmp.append(k.toMap())
                }
                map["LlmAccessProfiles"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LlmAccessProfiles"] as? [Any?] {
                var tmp : [ListLlmAccessProfilesResponseBody.Data.LlmAccessProfiles] = []
                for v in value {
                    if v != nil {
                        var model = ListLlmAccessProfilesResponseBody.Data.LlmAccessProfiles()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.llmAccessProfiles = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListLlmAccessProfilesResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListLlmAccessProfilesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListLlmAccessProfilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLlmAccessProfilesResponseBody?

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
            var model = ListLlmAccessProfilesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNluModelsRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListNluModelsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
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
        }
    }
    public var code: String?

    public var data: [ListNluModelsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListNluModelsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListNluModelsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListNluModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNluModelsResponseBody?

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
            var model = ListNluModelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScriptProfileTemplatesRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListScriptProfileTemplatesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdTime: Int64?

        public var description_: String?

        public var name: String?

        public var schema: String?

        public var templateId: String?

        public var updatedTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.schema != nil {
                map["Schema"] = self.schema!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedTime"] as? Int64 {
                self.createdTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Schema"] as? String {
                self.schema = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["UpdatedTime"] as? Int64 {
                self.updatedTime = value
            }
        }
    }
    public var code: String?

    public var data: [ListScriptProfileTemplatesResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListScriptProfileTemplatesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListScriptProfileTemplatesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListScriptProfileTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScriptProfileTemplatesResponseBody?

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
            var model = ListScriptProfileTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScriptsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var name: String?

    public var number: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var scriptIds: [String]?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.number != nil {
            map["Number"] = self.number!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.scriptIds != nil {
            map["ScriptIds"] = self.scriptIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Number"] as? String {
            self.number = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ScriptIds"] as? [String] {
            self.scriptIds = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListScriptsShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var name: String?

    public var number: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var scriptIdsShrink: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.number != nil {
            map["Number"] = self.number!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.scriptIdsShrink != nil {
            map["ScriptIds"] = self.scriptIdsShrink!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Number"] as? String {
            self.number = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ScriptIds"] as? String {
            self.scriptIdsShrink = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListScriptsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Scripts : Tea.TeaModel {
            public var concurrency: Int32?

            public var createdTime: Int64?

            public var description_: String?

            public var draftVersionId: String?

            public var name: String?

            public var nluAccessType: String?

            public var nluEngine: String?

            public var number: String?

            public var publishedVersionId: String?

            public var scriptId: String?

            public var status: String?

            public var updatedTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.concurrency != nil {
                    map["Concurrency"] = self.concurrency!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.draftVersionId != nil {
                    map["DraftVersionId"] = self.draftVersionId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nluAccessType != nil {
                    map["NluAccessType"] = self.nluAccessType!
                }
                if self.nluEngine != nil {
                    map["NluEngine"] = self.nluEngine!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.publishedVersionId != nil {
                    map["PublishedVersionId"] = self.publishedVersionId!
                }
                if self.scriptId != nil {
                    map["ScriptId"] = self.scriptId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Concurrency"] as? Int32 {
                    self.concurrency = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DraftVersionId"] as? String {
                    self.draftVersionId = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NluAccessType"] as? String {
                    self.nluAccessType = value
                }
                if let value = dict["NluEngine"] as? String {
                    self.nluEngine = value
                }
                if let value = dict["Number"] as? String {
                    self.number = value
                }
                if let value = dict["PublishedVersionId"] as? String {
                    self.publishedVersionId = value
                }
                if let value = dict["ScriptId"] as? String {
                    self.scriptId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var scripts: [ListScriptsResponseBody.Data.Scripts]?

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
            if self.scripts != nil {
                var tmp : [Any] = []
                for k in self.scripts! {
                    tmp.append(k.toMap())
                }
                map["Scripts"] = tmp
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
            if let value = dict["Scripts"] as? [Any?] {
                var tmp : [ListScriptsResponseBody.Data.Scripts] = []
                for v in value {
                    if v != nil {
                        var model = ListScriptsResponseBody.Data.Scripts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scripts = tmp
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListScriptsResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListScriptsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListScriptsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScriptsResponseBody?

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
            var model = ListScriptsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVariableRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchPattern: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchPattern != nil {
            map["SearchPattern"] = self.searchPattern!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SearchPattern"] as? String {
            self.searchPattern = value
        }
    }
}

public class ListVariableResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Variables : Tea.TeaModel {
            public var createdTime: Int64?

            public var description_: String?

            public var displayName: String?

            public var instanceId: String?

            public var name: String?

            public var tenantId: String?

            public var updatedTime: Int64?

            public var variableId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                if self.variableId != nil {
                    map["VariableId"] = self.variableId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
                if let value = dict["VariableId"] as? String {
                    self.variableId = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public var variables: [ListVariableResponseBody.Data.Variables]?

        public override init() {
            super.init()
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
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["Variables"] = tmp
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
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["Variables"] as? [Any?] {
                var tmp : [ListVariableResponseBody.Data.Variables] = []
                for v in value {
                    if v != nil {
                        var model = ListVariableResponseBody.Data.Variables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.variables = tmp
            }
        }
    }
    public var code: String?

    public var data: ListVariableResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListVariableResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListVariableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVariableResponseBody?

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
            var model = ListVariableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVocabularyRequest : Tea.TeaModel {
    public var instanceId: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListVocabularyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Vocabularies : Tea.TeaModel {
            public var createdTime: Int64?

            public var description_: String?

            public var instanceId: String?

            public var name: String?

            public var tenantId: String?

            public var updatedTime: Int64?

            public var vocabularyId: String?

            public var wordCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                if self.vocabularyId != nil {
                    map["VocabularyId"] = self.vocabularyId!
                }
                if self.wordCount != nil {
                    map["WordCount"] = self.wordCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
                if let value = dict["VocabularyId"] as? String {
                    self.vocabularyId = value
                }
                if let value = dict["WordCount"] as? Int32 {
                    self.wordCount = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public var vocabularies: [ListVocabularyResponseBody.Data.Vocabularies]?

        public override init() {
            super.init()
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
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.vocabularies != nil {
                var tmp : [Any] = []
                for k in self.vocabularies! {
                    tmp.append(k.toMap())
                }
                map["Vocabularies"] = tmp
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
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["Vocabularies"] as? [Any?] {
                var tmp : [ListVocabularyResponseBody.Data.Vocabularies] = []
                for v in value {
                    if v != nil {
                        var model = ListVocabularyResponseBody.Data.Vocabularies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vocabularies = tmp
            }
        }
    }
    public var code: String?

    public var data: ListVocabularyResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListVocabularyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListVocabularyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVocabularyResponseBody?

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
            var model = ListVocabularyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVoiceAccessProfileRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListVoiceAccessProfileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoiceAccessProfiles : Tea.TeaModel {
            public class Profile : Tea.TeaModel {
                public var accessKey: String?

                public var apiKey: String?

                public var apiSecret: String?

                public var appId: String?

                public var appKey: String?

                public var asrAppKey: String?

                public var ttsApiKey: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessKey != nil {
                        map["AccessKey"] = self.accessKey!
                    }
                    if self.apiKey != nil {
                        map["ApiKey"] = self.apiKey!
                    }
                    if self.apiSecret != nil {
                        map["ApiSecret"] = self.apiSecret!
                    }
                    if self.appId != nil {
                        map["AppId"] = self.appId!
                    }
                    if self.appKey != nil {
                        map["AppKey"] = self.appKey!
                    }
                    if self.asrAppKey != nil {
                        map["AsrAppKey"] = self.asrAppKey!
                    }
                    if self.ttsApiKey != nil {
                        map["TtsApiKey"] = self.ttsApiKey!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AccessKey"] as? String {
                        self.accessKey = value
                    }
                    if let value = dict["ApiKey"] as? String {
                        self.apiKey = value
                    }
                    if let value = dict["ApiSecret"] as? String {
                        self.apiSecret = value
                    }
                    if let value = dict["AppId"] as? String {
                        self.appId = value
                    }
                    if let value = dict["AppKey"] as? String {
                        self.appKey = value
                    }
                    if let value = dict["AsrAppKey"] as? String {
                        self.asrAppKey = value
                    }
                    if let value = dict["TtsApiKey"] as? String {
                        self.ttsApiKey = value
                    }
                }
            }
            public var accessProfileId: String?

            public var capabilities: [String]?

            public var createdTime: Int64?

            public var instanceId: String?

            public var nlsEngine: String?

            public var nlsEngineName: String?

            public var profile: ListVoiceAccessProfileResponseBody.Data.VoiceAccessProfiles.Profile?

            public var updatedTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.profile?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessProfileId != nil {
                    map["AccessProfileId"] = self.accessProfileId!
                }
                if self.capabilities != nil {
                    map["Capabilities"] = self.capabilities!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.nlsEngine != nil {
                    map["NlsEngine"] = self.nlsEngine!
                }
                if self.nlsEngineName != nil {
                    map["NlsEngineName"] = self.nlsEngineName!
                }
                if self.profile != nil {
                    map["Profile"] = self.profile?.toMap()
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessProfileId"] as? String {
                    self.accessProfileId = value
                }
                if let value = dict["Capabilities"] as? [String] {
                    self.capabilities = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["NlsEngine"] as? String {
                    self.nlsEngine = value
                }
                if let value = dict["NlsEngineName"] as? String {
                    self.nlsEngineName = value
                }
                if let value = dict["Profile"] as? [String: Any?] {
                    var model = ListVoiceAccessProfileResponseBody.Data.VoiceAccessProfiles.Profile()
                    model.fromMap(value)
                    self.profile = model
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public var voiceAccessProfiles: [ListVoiceAccessProfileResponseBody.Data.VoiceAccessProfiles]?

        public override init() {
            super.init()
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
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voiceAccessProfiles != nil {
                var tmp : [Any] = []
                for k in self.voiceAccessProfiles! {
                    tmp.append(k.toMap())
                }
                map["VoiceAccessProfiles"] = tmp
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
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["VoiceAccessProfiles"] as? [Any?] {
                var tmp : [ListVoiceAccessProfileResponseBody.Data.VoiceAccessProfiles] = []
                for v in value {
                    if v != nil {
                        var model = ListVoiceAccessProfileResponseBody.Data.VoiceAccessProfiles()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.voiceAccessProfiles = tmp
            }
        }
    }
    public var code: String?

    public var data: ListVoiceAccessProfileResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListVoiceAccessProfileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListVoiceAccessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVoiceAccessProfileResponseBody?

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
            var model = ListVoiceAccessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVoiceEnginesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
    }
}

public class ListVoiceEnginesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VoiceEngines : Tea.TeaModel {
            public var configSchema: String?

            public var nlsEngine: String?

            public var nlsEngineName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configSchema != nil {
                    map["ConfigSchema"] = self.configSchema!
                }
                if self.nlsEngine != nil {
                    map["NlsEngine"] = self.nlsEngine!
                }
                if self.nlsEngineName != nil {
                    map["NlsEngineName"] = self.nlsEngineName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfigSchema"] as? String {
                    self.configSchema = value
                }
                if let value = dict["NlsEngine"] as? String {
                    self.nlsEngine = value
                }
                if let value = dict["NlsEngineName"] as? String {
                    self.nlsEngineName = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public var voiceEngines: [ListVoiceEnginesResponseBody.Data.VoiceEngines]?

        public override init() {
            super.init()
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
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voiceEngines != nil {
                var tmp : [Any] = []
                for k in self.voiceEngines! {
                    tmp.append(k.toMap())
                }
                map["VoiceEngines"] = tmp
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
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["VoiceEngines"] as? [Any?] {
                var tmp : [ListVoiceEnginesResponseBody.Data.VoiceEngines] = []
                for v in value {
                    if v != nil {
                        var model = ListVoiceEnginesResponseBody.Data.VoiceEngines()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.voiceEngines = tmp
            }
        }
    }
    public var code: String?

    public var data: ListVoiceEnginesResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListVoiceEnginesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListVoiceEnginesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVoiceEnginesResponseBody?

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
            var model = ListVoiceEnginesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVoicesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nlsAccessType: String?

    public var nlsEngine: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nlsAccessType != nil {
            map["NlsAccessType"] = self.nlsAccessType!
        }
        if self.nlsEngine != nil {
            map["NlsEngine"] = self.nlsEngine!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NlsAccessType"] as? String {
            self.nlsAccessType = value
        }
        if let value = dict["NlsEngine"] as? String {
            self.nlsEngine = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListVoicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Voices : Tea.TeaModel {
            public var category: String?

            public var language: String?

            public var model: String?

            public var name: String?

            public var nlsEngine: String?

            public var style: String?

            public var supportedParams: [String]?

            public var voice: String?

            public override init() {
                super.init()
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
                    map["Category"] = self.category!
                }
                if self.language != nil {
                    map["Language"] = self.language!
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nlsEngine != nil {
                    map["NlsEngine"] = self.nlsEngine!
                }
                if self.style != nil {
                    map["Style"] = self.style!
                }
                if self.supportedParams != nil {
                    map["SupportedParams"] = self.supportedParams!
                }
                if self.voice != nil {
                    map["Voice"] = self.voice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["Language"] as? String {
                    self.language = value
                }
                if let value = dict["Model"] as? String {
                    self.model = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NlsEngine"] as? String {
                    self.nlsEngine = value
                }
                if let value = dict["Style"] as? String {
                    self.style = value
                }
                if let value = dict["SupportedParams"] as? [String] {
                    self.supportedParams = value
                }
                if let value = dict["Voice"] as? String {
                    self.voice = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public var voices: [ListVoicesResponseBody.Data.Voices]?

        public override init() {
            super.init()
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
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.voices != nil {
                var tmp : [Any] = []
                for k in self.voices! {
                    tmp.append(k.toMap())
                }
                map["Voices"] = tmp
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
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["Voices"] as? [Any?] {
                var tmp : [ListVoicesResponseBody.Data.Voices] = []
                for v in value {
                    if v != nil {
                        var model = ListVoicesResponseBody.Data.Voices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.voices = tmp
            }
        }
    }
    public var code: String?

    public var data: ListVoicesResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

    public var requestId: String?

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
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListVoicesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListVoicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVoicesResponseBody?

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
            var model = ListVoicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PreviewVoiceRequest : Tea.TeaModel {
    public class Params : Tea.TeaModel {
        public var pitchRate: Double?

        public var speechRate: Double?

        public var volume: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pitchRate != nil {
                map["PitchRate"] = self.pitchRate!
            }
            if self.speechRate != nil {
                map["SpeechRate"] = self.speechRate!
            }
            if self.volume != nil {
                map["Volume"] = self.volume!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PitchRate"] as? Double {
                self.pitchRate = value
            }
            if let value = dict["SpeechRate"] as? Double {
                self.speechRate = value
            }
            if let value = dict["Volume"] as? Int32 {
                self.volume = value
            }
        }
    }
    public var instanceId: String?

    public var model: String?

    public var nlsAccessType: String?

    public var nlsEngine: String?

    public var params: PreviewVoiceRequest.Params?

    public var text: String?

    public var voice: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.nlsAccessType != nil {
            map["NlsAccessType"] = self.nlsAccessType!
        }
        if self.nlsEngine != nil {
            map["NlsEngine"] = self.nlsEngine!
        }
        if self.params != nil {
            map["Params"] = self.params?.toMap()
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.voice != nil {
            map["Voice"] = self.voice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["NlsAccessType"] as? String {
            self.nlsAccessType = value
        }
        if let value = dict["NlsEngine"] as? String {
            self.nlsEngine = value
        }
        if let value = dict["Params"] as? [String: Any?] {
            var model = PreviewVoiceRequest.Params()
            model.fromMap(value)
            self.params = model
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
        if let value = dict["Voice"] as? String {
            self.voice = value
        }
    }
}

public class PreviewVoiceShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var model: String?

    public var nlsAccessType: String?

    public var nlsEngine: String?

    public var paramsShrink: String?

    public var text: String?

    public var voice: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.nlsAccessType != nil {
            map["NlsAccessType"] = self.nlsAccessType!
        }
        if self.nlsEngine != nil {
            map["NlsEngine"] = self.nlsEngine!
        }
        if self.paramsShrink != nil {
            map["Params"] = self.paramsShrink!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.voice != nil {
            map["Voice"] = self.voice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["NlsAccessType"] as? String {
            self.nlsAccessType = value
        }
        if let value = dict["NlsEngine"] as? String {
            self.nlsEngine = value
        }
        if let value = dict["Params"] as? String {
            self.paramsShrink = value
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
        if let value = dict["Voice"] as? String {
            self.voice = value
        }
    }
}

public class PreviewVoiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PreviewVoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PreviewVoiceResponseBody?

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
            var model = PreviewVoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PublishScriptRequest : Tea.TeaModel {
    public var instanceId: String?

    public var scriptId: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class PublishScriptResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PublishScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishScriptResponseBody?

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
            var model = PublishScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCloneVoiceRequest : Tea.TeaModel {
    public var cloneVoiceId: String?

    public var instanceId: String?

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
        if self.cloneVoiceId != nil {
            map["CloneVoiceId"] = self.cloneVoiceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloneVoiceId"] as? String {
            self.cloneVoiceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateCloneVoiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateCloneVoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCloneVoiceResponseBody?

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
            var model = UpdateCloneVoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateLlmAccessProfileRequest : Tea.TeaModel {
    public class Profile : Tea.TeaModel {
        public var apiKey: String?

        public var endpoint: String?

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
            if self.apiKey != nil {
                map["ApiKey"] = self.apiKey!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var accessProfileId: String?

    public var instanceId: String?

    public var profile: UpdateLlmAccessProfileRequest.Profile?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.profile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessProfileId != nil {
            map["AccessProfileId"] = self.accessProfileId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.profile != nil {
            map["Profile"] = self.profile?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfileId"] as? String {
            self.accessProfileId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Profile"] as? [String: Any?] {
            var model = UpdateLlmAccessProfileRequest.Profile()
            model.fromMap(value)
            self.profile = model
        }
    }
}

public class UpdateLlmAccessProfileShrinkRequest : Tea.TeaModel {
    public var accessProfileId: String?

    public var instanceId: String?

    public var profileShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessProfileId != nil {
            map["AccessProfileId"] = self.accessProfileId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.profileShrink != nil {
            map["Profile"] = self.profileShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfileId"] as? String {
            self.accessProfileId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Profile"] as? String {
            self.profileShrink = value
        }
    }
}

public class UpdateLlmAccessProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateLlmAccessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLlmAccessProfileResponseBody?

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
            var model = UpdateLlmAccessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateScriptRequest : Tea.TeaModel {
    public var concurrency: Int32?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var scriptId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.scriptId != nil {
            map["ScriptId"] = self.scriptId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Concurrency"] as? Int32 {
            self.concurrency = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ScriptId"] as? String {
            self.scriptId = value
        }
    }
}

public class UpdateScriptResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateScriptResponseBody?

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
            var model = UpdateScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSubscriptionRequest : Tea.TeaModel {
    public var endpoint: String?

    public var eventSubscriptions: [String]?

    public var instanceId: String?

    public var mqInstanceId: String?

    public var mqType: String?

    public var password: String?

    public var producerId: String?

    public var topic: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.eventSubscriptions != nil {
            map["EventSubscriptions"] = self.eventSubscriptions!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mqInstanceId != nil {
            map["MqInstanceId"] = self.mqInstanceId!
        }
        if self.mqType != nil {
            map["MqType"] = self.mqType!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.producerId != nil {
            map["ProducerId"] = self.producerId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["EventSubscriptions"] as? [String] {
            self.eventSubscriptions = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MqInstanceId"] as? String {
            self.mqInstanceId = value
        }
        if let value = dict["MqType"] as? String {
            self.mqType = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ProducerId"] as? String {
            self.producerId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class UpdateSubscriptionShrinkRequest : Tea.TeaModel {
    public var endpoint: String?

    public var eventSubscriptionsShrink: String?

    public var instanceId: String?

    public var mqInstanceId: String?

    public var mqType: String?

    public var password: String?

    public var producerId: String?

    public var topic: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.eventSubscriptionsShrink != nil {
            map["EventSubscriptions"] = self.eventSubscriptionsShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mqInstanceId != nil {
            map["MqInstanceId"] = self.mqInstanceId!
        }
        if self.mqType != nil {
            map["MqType"] = self.mqType!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.producerId != nil {
            map["ProducerId"] = self.producerId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["EventSubscriptions"] as? String {
            self.eventSubscriptionsShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MqInstanceId"] as? String {
            self.mqInstanceId = value
        }
        if let value = dict["MqType"] as? String {
            self.mqType = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ProducerId"] as? String {
            self.producerId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class UpdateSubscriptionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSubscriptionResponseBody?

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
            var model = UpdateSubscriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVariableRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var instanceId: String?

    public var variableId: String?

    public override init() {
        super.init()
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
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.variableId != nil {
            map["VariableId"] = self.variableId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["VariableId"] as? String {
            self.variableId = value
        }
    }
}

public class UpdateVariableResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateVariableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVariableResponseBody?

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
            var model = UpdateVariableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVocabularyRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var vocabularyId: String?

    public var words: [String: String]?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.vocabularyId != nil {
            map["VocabularyId"] = self.vocabularyId!
        }
        if self.words != nil {
            map["Words"] = self.words!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["VocabularyId"] as? String {
            self.vocabularyId = value
        }
        if let value = dict["Words"] as? [String: String] {
            self.words = value
        }
    }
}

public class UpdateVocabularyShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var vocabularyId: String?

    public var wordsShrink: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.vocabularyId != nil {
            map["VocabularyId"] = self.vocabularyId!
        }
        if self.wordsShrink != nil {
            map["Words"] = self.wordsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["VocabularyId"] as? String {
            self.vocabularyId = value
        }
        if let value = dict["Words"] as? String {
            self.wordsShrink = value
        }
    }
}

public class UpdateVocabularyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateVocabularyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVocabularyResponseBody?

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
            var model = UpdateVocabularyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVoiceAccessProfileRequest : Tea.TeaModel {
    public class Profile : Tea.TeaModel {
        public var accessKey: String?

        public var apiKey: String?

        public var apiSecret: String?

        public var appId: String?

        public var appKey: String?

        public var asrAppKey: String?

        public var ttsApiKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKey != nil {
                map["AccessKey"] = self.accessKey!
            }
            if self.apiKey != nil {
                map["ApiKey"] = self.apiKey!
            }
            if self.apiSecret != nil {
                map["ApiSecret"] = self.apiSecret!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.asrAppKey != nil {
                map["AsrAppKey"] = self.asrAppKey!
            }
            if self.ttsApiKey != nil {
                map["TtsApiKey"] = self.ttsApiKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKey"] as? String {
                self.accessKey = value
            }
            if let value = dict["ApiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["ApiSecret"] as? String {
                self.apiSecret = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppKey"] as? String {
                self.appKey = value
            }
            if let value = dict["AsrAppKey"] as? String {
                self.asrAppKey = value
            }
            if let value = dict["TtsApiKey"] as? String {
                self.ttsApiKey = value
            }
        }
    }
    public var accessProfileId: String?

    public var instanceId: String?

    public var nlsEngine: String?

    public var profile: UpdateVoiceAccessProfileRequest.Profile?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.profile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessProfileId != nil {
            map["AccessProfileId"] = self.accessProfileId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nlsEngine != nil {
            map["NlsEngine"] = self.nlsEngine!
        }
        if self.profile != nil {
            map["Profile"] = self.profile?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfileId"] as? String {
            self.accessProfileId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NlsEngine"] as? String {
            self.nlsEngine = value
        }
        if let value = dict["Profile"] as? [String: Any?] {
            var model = UpdateVoiceAccessProfileRequest.Profile()
            model.fromMap(value)
            self.profile = model
        }
    }
}

public class UpdateVoiceAccessProfileShrinkRequest : Tea.TeaModel {
    public var accessProfileId: String?

    public var instanceId: String?

    public var nlsEngine: String?

    public var profileShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessProfileId != nil {
            map["AccessProfileId"] = self.accessProfileId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nlsEngine != nil {
            map["NlsEngine"] = self.nlsEngine!
        }
        if self.profileShrink != nil {
            map["Profile"] = self.profileShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfileId"] as? String {
            self.accessProfileId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NlsEngine"] as? String {
            self.nlsEngine = value
        }
        if let value = dict["Profile"] as? String {
            self.profileShrink = value
        }
    }
}

public class UpdateVoiceAccessProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateVoiceAccessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVoiceAccessProfileResponseBody?

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
            var model = UpdateVoiceAccessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
