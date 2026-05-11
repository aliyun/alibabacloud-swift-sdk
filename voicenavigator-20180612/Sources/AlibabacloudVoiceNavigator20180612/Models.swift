import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AssociateChatbotInstanceRequest : Tea.TeaModel {
    public var chatbotInstanceId: String?

    public var chatbotName: String?

    public var instanceId: String?

    public var nluServiceParamsJson: String?

    public var nluServiceType: String?

    public var unionSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chatbotInstanceId != nil {
            map["ChatbotInstanceId"] = self.chatbotInstanceId!
        }
        if self.chatbotName != nil {
            map["ChatbotName"] = self.chatbotName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nluServiceParamsJson != nil {
            map["NluServiceParamsJson"] = self.nluServiceParamsJson!
        }
        if self.nluServiceType != nil {
            map["NluServiceType"] = self.nluServiceType!
        }
        if self.unionSource != nil {
            map["UnionSource"] = self.unionSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChatbotInstanceId"] as? String {
            self.chatbotInstanceId = value
        }
        if let value = dict["ChatbotName"] as? String {
            self.chatbotName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NluServiceParamsJson"] as? String {
            self.nluServiceParamsJson = value
        }
        if let value = dict["NluServiceType"] as? String {
            self.nluServiceType = value
        }
        if let value = dict["UnionSource"] as? String {
            self.unionSource = value
        }
    }
}

public class AssociateChatbotInstanceResponseBody : Tea.TeaModel {
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

public class AssociateChatbotInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateChatbotInstanceResponseBody?

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
            var model = AssociateChatbotInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AuditTTSVoiceRequest : Tea.TeaModel {
    public var accessKey: String?

    public var appKey: String?

    public var engine: String?

    public var instanceId: String?

    public var pitchRate: String?

    public var secretKey: String?

    public var speechRate: String?

    public var text: String?

    public var voice: String?

    public var volume: String?

    public override init() {
        super.init()
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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pitchRate != nil {
            map["PitchRate"] = self.pitchRate!
        }
        if self.secretKey != nil {
            map["SecretKey"] = self.secretKey!
        }
        if self.speechRate != nil {
            map["SpeechRate"] = self.speechRate!
        }
        if self.text != nil {
            map["Text"] = self.text!
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
        if let value = dict["AccessKey"] as? String {
            self.accessKey = value
        }
        if let value = dict["AppKey"] as? String {
            self.appKey = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PitchRate"] as? String {
            self.pitchRate = value
        }
        if let value = dict["SecretKey"] as? String {
            self.secretKey = value
        }
        if let value = dict["SpeechRate"] as? String {
            self.speechRate = value
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
        if let value = dict["Voice"] as? String {
            self.voice = value
        }
        if let value = dict["Volume"] as? String {
            self.volume = value
        }
    }
}

public class AuditTTSVoiceResponseBody : Tea.TeaModel {
    public var auditionUrl: String?

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
        if self.auditionUrl != nil {
            map["AuditionUrl"] = self.auditionUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditionUrl"] as? String {
            self.auditionUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AuditTTSVoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuditTTSVoiceResponseBody?

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
            var model = AuditTTSVoiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BeginDialogueRequest : Tea.TeaModel {
    public var calledNumber: String?

    public var callingNumber: String?

    public var conversationId: String?

    public var initialContext: String?

    public var instanceId: String?

    public var instanceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.callingNumber != nil {
            map["CallingNumber"] = self.callingNumber!
        }
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.initialContext != nil {
            map["InitialContext"] = self.initialContext!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceOwnerId != nil {
            map["InstanceOwnerId"] = self.instanceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["CallingNumber"] as? String {
            self.callingNumber = value
        }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["InitialContext"] as? String {
            self.initialContext = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceOwnerId"] as? Int64 {
            self.instanceOwnerId = value
        }
    }
}

public class BeginDialogueResponseBody : Tea.TeaModel {
    public var action: String?

    public var actionParams: String?

    public var interruptible: Bool?

    public var requestId: String?

    public var textResponse: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["Action"] = self.action!
        }
        if self.actionParams != nil {
            map["ActionParams"] = self.actionParams!
        }
        if self.interruptible != nil {
            map["Interruptible"] = self.interruptible!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.textResponse != nil {
            map["TextResponse"] = self.textResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Action"] as? String {
            self.action = value
        }
        if let value = dict["ActionParams"] as? String {
            self.actionParams = value
        }
        if let value = dict["Interruptible"] as? Bool {
            self.interruptible = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TextResponse"] as? String {
            self.textResponse = value
        }
    }
}

public class BeginDialogueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BeginDialogueResponseBody?

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
            var model = BeginDialogueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CollectedNumberRequest : Tea.TeaModel {
    public var additionalContext: String?

    public var conversationId: String?

    public var instanceId: String?

    public var instanceOwnerId: Int64?

    public var number: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalContext != nil {
            map["AdditionalContext"] = self.additionalContext!
        }
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceOwnerId != nil {
            map["InstanceOwnerId"] = self.instanceOwnerId!
        }
        if self.number != nil {
            map["Number"] = self.number!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalContext"] as? String {
            self.additionalContext = value
        }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceOwnerId"] as? Int64 {
            self.instanceOwnerId = value
        }
        if let value = dict["Number"] as? String {
            self.number = value
        }
    }
}

public class CollectedNumberResponseBody : Tea.TeaModel {
    public var action: String?

    public var actionParams: String?

    public var interruptible: Bool?

    public var requestId: String?

    public var textResponse: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["Action"] = self.action!
        }
        if self.actionParams != nil {
            map["ActionParams"] = self.actionParams!
        }
        if self.interruptible != nil {
            map["Interruptible"] = self.interruptible!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.textResponse != nil {
            map["TextResponse"] = self.textResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Action"] as? String {
            self.action = value
        }
        if let value = dict["ActionParams"] as? String {
            self.actionParams = value
        }
        if let value = dict["Interruptible"] as? Bool {
            self.interruptible = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TextResponse"] as? String {
            self.textResponse = value
        }
    }
}

public class CollectedNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CollectedNumberResponseBody?

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
            var model = CollectedNumberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDownloadUrlRequest : Tea.TeaModel {
    public var downloadTaskId: String?

    public var fileId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.downloadTaskId != nil {
            map["DownloadTaskId"] = self.downloadTaskId!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DownloadTaskId"] as? String {
            self.downloadTaskId = value
        }
        if let value = dict["FileId"] as? String {
            self.fileId = value
        }
    }
}

public class CreateDownloadUrlResponseBody : Tea.TeaModel {
    public var code: String?

