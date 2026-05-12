import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BridgeWebCallRequest : Tea.TeaModel {
    public var applicationId: String?

    public var audioCodec: String?

    public var businessUnitId: String?

    public var caller: String?

    public var deviceId: String?

    public var sampleRate: Int32?

    public var sandbox: Bool?

    public var tags: String?

    public var timeoutSeconds: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.audioCodec != nil {
            map["AudioCodec"] = self.audioCodec!
        }
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.sampleRate != nil {
            map["SampleRate"] = self.sampleRate!
        }
        if self.sandbox != nil {
            map["Sandbox"] = self.sandbox!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.timeoutSeconds != nil {
            map["TimeoutSeconds"] = self.timeoutSeconds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["AudioCodec"] as? String {
            self.audioCodec = value
        }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["Caller"] as? String {
            self.caller = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["SampleRate"] as? Int32 {
            self.sampleRate = value
        }
        if let value = dict["Sandbox"] as? Bool {
            self.sandbox = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["TimeoutSeconds"] as? Int32 {
            self.timeoutSeconds = value
        }
    }
}

public class BridgeWebCallResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var channelId: String?

        public var expirationTime: String?

        public var instanceId: String?

        public var serverUrl: String?

        public var sessionId: String?

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
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.expirationTime != nil {
                map["ExpirationTime"] = self.expirationTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.serverUrl != nil {
                map["ServerUrl"] = self.serverUrl!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChannelId"] as? String {
                self.channelId = value
            }
            if let value = dict["ExpirationTime"] as? String {
                self.expirationTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ServerUrl"] as? String {
                self.serverUrl = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["Token"] as? String {
                self.token = value
            }
        }
    }
    public var code: String?

    public var data: BridgeWebCallResponseBody.Data?

    public var errorMsg: String?

    public var httpStatusCode: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
            var model = BridgeWebCallResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BridgeWebCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BridgeWebCallResponseBody?

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
            var model = BridgeWebCallResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateApplicationRequest : Tea.TeaModel {
    public var businessUnitId: String?

    public var concurrency: Int32?

    public var description_: String?

    public var name: String?

    public var nluAccessType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nluAccessType != nil {
            map["NluAccessType"] = self.nluAccessType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["Concurrency"] as? Int32 {
            self.concurrency = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NluAccessType"] as? String {
            self.nluAccessType = value
        }
    }
}

public class CreateApplicationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationResponseBody?

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
            var model = CreateApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateApplicationVersionRequest : Tea.TeaModel {
    public class InteractionConfig : Tea.TeaModel {
        public class SilenceDetectionConfig : Tea.TeaModel {
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
                if self.timeout != nil {
                    map["Timeout"] = self.timeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Timeout"] as? Int32 {
                    self.timeout = value
                }
            }
        }
        public var silenceDetectionConfig: CreateApplicationVersionRequest.InteractionConfig.SilenceDetectionConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.silenceDetectionConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.silenceDetectionConfig != nil {
                map["SilenceDetectionConfig"] = self.silenceDetectionConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SilenceDetectionConfig"] as? [String: Any?] {
                var model = CreateApplicationVersionRequest.InteractionConfig.SilenceDetectionConfig()
                model.fromMap(value)
                self.silenceDetectionConfig = model
            }
        }
    }
    public class RagConfig : Tea.TeaModel {
        public var enabled: Bool?

        public var knowledgeBaseIds: [String]?

        public var maxContentLength: Int32?

        public var ragEngine: String?

        public var topN: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.knowledgeBaseIds != nil {
                map["KnowledgeBaseIds"] = self.knowledgeBaseIds!
            }
            if self.maxContentLength != nil {
                map["MaxContentLength"] = self.maxContentLength!
            }
            if self.ragEngine != nil {
                map["RagEngine"] = self.ragEngine!
            }
            if self.topN != nil {
                map["TopN"] = self.topN!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["KnowledgeBaseIds"] as? [String] {
                self.knowledgeBaseIds = value
            }
            if let value = dict["MaxContentLength"] as? Int32 {
                self.maxContentLength = value
            }
            if let value = dict["RagEngine"] as? String {
                self.ragEngine = value
            }
            if let value = dict["TopN"] as? Int32 {
                self.topN = value
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
        public var agentProfile: CreateApplicationVersionRequest.ScriptProfile.AgentProfile?

        public var model: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.agentProfile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentProfile != nil {
                map["AgentProfile"] = self.agentProfile?.toMap()
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentProfile"] as? [String: Any?] {
                var model = CreateApplicationVersionRequest.ScriptProfile.AgentProfile()
                model.fromMap(value)
                self.agentProfile = model
            }
            if let value = dict["Model"] as? String {
                self.model = value
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

        public var nlsAccessProfile: CreateApplicationVersionRequest.SynthesizerConfig.NlsAccessProfile?

        public var nlsAccessType: String?

        public var nlsEngine: String?

        public var pitchRate: Int32?

        public var pronRules: [CreateApplicationVersionRequest.SynthesizerConfig.PronRules]?

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
                var model = CreateApplicationVersionRequest.SynthesizerConfig.NlsAccessProfile()
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
                var tmp : [CreateApplicationVersionRequest.SynthesizerConfig.PronRules] = []
                for v in value {
                    if v != nil {
                        var model = CreateApplicationVersionRequest.SynthesizerConfig.PronRules()
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
        public var nlsAccessType: String?

        public var nlsEngine: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nlsAccessType != nil {
                map["NlsAccessType"] = self.nlsAccessType!
            }
            if self.nlsEngine != nil {
                map["NlsEngine"] = self.nlsEngine!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NlsAccessType"] as? String {
                self.nlsAccessType = value
            }
            if let value = dict["NlsEngine"] as? String {
                self.nlsEngine = value
            }
        }
    }
    public var applicationId: String?

    public var businessUnitId: String?

    public var interactionConfig: CreateApplicationVersionRequest.InteractionConfig?

    public var ragConfig: CreateApplicationVersionRequest.RagConfig?

    public var scriptProfile: CreateApplicationVersionRequest.ScriptProfile?

    public var sourceVersionId: String?

    public var synthesizerConfig: CreateApplicationVersionRequest.SynthesizerConfig?

    public var transcriberConfig: CreateApplicationVersionRequest.TranscriberConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.interactionConfig?.validate()
        try self.ragConfig?.validate()
        try self.scriptProfile?.validate()
        try self.synthesizerConfig?.validate()
        try self.transcriberConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.interactionConfig != nil {
            map["InteractionConfig"] = self.interactionConfig?.toMap()
        }
        if self.ragConfig != nil {
            map["RagConfig"] = self.ragConfig?.toMap()
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
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["InteractionConfig"] as? [String: Any?] {
            var model = CreateApplicationVersionRequest.InteractionConfig()
            model.fromMap(value)
            self.interactionConfig = model
        }
        if let value = dict["RagConfig"] as? [String: Any?] {
            var model = CreateApplicationVersionRequest.RagConfig()
            model.fromMap(value)
            self.ragConfig = model
        }
        if let value = dict["ScriptProfile"] as? [String: Any?] {
            var model = CreateApplicationVersionRequest.ScriptProfile()
            model.fromMap(value)
            self.scriptProfile = model
        }
        if let value = dict["SourceVersionId"] as? String {
            self.sourceVersionId = value
        }
        if let value = dict["SynthesizerConfig"] as? [String: Any?] {
            var model = CreateApplicationVersionRequest.SynthesizerConfig()
            model.fromMap(value)
            self.synthesizerConfig = model
        }
        if let value = dict["TranscriberConfig"] as? [String: Any?] {
            var model = CreateApplicationVersionRequest.TranscriberConfig()
            model.fromMap(value)
            self.transcriberConfig = model
        }
    }
}

public class CreateApplicationVersionShrinkRequest : Tea.TeaModel {
    public var applicationId: String?

    public var businessUnitId: String?

    public var interactionConfigShrink: String?

    public var ragConfigShrink: String?

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
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.interactionConfigShrink != nil {
            map["InteractionConfig"] = self.interactionConfigShrink!
        }
        if self.ragConfigShrink != nil {
            map["RagConfig"] = self.ragConfigShrink!
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
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["InteractionConfig"] as? String {
            self.interactionConfigShrink = value
        }
        if let value = dict["RagConfig"] as? String {
            self.ragConfigShrink = value
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

public class CreateApplicationVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateApplicationVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationVersionResponseBody?

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
            var model = CreateApplicationVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCloneVoiceRequest : Tea.TeaModel {
    public var businessUnitId: String?

    public var fileKey: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["FileKey"] as? String {
            self.fileKey = value
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

public class CreateVariableRequest : Tea.TeaModel {
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
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
    public var businessUnitId: String?

    public var description_: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
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
    public var businessUnitId: String?

    public var description_: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
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
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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

public class DeleteApplicationRequest : Tea.TeaModel {
    public var applicationId: String?

    public var businessUnitId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
    }
}

public class DeleteApplicationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplicationResponseBody?

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
            var model = DeleteApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCloneVoiceRequest : Tea.TeaModel {
    public var businessUnitId: String?

    public var cloneVoiceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.cloneVoiceId != nil {
            map["CloneVoiceId"] = self.cloneVoiceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["CloneVoiceId"] as? String {
            self.cloneVoiceId = value
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

public class DeleteVariableRequest : Tea.TeaModel {
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.variableId != nil {
            map["VariableId"] = self.variableId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.vocabularyId != nil {
            map["VocabularyId"] = self.vocabularyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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

    public var businessUnitId: String?

    public override init() {
        super.init()
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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessProfileId"] as? String {
            self.accessProfileId = value
        }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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
    public var businessUnitId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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

public class ExportVocabularyRequest : Tea.TeaModel {
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.vocabularyIds != nil {
            map["VocabularyIds"] = self.vocabularyIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["VocabularyIds"] as? [String] {
            self.vocabularyIds = value
        }
    }
}

public class ExportVocabularyShrinkRequest : Tea.TeaModel {
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.vocabularyIdsShrink != nil {
            map["VocabularyIds"] = self.vocabularyIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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

    public var businessUnitId: String?

    public var fileName: String?

    public override init() {
        super.init()
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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessType"] as? String {
            self.businessType = value
        }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
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

public class GetApplicationRequest : Tea.TeaModel {
    public var applicationId: String?

    public var businessUnitId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
    }
}

public class GetApplicationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DraftVersion : Tea.TeaModel {
            public class InteractionConfig : Tea.TeaModel {
                public class SilenceDetectionConfig : Tea.TeaModel {
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
                        if self.timeout != nil {
                            map["Timeout"] = self.timeout!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Timeout"] as? Int32 {
                            self.timeout = value
                        }
                    }
                }
                public var silenceDetectionConfig: GetApplicationResponseBody.Data.DraftVersion.InteractionConfig.SilenceDetectionConfig?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.silenceDetectionConfig?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.silenceDetectionConfig != nil {
                        map["SilenceDetectionConfig"] = self.silenceDetectionConfig?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SilenceDetectionConfig"] as? [String: Any?] {
                        var model = GetApplicationResponseBody.Data.DraftVersion.InteractionConfig.SilenceDetectionConfig()
                        model.fromMap(value)
                        self.silenceDetectionConfig = model
                    }
                }
            }
            public class RagConfig : Tea.TeaModel {
                public var enabled: Bool?

                public var knowledgeBaseIds: [String]?

                public var maxContentLength: Int32?

                public var ragEngine: String?

                public var topN: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    if self.knowledgeBaseIds != nil {
                        map["KnowledgeBaseIds"] = self.knowledgeBaseIds!
                    }
                    if self.maxContentLength != nil {
                        map["MaxContentLength"] = self.maxContentLength!
                    }
                    if self.ragEngine != nil {
                        map["RagEngine"] = self.ragEngine!
                    }
                    if self.topN != nil {
                        map["TopN"] = self.topN!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["KnowledgeBaseIds"] as? [String] {
                        self.knowledgeBaseIds = value
                    }
                    if let value = dict["MaxContentLength"] as? Int32 {
                        self.maxContentLength = value
                    }
                    if let value = dict["RagEngine"] as? String {
                        self.ragEngine = value
                    }
                    if let value = dict["TopN"] as? Int32 {
                        self.topN = value
                    }
                }
            }
            public class ScriptProfile : Tea.TeaModel {
                public class AgentProfile : Tea.TeaModel {
                    public var agentProfileId: String?

                    public var description_: String?

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
                        if self.agentProfileId != nil {
                            map["AgentProfileId"] = self.agentProfileId!
                        }
                        if self.description_ != nil {
                            map["Description"] = self.description_!
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
                        if let value = dict["AgentProfileId"] as? String {
                            self.agentProfileId = value
                        }
                        if let value = dict["Description"] as? String {
                            self.description_ = value
                        }
                        if let value = dict["PromptsJson"] as? String {
                            self.promptsJson = value
                        }
                        if let value = dict["ScriptProfileTemplateId"] as? String {
                            self.scriptProfileTemplateId = value
                        }
                    }
                }
                public var agentProfile: GetApplicationResponseBody.Data.DraftVersion.ScriptProfile.AgentProfile?

                public var model: String?

                public var temperature: String?

                public var topP: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.agentProfile?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.agentProfile != nil {
                        map["AgentProfile"] = self.agentProfile?.toMap()
                    }
                    if self.model != nil {
                        map["Model"] = self.model!
                    }
                    if self.temperature != nil {
                        map["Temperature"] = self.temperature!
                    }
                    if self.topP != nil {
                        map["TopP"] = self.topP!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AgentProfile"] as? [String: Any?] {
                        var model = GetApplicationResponseBody.Data.DraftVersion.ScriptProfile.AgentProfile()
                        model.fromMap(value)
                        self.agentProfile = model
                    }
                    if let value = dict["Model"] as? String {
                        self.model = value
                    }
                    if let value = dict["Temperature"] as? String {
                        self.temperature = value
                    }
                    if let value = dict["TopP"] as? String {
                        self.topP = value
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

                public var nlsAccessProfile: GetApplicationResponseBody.Data.DraftVersion.SynthesizerConfig.NlsAccessProfile?

                public var nlsAccessType: String?

                public var nlsEngine: String?

                public var pitchRate: Int32?

                public var pronRules: [GetApplicationResponseBody.Data.DraftVersion.SynthesizerConfig.PronRules]?

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
                        var model = GetApplicationResponseBody.Data.DraftVersion.SynthesizerConfig.NlsAccessProfile()
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
                        var tmp : [GetApplicationResponseBody.Data.DraftVersion.SynthesizerConfig.PronRules] = []
                        for v in value {
                            if v != nil {
                                var model = GetApplicationResponseBody.Data.DraftVersion.SynthesizerConfig.PronRules()
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
                public var nlsAccessType: String?

                public var nlsEngine: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nlsAccessType != nil {
                        map["NlsAccessType"] = self.nlsAccessType!
                    }
                    if self.nlsEngine != nil {
                        map["NlsEngine"] = self.nlsEngine!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["NlsAccessType"] as? String {
                        self.nlsAccessType = value
                    }
                    if let value = dict["NlsEngine"] as? String {
                        self.nlsEngine = value
                    }
                }
            }
            public var interactionConfig: GetApplicationResponseBody.Data.DraftVersion.InteractionConfig?

            public var ragConfig: GetApplicationResponseBody.Data.DraftVersion.RagConfig?

            public var scriptProfile: GetApplicationResponseBody.Data.DraftVersion.ScriptProfile?

            public var synthesizerConfig: GetApplicationResponseBody.Data.DraftVersion.SynthesizerConfig?

            public var transcriberConfig: GetApplicationResponseBody.Data.DraftVersion.TranscriberConfig?

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
                try self.ragConfig?.validate()
                try self.scriptProfile?.validate()
                try self.synthesizerConfig?.validate()
                try self.transcriberConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.interactionConfig != nil {
                    map["InteractionConfig"] = self.interactionConfig?.toMap()
                }
                if self.ragConfig != nil {
                    map["RagConfig"] = self.ragConfig?.toMap()
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
                    var model = GetApplicationResponseBody.Data.DraftVersion.InteractionConfig()
                    model.fromMap(value)
                    self.interactionConfig = model
                }
                if let value = dict["RagConfig"] as? [String: Any?] {
                    var model = GetApplicationResponseBody.Data.DraftVersion.RagConfig()
                    model.fromMap(value)
                    self.ragConfig = model
                }
                if let value = dict["ScriptProfile"] as? [String: Any?] {
                    var model = GetApplicationResponseBody.Data.DraftVersion.ScriptProfile()
                    model.fromMap(value)
                    self.scriptProfile = model
                }
                if let value = dict["SynthesizerConfig"] as? [String: Any?] {
                    var model = GetApplicationResponseBody.Data.DraftVersion.SynthesizerConfig()
                    model.fromMap(value)
                    self.synthesizerConfig = model
                }
                if let value = dict["TranscriberConfig"] as? [String: Any?] {
                    var model = GetApplicationResponseBody.Data.DraftVersion.TranscriberConfig()
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
                public class SilenceDetectionConfig : Tea.TeaModel {
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
                        if self.timeout != nil {
                            map["Timeout"] = self.timeout!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Timeout"] as? Int32 {
                            self.timeout = value
                        }
                    }
                }
                public var silenceDetectionConfig: GetApplicationResponseBody.Data.PublishedVersion.InteractionConfig.SilenceDetectionConfig?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.silenceDetectionConfig?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.silenceDetectionConfig != nil {
                        map["SilenceDetectionConfig"] = self.silenceDetectionConfig?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SilenceDetectionConfig"] as? [String: Any?] {
                        var model = GetApplicationResponseBody.Data.PublishedVersion.InteractionConfig.SilenceDetectionConfig()
                        model.fromMap(value)
                        self.silenceDetectionConfig = model
                    }
                }
            }
            public class RagConfig : Tea.TeaModel {
                public var enabled: Bool?

                public var knowledgeBaseIds: [String]?

                public var maxContentLength: Int32?

                public var ragEngine: String?

                public var topN: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    if self.knowledgeBaseIds != nil {
                        map["KnowledgeBaseIds"] = self.knowledgeBaseIds!
                    }
                    if self.maxContentLength != nil {
                        map["MaxContentLength"] = self.maxContentLength!
                    }
                    if self.ragEngine != nil {
                        map["RagEngine"] = self.ragEngine!
                    }
                    if self.topN != nil {
                        map["TopN"] = self.topN!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["KnowledgeBaseIds"] as? [String] {
                        self.knowledgeBaseIds = value
                    }
                    if let value = dict["MaxContentLength"] as? Int32 {
                        self.maxContentLength = value
                    }
                    if let value = dict["RagEngine"] as? String {
                        self.ragEngine = value
                    }
                    if let value = dict["TopN"] as? Int32 {
                        self.topN = value
                    }
                }
            }
            public class ScriptProfile : Tea.TeaModel {
                public class AgentProfile : Tea.TeaModel {
                    public var agentProfileId: String?

                    public var description_: String?

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
                        if self.agentProfileId != nil {
                            map["AgentProfileId"] = self.agentProfileId!
                        }
                        if self.description_ != nil {
                            map["Description"] = self.description_!
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
                        if let value = dict["AgentProfileId"] as? String {
                            self.agentProfileId = value
                        }
                        if let value = dict["Description"] as? String {
                            self.description_ = value
                        }
                        if let value = dict["PromptsJson"] as? String {
                            self.promptsJson = value
                        }
                        if let value = dict["ScriptProfileTemplateId"] as? String {
                            self.scriptProfileTemplateId = value
                        }
                    }
                }
                public var agentProfile: GetApplicationResponseBody.Data.PublishedVersion.ScriptProfile.AgentProfile?

                public var model: String?

                public var temperature: String?

                public var topP: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.agentProfile?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.agentProfile != nil {
                        map["AgentProfile"] = self.agentProfile?.toMap()
                    }
                    if self.model != nil {
                        map["Model"] = self.model!
                    }
                    if self.temperature != nil {
                        map["Temperature"] = self.temperature!
                    }
                    if self.topP != nil {
                        map["TopP"] = self.topP!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AgentProfile"] as? [String: Any?] {
                        var model = GetApplicationResponseBody.Data.PublishedVersion.ScriptProfile.AgentProfile()
                        model.fromMap(value)
                        self.agentProfile = model
                    }
                    if let value = dict["Model"] as? String {
                        self.model = value
                    }
                    if let value = dict["Temperature"] as? String {
                        self.temperature = value
                    }
                    if let value = dict["TopP"] as? String {
                        self.topP = value
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

                public var nlsAccessProfile: GetApplicationResponseBody.Data.PublishedVersion.SynthesizerConfig.NlsAccessProfile?

                public var nlsAccessType: String?

                public var nlsEngine: String?

                public var pitchRate: Int32?

                public var pronRules: [GetApplicationResponseBody.Data.PublishedVersion.SynthesizerConfig.PronRules]?

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
                        var model = GetApplicationResponseBody.Data.PublishedVersion.SynthesizerConfig.NlsAccessProfile()
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
                        var tmp : [GetApplicationResponseBody.Data.PublishedVersion.SynthesizerConfig.PronRules] = []
                        for v in value {
                            if v != nil {
                                var model = GetApplicationResponseBody.Data.PublishedVersion.SynthesizerConfig.PronRules()
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
                public var nlsAccessType: String?

                public var nlsEngine: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nlsAccessType != nil {
                        map["NlsAccessType"] = self.nlsAccessType!
                    }
                    if self.nlsEngine != nil {
                        map["NlsEngine"] = self.nlsEngine!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["NlsAccessType"] as? String {
                        self.nlsAccessType = value
                    }
                    if let value = dict["NlsEngine"] as? String {
                        self.nlsEngine = value
                    }
                }
            }
            public var interactionConfig: GetApplicationResponseBody.Data.PublishedVersion.InteractionConfig?

            public var ragConfig: GetApplicationResponseBody.Data.PublishedVersion.RagConfig?

            public var scriptProfile: GetApplicationResponseBody.Data.PublishedVersion.ScriptProfile?

            public var synthesizerConfig: GetApplicationResponseBody.Data.PublishedVersion.SynthesizerConfig?

            public var transcriberConfig: GetApplicationResponseBody.Data.PublishedVersion.TranscriberConfig?

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
                try self.ragConfig?.validate()
                try self.scriptProfile?.validate()
                try self.synthesizerConfig?.validate()
                try self.transcriberConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.interactionConfig != nil {
                    map["InteractionConfig"] = self.interactionConfig?.toMap()
                }
                if self.ragConfig != nil {
                    map["RagConfig"] = self.ragConfig?.toMap()
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
                    var model = GetApplicationResponseBody.Data.PublishedVersion.InteractionConfig()
                    model.fromMap(value)
                    self.interactionConfig = model
                }
                if let value = dict["RagConfig"] as? [String: Any?] {
                    var model = GetApplicationResponseBody.Data.PublishedVersion.RagConfig()
                    model.fromMap(value)
                    self.ragConfig = model
                }
                if let value = dict["ScriptProfile"] as? [String: Any?] {
                    var model = GetApplicationResponseBody.Data.PublishedVersion.ScriptProfile()
                    model.fromMap(value)
                    self.scriptProfile = model
                }
                if let value = dict["SynthesizerConfig"] as? [String: Any?] {
                    var model = GetApplicationResponseBody.Data.PublishedVersion.SynthesizerConfig()
                    model.fromMap(value)
                    self.synthesizerConfig = model
                }
                if let value = dict["TranscriberConfig"] as? [String: Any?] {
                    var model = GetApplicationResponseBody.Data.PublishedVersion.TranscriberConfig()
                    model.fromMap(value)
                    self.transcriberConfig = model
                }
                if let value = dict["VersionId"] as? String {
                    self.versionId = value
                }
            }
        }
        public var applicationId: String?

        public var concurrency: Int32?

        public var createdTime: Int64?

        public var description_: String?

        public var draftVersion: GetApplicationResponseBody.Data.DraftVersion?

        public var name: String?

        public var nluAccessType: String?

        public var nluEngine: String?

        public var publishedVersion: GetApplicationResponseBody.Data.PublishedVersion?

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
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
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
            if self.nluAccessType != nil {
                map["NluAccessType"] = self.nluAccessType!
            }
            if self.nluEngine != nil {
                map["NluEngine"] = self.nluEngine!
            }
            if self.publishedVersion != nil {
                map["PublishedVersion"] = self.publishedVersion?.toMap()
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicationId"] as? String {
                self.applicationId = value
            }
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
                var model = GetApplicationResponseBody.Data.DraftVersion()
                model.fromMap(value)
                self.draftVersion = model
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
            if let value = dict["PublishedVersion"] as? [String: Any?] {
                var model = GetApplicationResponseBody.Data.PublishedVersion()
                model.fromMap(value)
                self.publishedVersion = model
            }
            if let value = dict["UpdatedTime"] as? Int64 {
                self.updatedTime = value
            }
        }
    }
    public var code: String?

    public var data: GetApplicationResponseBody.Data?

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
            var model = GetApplicationResponseBody.Data()
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

public class GetApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApplicationResponseBody?

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
            var model = GetApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataChannelCredentialRequest : Tea.TeaModel {
    public var businessUnitId: String?

    public var deviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
    }
}

public class GetDataChannelCredentialResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clientId: String?

        public var deviceId: String?

        public var endpoint: String?

        public var expirationTime: Int64?

        public var password: String?

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
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.expirationTime != nil {
                map["ExpirationTime"] = self.expirationTime!
            }
            if self.password != nil {
                map["Password"] = self.password!
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
            if let value = dict["ClientId"] as? String {
                self.clientId = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["ExpirationTime"] as? Int64 {
                self.expirationTime = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
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

    public var data: GetDataChannelCredentialResponseBody.Data?

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
            var model = GetDataChannelCredentialResponseBody.Data()
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

public class GetDataChannelCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataChannelCredentialResponseBody?

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
            var model = GetDataChannelCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSubscriptionRequest : Tea.TeaModel {
    public var businessUnitId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.vocabularyId != nil {
            map["VocabularyId"] = self.vocabularyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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
    public var businessUnitId: String?

    public var fileKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["FileKey"] as? String {
            self.fileKey = value
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

public class ListApplicationsRequest : Tea.TeaModel {
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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

public class ListApplicationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Applications : Tea.TeaModel {
            public var applicationId: String?

            public var concurrency: Int32?

            public var createdTime: Int64?

            public var description_: String?

            public var draftVersionId: String?

            public var name: String?

            public var nluAccessType: String?

            public var nluEngine: String?

            public var publishedVersionId: String?

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
                if self.applicationId != nil {
                    map["ApplicationId"] = self.applicationId!
                }
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
                if self.publishedVersionId != nil {
                    map["PublishedVersionId"] = self.publishedVersionId!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApplicationId"] as? String {
                    self.applicationId = value
                }
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
                if let value = dict["PublishedVersionId"] as? String {
                    self.publishedVersionId = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
            }
        }
        public var applications: [ListApplicationsResponseBody.Data.Applications]?

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
            if self.applications != nil {
                var tmp : [Any] = []
                for k in self.applications! {
                    tmp.append(k.toMap())
                }
                map["Applications"] = tmp
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
            if let value = dict["Applications"] as? [Any?] {
                var tmp : [ListApplicationsResponseBody.Data.Applications] = []
                for v in value {
                    if v != nil {
                        var model = ListApplicationsResponseBody.Data.Applications()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.applications = tmp
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

    public var data: ListApplicationsResponseBody.Data?

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
            var model = ListApplicationsResponseBody.Data()
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

public class ListApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationsResponseBody?

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
            var model = ListApplicationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBackgroundMusicsRequest : Tea.TeaModel {
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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

public class ListCloneVoiceRequest : Tea.TeaModel {
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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

public class ListNluModelsRequest : Tea.TeaModel {
    public var businessUnitId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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

public class ListVariableRequest : Tea.TeaModel {
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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
    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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

public class PublishApplicationVersionRequest : Tea.TeaModel {
    public var applicationId: String?

    public var businessUnitId: String?

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
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class PublishApplicationVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PublishApplicationVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishApplicationVersionResponseBody?

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
            var model = PublishApplicationVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateApplicationRequest : Tea.TeaModel {
    public var applicationId: String?

    public var businessUnitId: String?

    public var concurrency: Int32?

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
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
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
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["Concurrency"] as? Int32 {
            self.concurrency = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateApplicationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationResponseBody?

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
            var model = UpdateApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateApplicationVersionRequest : Tea.TeaModel {
    public class InteractionConfig : Tea.TeaModel {
        public class SilenceDetectionConfig : Tea.TeaModel {
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
                if self.timeout != nil {
                    map["Timeout"] = self.timeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Timeout"] as? Int32 {
                    self.timeout = value
                }
            }
        }
        public var silenceDetectionConfig: UpdateApplicationVersionRequest.InteractionConfig.SilenceDetectionConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.silenceDetectionConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.silenceDetectionConfig != nil {
                map["SilenceDetectionConfig"] = self.silenceDetectionConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SilenceDetectionConfig"] as? [String: Any?] {
                var model = UpdateApplicationVersionRequest.InteractionConfig.SilenceDetectionConfig()
                model.fromMap(value)
                self.silenceDetectionConfig = model
            }
        }
    }
    public class RagConfig : Tea.TeaModel {
        public var enabled: Bool?

        public var knowledgeBaseIds: [String]?

        public var maxContentLength: Int32?

        public var ragEngine: String?

        public var topN: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.knowledgeBaseIds != nil {
                map["KnowledgeBaseIds"] = self.knowledgeBaseIds!
            }
            if self.maxContentLength != nil {
                map["MaxContentLength"] = self.maxContentLength!
            }
            if self.ragEngine != nil {
                map["RagEngine"] = self.ragEngine!
            }
            if self.topN != nil {
                map["TopN"] = self.topN!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["KnowledgeBaseIds"] as? [String] {
                self.knowledgeBaseIds = value
            }
            if let value = dict["MaxContentLength"] as? Int32 {
                self.maxContentLength = value
            }
            if let value = dict["RagEngine"] as? String {
                self.ragEngine = value
            }
            if let value = dict["TopN"] as? Int32 {
                self.topN = value
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
        public var agentProfile: UpdateApplicationVersionRequest.ScriptProfile.AgentProfile?

        public var model: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.agentProfile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentProfile != nil {
                map["AgentProfile"] = self.agentProfile?.toMap()
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentProfile"] as? [String: Any?] {
                var model = UpdateApplicationVersionRequest.ScriptProfile.AgentProfile()
                model.fromMap(value)
                self.agentProfile = model
            }
            if let value = dict["Model"] as? String {
                self.model = value
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

        public var nlsAccessProfile: UpdateApplicationVersionRequest.SynthesizerConfig.NlsAccessProfile?

        public var nlsAccessType: String?

        public var nlsEngine: String?

        public var pitchRate: Int32?

        public var pronRules: [UpdateApplicationVersionRequest.SynthesizerConfig.PronRules]?

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
                var model = UpdateApplicationVersionRequest.SynthesizerConfig.NlsAccessProfile()
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
                var tmp : [UpdateApplicationVersionRequest.SynthesizerConfig.PronRules] = []
                for v in value {
                    if v != nil {
                        var model = UpdateApplicationVersionRequest.SynthesizerConfig.PronRules()
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
        public var nlsAccessType: String?

        public var nlsEngine: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nlsAccessType != nil {
                map["NlsAccessType"] = self.nlsAccessType!
            }
            if self.nlsEngine != nil {
                map["NlsEngine"] = self.nlsEngine!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NlsAccessType"] as? String {
                self.nlsAccessType = value
            }
            if let value = dict["NlsEngine"] as? String {
                self.nlsEngine = value
            }
        }
    }
    public var applicationId: String?

    public var businessUnitId: String?

    public var interactionConfig: UpdateApplicationVersionRequest.InteractionConfig?

    public var ragConfig: UpdateApplicationVersionRequest.RagConfig?

    public var scriptProfile: UpdateApplicationVersionRequest.ScriptProfile?

    public var synthesizerConfig: UpdateApplicationVersionRequest.SynthesizerConfig?

    public var transcriberConfig: UpdateApplicationVersionRequest.TranscriberConfig?

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
        try self.ragConfig?.validate()
        try self.scriptProfile?.validate()
        try self.synthesizerConfig?.validate()
        try self.transcriberConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.interactionConfig != nil {
            map["InteractionConfig"] = self.interactionConfig?.toMap()
        }
        if self.ragConfig != nil {
            map["RagConfig"] = self.ragConfig?.toMap()
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
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["InteractionConfig"] as? [String: Any?] {
            var model = UpdateApplicationVersionRequest.InteractionConfig()
            model.fromMap(value)
            self.interactionConfig = model
        }
        if let value = dict["RagConfig"] as? [String: Any?] {
            var model = UpdateApplicationVersionRequest.RagConfig()
            model.fromMap(value)
            self.ragConfig = model
        }
        if let value = dict["ScriptProfile"] as? [String: Any?] {
            var model = UpdateApplicationVersionRequest.ScriptProfile()
            model.fromMap(value)
            self.scriptProfile = model
        }
        if let value = dict["SynthesizerConfig"] as? [String: Any?] {
            var model = UpdateApplicationVersionRequest.SynthesizerConfig()
            model.fromMap(value)
            self.synthesizerConfig = model
        }
        if let value = dict["TranscriberConfig"] as? [String: Any?] {
            var model = UpdateApplicationVersionRequest.TranscriberConfig()
            model.fromMap(value)
            self.transcriberConfig = model
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class UpdateApplicationVersionShrinkRequest : Tea.TeaModel {
    public var applicationId: String?

    public var businessUnitId: String?

    public var interactionConfigShrink: String?

    public var ragConfigShrink: String?

    public var scriptProfileShrink: String?

    public var synthesizerConfigShrink: String?

    public var transcriberConfigShrink: String?

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
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.interactionConfigShrink != nil {
            map["InteractionConfig"] = self.interactionConfigShrink!
        }
        if self.ragConfigShrink != nil {
            map["RagConfig"] = self.ragConfigShrink!
        }
        if self.scriptProfileShrink != nil {
            map["ScriptProfile"] = self.scriptProfileShrink!
        }
        if self.synthesizerConfigShrink != nil {
            map["SynthesizerConfig"] = self.synthesizerConfigShrink!
        }
        if self.transcriberConfigShrink != nil {
            map["TranscriberConfig"] = self.transcriberConfigShrink!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["InteractionConfig"] as? String {
            self.interactionConfigShrink = value
        }
        if let value = dict["RagConfig"] as? String {
            self.ragConfigShrink = value
        }
        if let value = dict["ScriptProfile"] as? String {
            self.scriptProfileShrink = value
        }
        if let value = dict["SynthesizerConfig"] as? String {
            self.synthesizerConfigShrink = value
        }
        if let value = dict["TranscriberConfig"] as? String {
            self.transcriberConfigShrink = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class UpdateApplicationVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateApplicationVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationVersionResponseBody?

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
            var model = UpdateApplicationVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCloneVoiceRequest : Tea.TeaModel {
    public var businessUnitId: String?

    public var cloneVoiceId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.cloneVoiceId != nil {
            map["CloneVoiceId"] = self.cloneVoiceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["CloneVoiceId"] as? String {
            self.cloneVoiceId = value
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

public class UpdateSubscriptionRequest : Tea.TeaModel {
    public var businessUnitId: String?

    public var endpoint: String?

    public var eventSubscriptions: [String]?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.eventSubscriptions != nil {
            map["EventSubscriptions"] = self.eventSubscriptions!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["EventSubscriptions"] as? [String] {
            self.eventSubscriptions = value
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
    public var businessUnitId: String?

    public var endpoint: String?

    public var eventSubscriptionsShrink: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.eventSubscriptionsShrink != nil {
            map["EventSubscriptions"] = self.eventSubscriptionsShrink!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["EventSubscriptions"] as? String {
            self.eventSubscriptionsShrink = value
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
    public var businessUnitId: String?

    public var description_: String?

    public var displayName: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.variableId != nil {
            map["VariableId"] = self.variableId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
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
    public var businessUnitId: String?

    public var description_: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
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
    public var businessUnitId: String?

    public var description_: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
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

    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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

    public var businessUnitId: String?

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
        if self.businessUnitId != nil {
            map["BusinessUnitId"] = self.businessUnitId!
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
        if let value = dict["BusinessUnitId"] as? String {
            self.businessUnitId = value
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
