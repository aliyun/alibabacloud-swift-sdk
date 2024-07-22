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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChatbotInstanceId") {
            self.chatbotInstanceId = dict["ChatbotInstanceId"] as! String
        }
        if dict.keys.contains("ChatbotName") {
            self.chatbotName = dict["ChatbotName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NluServiceParamsJson") {
            self.nluServiceParamsJson = dict["NluServiceParamsJson"] as! String
        }
        if dict.keys.contains("NluServiceType") {
            self.nluServiceType = dict["NluServiceType"] as! String
        }
        if dict.keys.contains("UnionSource") {
            self.unionSource = dict["UnionSource"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AssociateChatbotInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKey") {
            self.accessKey = dict["AccessKey"] as! String
        }
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PitchRate") {
            self.pitchRate = dict["PitchRate"] as! String
        }
        if dict.keys.contains("SecretKey") {
            self.secretKey = dict["SecretKey"] as! String
        }
        if dict.keys.contains("SpeechRate") {
            self.speechRate = dict["SpeechRate"] as! String
        }
        if dict.keys.contains("Text") {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("Voice") {
            self.voice = dict["Voice"] as! String
        }
        if dict.keys.contains("Volume") {
            self.volume = dict["Volume"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditionUrl") {
            self.auditionUrl = dict["AuditionUrl"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AuditTTSVoiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalledNumber") {
            self.calledNumber = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("CallingNumber") {
            self.callingNumber = dict["CallingNumber"] as! String
        }
        if dict.keys.contains("ConversationId") {
            self.conversationId = dict["ConversationId"] as! String
        }
        if dict.keys.contains("InitialContext") {
            self.initialContext = dict["InitialContext"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceOwnerId") {
            self.instanceOwnerId = dict["InstanceOwnerId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Action") {
            self.action = dict["Action"] as! String
        }
        if dict.keys.contains("ActionParams") {
            self.actionParams = dict["ActionParams"] as! String
        }
        if dict.keys.contains("Interruptible") {
            self.interruptible = dict["Interruptible"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TextResponse") {
            self.textResponse = dict["TextResponse"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BeginDialogueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalContext") {
            self.additionalContext = dict["AdditionalContext"] as! String
        }
        if dict.keys.contains("ConversationId") {
            self.conversationId = dict["ConversationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceOwnerId") {
            self.instanceOwnerId = dict["InstanceOwnerId"] as! Int64
        }
        if dict.keys.contains("Number") {
            self.number = dict["Number"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Action") {
            self.action = dict["Action"] as! String
        }
        if dict.keys.contains("ActionParams") {
            self.actionParams = dict["ActionParams"] as! String
        }
        if dict.keys.contains("Interruptible") {
            self.interruptible = dict["Interruptible"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TextResponse") {
            self.textResponse = dict["TextResponse"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CollectedNumberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownloadTaskId") {
            self.downloadTaskId = dict["DownloadTaskId"] as! String
        }
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("FileHttpUrl") {
            self.fileHttpUrl = dict["FileHttpUrl"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDownloadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Concurrency") {
            self.concurrency = dict["Concurrency"] as! Int64
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NluServiceParamsJson") {
            self.nluServiceParamsJson = dict["NluServiceParamsJson"] as! String
        }
        if dict.keys.contains("UnionInstanceId") {
            self.unionInstanceId = dict["UnionInstanceId"] as! String
        }
        if dict.keys.contains("UnionSource") {
            self.unionSource = dict["UnionSource"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalledNumber") {
            self.calledNumber = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("CallingNumber") {
            self.callingNumber = dict["CallingNumber"] as! String
        }
        if dict.keys.contains("ConversationId") {
            self.conversationId = dict["ConversationId"] as! String
        }
        if dict.keys.contains("InitialContext") {
            self.initialContext = dict["InitialContext"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Action") {
            self.action = dict["Action"] as! String
        }
        if dict.keys.contains("ActionParams") {
            self.actionParams = dict["ActionParams"] as! String
        }
        if dict.keys.contains("Interruptible") {
            self.interruptible = dict["Interruptible"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TextResponse") {
            self.textResponse = dict["TextResponse"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DebugBeginDialogueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConversationId") {
            self.conversationId = dict["ConversationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Number") {
            self.number = dict["Number"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Action") {
            self.action = dict["Action"] as! String
        }
        if dict.keys.contains("ActionParams") {
            self.actionParams = dict["ActionParams"] as! String
        }
        if dict.keys.contains("Interruptible") {
            self.interruptible = dict["Interruptible"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TextResponse") {
            self.textResponse = dict["TextResponse"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DebugCollectedNumberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalContext") {
            self.additionalContext = dict["AdditionalContext"] as! String
        }
        if dict.keys.contains("ConversationId") {
            self.conversationId = dict["ConversationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Utterance") {
            self.utterance = dict["Utterance"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Action") {
            self.action = dict["Action"] as! String
        }
        if dict.keys.contains("ActionParams") {
            self.actionParams = dict["ActionParams"] as! String
        }
        if dict.keys.contains("Interruptible") {
            self.interruptible = dict["Interruptible"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TextResponse") {
            self.textResponse = dict["TextResponse"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DebugDialogueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConversationId") {
            self.conversationId = dict["ConversationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CallingNumber") {
            self.callingNumber = dict["CallingNumber"] as! String
        }
        if dict.keys.contains("ConversationId") {
            self.conversationId = dict["ConversationId"] as! String
        }
        if dict.keys.contains("EffectiveAnswerCount") {
            self.effectiveAnswerCount = dict["EffectiveAnswerCount"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SkillGroupId") {
            self.skillGroupId = dict["SkillGroupId"] as! String
        }
        if dict.keys.contains("TransferredToAgent") {
            self.transferredToAgent = dict["TransferredToAgent"] as! Bool
        }
        if dict.keys.contains("UserUtteranceCount") {
            self.userUtteranceCount = dict["UserUtteranceCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeConversationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConversationId") {
            self.conversationId = dict["ConversationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConversationContext") {
            self.conversationContext = dict["ConversationContext"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeConversationContextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExportTaskId") {
            self.exportTaskId = dict["ExportTaskId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileHttpUrl") {
            self.fileHttpUrl = dict["FileHttpUrl"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeExportProgressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AbilityType") {
            self.abilityType = dict["AbilityType"] as! String
        }
        if dict.keys.contains("ApplicableOperations") {
            self.applicableOperations = dict["ApplicableOperations"] as! [String]
        }
        if dict.keys.contains("Concurrency") {
            self.concurrency = dict["Concurrency"] as! Int64
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! Int64
        }
        if dict.keys.contains("ModifyUserName") {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NluServiceParamsJson") {
            self.nluServiceParamsJson = dict["NluServiceParamsJson"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UnionInstanceId") {
            self.unionInstanceId = dict["UnionInstanceId"] as! String
        }
        if dict.keys.contains("UnionSource") {
            self.unionSource = dict["UnionSource"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GreetingWords") {
                self.greetingWords = dict["GreetingWords"] as! String
            }
            if dict.keys.contains("IntentTrigger") {
                self.intentTrigger = dict["IntentTrigger"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FinalAction") {
                self.finalAction = dict["FinalAction"] as! String
            }
            if dict.keys.contains("FinalActionParams") {
                self.finalActionParams = dict["FinalActionParams"] as! String
            }
            if dict.keys.contains("FinalPrompt") {
                self.finalPrompt = dict["FinalPrompt"] as! String
            }
            if dict.keys.contains("IntentTrigger") {
                self.intentTrigger = dict["IntentTrigger"] as! String
            }
            if dict.keys.contains("Prompt") {
                self.prompt = dict["Prompt"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Threshold") {
                self.threshold = dict["Threshold"] as! Int32
            }
            if dict.keys.contains("Timeout") {
                self.timeout = dict["Timeout"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FinalAction") {
                self.finalAction = dict["FinalAction"] as! String
            }
            if dict.keys.contains("FinalActionParams") {
                self.finalActionParams = dict["FinalActionParams"] as! String
            }
            if dict.keys.contains("FinalPrompt") {
                self.finalPrompt = dict["FinalPrompt"] as! String
            }
            if dict.keys.contains("Prompt") {
                self.prompt = dict["Prompt"] as! String
            }
            if dict.keys.contains("Threshold") {
                self.threshold = dict["Threshold"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GreetingConfig") {
            var model = DescribeNavigationConfigResponseBody.GreetingConfig()
            model.fromMap(dict["GreetingConfig"] as! [String: Any])
            self.greetingConfig = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SilenceTimeoutConfig") {
            var model = DescribeNavigationConfigResponseBody.SilenceTimeoutConfig()
            model.fromMap(dict["SilenceTimeoutConfig"] as! [String: Any])
            self.silenceTimeoutConfig = model
        }
        if dict.keys.contains("UnrecognizingConfig") {
            var model = DescribeNavigationConfigResponseBody.UnrecognizingConfig()
            model.fromMap(dict["UnrecognizingConfig"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeNavigationConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConversationId") {
            self.conversationId = dict["ConversationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NeedVoiceSliceRecording") {
            self.needVoiceSliceRecording = dict["NeedVoiceSliceRecording"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("FilePath") {
            self.filePath = dict["FilePath"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VoiceSliceRecordingListJson") {
            self.voiceSliceRecordingListJson = dict["VoiceSliceRecordingListJson"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRecordingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTimeLeftRange") {
            self.beginTimeLeftRange = dict["BeginTimeLeftRange"] as! Int64
        }
        if dict.keys.contains("BeginTimeRightRange") {
            self.beginTimeRightRange = dict["BeginTimeRightRange"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TimeUnit") {
            self.timeUnit = dict["TimeUnit"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DialoguePassRate") {
                self.dialoguePassRate = dict["DialoguePassRate"] as! String
            }
            if dict.keys.contains("KnowledgeHitRate") {
                self.knowledgeHitRate = dict["KnowledgeHitRate"] as! String
            }
            if dict.keys.contains("ResolutionRate") {
                self.resolutionRate = dict["ResolutionRate"] as! String
            }
            if dict.keys.contains("ResolvedQuestionNum") {
                self.resolvedQuestionNum = dict["ResolvedQuestionNum"] as! Int32
            }
            if dict.keys.contains("StatisticalDate") {
                self.statisticalDate = dict["StatisticalDate"] as! String
            }
            if dict.keys.contains("TotalConversationNum") {
                self.totalConversationNum = dict["TotalConversationNum"] as! Int32
            }
            if dict.keys.contains("ValidAnswerRate") {
                self.validAnswerRate = dict["ValidAnswerRate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConversationTotalNum") {
            self.conversationTotalNum = dict["ConversationTotalNum"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResolvedQuestionTotalNum") {
            self.resolvedQuestionTotalNum = dict["ResolvedQuestionTotalNum"] as! Int64
        }
        if dict.keys.contains("StatisticalDataReports") {
            var tmp : [DescribeStatisticalDataResponseBody.StatisticalDataReports] = []
            for v in dict["StatisticalDataReports"] as! [Any] {
                var model = DescribeStatisticalDataResponseBody.StatisticalDataReports()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.statisticalDataReports = tmp
        }
        if dict.keys.contains("TotalDialoguePassRate") {
            self.totalDialoguePassRate = dict["TotalDialoguePassRate"] as! String
        }
        if dict.keys.contains("TotalKnowledgeHitRate") {
            self.totalKnowledgeHitRate = dict["TotalKnowledgeHitRate"] as! String
        }
        if dict.keys.contains("TotalResolutionRate") {
            self.totalResolutionRate = dict["TotalResolutionRate"] as! String
        }
        if dict.keys.contains("TotalValidAnswerRate") {
            self.totalValidAnswerRate = dict["TotalValidAnswerRate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeStatisticalDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceOwnerId") {
            self.instanceOwnerId = dict["InstanceOwnerId"] as! Int64
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
        if self.voice != nil {
            map["Voice"] = self.voice!
        }
        if self.volume != nil {
            map["Volume"] = self.volume!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliCustomizedVoice") {
            self.aliCustomizedVoice = dict["AliCustomizedVoice"] as! String
        }
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineXunfei") {
            self.engineXunfei = dict["EngineXunfei"] as! String
        }
        if dict.keys.contains("NlsServiceType") {
            self.nlsServiceType = dict["NlsServiceType"] as! String
        }
        if dict.keys.contains("PitchRate") {
            self.pitchRate = dict["PitchRate"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SpeechRate") {
            self.speechRate = dict["SpeechRate"] as! Int32
        }
        if dict.keys.contains("Voice") {
            self.voice = dict["Voice"] as! String
        }
        if dict.keys.contains("Volume") {
            self.volume = dict["Volume"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTTSConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalContext") {
            self.additionalContext = dict["AdditionalContext"] as! String
        }
        if dict.keys.contains("CalledNumber") {
            self.calledNumber = dict["CalledNumber"] as! String
        }
        if dict.keys.contains("CallingNumber") {
            self.callingNumber = dict["CallingNumber"] as! String
        }
        if dict.keys.contains("ConversationId") {
            self.conversationId = dict["ConversationId"] as! String
        }
        if dict.keys.contains("Emotion") {
            self.emotion = dict["Emotion"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceOwnerId") {
            self.instanceOwnerId = dict["InstanceOwnerId"] as! Int64
        }
        if dict.keys.contains("Utterance") {
            self.utterance = dict["Utterance"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Action") {
            self.action = dict["Action"] as! String
        }
        if dict.keys.contains("ActionParams") {
            self.actionParams = dict["ActionParams"] as! String
        }
        if dict.keys.contains("Interruptible") {
            self.interruptible = dict["Interruptible"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TextResponse") {
            self.textResponse = dict["TextResponse"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DialogueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DisableInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnableInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConversationId") {
            self.conversationId = dict["ConversationId"] as! String
        }
        if dict.keys.contains("HangUpParams") {
            self.hangUpParams = dict["HangUpParams"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceOwnerId") {
            self.instanceOwnerId = dict["InstanceOwnerId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EndDialogueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportConversationDetailsRequest : Tea.TeaModel {
    public var beginTimeLeftRange: Int64?

    public var beginTimeRightRange: Int64?

    public var callingNumber: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTimeLeftRange") {
            self.beginTimeLeftRange = dict["BeginTimeLeftRange"] as! Int64
        }
        if dict.keys.contains("BeginTimeRightRange") {
            self.beginTimeRightRange = dict["BeginTimeRightRange"] as! Int64
        }
        if dict.keys.contains("CallingNumber") {
            self.callingNumber = dict["CallingNumber"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Options") {
            self.options = dict["Options"] as! [String]
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Int32
        }
        if dict.keys.contains("RoundsLeftRange") {
            self.roundsLeftRange = dict["RoundsLeftRange"] as! Int32
        }
        if dict.keys.contains("RoundsRightRange") {
            self.roundsRightRange = dict["RoundsRightRange"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExportTaskId") {
            self.exportTaskId = dict["ExportTaskId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ExportConversationDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTimeLeftRange") {
            self.beginTimeLeftRange = dict["BeginTimeLeftRange"] as! Int64
        }
        if dict.keys.contains("BeginTimeRightRange") {
            self.beginTimeRightRange = dict["BeginTimeRightRange"] as! Int64
        }
        if dict.keys.contains("ExportType") {
            self.exportType = dict["ExportType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TimeUnit") {
            self.timeUnit = dict["TimeUnit"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExportTaskId") {
            self.exportTaskId = dict["ExportTaskId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ExportStatisticalDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateUploadUrlRequest : Tea.TeaModel {
    public var callerBid: String?

    public var callerIp: String?

    public var callerParentId: Int64?

    public var callerType: String?

    public var callerUid: Int64?

    public var clientIp: String?

    public var environment: Int32?

    public var fileName: String?

    public var instanceId: String?

    public var instanceOwnerId: Int64?

    public var key: String?

    public var mfaPresent: Bool?

    public var proxyOriginalSecurityTransport: Bool?

    public var proxyOriginalSourceIp: String?

    public var proxyTrustTransportInfo: Bool?

    public var requestId: String?

    public var securityToken: String?

    public var securityTransport: Bool?

    public var tenantId: Int64?

    public var tenantName: String?

    public var userId: Int64?

    public var userName: String?

    public var xspaceServicerId: Int64?

    public var xspaceTenantBuId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callerBid != nil {
            map["CallerBid"] = self.callerBid!
        }
        if self.callerIp != nil {
            map["CallerIp"] = self.callerIp!
        }
        if self.callerParentId != nil {
            map["CallerParentId"] = self.callerParentId!
        }
        if self.callerType != nil {
            map["CallerType"] = self.callerType!
        }
        if self.callerUid != nil {
            map["CallerUid"] = self.callerUid!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceOwnerId != nil {
            map["InstanceOwnerId"] = self.instanceOwnerId!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.mfaPresent != nil {
            map["MfaPresent"] = self.mfaPresent!
        }
        if self.proxyOriginalSecurityTransport != nil {
            map["ProxyOriginalSecurityTransport"] = self.proxyOriginalSecurityTransport!
        }
        if self.proxyOriginalSourceIp != nil {
            map["ProxyOriginalSourceIp"] = self.proxyOriginalSourceIp!
        }
        if self.proxyTrustTransportInfo != nil {
            map["ProxyTrustTransportInfo"] = self.proxyTrustTransportInfo!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.securityTransport != nil {
            map["SecurityTransport"] = self.securityTransport!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.tenantName != nil {
            map["TenantName"] = self.tenantName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.xspaceServicerId != nil {
            map["XspaceServicerId"] = self.xspaceServicerId!
        }
        if self.xspaceTenantBuId != nil {
            map["XspaceTenantBuId"] = self.xspaceTenantBuId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallerBid") {
            self.callerBid = dict["CallerBid"] as! String
        }
        if dict.keys.contains("CallerIp") {
            self.callerIp = dict["CallerIp"] as! String
        }
        if dict.keys.contains("CallerParentId") {
            self.callerParentId = dict["CallerParentId"] as! Int64
        }
        if dict.keys.contains("CallerType") {
            self.callerType = dict["CallerType"] as! String
        }
        if dict.keys.contains("CallerUid") {
            self.callerUid = dict["CallerUid"] as! Int64
        }
        if dict.keys.contains("ClientIp") {
            self.clientIp = dict["ClientIp"] as! String
        }
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! Int32
        }
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceOwnerId") {
            self.instanceOwnerId = dict["InstanceOwnerId"] as! Int64
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("MfaPresent") {
            self.mfaPresent = dict["MfaPresent"] as! Bool
        }
        if dict.keys.contains("ProxyOriginalSecurityTransport") {
            self.proxyOriginalSecurityTransport = dict["ProxyOriginalSecurityTransport"] as! Bool
        }
        if dict.keys.contains("ProxyOriginalSourceIp") {
            self.proxyOriginalSourceIp = dict["ProxyOriginalSourceIp"] as! String
        }
        if dict.keys.contains("ProxyTrustTransportInfo") {
            self.proxyTrustTransportInfo = dict["ProxyTrustTransportInfo"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SecurityTransport") {
            self.securityTransport = dict["SecurityTransport"] as! Bool
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("TenantName") {
            self.tenantName = dict["TenantName"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! Int64
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("XspaceServicerId") {
            self.xspaceServicerId = dict["XspaceServicerId"] as! Int64
        }
        if dict.keys.contains("XspaceTenantBuId") {
            self.xspaceTenantBuId = dict["XspaceTenantBuId"] as! Int64
        }
    }
}

public class GenerateUploadUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessId: String?

        public var expire: Int32?

        public var folder: String?

        public var host: String?

        public var message: String?

        public var policy: String?

        public var signature: String?

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
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.expire != nil {
                map["Expire"] = self.expire!
            }
            if self.folder != nil {
                map["Folder"] = self.folder!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessId") {
                self.accessId = dict["AccessId"] as! String
            }
            if dict.keys.contains("Expire") {
                self.expire = dict["Expire"] as! Int32
            }
            if dict.keys.contains("Folder") {
                self.folder = dict["Folder"] as! String
            }
            if dict.keys.contains("Host") {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Policy") {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("Signature") {
                self.signature = dict["Signature"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: GenerateUploadUrlResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GenerateUploadUrlResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GenerateUploadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateUploadUrlResponseBody?

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
            var model = GenerateUploadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigLevel") {
            self.configLevel = dict["ConfigLevel"] as! Int32
        }
        if dict.keys.contains("EntryId") {
            self.entryId = dict["EntryId"] as! String
        }
    }
}

public class GetAsrConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var asrAcousticModelId: String?

        public var asrClassVocabularyId: String?

        public var asrCustomizationId: String?

        public var asrVocabularyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asrAcousticModelId != nil {
                map["AsrAcousticModelId"] = self.asrAcousticModelId!
            }
            if self.asrClassVocabularyId != nil {
                map["AsrClassVocabularyId"] = self.asrClassVocabularyId!
            }
            if self.asrCustomizationId != nil {
                map["AsrCustomizationId"] = self.asrCustomizationId!
            }
            if self.asrVocabularyId != nil {
                map["AsrVocabularyId"] = self.asrVocabularyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AsrAcousticModelId") {
                self.asrAcousticModelId = dict["AsrAcousticModelId"] as! String
            }
            if dict.keys.contains("AsrClassVocabularyId") {
                self.asrClassVocabularyId = dict["AsrClassVocabularyId"] as! String
            }
            if dict.keys.contains("AsrCustomizationId") {
                self.asrCustomizationId = dict["AsrCustomizationId"] as! String
            }
            if dict.keys.contains("AsrVocabularyId") {
                self.asrVocabularyId = dict["AsrVocabularyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetAsrConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAsrConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxConcurrency") {
            self.maxConcurrency = dict["MaxConcurrency"] as! Int64
        }
        if dict.keys.contains("RealTimeConcurrency") {
            self.realTimeConcurrency = dict["RealTimeConcurrency"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetRealTimeConcurrencyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NluServiceParamsJson") {
            self.nluServiceParamsJson = dict["NluServiceParamsJson"] as! String
        }
        if dict.keys.contains("NluServiceType") {
            self.nluServiceType = dict["NluServiceType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UnionSource") {
            self.unionSource = dict["UnionSource"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Avatar") {
                self.avatar = dict["Avatar"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Introduction") {
                self.introduction = dict["Introduction"] as! String
            }
            if dict.keys.contains("LanguageCode") {
                self.languageCode = dict["LanguageCode"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TimeZone") {
                self.timeZone = dict["TimeZone"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bots") {
            var tmp : [ListChatbotInstancesResponseBody.Bots] = []
            for v in dict["Bots"] as! [Any] {
                var model = ListChatbotInstancesResponseBody.Bots()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.bots = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListChatbotInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConversationId") {
            self.conversationId = dict["ConversationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("ActionParams") {
                self.actionParams = dict["ActionParams"] as! String
            }
            if dict.keys.contains("ConversationId") {
                self.conversationId = dict["ConversationId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("SequenceId") {
                self.sequenceId = dict["SequenceId"] as! String
            }
            if dict.keys.contains("Speaker") {
                self.speaker = dict["Speaker"] as! String
            }
            if dict.keys.contains("Utterance") {
                self.utterance = dict["Utterance"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConversationDetails") {
            var tmp : [ListConversationDetailsResponseBody.ConversationDetails] = []
            for v in dict["ConversationDetails"] as! [Any] {
                var model = ListConversationDetailsResponseBody.ConversationDetails()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conversationDetails = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListConversationDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConversationsRequest : Tea.TeaModel {
    public var beginTimeLeftRange: Int64?

    public var beginTimeRightRange: Int64?

    public var callingNumber: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTimeLeftRange") {
            self.beginTimeLeftRange = dict["BeginTimeLeftRange"] as! Int64
        }
        if dict.keys.contains("BeginTimeRightRange") {
            self.beginTimeRightRange = dict["BeginTimeRightRange"] as! Int64
        }
        if dict.keys.contains("CallingNumber") {
            self.callingNumber = dict["CallingNumber"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsSandBox") {
            self.isSandBox = dict["IsSandBox"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Int64
        }
        if dict.keys.contains("RoundsLeftRange") {
            self.roundsLeftRange = dict["RoundsLeftRange"] as! Int32
        }
        if dict.keys.contains("RoundsRightRange") {
            self.roundsRightRange = dict["RoundsRightRange"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CalledNumber") {
                self.calledNumber = dict["CalledNumber"] as! String
            }
            if dict.keys.contains("CallingNumber") {
                self.callingNumber = dict["CallingNumber"] as! String
            }
            if dict.keys.contains("ConversationId") {
                self.conversationId = dict["ConversationId"] as! String
            }
            if dict.keys.contains("DsReport") {
                self.dsReport = dict["DsReport"] as! String
            }
            if dict.keys.contains("DsReportTitles") {
                self.dsReportTitles = dict["DsReportTitles"] as! [String]
            }
            if dict.keys.contains("EndReason") {
                self.endReason = dict["EndReason"] as! Int32
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("HasLastPlaybackCompleted") {
                self.hasLastPlaybackCompleted = dict["HasLastPlaybackCompleted"] as! Bool
            }
            if dict.keys.contains("HasToAgent") {
                self.hasToAgent = dict["HasToAgent"] as! Bool
            }
            if dict.keys.contains("Rounds") {
                self.rounds = dict["Rounds"] as! Int32
            }
            if dict.keys.contains("SandBox") {
                self.sandBox = dict["SandBox"] as! Bool
            }
            if dict.keys.contains("SkillGroup") {
                self.skillGroup = dict["SkillGroup"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Conversations") {
            var tmp : [ListConversationsResponseBody.Conversations] = []
            for v in dict["Conversations"] as! [Any] {
                var model = ListConversationsResponseBody.Conversations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conversations = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListConversationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FileId") {
                        self.fileId = dict["FileId"] as! String
                    }
                    if dict.keys.contains("Progress") {
                        self.progress = dict["Progress"] as! Int32
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DownloadTaskFiles") {
                    var tmp : [ListDownloadTasksResponseBody.DownloadTasks.List.DownloadTaskFiles] = []
                    for v in dict["DownloadTaskFiles"] as! [Any] {
                        var model = ListDownloadTasksResponseBody.DownloadTasks.List.DownloadTaskFiles()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.downloadTaskFiles = tmp
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") {
                var tmp : [ListDownloadTasksResponseBody.DownloadTasks.List] = []
                for v in dict["List"] as! [Any] {
                    var model = ListDownloadTasksResponseBody.DownloadTasks.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DownloadTasks") {
            var model = ListDownloadTasksResponseBody.DownloadTasks()
            model.fromMap(dict["DownloadTasks"] as! [String: Any])
            self.downloadTasks = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDownloadTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIdListJsonString") {
            self.instanceIdListJsonString = dict["InstanceIdListJsonString"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NluServiceTypeListJsonString") {
            self.nluServiceTypeListJsonString = dict["NluServiceTypeListJsonString"] as! String
        }
        if dict.keys.contains("Number") {
            self.number = dict["Number"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UnionInstanceId") {
            self.unionInstanceId = dict["UnionInstanceId"] as! String
        }
        if dict.keys.contains("UnionSource") {
            self.unionSource = dict["UnionSource"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicableOperations") {
                self.applicableOperations = dict["ApplicableOperations"] as! [String]
            }
            if dict.keys.contains("Concurrency") {
                self.concurrency = dict["Concurrency"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! Int64
            }
            if dict.keys.contains("ModifyUserName") {
                self.modifyUserName = dict["ModifyUserName"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NluServiceParamsJson") {
                self.nluServiceParamsJson = dict["NluServiceParamsJson"] as! String
            }
            if dict.keys.contains("Numbers") {
                self.numbers = dict["Numbers"] as! [String]
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UnionInstanceId") {
                self.unionInstanceId = dict["UnionInstanceId"] as! String
            }
            if dict.keys.contains("UnionSource") {
                self.unionSource = dict["UnionSource"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") {
            var tmp : [ListInstancesResponseBody.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = ListInstancesResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAsrConfigRequest : Tea.TeaModel {
    public var asrAcousticModelId: String?

    public var asrClassVocabularyId: String?

    public var asrCustomizationId: String?

    public var asrVocabularyId: String?

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
        if self.asrAcousticModelId != nil {
            map["AsrAcousticModelId"] = self.asrAcousticModelId!
        }
        if self.asrClassVocabularyId != nil {
            map["AsrClassVocabularyId"] = self.asrClassVocabularyId!
        }
        if self.asrCustomizationId != nil {
            map["AsrCustomizationId"] = self.asrCustomizationId!
        }
        if self.asrVocabularyId != nil {
            map["AsrVocabularyId"] = self.asrVocabularyId!
        }
        if self.configLevel != nil {
            map["ConfigLevel"] = self.configLevel!
        }
        if self.entryId != nil {
            map["EntryId"] = self.entryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AsrAcousticModelId") {
            self.asrAcousticModelId = dict["AsrAcousticModelId"] as! String
        }
        if dict.keys.contains("AsrClassVocabularyId") {
            self.asrClassVocabularyId = dict["AsrClassVocabularyId"] as! String
        }
        if dict.keys.contains("AsrCustomizationId") {
            self.asrCustomizationId = dict["AsrCustomizationId"] as! String
        }
        if dict.keys.contains("AsrVocabularyId") {
            self.asrVocabularyId = dict["AsrVocabularyId"] as! String
        }
        if dict.keys.contains("ConfigLevel") {
            self.configLevel = dict["ConfigLevel"] as! Int32
        }
        if dict.keys.contains("EntryId") {
            self.entryId = dict["EntryId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AffectedRows") {
                self.affectedRows = dict["AffectedRows"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ModifyAsrConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyAsrConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GreetingWords") {
            self.greetingWords = dict["GreetingWords"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentTrigger") {
            self.intentTrigger = dict["IntentTrigger"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyGreetingConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Concurrency") {
            self.concurrency = dict["Concurrency"] as! Int64
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FinalAction") {
            self.finalAction = dict["FinalAction"] as! String
        }
        if dict.keys.contains("FinalActionParams") {
            self.finalActionParams = dict["FinalActionParams"] as! String
        }
        if dict.keys.contains("FinalPrompt") {
            self.finalPrompt = dict["FinalPrompt"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentTrigger") {
            self.intentTrigger = dict["IntentTrigger"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Threshold") {
            self.threshold = dict["Threshold"] as! Int32
        }
        if dict.keys.contains("Timeout") {
            self.timeout = dict["Timeout"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifySilenceTimeoutConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public var speechRate: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliCustomizedVoice") {
            self.aliCustomizedVoice = dict["AliCustomizedVoice"] as! String
        }
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineXunfei") {
            self.engineXunfei = dict["EngineXunfei"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NlsServiceType") {
            self.nlsServiceType = dict["NlsServiceType"] as! String
        }
        if dict.keys.contains("SpeechRate") {
            self.speechRate = dict["SpeechRate"] as! String
        }
        if dict.keys.contains("Voice") {
            self.voice = dict["Voice"] as! String
        }
        if dict.keys.contains("Volume") {
            self.volume = dict["Volume"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyTTSConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FinalAction") {
            self.finalAction = dict["FinalAction"] as! String
        }
        if dict.keys.contains("FinalActionParams") {
            self.finalActionParams = dict["FinalActionParams"] as! String
        }
        if dict.keys.contains("FinalPrompt") {
            self.finalPrompt = dict["FinalPrompt"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("Threshold") {
            self.threshold = dict["Threshold"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyUnrecognizingConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTimeLeftRange") {
            self.beginTimeLeftRange = dict["BeginTimeLeftRange"] as! Int64
        }
        if dict.keys.contains("BeginTimeRightRange") {
            self.beginTimeRightRange = dict["BeginTimeRightRange"] as! Int64
        }
        if dict.keys.contains("CallingNumber") {
            self.callingNumber = dict["CallingNumber"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginTime") {
                self.beginTime = dict["BeginTime"] as! Int64
            }
            if dict.keys.contains("CallingNumber") {
                self.callingNumber = dict["CallingNumber"] as! String
            }
            if dict.keys.contains("ConversationId") {
                self.conversationId = dict["ConversationId"] as! String
            }
            if dict.keys.contains("EffectiveAnswerCount") {
                self.effectiveAnswerCount = dict["EffectiveAnswerCount"] as! Int32
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("SkillGroupId") {
                self.skillGroupId = dict["SkillGroupId"] as! String
            }
            if dict.keys.contains("TransferredToAgent") {
                self.transferredToAgent = dict["TransferredToAgent"] as! Bool
            }
            if dict.keys.contains("UserUtteranceCount") {
                self.userUtteranceCount = dict["UserUtteranceCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Conversations") {
            var tmp : [QueryConversationsResponseBody.Conversations] = []
            for v in dict["Conversations"] as! [Any] {
                var model = QueryConversationsResponseBody.Conversations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conversations = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryConversationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConversationId") {
            self.conversationId = dict["ConversationId"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("FilePath") {
            self.filePath = dict["FilePath"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceOwnerId") {
            self.instanceOwnerId = dict["InstanceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("VoiceSliceRecordingList") {
            self.voiceSliceRecordingList = dict["VoiceSliceRecordingList"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveRecordingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConversationId") {
            self.conversationId = dict["ConversationId"] as! String
        }
        if dict.keys.contains("InitialContext") {
            self.initialContext = dict["InitialContext"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceOwnerId") {
            self.instanceOwnerId = dict["InstanceOwnerId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Action") {
            self.action = dict["Action"] as! String
        }
        if dict.keys.contains("ActionParams") {
            self.actionParams = dict["ActionParams"] as! String
        }
        if dict.keys.contains("Interruptible") {
            self.interruptible = dict["Interruptible"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TextResponse") {
            self.textResponse = dict["TextResponse"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SilenceTimeoutResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