    public var fileHttpUrl: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.fileHttpUrl != nil {
            map["FileHttpUrl"] = self.fileHttpUrl!
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
        if let value = dict["FileHttpUrl"] as? String {
            self.fileHttpUrl = value
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

public class CreateDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDownloadUrlResponseBody?

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
            var model = CreateDownloadUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public var concurrency: Int64?

    public var description_: String?

    public var name: String?

    public var nluServiceParamsJson: String?

    public var unionInstanceId: String?

    public var unionSource: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nluServiceParamsJson != nil {
            map["NluServiceParamsJson"] = self.nluServiceParamsJson!
        }
        if self.unionInstanceId != nil {
            map["UnionInstanceId"] = self.unionInstanceId!
        }
        if self.unionSource != nil {
            map["UnionSource"] = self.unionSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Concurrency"] as? Int64 {
            self.concurrency = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NluServiceParamsJson"] as? String {
            self.nluServiceParamsJson = value
        }
        if let value = dict["UnionInstanceId"] as? String {
            self.unionInstanceId = value
        }
        if let value = dict["UnionSource"] as? String {
            self.unionSource = value
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceResponseBody?

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
            var model = CreateInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DebugBeginDialogueRequest : Tea.TeaModel {
    public var calledNumber: String?

    public var callingNumber: String?

    public var conversationId: String?

    public var initialContext: String?

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
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.callingNumber != nil {
            map["CallingNumber"] = self.callingNumber!
        }
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.initialContext != nil {
            map["InitialContext"] = self.initialContext!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["CallingNumber"] as? String {
            self.callingNumber = value
        }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["InitialContext"] as? String {
            self.initialContext = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DebugBeginDialogueResponseBody : Tea.TeaModel {
    public var action: String?

    public var actionParams: String?

    public var interruptible: Bool?

    public var requestId: String?

    public var textResponse: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["Action"] = self.action!
        }
        if self.actionParams != nil {
            map["ActionParams"] = self.actionParams!
        }
        if self.interruptible != nil {
            map["Interruptible"] = self.interruptible!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.textResponse != nil {
            map["TextResponse"] = self.textResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Action"] as? String {
            self.action = value
        }
        if let value = dict["ActionParams"] as? String {
            self.actionParams = value
        }
        if let value = dict["Interruptible"] as? Bool {
            self.interruptible = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TextResponse"] as? String {
            self.textResponse = value
        }
    }
}

public class DebugBeginDialogueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DebugBeginDialogueResponseBody?

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
            var model = DebugBeginDialogueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DebugCollectedNumberRequest : Tea.TeaModel {
    public var conversationId: String?

    public var instanceId: String?

    public var number: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.number != nil {
            map["Number"] = self.number!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Number"] as? String {
            self.number = value
        }
    }
}

public class DebugCollectedNumberResponseBody : Tea.TeaModel {
    public var action: String?

    public var actionParams: String?

    public var interruptible: Bool?

    public var requestId: String?

    public var textResponse: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["Action"] = self.action!
        }
        if self.actionParams != nil {
            map["ActionParams"] = self.actionParams!
        }
        if self.interruptible != nil {
            map["Interruptible"] = self.interruptible!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.textResponse != nil {
            map["TextResponse"] = self.textResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Action"] as? String {
            self.action = value
        }
        if let value = dict["ActionParams"] as? String {
            self.actionParams = value
        }
        if let value = dict["Interruptible"] as? Bool {
            self.interruptible = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TextResponse"] as? String {
            self.textResponse = value
        }
    }
}

public class DebugCollectedNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DebugCollectedNumberResponseBody?

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
            var model = DebugCollectedNumberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DebugDialogueRequest : Tea.TeaModel {
    public var additionalContext: String?

    public var conversationId: String?

    public var instanceId: String?

    public var utterance: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalContext != nil {
            map["AdditionalContext"] = self.additionalContext!
        }
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.utterance != nil {
            map["Utterance"] = self.utterance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalContext"] as? String {
            self.additionalContext = value
        }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Utterance"] as? String {
            self.utterance = value
        }
    }
}

public class DebugDialogueResponseBody : Tea.TeaModel {
    public var action: String?

    public var actionParams: String?

    public var interruptible: Bool?

    public var requestId: String?

    public var textResponse: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["Action"] = self.action!
        }
        if self.actionParams != nil {
            map["ActionParams"] = self.actionParams!
        }
        if self.interruptible != nil {
            map["Interruptible"] = self.interruptible!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.textResponse != nil {
            map["TextResponse"] = self.textResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Action"] as? String {
            self.action = value
        }
        if let value = dict["ActionParams"] as? String {
            self.actionParams = value
        }
        if let value = dict["Interruptible"] as? Bool {
            self.interruptible = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TextResponse"] as? String {
            self.textResponse = value
        }
    }
}

public class DebugDialogueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DebugDialogueResponseBody?

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
            var model = DebugDialogueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceRequest : Tea.TeaModel {
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

public class DeleteInstanceResponseBody : Tea.TeaModel {
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

public class DeleteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceResponseBody?

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
            var model = DeleteInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeConversationRequest : Tea.TeaModel {
    public var conversationId: String?

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
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DescribeConversationResponseBody : Tea.TeaModel {
    public var beginTime: Int64?

    public var callingNumber: String?

    public var conversationId: String?

    public var effectiveAnswerCount: Int32?

    public var endTime: Int64?

    public var requestId: String?

    public var skillGroupId: String?

    public var transferredToAgent: Bool?

    public var userUtteranceCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.callingNumber != nil {
            map["CallingNumber"] = self.callingNumber!
        }
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.effectiveAnswerCount != nil {
            map["EffectiveAnswerCount"] = self.effectiveAnswerCount!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.skillGroupId != nil {
            map["SkillGroupId"] = self.skillGroupId!
        }
        if self.transferredToAgent != nil {
            map["TransferredToAgent"] = self.transferredToAgent!
        }
        if self.userUtteranceCount != nil {
            map["UserUtteranceCount"] = self.userUtteranceCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["CallingNumber"] as? String {
            self.callingNumber = value
        }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["EffectiveAnswerCount"] as? Int32 {
            self.effectiveAnswerCount = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SkillGroupId"] as? String {
            self.skillGroupId = value
        }
        if let value = dict["TransferredToAgent"] as? Bool {
            self.transferredToAgent = value
        }
        if let value = dict["UserUtteranceCount"] as? Int32 {
            self.userUtteranceCount = value
        }
    }
}

public class DescribeConversationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConversationResponseBody?

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
            var model = DescribeConversationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeConversationContextRequest : Tea.TeaModel {
    public var conversationId: String?

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
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DescribeConversationContextResponseBody : Tea.TeaModel {
    public var conversationContext: String?

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
        if self.conversationContext != nil {
            map["ConversationContext"] = self.conversationContext!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversationContext"] as? String {
            self.conversationContext = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeConversationContextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConversationContextResponseBody?

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
            var model = DescribeConversationContextResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeExportProgressRequest : Tea.TeaModel {
    public var exportTaskId: String?

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
        if self.exportTaskId != nil {
            map["ExportTaskId"] = self.exportTaskId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExportTaskId"] as? String {
            self.exportTaskId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DescribeExportProgressResponseBody : Tea.TeaModel {
    public var fileHttpUrl: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileHttpUrl != nil {
            map["FileHttpUrl"] = self.fileHttpUrl!
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
        if let value = dict["FileHttpUrl"] as? String {
            self.fileHttpUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeExportProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeExportProgressResponseBody?

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
            var model = DescribeExportProgressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceRequest : Tea.TeaModel {
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

public class DescribeInstanceResponseBody : Tea.TeaModel {
    public var abilityType: String?

    public var applicableOperations: [String]?

    public var concurrency: Int64?

    public var description_: String?

    public var instanceId: String?

    public var modifyTime: Int64?

    public var modifyUserName: String?

    public var name: String?

    public var nluServiceParamsJson: String?

    public var requestId: String?

    public var status: String?

    public var unionInstanceId: String?

    public var unionSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.abilityType != nil {
            map["AbilityType"] = self.abilityType!
        }
        if self.applicableOperations != nil {
            map["ApplicableOperations"] = self.applicableOperations!
        }
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nluServiceParamsJson != nil {
            map["NluServiceParamsJson"] = self.nluServiceParamsJson!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.unionInstanceId != nil {
            map["UnionInstanceId"] = self.unionInstanceId!
        }
        if self.unionSource != nil {
            map["UnionSource"] = self.unionSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AbilityType"] as? String {
            self.abilityType = value
        }
        if let value = dict["ApplicableOperations"] as? [String] {
            self.applicableOperations = value
        }
        if let value = dict["Concurrency"] as? Int64 {
            self.concurrency = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ModifyTime"] as? Int64 {
            self.modifyTime = value
        }
        if let value = dict["ModifyUserName"] as? String {
            self.modifyUserName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NluServiceParamsJson"] as? String {
            self.nluServiceParamsJson = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UnionInstanceId"] as? String {
            self.unionInstanceId = value
        }
        if let value = dict["UnionSource"] as? String {
            self.unionSource = value
        }
    }
}

public class DescribeInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceResponseBody?

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
            var model = DescribeInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNavigationConfigRequest : Tea.TeaModel {
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

public class DescribeNavigationConfigResponseBody : Tea.TeaModel {
    public class GreetingConfig : Tea.TeaModel {
        public var greetingWords: String?

        public var intentTrigger: String?

        public var sourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.greetingWords != nil {
                map["GreetingWords"] = self.greetingWords!
            }
            if self.intentTrigger != nil {
                map["IntentTrigger"] = self.intentTrigger!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GreetingWords"] as? String {
                self.greetingWords = value
            }
            if let value = dict["IntentTrigger"] as? String {
                self.intentTrigger = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
        }
    }
    public class SilenceTimeoutConfig : Tea.TeaModel {
        public var finalAction: String?

        public var finalActionParams: String?

        public var finalPrompt: String?

        public var intentTrigger: String?

        public var prompt: String?

        public var sourceType: String?

        public var threshold: Int32?

        public var timeout: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.finalAction != nil {
                map["FinalAction"] = self.finalAction!
            }
            if self.finalActionParams != nil {
                map["FinalActionParams"] = self.finalActionParams!
            }
            if self.finalPrompt != nil {
                map["FinalPrompt"] = self.finalPrompt!
            }
            if self.intentTrigger != nil {
                map["IntentTrigger"] = self.intentTrigger!
            }
            if self.prompt != nil {
                map["Prompt"] = self.prompt!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            if self.timeout != nil {
                map["Timeout"] = self.timeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FinalAction"] as? String {
                self.finalAction = value
            }
            if let value = dict["FinalActionParams"] as? String {
                self.finalActionParams = value
            }
            if let value = dict["FinalPrompt"] as? String {
                self.finalPrompt = value
            }
            if let value = dict["IntentTrigger"] as? String {
                self.intentTrigger = value
            }
            if let value = dict["Prompt"] as? String {
                self.prompt = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["Threshold"] as? Int32 {
                self.threshold = value
            }
            if let value = dict["Timeout"] as? Int64 {
                self.timeout = value
            }
        }
    }
    public class UnrecognizingConfig : Tea.TeaModel {
        public var finalAction: String?

        public var finalActionParams: String?

        public var finalPrompt: String?

        public var prompt: String?

        public var threshold: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.finalAction != nil {
                map["FinalAction"] = self.finalAction!
            }
            if self.finalActionParams != nil {
                map["FinalActionParams"] = self.finalActionParams!
            }
            if self.finalPrompt != nil {
                map["FinalPrompt"] = self.finalPrompt!
            }
            if self.prompt != nil {
                map["Prompt"] = self.prompt!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FinalAction"] as? String {
                self.finalAction = value
            }
            if let value = dict["FinalActionParams"] as? String {
                self.finalActionParams = value
            }
            if let value = dict["FinalPrompt"] as? String {
                self.finalPrompt = value
            }
            if let value = dict["Prompt"] as? String {
                self.prompt = value
            }
            if let value = dict["Threshold"] as? Int32 {
                self.threshold = value
            }
        }
    }
    public var greetingConfig: DescribeNavigationConfigResponseBody.GreetingConfig?

    public var requestId: String?

    public var silenceTimeoutConfig: DescribeNavigationConfigResponseBody.SilenceTimeoutConfig?

    public var unrecognizingConfig: DescribeNavigationConfigResponseBody.UnrecognizingConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.greetingConfig?.validate()
        try self.silenceTimeoutConfig?.validate()
        try self.unrecognizingConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.greetingConfig != nil {
            map["GreetingConfig"] = self.greetingConfig?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.silenceTimeoutConfig != nil {
            map["SilenceTimeoutConfig"] = self.silenceTimeoutConfig?.toMap()
        }
        if self.unrecognizingConfig != nil {
            map["UnrecognizingConfig"] = self.unrecognizingConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GreetingConfig"] as? [String: Any?] {
            var model = DescribeNavigationConfigResponseBody.GreetingConfig()
            model.fromMap(value)
            self.greetingConfig = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SilenceTimeoutConfig"] as? [String: Any?] {
            var model = DescribeNavigationConfigResponseBody.SilenceTimeoutConfig()
            model.fromMap(value)
            self.silenceTimeoutConfig = model
        }
        if let value = dict["UnrecognizingConfig"] as? [String: Any?] {
            var model = DescribeNavigationConfigResponseBody.UnrecognizingConfig()
            model.fromMap(value)
            self.unrecognizingConfig = model
        }
    }
}

public class DescribeNavigationConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNavigationConfigResponseBody?

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
            var model = DescribeNavigationConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRecordingRequest : Tea.TeaModel {
    public var conversationId: String?

    public var instanceId: String?

    public var needVoiceSliceRecording: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.needVoiceSliceRecording != nil {
            map["NeedVoiceSliceRecording"] = self.needVoiceSliceRecording!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NeedVoiceSliceRecording"] as? Bool {
            self.needVoiceSliceRecording = value
        }
    }
}

public class DescribeRecordingResponseBody : Tea.TeaModel {
    public var fileName: String?

    public var filePath: String?

    public var requestId: String?

    public var voiceSliceRecordingListJson: String?

    public override init() {
        super.init()
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
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.voiceSliceRecordingListJson != nil {
            map["VoiceSliceRecordingListJson"] = self.voiceSliceRecordingListJson!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VoiceSliceRecordingListJson"] as? String {
            self.voiceSliceRecordingListJson = value
        }
    }
}

public class DescribeRecordingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRecordingResponseBody?

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
            var model = DescribeRecordingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeStatisticalDataRequest : Tea.TeaModel {
    public var beginTimeLeftRange: Int64?

    public var beginTimeRightRange: Int64?

    public var instanceId: String?

    public var timeUnit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTimeLeftRange != nil {
            map["BeginTimeLeftRange"] = self.beginTimeLeftRange!
        }
        if self.beginTimeRightRange != nil {
            map["BeginTimeRightRange"] = self.beginTimeRightRange!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.timeUnit != nil {
            map["TimeUnit"] = self.timeUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTimeLeftRange"] as? Int64 {
            self.beginTimeLeftRange = value
        }
        if let value = dict["BeginTimeRightRange"] as? Int64 {
            self.beginTimeRightRange = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["TimeUnit"] as? String {
            self.timeUnit = value
        }
    }
}

public class DescribeStatisticalDataResponseBody : Tea.TeaModel {
    public class StatisticalDataReports : Tea.TeaModel {
        public var dialoguePassRate: String?

        public var knowledgeHitRate: String?

        public var resolutionRate: String?

        public var resolvedQuestionNum: Int32?

        public var statisticalDate: String?

        public var totalConversationNum: Int32?

        public var validAnswerRate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dialoguePassRate != nil {
                map["DialoguePassRate"] = self.dialoguePassRate!
            }
            if self.knowledgeHitRate != nil {
                map["KnowledgeHitRate"] = self.knowledgeHitRate!
            }
            if self.resolutionRate != nil {
                map["ResolutionRate"] = self.resolutionRate!
            }
            if self.resolvedQuestionNum != nil {
                map["ResolvedQuestionNum"] = self.resolvedQuestionNum!
            }
            if self.statisticalDate != nil {
                map["StatisticalDate"] = self.statisticalDate!
            }
            if self.totalConversationNum != nil {
                map["TotalConversationNum"] = self.totalConversationNum!
            }
            if self.validAnswerRate != nil {
                map["ValidAnswerRate"] = self.validAnswerRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DialoguePassRate"] as? String {
                self.dialoguePassRate = value
            }
            if let value = dict["KnowledgeHitRate"] as? String {
                self.knowledgeHitRate = value
            }
            if let value = dict["ResolutionRate"] as? String {
                self.resolutionRate = value
            }
            if let value = dict["ResolvedQuestionNum"] as? Int32 {
                self.resolvedQuestionNum = value
            }
            if let value = dict["StatisticalDate"] as? String {
                self.statisticalDate = value
            }
            if let value = dict["TotalConversationNum"] as? Int32 {
                self.totalConversationNum = value
            }
            if let value = dict["ValidAnswerRate"] as? String {
                self.validAnswerRate = value
            }
        }
    }
    public var conversationTotalNum: Int64?

    public var requestId: String?

    public var resolvedQuestionTotalNum: Int64?

    public var statisticalDataReports: [DescribeStatisticalDataResponseBody.StatisticalDataReports]?

    public var totalDialoguePassRate: String?

    public var totalKnowledgeHitRate: String?

    public var totalResolutionRate: String?

    public var totalValidAnswerRate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conversationTotalNum != nil {
            map["ConversationTotalNum"] = self.conversationTotalNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resolvedQuestionTotalNum != nil {
            map["ResolvedQuestionTotalNum"] = self.resolvedQuestionTotalNum!
        }
        if self.statisticalDataReports != nil {
            var tmp : [Any] = []
            for k in self.statisticalDataReports! {
                tmp.append(k.toMap())
            }
            map["StatisticalDataReports"] = tmp
        }
        if self.totalDialoguePassRate != nil {
            map["TotalDialoguePassRate"] = self.totalDialoguePassRate!
        }
        if self.totalKnowledgeHitRate != nil {
            map["TotalKnowledgeHitRate"] = self.totalKnowledgeHitRate!
        }
        if self.totalResolutionRate != nil {
            map["TotalResolutionRate"] = self.totalResolutionRate!
        }
        if self.totalValidAnswerRate != nil {
            map["TotalValidAnswerRate"] = self.totalValidAnswerRate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversationTotalNum"] as? Int64 {
            self.conversationTotalNum = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResolvedQuestionTotalNum"] as? Int64 {
            self.resolvedQuestionTotalNum = value
        }
        if let value = dict["StatisticalDataReports"] as? [Any?] {
            var tmp : [DescribeStatisticalDataResponseBody.StatisticalDataReports] = []
            for v in value {
                if v != nil {
                    var model = DescribeStatisticalDataResponseBody.StatisticalDataReports()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.statisticalDataReports = tmp
        }
        if let value = dict["TotalDialoguePassRate"] as? String {
            self.totalDialoguePassRate = value
        }
        if let value = dict["TotalKnowledgeHitRate"] as? String {
            self.totalKnowledgeHitRate = value
        }
        if let value = dict["TotalResolutionRate"] as? String {
            self.totalResolutionRate = value
        }
        if let value = dict["TotalValidAnswerRate"] as? String {
            self.totalValidAnswerRate = value
        }
    }
}

public class DescribeStatisticalDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStatisticalDataResponseBody?

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
            var model = DescribeStatisticalDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTTSConfigRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instanceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.instanceOwnerId != nil {
            map["InstanceOwnerId"] = self.instanceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceOwnerId"] as? Int64 {
            self.instanceOwnerId = value
        }
    }
}

public class DescribeTTSConfigResponseBody : Tea.TeaModel {
    public var aliCustomizedVoice: String?

    public var appKey: String?

    public var engine: String?

    public var engineXunfei: String?

    public var nlsServiceType: String?

    public var pitchRate: Int32?

    public var requestId: String?

    public var speechRate: Int32?

    public var ttsOverrides: String?

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
        if self.aliCustomizedVoice != nil {
            map["AliCustomizedVoice"] = self.aliCustomizedVoice!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineXunfei != nil {
            map["EngineXunfei"] = self.engineXunfei!
        }
        if self.nlsServiceType != nil {
            map["NlsServiceType"] = self.nlsServiceType!
        }
        if self.pitchRate != nil {
            map["PitchRate"] = self.pitchRate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.speechRate != nil {
            map["SpeechRate"] = self.speechRate!
        }
        if self.ttsOverrides != nil {
            map["TtsOverrides"] = self.ttsOverrides!
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
        if let value = dict["AliCustomizedVoice"] as? String {
            self.aliCustomizedVoice = value
        }
        if let value = dict["AppKey"] as? String {
            self.appKey = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineXunfei"] as? String {
            self.engineXunfei = value
        }
        if let value = dict["NlsServiceType"] as? String {
            self.nlsServiceType = value
        }
        if let value = dict["PitchRate"] as? Int32 {
            self.pitchRate = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SpeechRate"] as? Int32 {
            self.speechRate = value
        }
        if let value = dict["TtsOverrides"] as? String {
            self.ttsOverrides = value
        }
        if let value = dict["Voice"] as? String {
            self.voice = value
        }
        if let value = dict["Volume"] as? Int32 {
            self.volume = value
        }
    }
}

public class DescribeTTSConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTTSConfigResponseBody?

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
            var model = DescribeTTSConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DialogueRequest : Tea.TeaModel {
    public var additionalContext: String?

    public var calledNumber: String?

    public var callingNumber: String?

    public var conversationId: String?

    public var emotion: String?

    public var instanceId: String?

    public var instanceOwnerId: Int64?

    public var utterance: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalContext != nil {
            map["AdditionalContext"] = self.additionalContext!
        }
        if self.calledNumber != nil {
            map["CalledNumber"] = self.calledNumber!
        }
        if self.callingNumber != nil {
            map["CallingNumber"] = self.callingNumber!
        }
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.emotion != nil {
            map["Emotion"] = self.emotion!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceOwnerId != nil {
            map["InstanceOwnerId"] = self.instanceOwnerId!
        }
        if self.utterance != nil {
            map["Utterance"] = self.utterance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalContext"] as? String {
            self.additionalContext = value
        }
        if let value = dict["CalledNumber"] as? String {
            self.calledNumber = value
        }
        if let value = dict["CallingNumber"] as? String {
            self.callingNumber = value
        }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["Emotion"] as? String {
            self.emotion = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceOwnerId"] as? Int64 {
            self.instanceOwnerId = value
        }
        if let value = dict["Utterance"] as? String {
            self.utterance = value
        }
    }
}

public class DialogueResponseBody : Tea.TeaModel {
    public var action: String?

    public var actionParams: String?

    public var interruptible: Bool?

    public var requestId: String?

    public var textResponse: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["Action"] = self.action!
        }
        if self.actionParams != nil {
            map["ActionParams"] = self.actionParams!
        }
        if self.interruptible != nil {
            map["Interruptible"] = self.interruptible!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.textResponse != nil {
            map["TextResponse"] = self.textResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Action"] as? String {
            self.action = value
        }
        if let value = dict["ActionParams"] as? String {
            self.actionParams = value
        }
        if let value = dict["Interruptible"] as? Bool {
            self.interruptible = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TextResponse"] as? String {
            self.textResponse = value
        }
    }
}

public class DialogueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DialogueResponseBody?

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
            var model = DialogueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableInstanceRequest : Tea.TeaModel {
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

public class DisableInstanceResponseBody : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DisableInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableInstanceResponseBody?

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
            var model = DisableInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableInstanceRequest : Tea.TeaModel {
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

public class EnableInstanceResponseBody : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class EnableInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableInstanceResponseBody?

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
            var model = EnableInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EndDialogueRequest : Tea.TeaModel {
    public var conversationId: String?

    public var hangUpParams: String?

    public var instanceId: String?

    public var instanceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.hangUpParams != nil {
            map["HangUpParams"] = self.hangUpParams!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceOwnerId != nil {
            map["InstanceOwnerId"] = self.instanceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["HangUpParams"] as? String {
            self.hangUpParams = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceOwnerId"] as? Int64 {
            self.instanceOwnerId = value
        }
    }
}

public class EndDialogueResponseBody : Tea.TeaModel {
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

public class EndDialogueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EndDialogueResponseBody?

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
            var model = EndDialogueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportConversationDetailsRequest : Tea.TeaModel {
    public var beginTimeLeftRange: Int64?

    public var beginTimeRightRange: Int64?

    public var callingNumber: String?

    public var debugConversation: Int32?

    public var instanceId: String?

    public var options: [String]?

    public var result: Int32?

    public var roundsLeftRange: Int32?

    public var roundsRightRange: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTimeLeftRange != nil {
            map["BeginTimeLeftRange"] = self.beginTimeLeftRange!
        }
        if self.beginTimeRightRange != nil {
            map["BeginTimeRightRange"] = self.beginTimeRightRange!
        }
        if self.callingNumber != nil {
            map["CallingNumber"] = self.callingNumber!
        }
        if self.debugConversation != nil {
            map["DebugConversation"] = self.debugConversation!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.roundsLeftRange != nil {
            map["RoundsLeftRange"] = self.roundsLeftRange!
        }
        if self.roundsRightRange != nil {
            map["RoundsRightRange"] = self.roundsRightRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTimeLeftRange"] as? Int64 {
            self.beginTimeLeftRange = value
        }
        if let value = dict["BeginTimeRightRange"] as? Int64 {
            self.beginTimeRightRange = value
        }
        if let value = dict["CallingNumber"] as? String {
            self.callingNumber = value
        }
        if let value = dict["DebugConversation"] as? Int32 {
            self.debugConversation = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Options"] as? [String] {
            self.options = value
        }
        if let value = dict["Result"] as? Int32 {
            self.result = value
        }
        if let value = dict["RoundsLeftRange"] as? Int32 {
            self.roundsLeftRange = value
        }
        if let value = dict["RoundsRightRange"] as? Int32 {
            self.roundsRightRange = value
        }
    }
}

public class ExportConversationDetailsResponseBody : Tea.TeaModel {
    public var exportTaskId: String?

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
        if self.exportTaskId != nil {
            map["ExportTaskId"] = self.exportTaskId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExportTaskId"] as? String {
            self.exportTaskId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExportConversationDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportConversationDetailsResponseBody?

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
            var model = ExportConversationDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportStatisticalDataRequest : Tea.TeaModel {
    public var beginTimeLeftRange: Int64?

    public var beginTimeRightRange: Int64?

    public var exportType: String?

    public var instanceId: String?

    public var timeUnit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTimeLeftRange != nil {
            map["BeginTimeLeftRange"] = self.beginTimeLeftRange!
        }
        if self.beginTimeRightRange != nil {
            map["BeginTimeRightRange"] = self.beginTimeRightRange!
        }
        if self.exportType != nil {
            map["ExportType"] = self.exportType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.timeUnit != nil {
            map["TimeUnit"] = self.timeUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTimeLeftRange"] as? Int64 {
            self.beginTimeLeftRange = value
        }
        if let value = dict["BeginTimeRightRange"] as? Int64 {
            self.beginTimeRightRange = value
        }
        if let value = dict["ExportType"] as? String {
            self.exportType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["TimeUnit"] as? String {
            self.timeUnit = value
        }
    }
}

public class ExportStatisticalDataResponseBody : Tea.TeaModel {
    public var exportTaskId: String?

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
        if self.exportTaskId != nil {
            map["ExportTaskId"] = self.exportTaskId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExportTaskId"] as? String {
            self.exportTaskId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExportStatisticalDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportStatisticalDataResponseBody?

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
            var model = ExportStatisticalDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAsrConfigRequest : Tea.TeaModel {
    public var configLevel: Int32?

    public var entryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configLevel != nil {
            map["ConfigLevel"] = self.configLevel!
        }
        if self.entryId != nil {
            map["EntryId"] = self.entryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigLevel"] as? Int32 {
            self.configLevel = value
        }
        if let value = dict["EntryId"] as? String {
            self.entryId = value
        }
    }
}

public class GetAsrConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appKey: String?

        public var asrAcousticModelId: String?

        public var asrClassVocabularyId: String?

        public var asrCustomizationId: String?

        public var asrOverrides: String?

        public var asrVocabularyId: String?

        public var engine: String?

        public var engineXufei: String?

        public var nlsServiceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.asrAcousticModelId != nil {
                map["AsrAcousticModelId"] = self.asrAcousticModelId!
            }
            if self.asrClassVocabularyId != nil {
                map["AsrClassVocabularyId"] = self.asrClassVocabularyId!
            }
            if self.asrCustomizationId != nil {
                map["AsrCustomizationId"] = self.asrCustomizationId!
            }
            if self.asrOverrides != nil {
                map["AsrOverrides"] = self.asrOverrides!
            }
            if self.asrVocabularyId != nil {
                map["AsrVocabularyId"] = self.asrVocabularyId!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.engineXufei != nil {
                map["EngineXufei"] = self.engineXufei!
            }
            if self.nlsServiceType != nil {
                map["NlsServiceType"] = self.nlsServiceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppKey"] as? String {
                self.appKey = value
            }
            if let value = dict["AsrAcousticModelId"] as? String {
                self.asrAcousticModelId = value
            }
            if let value = dict["AsrClassVocabularyId"] as? String {
                self.asrClassVocabularyId = value
            }
            if let value = dict["AsrCustomizationId"] as? String {
                self.asrCustomizationId = value
            }
            if let value = dict["AsrOverrides"] as? String {
                self.asrOverrides = value
            }
            if let value = dict["AsrVocabularyId"] as? String {
                self.asrVocabularyId = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["EngineXufei"] as? String {
                self.engineXufei = value
            }
            if let value = dict["NlsServiceType"] as? String {
                self.nlsServiceType = value
            }
        }
    }
    public var code: String?

    public var data: GetAsrConfigResponseBody.Data?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

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
            var model = GetAsrConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class GetAsrConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAsrConfigResponseBody?

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
            var model = GetAsrConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRealTimeConcurrencyRequest : Tea.TeaModel {
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

public class GetRealTimeConcurrencyResponseBody : Tea.TeaModel {
    public var maxConcurrency: Int64?

    public var realTimeConcurrency: Int64?

    public var requestId: String?

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
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.realTimeConcurrency != nil {
            map["RealTimeConcurrency"] = self.realTimeConcurrency!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxConcurrency"] as? Int64 {
            self.maxConcurrency = value
        }
        if let value = dict["RealTimeConcurrency"] as? Int64 {
            self.realTimeConcurrency = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class GetRealTimeConcurrencyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRealTimeConcurrencyResponseBody?

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
            var model = GetRealTimeConcurrencyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListChatbotInstancesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nluServiceParamsJson: String?

    public var nluServiceType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var unionSource: String?

    public override init() {
        super.init()
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
        if self.nluServiceParamsJson != nil {
            map["NluServiceParamsJson"] = self.nluServiceParamsJson!
        }
        if self.nluServiceType != nil {
            map["NluServiceType"] = self.nluServiceType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.unionSource != nil {
            map["UnionSource"] = self.unionSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NluServiceParamsJson"] as? String {
            self.nluServiceParamsJson = value
        }
        if let value = dict["NluServiceType"] as? String {
            self.nluServiceType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UnionSource"] as? String {
            self.unionSource = value
        }
    }
}

public class ListChatbotInstancesResponseBody : Tea.TeaModel {
    public class Bots : Tea.TeaModel {
        public var avatar: String?

        public var createTime: String?

        public var instanceId: String?

        public var introduction: String?

        public var languageCode: String?

        public var name: String?

        public var timeZone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avatar != nil {
                map["Avatar"] = self.avatar!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.introduction != nil {
                map["Introduction"] = self.introduction!
            }
            if self.languageCode != nil {
                map["LanguageCode"] = self.languageCode!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.timeZone != nil {
                map["TimeZone"] = self.timeZone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Avatar"] as? String {
                self.avatar = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Introduction"] as? String {
                self.introduction = value
            }
            if let value = dict["LanguageCode"] as? String {
                self.languageCode = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["TimeZone"] as? String {
                self.timeZone = value
            }
        }
    }
    public var bots: [ListChatbotInstancesResponseBody.Bots]?

    public var pageNumber: Int32?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bots != nil {
            var tmp : [Any] = []
            for k in self.bots! {
                tmp.append(k.toMap())
            }
            map["Bots"] = tmp
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
        if let value = dict["Bots"] as? [Any?] {
            var tmp : [ListChatbotInstancesResponseBody.Bots] = []
            for v in value {
                if v != nil {
                    var model = ListChatbotInstancesResponseBody.Bots()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.bots = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListChatbotInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChatbotInstancesResponseBody?

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
            var model = ListChatbotInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConversationDetailsRequest : Tea.TeaModel {
    public var conversationId: String?

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
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListConversationDetailsResponseBody : Tea.TeaModel {
    public class ConversationDetails : Tea.TeaModel {
        public var action: String?

        public var actionParams: String?

        public var conversationId: String?

        public var createTime: Int64?

        public var sequenceId: String?

        public var speaker: String?

        public var utterance: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.actionParams != nil {
                map["ActionParams"] = self.actionParams!
            }
            if self.conversationId != nil {
                map["ConversationId"] = self.conversationId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.sequenceId != nil {
                map["SequenceId"] = self.sequenceId!
            }
            if self.speaker != nil {
                map["Speaker"] = self.speaker!
            }
            if self.utterance != nil {
                map["Utterance"] = self.utterance!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Action"] as? String {
                self.action = value
            }
            if let value = dict["ActionParams"] as? String {
                self.actionParams = value
            }
            if let value = dict["ConversationId"] as? String {
                self.conversationId = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["SequenceId"] as? String {
                self.sequenceId = value
            }
            if let value = dict["Speaker"] as? String {
                self.speaker = value
            }
            if let value = dict["Utterance"] as? String {
                self.utterance = value
            }
        }
    }
    public var conversationDetails: [ListConversationDetailsResponseBody.ConversationDetails]?

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
        if self.conversationDetails != nil {
            var tmp : [Any] = []
            for k in self.conversationDetails! {
                tmp.append(k.toMap())
            }
            map["ConversationDetails"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversationDetails"] as? [Any?] {
            var tmp : [ListConversationDetailsResponseBody.ConversationDetails] = []
            for v in value {
                if v != nil {
                    var model = ListConversationDetailsResponseBody.ConversationDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conversationDetails = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListConversationDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConversationDetailsResponseBody?

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
            var model = ListConversationDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConversationsRequest : Tea.TeaModel {
    public var beginTimeLeftRange: Int64?

    public var beginTimeRightRange: Int64?

    public var callingNumber: String?

    public var debugConversation: Int32?

    public var instanceId: String?

    public var isSandBox: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var result: Int64?

    public var roundsLeftRange: Int32?

    public var roundsRightRange: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTimeLeftRange != nil {
            map["BeginTimeLeftRange"] = self.beginTimeLeftRange!
        }
        if self.beginTimeRightRange != nil {
            map["BeginTimeRightRange"] = self.beginTimeRightRange!
        }
        if self.callingNumber != nil {
            map["CallingNumber"] = self.callingNumber!
        }
        if self.debugConversation != nil {
            map["DebugConversation"] = self.debugConversation!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSandBox != nil {
            map["IsSandBox"] = self.isSandBox!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.roundsLeftRange != nil {
            map["RoundsLeftRange"] = self.roundsLeftRange!
        }
        if self.roundsRightRange != nil {
            map["RoundsRightRange"] = self.roundsRightRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTimeLeftRange"] as? Int64 {
            self.beginTimeLeftRange = value
        }
        if let value = dict["BeginTimeRightRange"] as? Int64 {
            self.beginTimeRightRange = value
        }
        if let value = dict["CallingNumber"] as? String {
            self.callingNumber = value
        }
        if let value = dict["DebugConversation"] as? Int32 {
            self.debugConversation = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSandBox"] as? String {
            self.isSandBox = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["Result"] as? Int64 {
            self.result = value
        }
        if let value = dict["RoundsLeftRange"] as? Int32 {
            self.roundsLeftRange = value
        }
        if let value = dict["RoundsRightRange"] as? Int32 {
            self.roundsRightRange = value
        }
    }
}

public class ListConversationsResponseBody : Tea.TeaModel {
    public class Conversations : Tea.TeaModel {
        public var calledNumber: String?

        public var callingNumber: String?

        public var conversationId: String?

        public var dsReport: String?

        public var dsReportTitles: [String]?

        public var endReason: Int32?

        public var endTime: Int64?

        public var hasLastPlaybackCompleted: Bool?

        public var hasToAgent: Bool?

        public var rounds: Int32?

        public var sandBox: Bool?

        public var skillGroup: String?

        public var startTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.calledNumber != nil {
                map["CalledNumber"] = self.calledNumber!
            }
            if self.callingNumber != nil {
                map["CallingNumber"] = self.callingNumber!
            }
            if self.conversationId != nil {
                map["ConversationId"] = self.conversationId!
            }
            if self.dsReport != nil {
                map["DsReport"] = self.dsReport!
            }
            if self.dsReportTitles != nil {
                map["DsReportTitles"] = self.dsReportTitles!
            }
            if self.endReason != nil {
                map["EndReason"] = self.endReason!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.hasLastPlaybackCompleted != nil {
                map["HasLastPlaybackCompleted"] = self.hasLastPlaybackCompleted!
            }
            if self.hasToAgent != nil {
                map["HasToAgent"] = self.hasToAgent!
            }
            if self.rounds != nil {
                map["Rounds"] = self.rounds!
            }
            if self.sandBox != nil {
                map["SandBox"] = self.sandBox!
            }
            if self.skillGroup != nil {
                map["SkillGroup"] = self.skillGroup!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CalledNumber"] as? String {
                self.calledNumber = value
            }
            if let value = dict["CallingNumber"] as? String {
                self.callingNumber = value
            }
            if let value = dict["ConversationId"] as? String {
                self.conversationId = value
            }
            if let value = dict["DsReport"] as? String {
                self.dsReport = value
            }
            if let value = dict["DsReportTitles"] as? [String] {
                self.dsReportTitles = value
            }
            if let value = dict["EndReason"] as? Int32 {
                self.endReason = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["HasLastPlaybackCompleted"] as? Bool {
                self.hasLastPlaybackCompleted = value
            }
            if let value = dict["HasToAgent"] as? Bool {
                self.hasToAgent = value
            }
            if let value = dict["Rounds"] as? Int32 {
                self.rounds = value
            }
            if let value = dict["SandBox"] as? Bool {
                self.sandBox = value
            }
            if let value = dict["SkillGroup"] as? String {
                self.skillGroup = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
        }
    }
    public var conversations: [ListConversationsResponseBody.Conversations]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conversations != nil {
            var tmp : [Any] = []
            for k in self.conversations! {
                tmp.append(k.toMap())
            }
            map["Conversations"] = tmp
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
        if let value = dict["Conversations"] as? [Any?] {
            var tmp : [ListConversationsResponseBody.Conversations] = []
            for v in value {
                if v != nil {
                    var model = ListConversationsResponseBody.Conversations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conversations = tmp
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListConversationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConversationsResponseBody?

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
            var model = ListConversationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDownloadTasksRequest : Tea.TeaModel {
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

public class ListDownloadTasksResponseBody : Tea.TeaModel {
    public class DownloadTasks : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class DownloadTaskFiles : Tea.TeaModel {
                public var fileId: String?

                public var progress: Int32?

                public var status: String?

                public var title: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fileId != nil {
                        map["FileId"] = self.fileId!
                    }
                    if self.progress != nil {
                        map["Progress"] = self.progress!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FileId"] as? String {
                        self.fileId = value
                    }
                    if let value = dict["Progress"] as? Int32 {
                        self.progress = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["Title"] as? String {
                        self.title = value
                    }
                }
            }
            public var downloadTaskFiles: [ListDownloadTasksResponseBody.DownloadTasks.List.DownloadTaskFiles]?

            public var expireTime: Int64?

            public var status: String?

            public var taskId: String?

            public var title: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.downloadTaskFiles != nil {
                    var tmp : [Any] = []
                    for k in self.downloadTaskFiles! {
                        tmp.append(k.toMap())
                    }
                    map["DownloadTaskFiles"] = tmp
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DownloadTaskFiles"] as? [Any?] {
                    var tmp : [ListDownloadTasksResponseBody.DownloadTasks.List.DownloadTaskFiles] = []
                    for v in value {
                        if v != nil {
                            var model = ListDownloadTasksResponseBody.DownloadTasks.List.DownloadTaskFiles()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.downloadTaskFiles = tmp
                }
                if let value = dict["ExpireTime"] as? Int64 {
                    self.expireTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
            }
        }
        public var list: [ListDownloadTasksResponseBody.DownloadTasks.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
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
            if let value = dict["List"] as? [Any?] {
                var tmp : [ListDownloadTasksResponseBody.DownloadTasks.List] = []
                for v in value {
                    if v != nil {
                        var model = ListDownloadTasksResponseBody.DownloadTasks.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
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

    public var downloadTasks: ListDownloadTasksResponseBody.DownloadTasks?

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
        try self.downloadTasks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.downloadTasks != nil {
            map["DownloadTasks"] = self.downloadTasks?.toMap()
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
        if let value = dict["DownloadTasks"] as? [String: Any?] {
            var model = ListDownloadTasksResponseBody.DownloadTasks()
            model.fromMap(value)
            self.downloadTasks = model
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

public class ListDownloadTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDownloadTasksResponseBody?

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
            var model = ListDownloadTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var instanceIdListJsonString: String?

    public var name: String?

    public var nluServiceTypeListJsonString: String?

    public var number: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: String?

    public var unionInstanceId: String?

    public var unionSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIdListJsonString != nil {
            map["InstanceIdListJsonString"] = self.instanceIdListJsonString!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nluServiceTypeListJsonString != nil {
            map["NluServiceTypeListJsonString"] = self.nluServiceTypeListJsonString!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.unionInstanceId != nil {
            map["UnionInstanceId"] = self.unionInstanceId!
        }
        if self.unionSource != nil {
            map["UnionSource"] = self.unionSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIdListJsonString"] as? String {
            self.instanceIdListJsonString = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NluServiceTypeListJsonString"] as? String {
            self.nluServiceTypeListJsonString = value
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
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UnionInstanceId"] as? String {
            self.unionInstanceId = value
        }
        if let value = dict["UnionSource"] as? String {
            self.unionSource = value
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var applicableOperations: [String]?

        public var concurrency: Int64?

        public var createTime: Int64?

        public var description_: String?

        public var instanceId: String?

        public var modifyTime: Int64?

        public var modifyUserName: String?

        public var name: String?

        public var nluServiceParamsJson: String?

        public var numbers: [String]?

        public var status: String?

        public var unionInstanceId: String?

        public var unionSource: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicableOperations != nil {
                map["ApplicableOperations"] = self.applicableOperations!
            }
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.modifyUserName != nil {
                map["ModifyUserName"] = self.modifyUserName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nluServiceParamsJson != nil {
                map["NluServiceParamsJson"] = self.nluServiceParamsJson!
            }
            if self.numbers != nil {
                map["Numbers"] = self.numbers!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.unionInstanceId != nil {
                map["UnionInstanceId"] = self.unionInstanceId!
            }
            if self.unionSource != nil {
                map["UnionSource"] = self.unionSource!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicableOperations"] as? [String] {
                self.applicableOperations = value
            }
            if let value = dict["Concurrency"] as? Int64 {
                self.concurrency = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ModifyTime"] as? Int64 {
                self.modifyTime = value
            }
            if let value = dict["ModifyUserName"] as? String {
                self.modifyUserName = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NluServiceParamsJson"] as? String {
                self.nluServiceParamsJson = value
            }
            if let value = dict["Numbers"] as? [String] {
                self.numbers = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UnionInstanceId"] as? String {
                self.unionInstanceId = value
            }
            if let value = dict["UnionSource"] as? String {
                self.unionSource = value
            }
        }
    }
    public var instances: [ListInstancesResponseBody.Instances]?

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
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
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
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [ListInstancesResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
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

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

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
            var model = ListInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAsrConfigRequest : Tea.TeaModel {
    public var appKey: String?

    public var asrAcousticModelId: String?

    public var asrClassVocabularyId: String?

    public var asrCustomizationId: String?

    public var asrOverrides: String?

    public var asrVocabularyId: String?

    public var configLevel: Int32?

    public var engine: String?

    public var entryId: String?

    public var nlsServiceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.asrAcousticModelId != nil {
            map["AsrAcousticModelId"] = self.asrAcousticModelId!
        }
        if self.asrClassVocabularyId != nil {
            map["AsrClassVocabularyId"] = self.asrClassVocabularyId!
        }
        if self.asrCustomizationId != nil {
            map["AsrCustomizationId"] = self.asrCustomizationId!
        }
        if self.asrOverrides != nil {
            map["AsrOverrides"] = self.asrOverrides!
        }
        if self.asrVocabularyId != nil {
            map["AsrVocabularyId"] = self.asrVocabularyId!
        }
        if self.configLevel != nil {
            map["ConfigLevel"] = self.configLevel!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.entryId != nil {
            map["EntryId"] = self.entryId!
        }
        if self.nlsServiceType != nil {
            map["NlsServiceType"] = self.nlsServiceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? String {
            self.appKey = value
        }
        if let value = dict["AsrAcousticModelId"] as? String {
            self.asrAcousticModelId = value
        }
        if let value = dict["AsrClassVocabularyId"] as? String {
            self.asrClassVocabularyId = value
        }
        if let value = dict["AsrCustomizationId"] as? String {
            self.asrCustomizationId = value
        }
        if let value = dict["AsrOverrides"] as? String {
            self.asrOverrides = value
        }
        if let value = dict["AsrVocabularyId"] as? String {
            self.asrVocabularyId = value
        }
        if let value = dict["ConfigLevel"] as? Int32 {
            self.configLevel = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EntryId"] as? String {
            self.entryId = value
        }
        if let value = dict["NlsServiceType"] as? String {
            self.nlsServiceType = value
        }
    }
}

public class ModifyAsrConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var affectedRows: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.affectedRows != nil {
                map["AffectedRows"] = self.affectedRows!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AffectedRows"] as? Int32 {
                self.affectedRows = value
            }
        }
    }
    public var code: String?

    public var data: ModifyAsrConfigResponseBody.Data?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

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
            var model = ModifyAsrConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
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

public class ModifyAsrConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAsrConfigResponseBody?

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
            var model = ModifyAsrConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyGreetingConfigRequest : Tea.TeaModel {
    public var greetingWords: String?

    public var instanceId: String?

    public var intentTrigger: String?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.greetingWords != nil {
            map["GreetingWords"] = self.greetingWords!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentTrigger != nil {
            map["IntentTrigger"] = self.intentTrigger!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GreetingWords"] as? String {
            self.greetingWords = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentTrigger"] as? String {
            self.intentTrigger = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class ModifyGreetingConfigResponseBody : Tea.TeaModel {
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

public class ModifyGreetingConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyGreetingConfigResponseBody?

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
            var model = ModifyGreetingConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceRequest : Tea.TeaModel {
    public var concurrency: Int64?

    public var description_: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Concurrency"] as? Int64 {
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
    }
}

public class ModifyInstanceResponseBody : Tea.TeaModel {
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

public class ModifyInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceResponseBody?

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
            var model = ModifyInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifySilenceTimeoutConfigRequest : Tea.TeaModel {
    public var finalAction: String?

    public var finalActionParams: String?

    public var finalPrompt: String?

    public var instanceId: String?

    public var intentTrigger: String?

    public var prompt: String?

    public var sourceType: String?

    public var threshold: Int32?

    public var timeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.finalAction != nil {
            map["FinalAction"] = self.finalAction!
        }
        if self.finalActionParams != nil {
            map["FinalActionParams"] = self.finalActionParams!
        }
        if self.finalPrompt != nil {
            map["FinalPrompt"] = self.finalPrompt!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentTrigger != nil {
            map["IntentTrigger"] = self.intentTrigger!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FinalAction"] as? String {
            self.finalAction = value
        }
        if let value = dict["FinalActionParams"] as? String {
            self.finalActionParams = value
        }
        if let value = dict["FinalPrompt"] as? String {
            self.finalPrompt = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentTrigger"] as? String {
            self.intentTrigger = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["Threshold"] as? Int32 {
            self.threshold = value
        }
        if let value = dict["Timeout"] as? Int64 {
            self.timeout = value
        }
    }
}

public class ModifySilenceTimeoutConfigResponseBody : Tea.TeaModel {
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

public class ModifySilenceTimeoutConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySilenceTimeoutConfigResponseBody?

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
            var model = ModifySilenceTimeoutConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyTTSConfigRequest : Tea.TeaModel {
    public var aliCustomizedVoice: String?

    public var appKey: String?

    public var engine: String?

    public var engineXunfei: String?

    public var instanceId: String?

    public var nlsServiceType: String?

    public var pitchRate: String?

    public var speechRate: String?

    public var ttsOverrides: String?

    public var voice: String?

    public var volume: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliCustomizedVoice != nil {
            map["AliCustomizedVoice"] = self.aliCustomizedVoice!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineXunfei != nil {
            map["EngineXunfei"] = self.engineXunfei!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nlsServiceType != nil {
            map["NlsServiceType"] = self.nlsServiceType!
        }
        if self.pitchRate != nil {
            map["PitchRate"] = self.pitchRate!
        }
        if self.speechRate != nil {
            map["SpeechRate"] = self.speechRate!
        }
        if self.ttsOverrides != nil {
            map["TtsOverrides"] = self.ttsOverrides!
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
        if let value = dict["AliCustomizedVoice"] as? String {
            self.aliCustomizedVoice = value
        }
        if let value = dict["AppKey"] as? String {
            self.appKey = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineXunfei"] as? String {
            self.engineXunfei = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NlsServiceType"] as? String {
            self.nlsServiceType = value
        }
        if let value = dict["PitchRate"] as? String {
            self.pitchRate = value
        }
        if let value = dict["SpeechRate"] as? String {
            self.speechRate = value
        }
        if let value = dict["TtsOverrides"] as? String {
            self.ttsOverrides = value
        }
        if let value = dict["Voice"] as? String {
            self.voice = value
        }
        if let value = dict["Volume"] as? String {
            self.volume = value
        }
    }
}

public class ModifyTTSConfigResponseBody : Tea.TeaModel {
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

public class ModifyTTSConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTTSConfigResponseBody?

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
            var model = ModifyTTSConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyUnrecognizingConfigRequest : Tea.TeaModel {
    public var finalAction: String?

    public var finalActionParams: String?

    public var finalPrompt: String?

    public var instanceId: String?

    public var prompt: String?

    public var threshold: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.finalAction != nil {
            map["FinalAction"] = self.finalAction!
        }
        if self.finalActionParams != nil {
            map["FinalActionParams"] = self.finalActionParams!
        }
        if self.finalPrompt != nil {
            map["FinalPrompt"] = self.finalPrompt!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FinalAction"] as? String {
            self.finalAction = value
        }
        if let value = dict["FinalActionParams"] as? String {
            self.finalActionParams = value
        }
        if let value = dict["FinalPrompt"] as? String {
            self.finalPrompt = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["Threshold"] as? Int32 {
            self.threshold = value
        }
    }
}

public class ModifyUnrecognizingConfigResponseBody : Tea.TeaModel {
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

public class ModifyUnrecognizingConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUnrecognizingConfigResponseBody?

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
            var model = ModifyUnrecognizingConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryConversationsRequest : Tea.TeaModel {
    public var beginTimeLeftRange: Int64?

    public var beginTimeRightRange: Int64?

    public var callingNumber: String?

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
        if self.beginTimeLeftRange != nil {
            map["BeginTimeLeftRange"] = self.beginTimeLeftRange!
        }
        if self.beginTimeRightRange != nil {
            map["BeginTimeRightRange"] = self.beginTimeRightRange!
        }
        if self.callingNumber != nil {
            map["CallingNumber"] = self.callingNumber!
        }
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
        if let value = dict["BeginTimeLeftRange"] as? Int64 {
            self.beginTimeLeftRange = value
        }
        if let value = dict["BeginTimeRightRange"] as? Int64 {
            self.beginTimeRightRange = value
        }
        if let value = dict["CallingNumber"] as? String {
            self.callingNumber = value
        }
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

public class QueryConversationsResponseBody : Tea.TeaModel {
    public class Conversations : Tea.TeaModel {
        public var beginTime: Int64?

        public var callingNumber: String?

        public var conversationId: String?

        public var effectiveAnswerCount: Int32?

        public var endTime: Int64?

        public var skillGroupId: String?

        public var transferredToAgent: Bool?

        public var userUtteranceCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.callingNumber != nil {
                map["CallingNumber"] = self.callingNumber!
            }
            if self.conversationId != nil {
                map["ConversationId"] = self.conversationId!
            }
            if self.effectiveAnswerCount != nil {
                map["EffectiveAnswerCount"] = self.effectiveAnswerCount!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.skillGroupId != nil {
                map["SkillGroupId"] = self.skillGroupId!
            }
            if self.transferredToAgent != nil {
                map["TransferredToAgent"] = self.transferredToAgent!
            }
            if self.userUtteranceCount != nil {
                map["UserUtteranceCount"] = self.userUtteranceCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BeginTime"] as? Int64 {
                self.beginTime = value
            }
            if let value = dict["CallingNumber"] as? String {
                self.callingNumber = value
            }
            if let value = dict["ConversationId"] as? String {
                self.conversationId = value
            }
            if let value = dict["EffectiveAnswerCount"] as? Int32 {
                self.effectiveAnswerCount = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["SkillGroupId"] as? String {
                self.skillGroupId = value
            }
            if let value = dict["TransferredToAgent"] as? Bool {
                self.transferredToAgent = value
            }
            if let value = dict["UserUtteranceCount"] as? Int32 {
                self.userUtteranceCount = value
            }
        }
    }
    public var conversations: [QueryConversationsResponseBody.Conversations]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conversations != nil {
            var tmp : [Any] = []
            for k in self.conversations! {
                tmp.append(k.toMap())
            }
            map["Conversations"] = tmp
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
        if let value = dict["Conversations"] as? [Any?] {
            var tmp : [QueryConversationsResponseBody.Conversations] = []
            for v in value {
                if v != nil {
                    var model = QueryConversationsResponseBody.Conversations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conversations = tmp
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class QueryConversationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryConversationsResponseBody?

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
            var model = QueryConversationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveRecordingRequest : Tea.TeaModel {
    public var conversationId: String?

    public var duration: String?

    public var fileName: String?

    public var filePath: String?

    public var instanceId: String?

    public var instanceOwnerId: Int64?

    public var startTime: Int64?

    public var type: String?

    public var voiceSliceRecordingList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceOwnerId != nil {
            map["InstanceOwnerId"] = self.instanceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.voiceSliceRecordingList != nil {
            map["VoiceSliceRecordingList"] = self.voiceSliceRecordingList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceOwnerId"] as? Int64 {
            self.instanceOwnerId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["VoiceSliceRecordingList"] as? String {
            self.voiceSliceRecordingList = value
        }
    }
}

public class SaveRecordingResponseBody : Tea.TeaModel {
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

public class SaveRecordingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveRecordingResponseBody?

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
            var model = SaveRecordingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SilenceTimeoutRequest : Tea.TeaModel {
    public var conversationId: String?

    public var initialContext: String?

    public var instanceId: String?

    public var instanceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.initialContext != nil {
            map["InitialContext"] = self.initialContext!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceOwnerId != nil {
            map["InstanceOwnerId"] = self.instanceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["InitialContext"] as? String {
            self.initialContext = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceOwnerId"] as? Int64 {
            self.instanceOwnerId = value
        }
    }
}

public class SilenceTimeoutResponseBody : Tea.TeaModel {
    public var action: String?

    public var actionParams: String?

    public var interruptible: Bool?

    public var requestId: String?

    public var textResponse: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["Action"] = self.action!
        }
        if self.actionParams != nil {
            map["ActionParams"] = self.actionParams!
        }
        if self.interruptible != nil {
            map["Interruptible"] = self.interruptible!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.textResponse != nil {
            map["TextResponse"] = self.textResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Action"] as? String {
            self.action = value
        }
        if let value = dict["ActionParams"] as? String {
            self.actionParams = value
        }
        if let value = dict["Interruptible"] as? Bool {
            self.interruptible = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TextResponse"] as? String {
            self.textResponse = value
        }
    }
}

public class SilenceTimeoutResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SilenceTimeoutResponseBody?

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
            var model = SilenceTimeoutResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
