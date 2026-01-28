import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BridgeWebCallRequest : Tea.TeaModel {
    public var applicationId: String?

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
        public var nlsAccessType: String?

        public var nlsEngine: String?

        public var pitchRate: Int32?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nlsAccessType != nil {
                map["NlsAccessType"] = self.nlsAccessType!
            }
            if self.nlsEngine != nil {
                map["NlsEngine"] = self.nlsEngine!
            }
            if self.pitchRate != nil {
                map["PitchRate"] = self.pitchRate!
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
            if let value = dict["NlsAccessType"] as? String {
                self.nlsAccessType = value
            }
            if let value = dict["NlsEngine"] as? String {
                self.nlsEngine = value
            }
            if let value = dict["PitchRate"] as? Int32 {
                self.pitchRate = value
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
                public var nlsAccessType: String?

                public var nlsEngine: String?

                public var pitchRate: Int32?

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
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nlsAccessType != nil {
                        map["NlsAccessType"] = self.nlsAccessType!
                    }
                    if self.nlsEngine != nil {
                        map["NlsEngine"] = self.nlsEngine!
                    }
                    if self.pitchRate != nil {
                        map["PitchRate"] = self.pitchRate!
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
                    if let value = dict["NlsAccessType"] as? String {
                        self.nlsAccessType = value
                    }
                    if let value = dict["NlsEngine"] as? String {
                        self.nlsEngine = value
                    }
                    if let value = dict["PitchRate"] as? Int32 {
                        self.pitchRate = value
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
                try self.scriptProfile?.validate()
                try self.synthesizerConfig?.validate()
                try self.transcriberConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.interactionConfig != nil {
                    map["InteractionConfig"] = self.interactionConfig?.toMap()
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
                public var nlsAccessType: String?

                public var nlsEngine: String?

                public var pitchRate: Int32?

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
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nlsAccessType != nil {
                        map["NlsAccessType"] = self.nlsAccessType!
                    }
                    if self.nlsEngine != nil {
                        map["NlsEngine"] = self.nlsEngine!
                    }
                    if self.pitchRate != nil {
                        map["PitchRate"] = self.pitchRate!
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
                    if let value = dict["NlsAccessType"] as? String {
                        self.nlsAccessType = value
                    }
                    if let value = dict["NlsEngine"] as? String {
                        self.nlsEngine = value
                    }
                    if let value = dict["PitchRate"] as? Int32 {
                        self.pitchRate = value
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
                try self.scriptProfile?.validate()
                try self.synthesizerConfig?.validate()
                try self.transcriberConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.interactionConfig != nil {
                    map["InteractionConfig"] = self.interactionConfig?.toMap()
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
        public var nlsAccessType: String?

        public var nlsEngine: String?

        public var pitchRate: Int32?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nlsAccessType != nil {
                map["NlsAccessType"] = self.nlsAccessType!
            }
            if self.nlsEngine != nil {
                map["NlsEngine"] = self.nlsEngine!
            }
            if self.pitchRate != nil {
                map["PitchRate"] = self.pitchRate!
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
            if let value = dict["NlsAccessType"] as? String {
                self.nlsAccessType = value
            }
            if let value = dict["NlsEngine"] as? String {
                self.nlsEngine = value
            }
            if let value = dict["PitchRate"] as? Int32 {
                self.pitchRate = value
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
