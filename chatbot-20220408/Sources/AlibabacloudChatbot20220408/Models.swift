import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ApplyForStreamAccessTokenRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
    }
}

public class ApplyForStreamAccessTokenResponseBody : Tea.TeaModel {
    public var accessToken: String?

    public var channelId: String?

    public var requestId: String?

    public var streamSecret: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.streamSecret != nil {
            map["StreamSecret"] = self.streamSecret!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessToken"] as? String {
            self.accessToken = value
        }
        if let value = dict["ChannelId"] as? String {
            self.channelId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StreamSecret"] as? String {
            self.streamSecret = value
        }
    }
}

public class ApplyForStreamAccessTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyForStreamAccessTokenResponseBody?

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
            var model = ApplyForStreamAccessTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AssociateRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var perspective: [String]?

    public var recommendNum: Int64?

    public var sessionId: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.perspective != nil {
            map["Perspective"] = self.perspective!
        }
        if self.recommendNum != nil {
            map["RecommendNum"] = self.recommendNum!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.utterance != nil {
            map["Utterance"] = self.utterance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Perspective"] as? [String] {
            self.perspective = value
        }
        if let value = dict["RecommendNum"] as? Int64 {
            self.recommendNum = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Utterance"] as? String {
            self.utterance = value
        }
    }
}

public class AssociateShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var perspectiveShrink: String?

    public var recommendNum: Int64?

    public var sessionId: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.perspectiveShrink != nil {
            map["Perspective"] = self.perspectiveShrink!
        }
        if self.recommendNum != nil {
            map["RecommendNum"] = self.recommendNum!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.utterance != nil {
            map["Utterance"] = self.utterance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Perspective"] as? String {
            self.perspectiveShrink = value
        }
        if let value = dict["RecommendNum"] as? Int64 {
            self.recommendNum = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Utterance"] as? String {
            self.utterance = value
        }
    }
}

public class AssociateResponseBody : Tea.TeaModel {
    public class Associate : Tea.TeaModel {
        public var meta: String?

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
            if self.meta != nil {
                map["Meta"] = self.meta!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Meta"] as? String {
                self.meta = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var associate: [AssociateResponseBody.Associate]?

    public var messageId: String?

    public var requestId: String?

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
        if self.associate != nil {
            var tmp : [Any] = []
            for k in self.associate! {
                tmp.append(k.toMap())
            }
            map["Associate"] = tmp
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Associate"] as? [Any?] {
            var tmp : [AssociateResponseBody.Associate] = []
            for v in value {
                if v != nil {
                    var model = AssociateResponseBody.Associate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.associate = tmp
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class AssociateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateResponseBody?

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
            var model = AssociateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BeginSessionRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var sandBox: Bool?

    public var vendorParam: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.sandBox != nil {
            map["SandBox"] = self.sandBox!
        }
        if self.vendorParam != nil {
            map["VendorParam"] = self.vendorParam!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SandBox"] as? Bool {
            self.sandBox = value
        }
        if let value = dict["VendorParam"] as? String {
            self.vendorParam = value
        }
    }
}

public class BeginSessionResponseBody : Tea.TeaModel {
    public var asrMaxEndSilence: Int32?

    public var interruptible: Bool?

    public var requestId: String?

    public var silenceReplyTimeout: Int32?

    public var welcomeMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asrMaxEndSilence != nil {
            map["AsrMaxEndSilence"] = self.asrMaxEndSilence!
        }
        if self.interruptible != nil {
            map["Interruptible"] = self.interruptible!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.silenceReplyTimeout != nil {
            map["SilenceReplyTimeout"] = self.silenceReplyTimeout!
        }
        if self.welcomeMessage != nil {
            map["WelcomeMessage"] = self.welcomeMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AsrMaxEndSilence"] as? Int32 {
            self.asrMaxEndSilence = value
        }
        if let value = dict["Interruptible"] as? Bool {
            self.interruptible = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SilenceReplyTimeout"] as? Int32 {
            self.silenceReplyTimeout = value
        }
        if let value = dict["WelcomeMessage"] as? String {
            self.welcomeMessage = value
        }
    }
}

public class BeginSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BeginSessionResponseBody?

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
            var model = BeginSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelInstancePublishTaskRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CancelInstancePublishTaskResponseBody : Tea.TeaModel {
    public var bizTypeList: [String]?

    public var createTime: String?

    public var error: String?

    public var id: Int64?

    public var modifyTime: String?

    public var requestId: String?

    public var response: String?

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
        if self.bizTypeList != nil {
            map["BizTypeList"] = self.bizTypeList!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizTypeList"] as? [String] {
            self.bizTypeList = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? String {
            self.response = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CancelInstancePublishTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelInstancePublishTaskResponseBody?

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
            var model = CancelInstancePublishTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelPublishTaskRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class CancelPublishTaskResponseBody : Tea.TeaModel {
    public var bizTypeList: [String]?

    public var createTime: String?

    public var error: String?

    public var id: Int64?

    public var modifyTime: String?

    public var requestId: String?

    public var response: String?

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
        if self.bizTypeList != nil {
            map["BizTypeList"] = self.bizTypeList!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizTypeList"] as? [String] {
            self.bizTypeList = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? String {
            self.response = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CancelPublishTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelPublishTaskResponseBody?

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
            var model = CancelPublishTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var intentName: String?

    public var knowledgeId: String?

    public var perspective: [String]?

    public var sandBox: Bool?

    public var senderId: String?

    public var senderNick: String?

    public var sessionId: String?

    public var utterance: String?

    public var vendorParam: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentName != nil {
            map["IntentName"] = self.intentName!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.perspective != nil {
            map["Perspective"] = self.perspective!
        }
        if self.sandBox != nil {
            map["SandBox"] = self.sandBox!
        }
        if self.senderId != nil {
            map["SenderId"] = self.senderId!
        }
        if self.senderNick != nil {
            map["SenderNick"] = self.senderNick!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.utterance != nil {
            map["Utterance"] = self.utterance!
        }
        if self.vendorParam != nil {
            map["VendorParam"] = self.vendorParam!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentName"] as? String {
            self.intentName = value
        }
        if let value = dict["KnowledgeId"] as? String {
            self.knowledgeId = value
        }
        if let value = dict["Perspective"] as? [String] {
            self.perspective = value
        }
        if let value = dict["SandBox"] as? Bool {
            self.sandBox = value
        }
        if let value = dict["SenderId"] as? String {
            self.senderId = value
        }
        if let value = dict["SenderNick"] as? String {
            self.senderNick = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Utterance"] as? String {
            self.utterance = value
        }
        if let value = dict["VendorParam"] as? String {
            self.vendorParam = value
        }
    }
}

public class ChatShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var intentName: String?

    public var knowledgeId: String?

    public var perspectiveShrink: String?

    public var sandBox: Bool?

    public var senderId: String?

    public var senderNick: String?

    public var sessionId: String?

    public var utterance: String?

    public var vendorParam: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentName != nil {
            map["IntentName"] = self.intentName!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.perspectiveShrink != nil {
            map["Perspective"] = self.perspectiveShrink!
        }
        if self.sandBox != nil {
            map["SandBox"] = self.sandBox!
        }
        if self.senderId != nil {
            map["SenderId"] = self.senderId!
        }
        if self.senderNick != nil {
            map["SenderNick"] = self.senderNick!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.utterance != nil {
            map["Utterance"] = self.utterance!
        }
        if self.vendorParam != nil {
            map["VendorParam"] = self.vendorParam!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentName"] as? String {
            self.intentName = value
        }
        if let value = dict["KnowledgeId"] as? String {
            self.knowledgeId = value
        }
        if let value = dict["Perspective"] as? String {
            self.perspectiveShrink = value
        }
        if let value = dict["SandBox"] as? Bool {
            self.sandBox = value
        }
        if let value = dict["SenderId"] as? String {
            self.senderId = value
        }
        if let value = dict["SenderNick"] as? String {
            self.senderNick = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Utterance"] as? String {
            self.utterance = value
        }
        if let value = dict["VendorParam"] as? String {
            self.vendorParam = value
        }
    }
}

public class ChatResponseBody : Tea.TeaModel {
    public class Messages : Tea.TeaModel {
        public class Knowledge : Tea.TeaModel {
            public class RelatedKnowledges : Tea.TeaModel {
                public var knowledgeId: String?

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
                    if self.knowledgeId != nil {
                        map["KnowledgeId"] = self.knowledgeId!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["KnowledgeId"] as? String {
                        self.knowledgeId = value
                    }
                    if let value = dict["Title"] as? String {
                        self.title = value
                    }
                }
            }
            public var answerSource: String?

            public var category: String?

            public var content: String?

            public var contentType: String?

            public var hitStatement: String?

            public var id: String?

            public var relatedKnowledges: [ChatResponseBody.Messages.Knowledge.RelatedKnowledges]?

            public var score: Double?

            public var summary: String?

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
                if self.answerSource != nil {
                    map["AnswerSource"] = self.answerSource!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.contentType != nil {
                    map["ContentType"] = self.contentType!
                }
                if self.hitStatement != nil {
                    map["HitStatement"] = self.hitStatement!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.relatedKnowledges != nil {
                    var tmp : [Any] = []
                    for k in self.relatedKnowledges! {
                        tmp.append(k.toMap())
                    }
                    map["RelatedKnowledges"] = tmp
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AnswerSource"] as? String {
                    self.answerSource = value
                }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["ContentType"] as? String {
                    self.contentType = value
                }
                if let value = dict["HitStatement"] as? String {
                    self.hitStatement = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["RelatedKnowledges"] as? [Any?] {
                    var tmp : [ChatResponseBody.Messages.Knowledge.RelatedKnowledges] = []
                    for v in value {
                        if v != nil {
                            var model = ChatResponseBody.Messages.Knowledge.RelatedKnowledges()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.relatedKnowledges = tmp
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["Summary"] as? String {
                    self.summary = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
            }
        }
        public class Recommends : Tea.TeaModel {
            public var answerSource: String?

            public var knowledgeId: String?

            public var score: Double?

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
                if self.answerSource != nil {
                    map["AnswerSource"] = self.answerSource!
                }
                if self.knowledgeId != nil {
                    map["KnowledgeId"] = self.knowledgeId!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AnswerSource"] as? String {
                    self.answerSource = value
                }
                if let value = dict["KnowledgeId"] as? String {
                    self.knowledgeId = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
            }
        }
        public class Text : Tea.TeaModel {
            public class Slots : Tea.TeaModel {
                public var hit: Bool?

                public var name: String?

                public var origin: String?

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
                    if self.hit != nil {
                        map["Hit"] = self.hit!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.origin != nil {
                        map["Origin"] = self.origin!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Hit"] as? Bool {
                        self.hit = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Origin"] as? String {
                        self.origin = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public var answerSource: String?

            public var articleTitle: String?

            public var commands: [String: Any]?

            public var content: String?

            public var contentType: String?

            public var dialogName: String?

            public var ext: [String: Any]?

            public var externalFlags: [String: Any]?

            public var hitStatement: String?

            public var intentName: String?

            public var metaData: String?

            public var nodeId: String?

            public var nodeName: String?

            public var responseType: String?

            public var score: Double?

            public var slots: [ChatResponseBody.Messages.Text.Slots]?

            public var userDefinedChatTitle: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerSource != nil {
                    map["AnswerSource"] = self.answerSource!
                }
                if self.articleTitle != nil {
                    map["ArticleTitle"] = self.articleTitle!
                }
                if self.commands != nil {
                    map["Commands"] = self.commands!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.contentType != nil {
                    map["ContentType"] = self.contentType!
                }
                if self.dialogName != nil {
                    map["DialogName"] = self.dialogName!
                }
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.externalFlags != nil {
                    map["ExternalFlags"] = self.externalFlags!
                }
                if self.hitStatement != nil {
                    map["HitStatement"] = self.hitStatement!
                }
                if self.intentName != nil {
                    map["IntentName"] = self.intentName!
                }
                if self.metaData != nil {
                    map["MetaData"] = self.metaData!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                if self.responseType != nil {
                    map["ResponseType"] = self.responseType!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.slots != nil {
                    var tmp : [Any] = []
                    for k in self.slots! {
                        tmp.append(k.toMap())
                    }
                    map["Slots"] = tmp
                }
                if self.userDefinedChatTitle != nil {
                    map["UserDefinedChatTitle"] = self.userDefinedChatTitle!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AnswerSource"] as? String {
                    self.answerSource = value
                }
                if let value = dict["ArticleTitle"] as? String {
                    self.articleTitle = value
                }
                if let value = dict["Commands"] as? [String: Any] {
                    self.commands = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["ContentType"] as? String {
                    self.contentType = value
                }
                if let value = dict["DialogName"] as? String {
                    self.dialogName = value
                }
                if let value = dict["Ext"] as? [String: Any] {
                    self.ext = value
                }
                if let value = dict["ExternalFlags"] as? [String: Any] {
                    self.externalFlags = value
                }
                if let value = dict["HitStatement"] as? String {
                    self.hitStatement = value
                }
                if let value = dict["IntentName"] as? String {
                    self.intentName = value
                }
                if let value = dict["MetaData"] as? String {
                    self.metaData = value
                }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
                }
                if let value = dict["NodeName"] as? String {
                    self.nodeName = value
                }
                if let value = dict["ResponseType"] as? String {
                    self.responseType = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["Slots"] as? [Any?] {
                    var tmp : [ChatResponseBody.Messages.Text.Slots] = []
                    for v in value {
                        if v != nil {
                            var model = ChatResponseBody.Messages.Text.Slots()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.slots = tmp
                }
                if let value = dict["UserDefinedChatTitle"] as? String {
                    self.userDefinedChatTitle = value
                }
            }
        }
        public var answerSource: String?

        public var answerType: String?

        public var knowledge: ChatResponseBody.Messages.Knowledge?

        public var recommends: [ChatResponseBody.Messages.Recommends]?

        public var text: ChatResponseBody.Messages.Text?

        public var title: String?

        public var voiceTitle: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.knowledge?.validate()
            try self.text?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answerSource != nil {
                map["AnswerSource"] = self.answerSource!
            }
            if self.answerType != nil {
                map["AnswerType"] = self.answerType!
            }
            if self.knowledge != nil {
                map["Knowledge"] = self.knowledge?.toMap()
            }
            if self.recommends != nil {
                var tmp : [Any] = []
                for k in self.recommends! {
                    tmp.append(k.toMap())
                }
                map["Recommends"] = tmp
            }
            if self.text != nil {
                map["Text"] = self.text?.toMap()
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.voiceTitle != nil {
                map["VoiceTitle"] = self.voiceTitle!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnswerSource"] as? String {
                self.answerSource = value
            }
            if let value = dict["AnswerType"] as? String {
                self.answerType = value
            }
            if let value = dict["Knowledge"] as? [String: Any?] {
                var model = ChatResponseBody.Messages.Knowledge()
                model.fromMap(value)
                self.knowledge = model
            }
            if let value = dict["Recommends"] as? [Any?] {
                var tmp : [ChatResponseBody.Messages.Recommends] = []
                for v in value {
                    if v != nil {
                        var model = ChatResponseBody.Messages.Recommends()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.recommends = tmp
            }
            if let value = dict["Text"] as? [String: Any?] {
                var model = ChatResponseBody.Messages.Text()
                model.fromMap(value)
                self.text = model
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["VoiceTitle"] as? String {
                self.voiceTitle = value
            }
        }
    }
    public var messageId: String?

    public var messages: [ChatResponseBody.Messages]?

    public var querySegList: [String]?

    public var requestId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["Messages"] = tmp
        }
        if self.querySegList != nil {
            map["QuerySegList"] = self.querySegList!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["Messages"] as? [Any?] {
            var tmp : [ChatResponseBody.Messages] = []
            for v in value {
                if v != nil {
                    var model = ChatResponseBody.Messages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messages = tmp
        }
        if let value = dict["QuerySegList"] as? [String] {
            self.querySegList = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class ChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatResponseBody?

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
            var model = ChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ContinueInstancePublishTaskRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ContinueInstancePublishTaskResponseBody : Tea.TeaModel {
    public var bizTypeList: [String]?

    public var createTime: String?

    public var error: String?

    public var errors: [String: Any]?

    public var id: Int64?

    public var modifyTime: String?

    public var requestId: String?

    public var response: String?

    public var status: String?

    public var warnings: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTypeList != nil {
            map["BizTypeList"] = self.bizTypeList!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.errors != nil {
            map["Errors"] = self.errors!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.warnings != nil {
            map["Warnings"] = self.warnings!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizTypeList"] as? [String] {
            self.bizTypeList = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Errors"] as? [String: Any] {
            self.errors = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? String {
            self.response = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Warnings"] as? [String: Any] {
            self.warnings = value
        }
    }
}

public class ContinueInstancePublishTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContinueInstancePublishTaskResponseBody?

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
            var model = ContinueInstancePublishTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCategoryRequest : Tea.TeaModel {
    public var agentKey: String?

    public var bizCode: String?

    public var knowledgeType: Int32?

    public var name: String?

    public var parentCategoryId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.knowledgeType != nil {
            map["KnowledgeType"] = self.knowledgeType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentCategoryId != nil {
            map["ParentCategoryId"] = self.parentCategoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["KnowledgeType"] as? Int32 {
            self.knowledgeType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ParentCategoryId"] as? Int64 {
            self.parentCategoryId = value
        }
    }
}

public class CreateCategoryResponseBody : Tea.TeaModel {
    public class Category : Tea.TeaModel {
        public var bizCode: String?

        public var categoryId: Int64?

        public var name: String?

        public var parentCategoryId: Int64?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentCategoryId != nil {
                map["ParentCategoryId"] = self.parentCategoryId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParentCategoryId"] as? Int64 {
                self.parentCategoryId = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var category: CreateCategoryResponseBody.Category?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.category?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? [String: Any?] {
            var model = CreateCategoryResponseBody.Category()
            model.fromMap(value)
            self.category = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCategoryResponseBody?

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
            var model = CreateCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateConnQuestionRequest : Tea.TeaModel {
    public var agentKey: String?

    public var connQuestionId: Int64?

    public var knowledgeId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.connQuestionId != nil {
            map["ConnQuestionId"] = self.connQuestionId!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["ConnQuestionId"] as? Int64 {
            self.connQuestionId = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
    }
}

public class CreateConnQuestionResponseBody : Tea.TeaModel {
    public var outlineId: Int64?

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
        if self.outlineId != nil {
            map["OutlineId"] = self.outlineId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OutlineId"] as? Int64 {
            self.outlineId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateConnQuestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConnQuestionResponseBody?

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
            var model = CreateConnQuestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDSEntityRequest : Tea.TeaModel {
    public var agentKey: String?

    public var entityName: String?

    public var entityType: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["EntityName"] as? String {
            self.entityName = value
        }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CreateDSEntityResponseBody : Tea.TeaModel {
    public var entityId: Int64?

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
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDSEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDSEntityResponseBody?

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
            var model = CreateDSEntityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDSEntityValueRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var entityId: Int64?

    public var instanceId: String?

    public var synonyms: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.synonyms != nil {
            map["Synonyms"] = self.synonyms!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Synonyms"] as? [String] {
            self.synonyms = value
        }
    }
}

public class CreateDSEntityValueShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var entityId: Int64?

    public var instanceId: String?

    public var synonymsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.synonymsShrink != nil {
            map["Synonyms"] = self.synonymsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Synonyms"] as? String {
            self.synonymsShrink = value
        }
    }
}

public class CreateDSEntityValueResponseBody : Tea.TeaModel {
    public var entityValueId: Int64?

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
        if self.entityValueId != nil {
            map["EntityValueId"] = self.entityValueId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntityValueId"] as? Int64 {
            self.entityValueId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDSEntityValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDSEntityValueResponseBody?

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
            var model = CreateDSEntityValueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDocRequest : Tea.TeaModel {
    public class DocMetadata : Tea.TeaModel {
        public class MetaCellInfoDTOList : Tea.TeaModel {
            public var fieldCode: String?

            public var fieldName: String?

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
                if self.fieldCode != nil {
                    map["FieldCode"] = self.fieldCode!
                }
                if self.fieldName != nil {
                    map["FieldName"] = self.fieldName!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FieldCode"] as? String {
                    self.fieldCode = value
                }
                if let value = dict["FieldName"] as? String {
                    self.fieldName = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var businessViewId: String?

        public var businessViewName: String?

        public var metaCellInfoDTOList: [CreateDocRequest.DocMetadata.MetaCellInfoDTOList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessViewId != nil {
                map["BusinessViewId"] = self.businessViewId!
            }
            if self.businessViewName != nil {
                map["BusinessViewName"] = self.businessViewName!
            }
            if self.metaCellInfoDTOList != nil {
                var tmp : [Any] = []
                for k in self.metaCellInfoDTOList! {
                    tmp.append(k.toMap())
                }
                map["MetaCellInfoDTOList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BusinessViewId"] as? String {
                self.businessViewId = value
            }
            if let value = dict["BusinessViewName"] as? String {
                self.businessViewName = value
            }
            if let value = dict["MetaCellInfoDTOList"] as? [Any?] {
                var tmp : [CreateDocRequest.DocMetadata.MetaCellInfoDTOList] = []
                for v in value {
                    if v != nil {
                        var model = CreateDocRequest.DocMetadata.MetaCellInfoDTOList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.metaCellInfoDTOList = tmp
            }
        }
    }
    public var agentKey: String?

    public var categoryId: Int64?

    public var config: String?

    public var content: String?

    public var docMetadata: [CreateDocRequest.DocMetadata]?

    public var endDate: String?

    public var meta: String?

    public var startDate: String?

    public var tagIds: [Int64]?

    public var title: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.docMetadata != nil {
            var tmp : [Any] = []
            for k in self.docMetadata! {
                tmp.append(k.toMap())
            }
            map["DocMetadata"] = tmp
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.meta != nil {
            map["Meta"] = self.meta!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["DocMetadata"] as? [Any?] {
            var tmp : [CreateDocRequest.DocMetadata] = []
            for v in value {
                if v != nil {
                    var model = CreateDocRequest.DocMetadata()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.docMetadata = tmp
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["Meta"] as? String {
            self.meta = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TagIds"] as? [Int64] {
            self.tagIds = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class CreateDocShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryId: Int64?

    public var config: String?

    public var content: String?

    public var docMetadataShrink: String?

    public var endDate: String?

    public var meta: String?

    public var startDate: String?

    public var tagIdsShrink: String?

    public var title: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.docMetadataShrink != nil {
            map["DocMetadata"] = self.docMetadataShrink!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.meta != nil {
            map["Meta"] = self.meta!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.tagIdsShrink != nil {
            map["TagIds"] = self.tagIdsShrink!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["DocMetadata"] as? String {
            self.docMetadataShrink = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["Meta"] as? String {
            self.meta = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TagIds"] as? String {
            self.tagIdsShrink = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class CreateDocResponseBody : Tea.TeaModel {
    public var knowledgeId: Int64?

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
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDocResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDocResponseBody?

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
            var model = CreateDocResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFaqRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryId: Int64?

    public var endDate: String?

    public var solutionContent: String?

    public var solutionType: Int32?

    public var startDate: String?

    public var tagIdList: [Int64]?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.solutionContent != nil {
            map["SolutionContent"] = self.solutionContent!
        }
        if self.solutionType != nil {
            map["SolutionType"] = self.solutionType!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.tagIdList != nil {
            map["TagIdList"] = self.tagIdList!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["SolutionContent"] as? String {
            self.solutionContent = value
        }
        if let value = dict["SolutionType"] as? Int32 {
            self.solutionType = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TagIdList"] as? [Int64] {
            self.tagIdList = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class CreateFaqShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryId: Int64?

    public var endDate: String?

    public var solutionContent: String?

    public var solutionType: Int32?

    public var startDate: String?

    public var tagIdListShrink: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.solutionContent != nil {
            map["SolutionContent"] = self.solutionContent!
        }
        if self.solutionType != nil {
            map["SolutionType"] = self.solutionType!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.tagIdListShrink != nil {
            map["TagIdList"] = self.tagIdListShrink!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["SolutionContent"] as? String {
            self.solutionContent = value
        }
        if let value = dict["SolutionType"] as? Int32 {
            self.solutionType = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TagIdList"] as? String {
            self.tagIdListShrink = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class CreateFaqResponseBody : Tea.TeaModel {
    public var knowledgeId: Int64?

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
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateFaqResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFaqResponseBody?

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
            var model = CreateFaqResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public var agentKey: String?

    public var introduction: String?

    public var languageCode: String?

    public var name: String?

    public var robotType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
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
        if self.robotType != nil {
            map["RobotType"] = self.robotType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
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
        if let value = dict["RobotType"] as? String {
            self.robotType = value
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

public class CreateInstancePublishTaskRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CreateInstancePublishTaskResponseBody : Tea.TeaModel {
    public var bizTypeList: [String]?

    public var createTime: String?

    public var error: String?

    public var id: Int64?

    public var modifyTime: String?

    public var requestId: String?

    public var response: String?

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
        if self.bizTypeList != nil {
            map["BizTypeList"] = self.bizTypeList!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizTypeList"] as? [String] {
            self.bizTypeList = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? String {
            self.response = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CreateInstancePublishTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstancePublishTaskResponseBody?

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
            var model = CreateInstancePublishTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateIntentRequest : Tea.TeaModel {
    public class IntentDefinition : Tea.TeaModel {
        public class SlotInfos : Tea.TeaModel {
            public var array: Bool?

            public var encrypt: Bool?

            public var interactive: Bool?

            public var name: String?

            public var slotId: String?

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
                if self.array != nil {
                    map["Array"] = self.array!
                }
                if self.encrypt != nil {
                    map["Encrypt"] = self.encrypt!
                }
                if self.interactive != nil {
                    map["Interactive"] = self.interactive!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.slotId != nil {
                    map["SlotId"] = self.slotId!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Array"] as? Bool {
                    self.array = value
                }
                if let value = dict["Encrypt"] as? Bool {
                    self.encrypt = value
                }
                if let value = dict["Interactive"] as? Bool {
                    self.interactive = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["SlotId"] as? String {
                    self.slotId = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var aliasName: String?

        public var intentName: String?

        public var slotInfos: [CreateIntentRequest.IntentDefinition.SlotInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.intentName != nil {
                map["IntentName"] = self.intentName!
            }
            if self.slotInfos != nil {
                var tmp : [Any] = []
                for k in self.slotInfos! {
                    tmp.append(k.toMap())
                }
                map["SlotInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliasName"] as? String {
                self.aliasName = value
            }
            if let value = dict["IntentName"] as? String {
                self.intentName = value
            }
            if let value = dict["SlotInfos"] as? [Any?] {
                var tmp : [CreateIntentRequest.IntentDefinition.SlotInfos] = []
                for v in value {
                    if v != nil {
                        var model = CreateIntentRequest.IntentDefinition.SlotInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.slotInfos = tmp
            }
        }
    }
    public var agentKey: String?

    public var instanceId: String?

    public var intentDefinition: CreateIntentRequest.IntentDefinition?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.intentDefinition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentDefinition != nil {
            map["IntentDefinition"] = self.intentDefinition?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentDefinition"] as? [String: Any?] {
            var model = CreateIntentRequest.IntentDefinition()
            model.fromMap(value)
            self.intentDefinition = model
        }
    }
}

public class CreateIntentShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var intentDefinitionShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentDefinitionShrink != nil {
            map["IntentDefinition"] = self.intentDefinitionShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentDefinition"] as? String {
            self.intentDefinitionShrink = value
        }
    }
}

public class CreateIntentResponseBody : Tea.TeaModel {
    public var intentId: Int64?

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
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IntentId"] as? Int64 {
            self.intentId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateIntentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIntentResponseBody?

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
            var model = CreateIntentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLgfRequest : Tea.TeaModel {
    public class LgfDefinition : Tea.TeaModel {
        public var intentId: Int64?

        public var ruleText: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.intentId != nil {
                map["IntentId"] = self.intentId!
            }
            if self.ruleText != nil {
                map["RuleText"] = self.ruleText!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IntentId"] as? Int64 {
                self.intentId = value
            }
            if let value = dict["RuleText"] as? String {
                self.ruleText = value
            }
        }
    }
    public var agentKey: String?

    public var instanceId: String?

    public var lgfDefinition: CreateLgfRequest.LgfDefinition?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.lgfDefinition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lgfDefinition != nil {
            map["LgfDefinition"] = self.lgfDefinition?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LgfDefinition"] as? [String: Any?] {
            var model = CreateLgfRequest.LgfDefinition()
            model.fromMap(value)
            self.lgfDefinition = model
        }
    }
}

public class CreateLgfShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var lgfDefinitionShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lgfDefinitionShrink != nil {
            map["LgfDefinition"] = self.lgfDefinitionShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LgfDefinition"] as? String {
            self.lgfDefinitionShrink = value
        }
    }
}

public class CreateLgfResponseBody : Tea.TeaModel {
    public var lgfId: Int64?

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
        if self.lgfId != nil {
            map["LgfId"] = self.lgfId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LgfId"] as? Int64 {
            self.lgfId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateLgfResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLgfResponseBody?

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
            var model = CreateLgfResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePerspectiveRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
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
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class CreatePerspectiveResponseBody : Tea.TeaModel {
    public var perspectiveId: String?

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
        if self.perspectiveId != nil {
            map["PerspectiveId"] = self.perspectiveId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PerspectiveId"] as? String {
            self.perspectiveId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePerspectiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePerspectiveResponseBody?

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
            var model = CreatePerspectiveResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePublishTaskRequest : Tea.TeaModel {
    public var agentKey: String?

    public var bizType: String?

    public var dataIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.dataIdList != nil {
            map["DataIdList"] = self.dataIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["DataIdList"] as? [String] {
            self.dataIdList = value
        }
    }
}

public class CreatePublishTaskShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var bizType: String?

    public var dataIdListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.dataIdListShrink != nil {
            map["DataIdList"] = self.dataIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["DataIdList"] as? String {
            self.dataIdListShrink = value
        }
    }
}

public class CreatePublishTaskResponseBody : Tea.TeaModel {
    public var bizTypeList: [String]?

    public var createTime: String?

    public var error: String?

    public var id: Int64?

    public var modifyTime: String?

    public var requestId: String?

    public var response: String?

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
        if self.bizTypeList != nil {
            map["BizTypeList"] = self.bizTypeList!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizTypeList"] as? [String] {
            self.bizTypeList = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? String {
            self.response = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CreatePublishTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePublishTaskResponseBody?

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
            var model = CreatePublishTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSimQuestionRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeId: Int64?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class CreateSimQuestionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var simQuestionId: Int64?

    public override init() {
        super.init()
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
        if self.simQuestionId != nil {
            map["SimQuestionId"] = self.simQuestionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SimQuestionId"] as? Int64 {
            self.simQuestionId = value
        }
    }
}

public class CreateSimQuestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSimQuestionResponseBody?

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
            var model = CreateSimQuestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSolutionRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var contentType: Int32?

    public var knowledgeId: Int64?

    public var perspectiveCodes: [String]?

    public var tagIdList: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.perspectiveCodes != nil {
            map["PerspectiveCodes"] = self.perspectiveCodes!
        }
        if self.tagIdList != nil {
            map["TagIdList"] = self.tagIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["ContentType"] as? Int32 {
            self.contentType = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["PerspectiveCodes"] as? [String] {
            self.perspectiveCodes = value
        }
        if let value = dict["TagIdList"] as? [Int64] {
            self.tagIdList = value
        }
    }
}

public class CreateSolutionShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var contentType: Int32?

    public var knowledgeId: Int64?

    public var perspectiveCodes: [String]?

    public var tagIdListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.perspectiveCodes != nil {
            map["PerspectiveCodes"] = self.perspectiveCodes!
        }
        if self.tagIdListShrink != nil {
            map["TagIdList"] = self.tagIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["ContentType"] as? Int32 {
            self.contentType = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["PerspectiveCodes"] as? [String] {
            self.perspectiveCodes = value
        }
        if let value = dict["TagIdList"] as? String {
            self.tagIdListShrink = value
        }
    }
}

public class CreateSolutionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var solutionId: Int64?

    public override init() {
        super.init()
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
        if self.solutionId != nil {
            map["SolutionId"] = self.solutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SolutionId"] as? Int64 {
            self.solutionId = value
        }
    }
}

public class CreateSolutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSolutionResponseBody?

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
            var model = CreateSolutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTagRequest : Tea.TeaModel {
    public var agentKey: String?

    public var clientToken: String?

    public var groupId: Int64?

    public var tagName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["GroupId"] as? Int64 {
            self.groupId = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
    }
}

public class CreateTagResponseBody : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTagResponseBody?

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
            var model = CreateTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTagGroupRequest : Tea.TeaModel {
    public var agentKey: String?

    public var clientToken: String?

    public var groupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
    }
}

public class CreateTagGroupResponseBody : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateTagGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTagGroupResponseBody?

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
            var model = CreateTagGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUserSayRequest : Tea.TeaModel {
    public class UserSayDefinition : Tea.TeaModel {
        public class SlotInfos : Tea.TeaModel {
            public var endIndex: Int32?

            public var slotId: String?

            public var startIndex: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endIndex != nil {
                    map["EndIndex"] = self.endIndex!
                }
                if self.slotId != nil {
                    map["SlotId"] = self.slotId!
                }
                if self.startIndex != nil {
                    map["StartIndex"] = self.startIndex!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndIndex"] as? Int32 {
                    self.endIndex = value
                }
                if let value = dict["SlotId"] as? String {
                    self.slotId = value
                }
                if let value = dict["StartIndex"] as? Int32 {
                    self.startIndex = value
                }
            }
        }
        public var content: String?

        public var intentId: Int64?

        public var slotInfos: [CreateUserSayRequest.UserSayDefinition.SlotInfos]?

        public override init() {
            super.init()
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
            if self.intentId != nil {
                map["IntentId"] = self.intentId!
            }
            if self.slotInfos != nil {
                var tmp : [Any] = []
                for k in self.slotInfos! {
                    tmp.append(k.toMap())
                }
                map["SlotInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["IntentId"] as? Int64 {
                self.intentId = value
            }
            if let value = dict["SlotInfos"] as? [Any?] {
                var tmp : [CreateUserSayRequest.UserSayDefinition.SlotInfos] = []
                for v in value {
                    if v != nil {
                        var model = CreateUserSayRequest.UserSayDefinition.SlotInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.slotInfos = tmp
            }
        }
    }
    public var agentKey: String?

    public var instanceId: String?

    public var userSayDefinition: CreateUserSayRequest.UserSayDefinition?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userSayDefinition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.userSayDefinition != nil {
            map["UserSayDefinition"] = self.userSayDefinition?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["UserSayDefinition"] as? [String: Any?] {
            var model = CreateUserSayRequest.UserSayDefinition()
            model.fromMap(value)
            self.userSayDefinition = model
        }
    }
}

public class CreateUserSayShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var userSayDefinitionShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.userSayDefinitionShrink != nil {
            map["UserSayDefinition"] = self.userSayDefinitionShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["UserSayDefinition"] as? String {
            self.userSayDefinitionShrink = value
        }
    }
}

public class CreateUserSayResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var userSayId: Int64?

    public override init() {
        super.init()
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
        if self.userSayId != nil {
            map["UserSayId"] = self.userSayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserSayId"] as? Int64 {
            self.userSayId = value
        }
    }
}

public class CreateUserSayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserSayResponseBody?

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
            var model = CreateUserSayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCategoryRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
    }
}

public class DeleteCategoryResponseBody : Tea.TeaModel {
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

public class DeleteCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCategoryResponseBody?

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
            var model = DeleteCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteConnQuestionRequest : Tea.TeaModel {
    public var agentKey: String?

    public var outlineId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.outlineId != nil {
            map["OutlineId"] = self.outlineId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["OutlineId"] as? Int64 {
            self.outlineId = value
        }
    }
}

public class DeleteConnQuestionResponseBody : Tea.TeaModel {
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

public class DeleteConnQuestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConnQuestionResponseBody?

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
            var model = DeleteConnQuestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDSEntityRequest : Tea.TeaModel {
    public var agentKey: String?

    public var entityId: Int64?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteDSEntityResponseBody : Tea.TeaModel {
    public var entityId: Int64?

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
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDSEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDSEntityResponseBody?

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
            var model = DeleteDSEntityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDSEntityValueRequest : Tea.TeaModel {
    public var agentKey: String?

    public var entityId: Int64?

    public var entityValueId: Int64?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.entityValueId != nil {
            map["EntityValueId"] = self.entityValueId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["EntityValueId"] as? Int64 {
            self.entityValueId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteDSEntityValueResponseBody : Tea.TeaModel {
    public var entityValueId: Int64?

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
        if self.entityValueId != nil {
            map["EntityValueId"] = self.entityValueId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntityValueId"] as? Int64 {
            self.entityValueId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDSEntityValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDSEntityValueResponseBody?

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
            var model = DeleteDSEntityValueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDocRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
    }
}

public class DeleteDocResponseBody : Tea.TeaModel {
    public var knowledgeId: Int64?

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
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDocResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDocResponseBody?

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
            var model = DeleteDocResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFaqRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
    }
}

public class DeleteFaqResponseBody : Tea.TeaModel {
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

public class DeleteFaqResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFaqResponseBody?

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
            var model = DeleteFaqResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteInstanceResponseBody : Tea.TeaModel {
    public var bizTypeList: [String]?

    public var createTime: String?

    public var createUserId: Int64?

    public var createUserName: String?

    public var error: String?

    public var id: Int64?

    public var requestId: String?

    public var response: Int64?

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
        if self.bizTypeList != nil {
            map["BizTypeList"] = self.bizTypeList!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizTypeList"] as? [String] {
            self.bizTypeList = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateUserId"] as? Int64 {
            self.createUserId = value
        }
        if let value = dict["CreateUserName"] as? String {
            self.createUserName = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? Int64 {
            self.response = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
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

public class DeleteIntentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var intentId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentId"] as? Int64 {
            self.intentId = value
        }
    }
}

public class DeleteIntentResponseBody : Tea.TeaModel {
    public var intentId: Int64?

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
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IntentId"] as? Int64 {
            self.intentId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteIntentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIntentResponseBody?

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
            var model = DeleteIntentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLgfRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var intentId: Int64?

    public var lgfId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        if self.lgfId != nil {
            map["LgfId"] = self.lgfId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentId"] as? Int64 {
            self.intentId = value
        }
        if let value = dict["LgfId"] as? Int64 {
            self.lgfId = value
        }
    }
}

public class DeleteLgfResponseBody : Tea.TeaModel {
    public var lgfId: Int64?

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
        if self.lgfId != nil {
            map["LgfId"] = self.lgfId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LgfId"] as? Int64 {
            self.lgfId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteLgfResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLgfResponseBody?

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
            var model = DeleteLgfResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePerspectiveRequest : Tea.TeaModel {
    public var agentKey: String?

    public var perspectiveId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.perspectiveId != nil {
            map["PerspectiveId"] = self.perspectiveId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["PerspectiveId"] as? String {
            self.perspectiveId = value
        }
    }
}

public class DeletePerspectiveResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
    }
}

public class DeletePerspectiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePerspectiveResponseBody?

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
            var model = DeletePerspectiveResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSimQuestionRequest : Tea.TeaModel {
    public var agentKey: String?

    public var simQuestionId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.simQuestionId != nil {
            map["SimQuestionId"] = self.simQuestionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["SimQuestionId"] as? Int64 {
            self.simQuestionId = value
        }
    }
}

public class DeleteSimQuestionResponseBody : Tea.TeaModel {
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

public class DeleteSimQuestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSimQuestionResponseBody?

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
            var model = DeleteSimQuestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSolutionRequest : Tea.TeaModel {
    public var agentKey: String?

    public var solutionId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.solutionId != nil {
            map["SolutionId"] = self.solutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["SolutionId"] as? Int64 {
            self.solutionId = value
        }
    }
}

public class DeleteSolutionResponseBody : Tea.TeaModel {
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

public class DeleteSolutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSolutionResponseBody?

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
            var model = DeleteSolutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTagRequest : Tea.TeaModel {
    public var agentKey: String?

    public var clientToken: String?

    public var groupId: Int64?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["GroupId"] as? Int64 {
            self.groupId = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class DeleteTagResponseBody : Tea.TeaModel {
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

public class DeleteTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTagResponseBody?

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
            var model = DeleteTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTagGroupRequest : Tea.TeaModel {
    public var agentKey: String?

    public var clientToken: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class DeleteTagGroupResponseBody : Tea.TeaModel {
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

public class DeleteTagGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTagGroupResponseBody?

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
            var model = DeleteTagGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserSayRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var intentId: Int64?

    public var userSayId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        if self.userSayId != nil {
            map["UserSayId"] = self.userSayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentId"] as? Int64 {
            self.intentId = value
        }
        if let value = dict["UserSayId"] as? Int64 {
            self.userSayId = value
        }
    }
}

public class DeleteUserSayResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var userSayId: Int64?

    public override init() {
        super.init()
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
        if self.userSayId != nil {
            map["UserSayId"] = self.userSayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserSayId"] as? Int64 {
            self.userSayId = value
        }
    }
}

public class DeleteUserSayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserSayResponseBody?

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
            var model = DeleteUserSayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCategoryRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
    }
}

public class DescribeCategoryResponseBody : Tea.TeaModel {
    public class Category : Tea.TeaModel {
        public var bizCode: String?

        public var categoryId: Int64?

        public var name: String?

        public var parentCategoryId: Int64?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentCategoryId != nil {
                map["ParentCategoryId"] = self.parentCategoryId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParentCategoryId"] as? Int64 {
                self.parentCategoryId = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var category: DescribeCategoryResponseBody.Category?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.category?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? [String: Any?] {
            var model = DescribeCategoryResponseBody.Category()
            model.fromMap(value)
            self.category = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCategoryResponseBody?

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
            var model = DescribeCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDSEntityRequest : Tea.TeaModel {
    public var agentKey: String?

    public var entityId: Int64?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DescribeDSEntityResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var createUserId: String?

    public var createUserName: String?

    public var entityId: Int64?

    public var entityName: String?

    public var entityType: String?

    public var modifyTime: String?

    public var modifyUserId: String?

    public var modifyUserName: String?

    public var requestId: String?

    public var sysEntityCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
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
        if self.sysEntityCode != nil {
            map["SysEntityCode"] = self.sysEntityCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateUserId"] as? String {
            self.createUserId = value
        }
        if let value = dict["CreateUserName"] as? String {
            self.createUserName = value
        }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["EntityName"] as? String {
            self.entityName = value
        }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
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
        if let value = dict["SysEntityCode"] as? String {
            self.sysEntityCode = value
        }
    }
}

public class DescribeDSEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDSEntityResponseBody?

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
            var model = DescribeDSEntityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDocRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeId: Int64?

    public var showDetail: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.showDetail != nil {
            map["ShowDetail"] = self.showDetail!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["ShowDetail"] as? Bool {
            self.showDetail = value
        }
    }
}

public class DescribeDocResponseBody : Tea.TeaModel {
    public class DocInfo : Tea.TeaModel {
        public class DocParas : Tea.TeaModel {
            public var paraLevel: Int32?

            public var paraNo: Int32?

            public var paraText: String?

            public var paraType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.paraLevel != nil {
                    map["ParaLevel"] = self.paraLevel!
                }
                if self.paraNo != nil {
                    map["ParaNo"] = self.paraNo!
                }
                if self.paraText != nil {
                    map["ParaText"] = self.paraText!
                }
                if self.paraType != nil {
                    map["ParaType"] = self.paraType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParaLevel"] as? Int32 {
                    self.paraLevel = value
                }
                if let value = dict["ParaNo"] as? Int32 {
                    self.paraNo = value
                }
                if let value = dict["ParaText"] as? String {
                    self.paraText = value
                }
                if let value = dict["ParaType"] as? String {
                    self.paraType = value
                }
            }
        }
        public var docParas: [DescribeDocResponseBody.DocInfo.DocParas]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.docParas != nil {
                var tmp : [Any] = []
                for k in self.docParas! {
                    tmp.append(k.toMap())
                }
                map["DocParas"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DocParas"] as? [Any?] {
                var tmp : [DescribeDocResponseBody.DocInfo.DocParas] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDocResponseBody.DocInfo.DocParas()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.docParas = tmp
            }
        }
    }
    public class DocMetadata : Tea.TeaModel {
        public class MetaCellInfoDTOList : Tea.TeaModel {
            public var fieldCode: String?

            public var fieldName: String?

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
                if self.fieldCode != nil {
                    map["FieldCode"] = self.fieldCode!
                }
                if self.fieldName != nil {
                    map["FieldName"] = self.fieldName!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FieldCode"] as? String {
                    self.fieldCode = value
                }
                if let value = dict["FieldName"] as? String {
                    self.fieldName = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var businessViewId: String?

        public var businessViewName: String?

        public var metaCellInfoDTOList: [DescribeDocResponseBody.DocMetadata.MetaCellInfoDTOList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessViewId != nil {
                map["BusinessViewId"] = self.businessViewId!
            }
            if self.businessViewName != nil {
                map["BusinessViewName"] = self.businessViewName!
            }
            if self.metaCellInfoDTOList != nil {
                var tmp : [Any] = []
                for k in self.metaCellInfoDTOList! {
                    tmp.append(k.toMap())
                }
                map["MetaCellInfoDTOList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BusinessViewId"] as? String {
                self.businessViewId = value
            }
            if let value = dict["BusinessViewName"] as? String {
                self.businessViewName = value
            }
            if let value = dict["MetaCellInfoDTOList"] as? [Any?] {
                var tmp : [DescribeDocResponseBody.DocMetadata.MetaCellInfoDTOList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDocResponseBody.DocMetadata.MetaCellInfoDTOList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.metaCellInfoDTOList = tmp
            }
        }
    }
    public class DocTags : Tea.TeaModel {
        public var defaultTag: Bool?

        public var groupId: Int64?

        public var groupName: String?

        public var tagId: Int64?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultTag != nil {
                map["DefaultTag"] = self.defaultTag!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultTag"] as? Bool {
                self.defaultTag = value
            }
            if let value = dict["GroupId"] as? Int64 {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["TagId"] as? Int64 {
                self.tagId = value
            }
            if let value = dict["TagName"] as? String {
                self.tagName = value
            }
        }
    }
    public var bizCode: String?

    public var categoryId: Int64?

    public var config: String?

    public var createTime: String?

    public var createUserId: Int64?

    public var createUserName: String?

    public var docInfo: DescribeDocResponseBody.DocInfo?

    public var docMetadata: [DescribeDocResponseBody.DocMetadata]?

    public var docName: String?

    public var docTags: [DescribeDocResponseBody.DocTags]?

    public var effectStatus: Int32?

    public var endDate: String?

    public var knowledgeId: Int64?

    public var meta: String?

    public var modifyTime: String?

    public var modifyUserId: Int64?

    public var modifyUserName: String?

    public var processCanRetry: Bool?

    public var processMessage: String?

    public var processStatus: Int32?

    public var requestId: String?

    public var startDate: String?

    public var status: Int32?

    public var title: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.docInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.docInfo != nil {
            map["DocInfo"] = self.docInfo?.toMap()
        }
        if self.docMetadata != nil {
            var tmp : [Any] = []
            for k in self.docMetadata! {
                tmp.append(k.toMap())
            }
            map["DocMetadata"] = tmp
        }
        if self.docName != nil {
            map["DocName"] = self.docName!
        }
        if self.docTags != nil {
            var tmp : [Any] = []
            for k in self.docTags! {
                tmp.append(k.toMap())
            }
            map["DocTags"] = tmp
        }
        if self.effectStatus != nil {
            map["EffectStatus"] = self.effectStatus!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.meta != nil {
            map["Meta"] = self.meta!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.modifyUserId != nil {
            map["ModifyUserId"] = self.modifyUserId!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.processCanRetry != nil {
            map["ProcessCanRetry"] = self.processCanRetry!
        }
        if self.processMessage != nil {
            map["ProcessMessage"] = self.processMessage!
        }
        if self.processStatus != nil {
            map["ProcessStatus"] = self.processStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateUserId"] as? Int64 {
            self.createUserId = value
        }
        if let value = dict["CreateUserName"] as? String {
            self.createUserName = value
        }
        if let value = dict["DocInfo"] as? [String: Any?] {
            var model = DescribeDocResponseBody.DocInfo()
            model.fromMap(value)
            self.docInfo = model
        }
        if let value = dict["DocMetadata"] as? [Any?] {
            var tmp : [DescribeDocResponseBody.DocMetadata] = []
            for v in value {
                if v != nil {
                    var model = DescribeDocResponseBody.DocMetadata()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.docMetadata = tmp
        }
        if let value = dict["DocName"] as? String {
            self.docName = value
        }
        if let value = dict["DocTags"] as? [Any?] {
            var tmp : [DescribeDocResponseBody.DocTags] = []
            for v in value {
                if v != nil {
                    var model = DescribeDocResponseBody.DocTags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.docTags = tmp
        }
        if let value = dict["EffectStatus"] as? Int32 {
            self.effectStatus = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["Meta"] as? String {
            self.meta = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["ModifyUserId"] as? Int64 {
            self.modifyUserId = value
        }
        if let value = dict["ModifyUserName"] as? String {
            self.modifyUserName = value
        }
        if let value = dict["ProcessCanRetry"] as? Bool {
            self.processCanRetry = value
        }
        if let value = dict["ProcessMessage"] as? String {
            self.processMessage = value
        }
        if let value = dict["ProcessStatus"] as? Int32 {
            self.processStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class DescribeDocResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDocResponseBody?

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
            var model = DescribeDocResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFaqRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
    }
}

public class DescribeFaqResponseBody : Tea.TeaModel {
    public class Outlines : Tea.TeaModel {
        public var connQuestionId: Int64?

        public var createTime: String?

        public var modifyTime: String?

        public var outlineId: Int64?

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
            if self.connQuestionId != nil {
                map["ConnQuestionId"] = self.connQuestionId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.outlineId != nil {
                map["OutlineId"] = self.outlineId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnQuestionId"] as? Int64 {
                self.connQuestionId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["OutlineId"] as? Int64 {
                self.outlineId = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public class SimQuestions : Tea.TeaModel {
        public var createTime: String?

        public var modifyTime: String?

        public var simQuestionId: Int64?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.simQuestionId != nil {
                map["SimQuestionId"] = self.simQuestionId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["SimQuestionId"] as? Int64 {
                self.simQuestionId = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public class Solutions : Tea.TeaModel {
        public var content: String?

        public var contentType: Int32?

        public var createTime: String?

        public var modifyTime: String?

        public var perspectiveCodes: [String]?

        public var plainText: String?

        public var solutionId: Int64?

        public override init() {
            super.init()
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
            if self.contentType != nil {
                map["ContentType"] = self.contentType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.perspectiveCodes != nil {
                map["PerspectiveCodes"] = self.perspectiveCodes!
            }
            if self.plainText != nil {
                map["PlainText"] = self.plainText!
            }
            if self.solutionId != nil {
                map["SolutionId"] = self.solutionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["ContentType"] as? Int32 {
                self.contentType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["PerspectiveCodes"] as? [String] {
                self.perspectiveCodes = value
            }
            if let value = dict["PlainText"] as? String {
                self.plainText = value
            }
            if let value = dict["SolutionId"] as? Int64 {
                self.solutionId = value
            }
        }
    }
    public var categoryId: Int64?

    public var createTime: String?

    public var createUserName: String?

    public var effectStatus: Int32?

    public var endDate: String?

    public var knowledgeId: Int64?

    public var modifyTime: String?

    public var modifyUserName: String?

    public var outlines: [DescribeFaqResponseBody.Outlines]?

    public var requestId: String?

    public var simQuestions: [DescribeFaqResponseBody.SimQuestions]?

    public var solutions: [DescribeFaqResponseBody.Solutions]?

    public var startDate: String?

    public var status: Int32?

    public var tagIdList: [Int64]?

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
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.effectStatus != nil {
            map["EffectStatus"] = self.effectStatus!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.outlines != nil {
            var tmp : [Any] = []
            for k in self.outlines! {
                tmp.append(k.toMap())
            }
            map["Outlines"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.simQuestions != nil {
            var tmp : [Any] = []
            for k in self.simQuestions! {
                tmp.append(k.toMap())
            }
            map["SimQuestions"] = tmp
        }
        if self.solutions != nil {
            var tmp : [Any] = []
            for k in self.solutions! {
                tmp.append(k.toMap())
            }
            map["Solutions"] = tmp
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIdList != nil {
            map["TagIdList"] = self.tagIdList!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateUserName"] as? String {
            self.createUserName = value
        }
        if let value = dict["EffectStatus"] as? Int32 {
            self.effectStatus = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["ModifyUserName"] as? String {
            self.modifyUserName = value
        }
        if let value = dict["Outlines"] as? [Any?] {
            var tmp : [DescribeFaqResponseBody.Outlines] = []
            for v in value {
                if v != nil {
                    var model = DescribeFaqResponseBody.Outlines()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.outlines = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SimQuestions"] as? [Any?] {
            var tmp : [DescribeFaqResponseBody.SimQuestions] = []
            for v in value {
                if v != nil {
                    var model = DescribeFaqResponseBody.SimQuestions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.simQuestions = tmp
        }
        if let value = dict["Solutions"] as? [Any?] {
            var tmp : [DescribeFaqResponseBody.Solutions] = []
            for v in value {
                if v != nil {
                    var model = DescribeFaqResponseBody.Solutions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.solutions = tmp
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TagIdList"] as? [Int64] {
            self.tagIdList = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class DescribeFaqResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFaqResponseBody?

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
            var model = DescribeFaqResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DescribeInstanceResponseBody : Tea.TeaModel {
    public class Categories : Tea.TeaModel {
        public var abilityType: String?

        public var categoryId: Int64?

        public var name: String?

        public var parentCategoryId: Int64?

        public override init() {
            super.init()
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
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentCategoryId != nil {
                map["ParentCategoryId"] = self.parentCategoryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AbilityType"] as? String {
                self.abilityType = value
            }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParentCategoryId"] as? Int64 {
                self.parentCategoryId = value
            }
        }
    }
    public var avatar: String?

    public var categories: [DescribeInstanceResponseBody.Categories]?

    public var createTime: String?

    public var editStatus: String?

    public var instanceId: String?

    public var introduction: String?

    public var languageCode: String?

    public var name: String?

    public var requestId: String?

    public var robotType: String?

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
        if self.categories != nil {
            var tmp : [Any] = []
            for k in self.categories! {
                tmp.append(k.toMap())
            }
            map["Categories"] = tmp
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.editStatus != nil {
            map["EditStatus"] = self.editStatus!
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.robotType != nil {
            map["RobotType"] = self.robotType!
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
        if let value = dict["Categories"] as? [Any?] {
            var tmp : [DescribeInstanceResponseBody.Categories] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceResponseBody.Categories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.categories = tmp
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["EditStatus"] as? String {
            self.editStatus = value
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RobotType"] as? String {
            self.robotType = value
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
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

public class DescribeIntentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var intentId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentId"] as? Int64 {
            self.intentId = value
        }
    }
}

public class DescribeIntentResponseBody : Tea.TeaModel {
    public class SlotInfos : Tea.TeaModel {
        public var array: Bool?

        public var encrypt: Bool?

        public var interactive: Bool?

        public var name: String?

        public var slotId: String?

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
            if self.array != nil {
                map["Array"] = self.array!
            }
            if self.encrypt != nil {
                map["Encrypt"] = self.encrypt!
            }
            if self.interactive != nil {
                map["Interactive"] = self.interactive!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.slotId != nil {
                map["SlotId"] = self.slotId!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Array"] as? Bool {
                self.array = value
            }
            if let value = dict["Encrypt"] as? Bool {
                self.encrypt = value
            }
            if let value = dict["Interactive"] as? Bool {
                self.interactive = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SlotId"] as? String {
                self.slotId = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var aliasName: String?

    public var createTime: String?

    public var createUserId: String?

    public var createUserName: String?

    public var intentId: Int64?

    public var intentName: String?

    public var modifyTime: String?

    public var modifyUserId: String?

    public var modifyUserName: String?

    public var requestId: String?

    public var slotInfos: [DescribeIntentResponseBody.SlotInfos]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliasName != nil {
            map["AliasName"] = self.aliasName!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        if self.intentName != nil {
            map["IntentName"] = self.intentName!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
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
        if self.slotInfos != nil {
            var tmp : [Any] = []
            for k in self.slotInfos! {
                tmp.append(k.toMap())
            }
            map["SlotInfos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliasName"] as? String {
            self.aliasName = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateUserId"] as? String {
            self.createUserId = value
        }
        if let value = dict["CreateUserName"] as? String {
            self.createUserName = value
        }
        if let value = dict["IntentId"] as? Int64 {
            self.intentId = value
        }
        if let value = dict["IntentName"] as? String {
            self.intentName = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
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
        if let value = dict["SlotInfos"] as? [Any?] {
            var tmp : [DescribeIntentResponseBody.SlotInfos] = []
            for v in value {
                if v != nil {
                    var model = DescribeIntentResponseBody.SlotInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.slotInfos = tmp
        }
    }
}

public class DescribeIntentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIntentResponseBody?

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
            var model = DescribeIntentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePerspectiveRequest : Tea.TeaModel {
    public var agentKey: String?

    public var perspectiveId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.perspectiveId != nil {
            map["PerspectiveId"] = self.perspectiveId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["PerspectiveId"] as? String {
            self.perspectiveId = value
        }
    }
}

public class DescribePerspectiveResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var modifyTime: String?

    public var name: String?

    public var perspectiveCode: String?

    public var perspectiveId: String?

    public var requestId: String?

    public var selfDefine: Bool?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.perspectiveCode != nil {
            map["PerspectiveCode"] = self.perspectiveCode!
        }
        if self.perspectiveId != nil {
            map["PerspectiveId"] = self.perspectiveId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.selfDefine != nil {
            map["SelfDefine"] = self.selfDefine!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PerspectiveCode"] as? String {
            self.perspectiveCode = value
        }
        if let value = dict["PerspectiveId"] as? String {
            self.perspectiveId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SelfDefine"] as? Bool {
            self.selfDefine = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class DescribePerspectiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePerspectiveResponseBody?

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
            var model = DescribePerspectiveResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTagRequest : Tea.TeaModel {
    public var agentKey: String?

    public var clientToken: String?

    public var groupId: Int64?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["GroupId"] as? Int64 {
            self.groupId = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class DescribeTagResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var createUserId: Int64?

    public var createUserName: String?

    public var groupId: Int64?

    public var id: Int64?

    public var modifyTime: String?

    public var modifyUserId: Int64?

    public var modifyUserName: String?

    public var requestId: String?

    public var tagName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
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
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateUserId"] as? Int64 {
            self.createUserId = value
        }
        if let value = dict["CreateUserName"] as? String {
            self.createUserName = value
        }
        if let value = dict["GroupId"] as? Int64 {
            self.groupId = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["ModifyUserId"] as? Int64 {
            self.modifyUserId = value
        }
        if let value = dict["ModifyUserName"] as? String {
            self.modifyUserName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
    }
}

public class DescribeTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTagResponseBody?

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
            var model = DescribeTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTagGroupRequest : Tea.TeaModel {
    public var agentKey: String?

    public var clientToken: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class DescribeTagGroupResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var createUserId: Int64?

    public var createUserName: String?

    public var defaultTagId: Int64?

    public var groupName: String?

    public var id: Int64?

    public var modifyTime: String?

    public var modifyUserId: Int64?

    public var modifyUserName: String?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.defaultTagId != nil {
            map["DefaultTagId"] = self.defaultTagId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateUserId"] as? Int64 {
            self.createUserId = value
        }
        if let value = dict["CreateUserName"] as? String {
            self.createUserName = value
        }
        if let value = dict["DefaultTagId"] as? Int64 {
            self.defaultTagId = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["ModifyUserId"] as? Int64 {
            self.modifyUserId = value
        }
        if let value = dict["ModifyUserName"] as? String {
            self.modifyUserName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeTagGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTagGroupResponseBody?

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
            var model = DescribeTagGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FeedbackRequest : Tea.TeaModel {
    public var agentKey: String?

    public var feedback: String?

    public var feedbackContent: String?

    public var instanceId: String?

    public var messageId: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.feedbackContent != nil {
            map["FeedbackContent"] = self.feedbackContent!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Feedback"] as? String {
            self.feedback = value
        }
        if let value = dict["FeedbackContent"] as? String {
            self.feedbackContent = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class FeedbackResponseBody : Tea.TeaModel {
    public var feedback: String?

    public var messageId: String?

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
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Feedback"] as? String {
            self.feedback = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class FeedbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FeedbackResponseBody?

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
            var model = FeedbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateUserAccessTokenRequest : Tea.TeaModel {
    public var agentKey: String?

    public var email: String?

    public var expireTime: Int32?

    public var extraInfo: String?

    public var foreignId: String?

    public var nick: String?

    public var telephone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.foreignId != nil {
            map["ForeignId"] = self.foreignId!
        }
        if self.nick != nil {
            map["Nick"] = self.nick!
        }
        if self.telephone != nil {
            map["Telephone"] = self.telephone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["ExpireTime"] as? Int32 {
            self.expireTime = value
        }
        if let value = dict["ExtraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["ForeignId"] as? String {
            self.foreignId = value
        }
        if let value = dict["Nick"] as? String {
            self.nick = value
        }
        if let value = dict["Telephone"] as? String {
            self.telephone = value
        }
    }
}

public class GenerateUserAccessTokenResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? String {
            self.data = value
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

public class GenerateUserAccessTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateUserAccessTokenResponseBody?

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
            var model = GenerateUserAccessTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAgentInfoRequest : Tea.TeaModel {
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

public class GetAgentInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentKey: String?

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
            if self.agentKey != nil {
                map["AgentKey"] = self.agentKey!
            }
            if self.agentName != nil {
                map["AgentName"] = self.agentName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentKey"] as? String {
                self.agentKey = value
            }
            if let value = dict["AgentName"] as? String {
                self.agentName = value
            }
        }
    }
    public var data: GetAgentInfoResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetAgentInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetAgentInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgentInfoResponseBody?

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
            var model = GetAgentInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAsyncResultRequest : Tea.TeaModel {
    public var agentKey: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetAsyncResultResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetAsyncResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAsyncResultResponseBody?

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
            var model = GetAsyncResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBotSessionDataRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endTime: String?

    public var robotInstanceId: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["RobotInstanceId"] as? String {
            self.robotInstanceId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetBotSessionDataResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostTime"] as? String {
            self.costTime = value
        }
        if let value = dict["Datas"] as? [[String: Any]] {
            self.datas = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetBotSessionDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBotSessionDataResponseBody?

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
            var model = GetBotSessionDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstancePublishTaskStateRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetInstancePublishTaskStateResponseBody : Tea.TeaModel {
    public var bizTypeList: [String]?

    public var createTime: String?

    public var error: String?

    public var errors: [String: Any]?

    public var id: Int64?

    public var modifyTime: String?

    public var requestId: String?

    public var response: String?

    public var status: String?

    public var warnings: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTypeList != nil {
            map["BizTypeList"] = self.bizTypeList!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.errors != nil {
            map["Errors"] = self.errors!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.warnings != nil {
            map["Warnings"] = self.warnings!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizTypeList"] as? [String] {
            self.bizTypeList = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Errors"] as? [String: Any] {
            self.errors = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? String {
            self.response = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Warnings"] as? [String: Any] {
            self.warnings = value
        }
    }
}

public class GetInstancePublishTaskStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstancePublishTaskStateResponseBody?

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
            var model = GetInstancePublishTaskStateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPublishTaskStateRequest : Tea.TeaModel {
    public var agentKey: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class GetPublishTaskStateResponseBody : Tea.TeaModel {
    public var bizTypeList: [String]?

    public var createTime: String?

    public var error: String?

    public var errors: [String: Any]?

    public var id: Int64?

    public var modifyTime: String?

    public var requestId: String?

    public var response: String?

    public var status: String?

    public var warnings: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTypeList != nil {
            map["BizTypeList"] = self.bizTypeList!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.errors != nil {
            map["Errors"] = self.errors!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.warnings != nil {
            map["Warnings"] = self.warnings!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizTypeList"] as? [String] {
            self.bizTypeList = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Errors"] as? [String: Any] {
            self.errors = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? String {
            self.response = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Warnings"] as? [String: Any] {
            self.warnings = value
        }
    }
}

public class GetPublishTaskStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPublishTaskStateResponseBody?

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
            var model = GetPublishTaskStateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InitIMConnectRequest : Tea.TeaModel {
    public var agentKey: String?

    public var from: String?

    public var userAccessToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.userAccessToken != nil {
            map["UserAccessToken"] = self.userAccessToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["From"] as? String {
            self.from = value
        }
        if let value = dict["UserAccessToken"] as? String {
            self.userAccessToken = value
        }
    }
}

public class InitIMConnectResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? String {
            self.data = value
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

public class InitIMConnectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitIMConnectResponseBody?

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
            var model = InitIMConnectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LinkInstanceCategoryRequest : Tea.TeaModel {
    public var abilityType: String?

    public var agentKey: String?

    public var categoryIds: String?

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
        if self.abilityType != nil {
            map["AbilityType"] = self.abilityType!
        }
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryIds != nil {
            map["CategoryIds"] = self.categoryIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AbilityType"] as? String {
            self.abilityType = value
        }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryIds"] as? String {
            self.categoryIds = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class LinkInstanceCategoryResponseBody : Tea.TeaModel {
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

public class LinkInstanceCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LinkInstanceCategoryResponseBody?

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
            var model = LinkInstanceCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAgentRequest : Tea.TeaModel {
    public var agentName: String?

    public var goodsCodes: String?

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
        if self.agentName != nil {
            map["AgentName"] = self.agentName!
        }
        if self.goodsCodes != nil {
            map["GoodsCodes"] = self.goodsCodes!
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
        if let value = dict["AgentName"] as? String {
            self.agentName = value
        }
        if let value = dict["GoodsCodes"] as? String {
            self.goodsCodes = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentId: Int64?

        public var agentKey: String?

        public var agentName: String?

        public var instanceInfos: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentId != nil {
                map["AgentId"] = self.agentId!
            }
            if self.agentKey != nil {
                map["AgentKey"] = self.agentKey!
            }
            if self.agentName != nil {
                map["AgentName"] = self.agentName!
            }
            if self.instanceInfos != nil {
                map["InstanceInfos"] = self.instanceInfos!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentId"] as? Int64 {
                self.agentId = value
            }
            if let value = dict["AgentKey"] as? String {
                self.agentKey = value
            }
            if let value = dict["AgentName"] as? String {
                self.agentName = value
            }
            if let value = dict["InstanceInfos"] as? [String: Any] {
                self.instanceInfos = value
            }
        }
    }
    public var data: [ListAgentResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListAgentResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAgentResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class ListAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAgentResponseBody?

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
            var model = ListAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCategoryRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeType: Int32?

    public var parentCategoryId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeType != nil {
            map["KnowledgeType"] = self.knowledgeType!
        }
        if self.parentCategoryId != nil {
            map["ParentCategoryId"] = self.parentCategoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["KnowledgeType"] as? Int32 {
            self.knowledgeType = value
        }
        if let value = dict["ParentCategoryId"] as? Int64 {
            self.parentCategoryId = value
        }
    }
}

public class ListCategoryResponseBody : Tea.TeaModel {
    public class Categories : Tea.TeaModel {
        public var bizCode: String?

        public var categoryId: Int64?

        public var name: String?

        public var parentCategoryId: Int64?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentCategoryId != nil {
                map["ParentCategoryId"] = self.parentCategoryId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParentCategoryId"] as? Int64 {
                self.parentCategoryId = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var categories: [ListCategoryResponseBody.Categories]?

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
        if self.categories != nil {
            var tmp : [Any] = []
            for k in self.categories! {
                tmp.append(k.toMap())
            }
            map["Categories"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Categories"] as? [Any?] {
            var tmp : [ListCategoryResponseBody.Categories] = []
            for v in value {
                if v != nil {
                    var model = ListCategoryResponseBody.Categories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.categories = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCategoryResponseBody?

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
            var model = ListCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConnQuestionRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
    }
}

public class ListConnQuestionResponseBody : Tea.TeaModel {
    public class Outlines : Tea.TeaModel {
        public var connQuestionId: Int64?

        public var createTime: String?

        public var modifyTime: String?

        public var outlineId: Int64?

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
            if self.connQuestionId != nil {
                map["ConnQuestionId"] = self.connQuestionId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.outlineId != nil {
                map["OutlineId"] = self.outlineId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnQuestionId"] as? Int64 {
                self.connQuestionId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["OutlineId"] as? Int64 {
                self.outlineId = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var outlines: [ListConnQuestionResponseBody.Outlines]?

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
        if self.outlines != nil {
            var tmp : [Any] = []
            for k in self.outlines! {
                tmp.append(k.toMap())
            }
            map["Outlines"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Outlines"] as? [Any?] {
            var tmp : [ListConnQuestionResponseBody.Outlines] = []
            for v in value {
                if v != nil {
                    var model = ListConnQuestionResponseBody.Outlines()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.outlines = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListConnQuestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConnQuestionResponseBody?

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
            var model = ListConnQuestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDSEntityRequest : Tea.TeaModel {
    public var agentKey: String?

    public var entityType: String?

    public var instanceId: String?

    public var keyword: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
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
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListDSEntityResponseBody : Tea.TeaModel {
    public class Entities : Tea.TeaModel {
        public var createTime: String?

        public var createUserId: String?

        public var createUserName: String?

        public var entityId: Int64?

        public var entityName: String?

        public var entityType: String?

        public var modifyTime: String?

        public var modifyUserId: String?

        public var modifyUserName: String?

        public var sysEntityCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUserId != nil {
                map["CreateUserId"] = self.createUserId!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.entityName != nil {
                map["EntityName"] = self.entityName!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.modifyUserId != nil {
                map["ModifyUserId"] = self.modifyUserId!
            }
            if self.modifyUserName != nil {
                map["ModifyUserName"] = self.modifyUserName!
            }
            if self.sysEntityCode != nil {
                map["SysEntityCode"] = self.sysEntityCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateUserId"] as? String {
                self.createUserId = value
            }
            if let value = dict["CreateUserName"] as? String {
                self.createUserName = value
            }
            if let value = dict["EntityId"] as? Int64 {
                self.entityId = value
            }
            if let value = dict["EntityName"] as? String {
                self.entityName = value
            }
            if let value = dict["EntityType"] as? String {
                self.entityType = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["ModifyUserId"] as? String {
                self.modifyUserId = value
            }
            if let value = dict["ModifyUserName"] as? String {
                self.modifyUserName = value
            }
            if let value = dict["SysEntityCode"] as? String {
                self.sysEntityCode = value
            }
        }
    }
    public var entities: [ListDSEntityResponseBody.Entities]?

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
        if self.entities != nil {
            var tmp : [Any] = []
            for k in self.entities! {
                tmp.append(k.toMap())
            }
            map["Entities"] = tmp
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
        if let value = dict["Entities"] as? [Any?] {
            var tmp : [ListDSEntityResponseBody.Entities] = []
            for v in value {
                if v != nil {
                    var model = ListDSEntityResponseBody.Entities()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.entities = tmp
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

public class ListDSEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDSEntityResponseBody?

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
            var model = ListDSEntityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDSEntityValueRequest : Tea.TeaModel {
    public var agentKey: String?

    public var entityId: Int64?

    public var entityValueId: Int64?

    public var instanceId: String?

    public var keyword: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.entityValueId != nil {
            map["EntityValueId"] = self.entityValueId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
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
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["EntityValueId"] as? Int64 {
            self.entityValueId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListDSEntityValueResponseBody : Tea.TeaModel {
    public class EntityValues : Tea.TeaModel {
        public var content: String?

        public var createTime: String?

        public var entityId: Int64?

        public var entityValueId: Int64?

        public var modifyTime: String?

        public var synonyms: [String]?

        public override init() {
            super.init()
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
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.entityValueId != nil {
                map["EntityValueId"] = self.entityValueId!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.synonyms != nil {
                map["Synonyms"] = self.synonyms!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EntityId"] as? Int64 {
                self.entityId = value
            }
            if let value = dict["EntityValueId"] as? Int64 {
                self.entityValueId = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["Synonyms"] as? [String] {
                self.synonyms = value
            }
        }
    }
    public var entityValues: [ListDSEntityValueResponseBody.EntityValues]?

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
        if self.entityValues != nil {
            var tmp : [Any] = []
            for k in self.entityValues! {
                tmp.append(k.toMap())
            }
            map["EntityValues"] = tmp
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
        if let value = dict["EntityValues"] as? [Any?] {
            var tmp : [ListDSEntityValueResponseBody.EntityValues] = []
            for v in value {
                if v != nil {
                    var model = ListDSEntityValueResponseBody.EntityValues()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.entityValues = tmp
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

public class ListDSEntityValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDSEntityValueResponseBody?

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
            var model = ListDSEntityValueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceRequest : Tea.TeaModel {
    public var agentKey: String?

    public var name: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var robotType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
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
        if self.robotType != nil {
            map["RobotType"] = self.robotType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RobotType"] as? String {
            self.robotType = value
        }
    }
}

public class ListInstanceResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var avatar: String?

        public var createTime: String?

        public var instanceId: String?

        public var introduction: String?

        public var languageCode: String?

        public var name: String?

        public var robotType: String?

        public override init() {
            super.init()
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
            if self.robotType != nil {
                map["RobotType"] = self.robotType!
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
            if let value = dict["RobotType"] as? String {
                self.robotType = value
            }
        }
    }
    public var instances: [ListInstanceResponseBody.Instances]?

    public var pageNumber: Int64?

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
            var tmp : [ListInstanceResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = ListInstanceResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["PageNumber"] as? Int64 {
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

public class ListInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceResponseBody?

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
            var model = ListInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIntentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var intentName: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentName != nil {
            map["IntentName"] = self.intentName!
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
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentName"] as? String {
            self.intentName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListIntentResponseBody : Tea.TeaModel {
    public class Intents : Tea.TeaModel {
        public class SlotInfos : Tea.TeaModel {
            public var array: Bool?

            public var encrypt: Bool?

            public var interactive: Bool?

            public var name: String?

            public var slotId: String?

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
                if self.array != nil {
                    map["Array"] = self.array!
                }
                if self.encrypt != nil {
                    map["Encrypt"] = self.encrypt!
                }
                if self.interactive != nil {
                    map["Interactive"] = self.interactive!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.slotId != nil {
                    map["SlotId"] = self.slotId!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Array"] as? Bool {
                    self.array = value
                }
                if let value = dict["Encrypt"] as? Bool {
                    self.encrypt = value
                }
                if let value = dict["Interactive"] as? Bool {
                    self.interactive = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["SlotId"] as? String {
                    self.slotId = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var aliasName: String?

        public var createTime: String?

        public var createUserId: String?

        public var createUserName: String?

        public var intentId: Int64?

        public var intentName: String?

        public var modifyTime: String?

        public var modifyUserId: String?

        public var modifyUserName: String?

        public var slotInfos: [ListIntentResponseBody.Intents.SlotInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUserId != nil {
                map["CreateUserId"] = self.createUserId!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.intentId != nil {
                map["IntentId"] = self.intentId!
            }
            if self.intentName != nil {
                map["IntentName"] = self.intentName!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.modifyUserId != nil {
                map["ModifyUserId"] = self.modifyUserId!
            }
            if self.modifyUserName != nil {
                map["ModifyUserName"] = self.modifyUserName!
            }
            if self.slotInfos != nil {
                var tmp : [Any] = []
                for k in self.slotInfos! {
                    tmp.append(k.toMap())
                }
                map["SlotInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliasName"] as? String {
                self.aliasName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateUserId"] as? String {
                self.createUserId = value
            }
            if let value = dict["CreateUserName"] as? String {
                self.createUserName = value
            }
            if let value = dict["IntentId"] as? Int64 {
                self.intentId = value
            }
            if let value = dict["IntentName"] as? String {
                self.intentName = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["ModifyUserId"] as? String {
                self.modifyUserId = value
            }
            if let value = dict["ModifyUserName"] as? String {
                self.modifyUserName = value
            }
            if let value = dict["SlotInfos"] as? [Any?] {
                var tmp : [ListIntentResponseBody.Intents.SlotInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListIntentResponseBody.Intents.SlotInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.slotInfos = tmp
            }
        }
    }
    public var intents: [ListIntentResponseBody.Intents]?

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
        if self.intents != nil {
            var tmp : [Any] = []
            for k in self.intents! {
                tmp.append(k.toMap())
            }
            map["Intents"] = tmp
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
        if let value = dict["Intents"] as? [Any?] {
            var tmp : [ListIntentResponseBody.Intents] = []
            for v in value {
                if v != nil {
                    var model = ListIntentResponseBody.Intents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.intents = tmp
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

public class ListIntentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIntentResponseBody?

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
            var model = ListIntentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLgfRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var intentId: Int64?

    public var lgfText: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        if self.lgfText != nil {
            map["LgfText"] = self.lgfText!
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
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentId"] as? Int64 {
            self.intentId = value
        }
        if let value = dict["LgfText"] as? String {
            self.lgfText = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListLgfResponseBody : Tea.TeaModel {
    public class Lgfs : Tea.TeaModel {
        public var createTime: String?

        public var intentId: Int64?

        public var lgfId: Int64?

        public var modifyTime: String?

        public var ruleText: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.intentId != nil {
                map["IntentId"] = self.intentId!
            }
            if self.lgfId != nil {
                map["LgfId"] = self.lgfId!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.ruleText != nil {
                map["RuleText"] = self.ruleText!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["IntentId"] as? Int64 {
                self.intentId = value
            }
            if let value = dict["LgfId"] as? Int64 {
                self.lgfId = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["RuleText"] as? String {
                self.ruleText = value
            }
        }
    }
    public var lgfs: [ListLgfResponseBody.Lgfs]?

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
        if self.lgfs != nil {
            var tmp : [Any] = []
            for k in self.lgfs! {
                tmp.append(k.toMap())
            }
            map["Lgfs"] = tmp
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
        if let value = dict["Lgfs"] as? [Any?] {
            var tmp : [ListLgfResponseBody.Lgfs] = []
            for v in value {
                if v != nil {
                    var model = ListLgfResponseBody.Lgfs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.lgfs = tmp
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

public class ListLgfResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLgfResponseBody?

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
            var model = ListLgfResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSaasInfoRequest : Tea.TeaModel {
    public var agentKey: String?

    public var saasGroupCodes: String?

    public var saasName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.saasGroupCodes != nil {
            map["SaasGroupCodes"] = self.saasGroupCodes!
        }
        if self.saasName != nil {
            map["SaasName"] = self.saasName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["SaasGroupCodes"] as? String {
            self.saasGroupCodes = value
        }
        if let value = dict["SaasName"] as? String {
            self.saasName = value
        }
    }
}

public class ListSaasInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var enName: String?

        public var name: String?

        public var serviceUrl: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.enName != nil {
                map["EnName"] = self.enName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.serviceUrl != nil {
                map["ServiceUrl"] = self.serviceUrl!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["EnName"] as? String {
                self.enName = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ServiceUrl"] as? String {
                self.serviceUrl = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var data: [ListSaasInfoResponseBody.Data]?

    public var requestId: String?

    public var saasToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.saasToken != nil {
            map["SaasToken"] = self.saasToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListSaasInfoResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListSaasInfoResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SaasToken"] as? String {
            self.saasToken = value
        }
    }
}

public class ListSaasInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSaasInfoResponseBody?

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
            var model = ListSaasInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSaasPermissionGroupInfosRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
    }
}

public class ListSaasPermissionGroupInfosResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PgInfos : Tea.TeaModel {
            public var pgCode: String?

            public var pgEnName: String?

            public var pgName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pgCode != nil {
                    map["PgCode"] = self.pgCode!
                }
                if self.pgEnName != nil {
                    map["PgEnName"] = self.pgEnName!
                }
                if self.pgName != nil {
                    map["PgName"] = self.pgName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PgCode"] as? String {
                    self.pgCode = value
                }
                if let value = dict["PgEnName"] as? String {
                    self.pgEnName = value
                }
                if let value = dict["PgName"] as? String {
                    self.pgName = value
                }
            }
        }
        public var enName: String?

        public var name: String?

        public var pgInfos: [ListSaasPermissionGroupInfosResponseBody.Data.PgInfos]?

        public var saasCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enName != nil {
                map["EnName"] = self.enName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.pgInfos != nil {
                var tmp : [Any] = []
                for k in self.pgInfos! {
                    tmp.append(k.toMap())
                }
                map["PgInfos"] = tmp
            }
            if self.saasCode != nil {
                map["SaasCode"] = self.saasCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnName"] as? String {
                self.enName = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PgInfos"] as? [Any?] {
                var tmp : [ListSaasPermissionGroupInfosResponseBody.Data.PgInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListSaasPermissionGroupInfosResponseBody.Data.PgInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pgInfos = tmp
            }
            if let value = dict["SaasCode"] as? String {
                self.saasCode = value
            }
        }
    }
    public var data: [ListSaasPermissionGroupInfosResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListSaasPermissionGroupInfosResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListSaasPermissionGroupInfosResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListSaasPermissionGroupInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSaasPermissionGroupInfosResponseBody?

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
            var model = ListSaasPermissionGroupInfosResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSimQuestionRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
    }
}

public class ListSimQuestionResponseBody : Tea.TeaModel {
    public class SimQuestions : Tea.TeaModel {
        public var createTime: String?

        public var modifyTime: String?

        public var simQuestionId: Int64?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.simQuestionId != nil {
                map["SimQuestionId"] = self.simQuestionId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["SimQuestionId"] as? Int64 {
                self.simQuestionId = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var requestId: String?

    public var simQuestions: [ListSimQuestionResponseBody.SimQuestions]?

    public override init() {
        super.init()
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
        if self.simQuestions != nil {
            var tmp : [Any] = []
            for k in self.simQuestions! {
                tmp.append(k.toMap())
            }
            map["SimQuestions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SimQuestions"] as? [Any?] {
            var tmp : [ListSimQuestionResponseBody.SimQuestions] = []
            for v in value {
                if v != nil {
                    var model = ListSimQuestionResponseBody.SimQuestions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.simQuestions = tmp
        }
    }
}

public class ListSimQuestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSimQuestionResponseBody?

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
            var model = ListSimQuestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSolutionRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
    }
}

public class ListSolutionResponseBody : Tea.TeaModel {
    public class Solutions : Tea.TeaModel {
        public var content: String?

        public var contentType: Int32?

        public var createTime: String?

        public var modifyTime: String?

        public var perspectiveCodes: [String]?

        public var plainText: String?

        public var solutionId: Int64?

        public var tagIdList: [Int64]?

        public override init() {
            super.init()
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
            if self.contentType != nil {
                map["ContentType"] = self.contentType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.perspectiveCodes != nil {
                map["PerspectiveCodes"] = self.perspectiveCodes!
            }
            if self.plainText != nil {
                map["PlainText"] = self.plainText!
            }
            if self.solutionId != nil {
                map["SolutionId"] = self.solutionId!
            }
            if self.tagIdList != nil {
                map["TagIdList"] = self.tagIdList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["ContentType"] as? Int32 {
                self.contentType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["PerspectiveCodes"] as? [String] {
                self.perspectiveCodes = value
            }
            if let value = dict["PlainText"] as? String {
                self.plainText = value
            }
            if let value = dict["SolutionId"] as? Int64 {
                self.solutionId = value
            }
            if let value = dict["TagIdList"] as? [Int64] {
                self.tagIdList = value
            }
        }
    }
    public var requestId: String?

    public var solutions: [ListSolutionResponseBody.Solutions]?

    public override init() {
        super.init()
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
        if self.solutions != nil {
            var tmp : [Any] = []
            for k in self.solutions! {
                tmp.append(k.toMap())
            }
            map["Solutions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Solutions"] as? [Any?] {
            var tmp : [ListSolutionResponseBody.Solutions] = []
            for v in value {
                if v != nil {
                    var model = ListSolutionResponseBody.Solutions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.solutions = tmp
        }
    }
}

public class ListSolutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSolutionResponseBody?

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
            var model = ListSolutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagRequest : Tea.TeaModel {
    public var agentKey: String?

    public var clientToken: String?

    public var groupId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var tagName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["GroupId"] as? Int64 {
            self.groupId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
    }
}

public class ListTagResponseBody : Tea.TeaModel {
    public class TagGroups : Tea.TeaModel {
        public var createTime: String?

        public var createUserId: Int64?

        public var createUserName: String?

        public var groupId: Int64?

        public var id: Int64?

        public var modifyTime: String?

        public var modifyUserId: Int64?

        public var modifyUserName: String?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUserId != nil {
                map["CreateUserId"] = self.createUserId!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.modifyUserId != nil {
                map["ModifyUserId"] = self.modifyUserId!
            }
            if self.modifyUserName != nil {
                map["ModifyUserName"] = self.modifyUserName!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateUserId"] as? Int64 {
                self.createUserId = value
            }
            if let value = dict["CreateUserName"] as? String {
                self.createUserName = value
            }
            if let value = dict["GroupId"] as? Int64 {
                self.groupId = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["ModifyUserId"] as? Int64 {
                self.modifyUserId = value
            }
            if let value = dict["ModifyUserName"] as? String {
                self.modifyUserName = value
            }
            if let value = dict["TagName"] as? String {
                self.tagName = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tagGroups: [ListTagResponseBody.TagGroups]?

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
        if self.tagGroups != nil {
            var tmp : [Any] = []
            for k in self.tagGroups! {
                tmp.append(k.toMap())
            }
            map["TagGroups"] = tmp
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
        if let value = dict["TagGroups"] as? [Any?] {
            var tmp : [ListTagResponseBody.TagGroups] = []
            for v in value {
                if v != nil {
                    var model = ListTagResponseBody.TagGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagGroups = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResponseBody?

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
            var model = ListTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagGroupRequest : Tea.TeaModel {
    public var agentKey: String?

    public var clientToken: String?

    public var groupName: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
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
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListTagGroupResponseBody : Tea.TeaModel {
    public class TagGroups : Tea.TeaModel {
        public var createTime: String?

        public var createUserId: Int64?

        public var createUserName: String?

        public var defaultTagId: Int64?

        public var groupName: String?

        public var id: Int64?

        public var modifyTime: String?

        public var modifyUserId: Int64?

        public var modifyUserName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUserId != nil {
                map["CreateUserId"] = self.createUserId!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.defaultTagId != nil {
                map["DefaultTagId"] = self.defaultTagId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.modifyUserId != nil {
                map["ModifyUserId"] = self.modifyUserId!
            }
            if self.modifyUserName != nil {
                map["ModifyUserName"] = self.modifyUserName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateUserId"] as? Int64 {
                self.createUserId = value
            }
            if let value = dict["CreateUserName"] as? String {
                self.createUserName = value
            }
            if let value = dict["DefaultTagId"] as? Int64 {
                self.defaultTagId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["ModifyUserId"] as? Int64 {
                self.modifyUserId = value
            }
            if let value = dict["ModifyUserName"] as? String {
                self.modifyUserName = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tagGroups: [ListTagGroupResponseBody.TagGroups]?

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
        if self.tagGroups != nil {
            var tmp : [Any] = []
            for k in self.tagGroups! {
                tmp.append(k.toMap())
            }
            map["TagGroups"] = tmp
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
        if let value = dict["TagGroups"] as? [Any?] {
            var tmp : [ListTagGroupResponseBody.TagGroups] = []
            for v in value {
                if v != nil {
                    var model = ListTagGroupResponseBody.TagGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagGroups = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTagGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagGroupResponseBody?

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
            var model = ListTagGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTongyiChatHistorysRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endTime: String?

    public var limit: Int32?

    public var robotInstanceId: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["RobotInstanceId"] as? String {
            self.robotInstanceId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class ListTongyiChatHistorysResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostTime"] as? String {
            self.costTime = value
        }
        if let value = dict["Datas"] as? [[String: Any]] {
            self.datas = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListTongyiChatHistorysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTongyiChatHistorysResponseBody?

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
            var model = ListTongyiChatHistorysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTongyiConversationLogsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var robotInstanceId: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["RobotInstanceId"] as? String {
            self.robotInstanceId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class ListTongyiConversationLogsResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostTime"] as? String {
            self.costTime = value
        }
        if let value = dict["Datas"] as? [[String: Any]] {
            self.datas = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListTongyiConversationLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTongyiConversationLogsResponseBody?

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
            var model = ListTongyiConversationLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUserSayRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var instanceId: String?

    public var intentId: Int64?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
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
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentId"] as? Int64 {
            self.intentId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListUserSayResponseBody : Tea.TeaModel {
    public class UserSays : Tea.TeaModel {
        public class SlotInfos : Tea.TeaModel {
            public var endIndex: Int32?

            public var slotId: String?

            public var startIndex: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endIndex != nil {
                    map["EndIndex"] = self.endIndex!
                }
                if self.slotId != nil {
                    map["SlotId"] = self.slotId!
                }
                if self.startIndex != nil {
                    map["StartIndex"] = self.startIndex!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndIndex"] as? Int32 {
                    self.endIndex = value
                }
                if let value = dict["SlotId"] as? String {
                    self.slotId = value
                }
                if let value = dict["StartIndex"] as? Int32 {
                    self.startIndex = value
                }
            }
        }
        public var content: String?

        public var createTime: String?

        public var intentId: Int64?

        public var modifyTime: String?

        public var slotInfos: [ListUserSayResponseBody.UserSays.SlotInfos]?

        public var userSayId: Int64?

        public override init() {
            super.init()
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
            if self.intentId != nil {
                map["IntentId"] = self.intentId!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.slotInfos != nil {
                var tmp : [Any] = []
                for k in self.slotInfos! {
                    tmp.append(k.toMap())
                }
                map["SlotInfos"] = tmp
            }
            if self.userSayId != nil {
                map["UserSayId"] = self.userSayId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["IntentId"] as? Int64 {
                self.intentId = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["SlotInfos"] as? [Any?] {
                var tmp : [ListUserSayResponseBody.UserSays.SlotInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListUserSayResponseBody.UserSays.SlotInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.slotInfos = tmp
            }
            if let value = dict["UserSayId"] as? Int64 {
                self.userSayId = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var userSays: [ListUserSayResponseBody.UserSays]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.userSays != nil {
            var tmp : [Any] = []
            for k in self.userSays! {
                tmp.append(k.toMap())
            }
            map["UserSays"] = tmp
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["UserSays"] as? [Any?] {
            var tmp : [ListUserSayResponseBody.UserSays] = []
            for v in value {
                if v != nil {
                    var model = ListUserSayResponseBody.UserSays()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.userSays = tmp
        }
    }
}

public class ListUserSayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserSayResponseBody?

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
            var model = ListUserSayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class NluRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
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
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Utterance"] as? String {
            self.utterance = value
        }
    }
}

public class NluResponseBody : Tea.TeaModel {
    public class Messages : Tea.TeaModel {
        public class DialogHubNluInfo : Tea.TeaModel {
            public class GlobalDictList : Tea.TeaModel {
                public var standardWord: String?

                public var word: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.standardWord != nil {
                        map["StandardWord"] = self.standardWord!
                    }
                    if self.word != nil {
                        map["Word"] = self.word!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["StandardWord"] as? String {
                        self.standardWord = value
                    }
                    if let value = dict["Word"] as? String {
                        self.word = value
                    }
                }
            }
            public class GlobalSensitiveWordList : Tea.TeaModel {
                public var standardWord: String?

                public var word: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.standardWord != nil {
                        map["StandardWord"] = self.standardWord!
                    }
                    if self.word != nil {
                        map["Word"] = self.word!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["StandardWord"] as? String {
                        self.standardWord = value
                    }
                    if let value = dict["Word"] as? String {
                        self.word = value
                    }
                }
            }
            public var globalDictList: [NluResponseBody.Messages.DialogHubNluInfo.GlobalDictList]?

            public var globalSensitiveWordList: [NluResponseBody.Messages.DialogHubNluInfo.GlobalSensitiveWordList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.globalDictList != nil {
                    var tmp : [Any] = []
                    for k in self.globalDictList! {
                        tmp.append(k.toMap())
                    }
                    map["GlobalDictList"] = tmp
                }
                if self.globalSensitiveWordList != nil {
                    var tmp : [Any] = []
                    for k in self.globalSensitiveWordList! {
                        tmp.append(k.toMap())
                    }
                    map["GlobalSensitiveWordList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GlobalDictList"] as? [Any?] {
                    var tmp : [NluResponseBody.Messages.DialogHubNluInfo.GlobalDictList] = []
                    for v in value {
                        if v != nil {
                            var model = NluResponseBody.Messages.DialogHubNluInfo.GlobalDictList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.globalDictList = tmp
                }
                if let value = dict["GlobalSensitiveWordList"] as? [Any?] {
                    var tmp : [NluResponseBody.Messages.DialogHubNluInfo.GlobalSensitiveWordList] = []
                    for v in value {
                        if v != nil {
                            var model = NluResponseBody.Messages.DialogHubNluInfo.GlobalSensitiveWordList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.globalSensitiveWordList = tmp
                }
            }
        }
        public class DsNluInfo : Tea.TeaModel {
            public class EntityList : Tea.TeaModel {
                public var name: String?

                public var origin: String?

                public var type: String?

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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.origin != nil {
                        map["Origin"] = self.origin!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Origin"] as? String {
                        self.origin = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public class IntentList : Tea.TeaModel {
                public class SlotList : Tea.TeaModel {
                    public var name: String?

                    public var origin: String?

                    public var type: String?

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
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.origin != nil {
                            map["Origin"] = self.origin!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Origin"] as? String {
                            self.origin = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
                        }
                    }
                }
                public var intentId: Int64?

                public var matchDetail: String?

                public var matchType: String?

                public var name: String?

                public var score: Double?

                public var slotList: [NluResponseBody.Messages.DsNluInfo.IntentList.SlotList]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.intentId != nil {
                        map["IntentId"] = self.intentId!
                    }
                    if self.matchDetail != nil {
                        map["MatchDetail"] = self.matchDetail!
                    }
                    if self.matchType != nil {
                        map["MatchType"] = self.matchType!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    if self.slotList != nil {
                        var tmp : [Any] = []
                        for k in self.slotList! {
                            tmp.append(k.toMap())
                        }
                        map["SlotList"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["IntentId"] as? Int64 {
                        self.intentId = value
                    }
                    if let value = dict["MatchDetail"] as? String {
                        self.matchDetail = value
                    }
                    if let value = dict["MatchType"] as? String {
                        self.matchType = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                    if let value = dict["SlotList"] as? [Any?] {
                        var tmp : [NluResponseBody.Messages.DsNluInfo.IntentList.SlotList] = []
                        for v in value {
                            if v != nil {
                                var model = NluResponseBody.Messages.DsNluInfo.IntentList.SlotList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.slotList = tmp
                    }
                }
            }
            public var entityList: [NluResponseBody.Messages.DsNluInfo.EntityList]?

            public var intentList: [NluResponseBody.Messages.DsNluInfo.IntentList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.entityList != nil {
                    var tmp : [Any] = []
                    for k in self.entityList! {
                        tmp.append(k.toMap())
                    }
                    map["EntityList"] = tmp
                }
                if self.intentList != nil {
                    var tmp : [Any] = []
                    for k in self.intentList! {
                        tmp.append(k.toMap())
                    }
                    map["IntentList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EntityList"] as? [Any?] {
                    var tmp : [NluResponseBody.Messages.DsNluInfo.EntityList] = []
                    for v in value {
                        if v != nil {
                            var model = NluResponseBody.Messages.DsNluInfo.EntityList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.entityList = tmp
                }
                if let value = dict["IntentList"] as? [Any?] {
                    var tmp : [NluResponseBody.Messages.DsNluInfo.IntentList] = []
                    for v in value {
                        if v != nil {
                            var model = NluResponseBody.Messages.DsNluInfo.IntentList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.intentList = tmp
                }
            }
        }
        public var dialogHubNluInfo: NluResponseBody.Messages.DialogHubNluInfo?

        public var dsNluInfo: NluResponseBody.Messages.DsNluInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dialogHubNluInfo?.validate()
            try self.dsNluInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dialogHubNluInfo != nil {
                map["DialogHubNluInfo"] = self.dialogHubNluInfo?.toMap()
            }
            if self.dsNluInfo != nil {
                map["DsNluInfo"] = self.dsNluInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DialogHubNluInfo"] as? [String: Any?] {
                var model = NluResponseBody.Messages.DialogHubNluInfo()
                model.fromMap(value)
                self.dialogHubNluInfo = model
            }
            if let value = dict["DsNluInfo"] as? [String: Any?] {
                var model = NluResponseBody.Messages.DsNluInfo()
                model.fromMap(value)
                self.dsNluInfo = model
            }
        }
    }
    public var messageId: String?

    public var messages: [NluResponseBody.Messages]?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["Messages"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["Messages"] as? [Any?] {
            var tmp : [NluResponseBody.Messages] = []
            for v in value {
                if v != nil {
                    var model = NluResponseBody.Messages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messages = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class NluResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: NluResponseBody?

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
            var model = NluResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPerspectivesRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
    }
}

public class QueryPerspectivesResponseBody : Tea.TeaModel {
    public class Perspectives : Tea.TeaModel {
        public var createTime: String?

        public var modifyTime: String?

        public var name: String?

        public var perspectiveCode: String?

        public var perspectiveId: String?

        public var selfDefine: Bool?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.perspectiveCode != nil {
                map["PerspectiveCode"] = self.perspectiveCode!
            }
            if self.perspectiveId != nil {
                map["PerspectiveId"] = self.perspectiveId!
            }
            if self.selfDefine != nil {
                map["SelfDefine"] = self.selfDefine!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PerspectiveCode"] as? String {
                self.perspectiveCode = value
            }
            if let value = dict["PerspectiveId"] as? String {
                self.perspectiveId = value
            }
            if let value = dict["SelfDefine"] as? Bool {
                self.selfDefine = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var perspectives: [QueryPerspectivesResponseBody.Perspectives]?

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
        if self.perspectives != nil {
            var tmp : [Any] = []
            for k in self.perspectives! {
                tmp.append(k.toMap())
            }
            map["Perspectives"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Perspectives"] as? [Any?] {
            var tmp : [QueryPerspectivesResponseBody.Perspectives] = []
            for v in value {
                if v != nil {
                    var model = QueryPerspectivesResponseBody.Perspectives()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.perspectives = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryPerspectivesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPerspectivesResponseBody?

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
            var model = QueryPerspectivesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RetryDocRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
    }
}

public class RetryDocResponseBody : Tea.TeaModel {
    public var knowledgeId: Int64?

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
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RetryDocResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryDocResponseBody?

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
            var model = RetryDocResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchDocRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryIds: [Int64]?

    public var createTimeBegin: String?

    public var createTimeEnd: String?

    public var createUserName: String?

    public var endTimeBegin: String?

    public var endTimeEnd: String?

    public var keyword: String?

    public var modifyTimeBegin: String?

    public var modifyTimeEnd: String?

    public var modifyUserName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var processStatus: Int32?

    public var searchScope: Int32?

    public var startTimeBegin: String?

    public var startTimeEnd: String?

    public var status: Int32?

    public var tagIds: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryIds != nil {
            map["CategoryIds"] = self.categoryIds!
        }
        if self.createTimeBegin != nil {
            map["CreateTimeBegin"] = self.createTimeBegin!
        }
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.endTimeBegin != nil {
            map["EndTimeBegin"] = self.endTimeBegin!
        }
        if self.endTimeEnd != nil {
            map["EndTimeEnd"] = self.endTimeEnd!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.modifyTimeBegin != nil {
            map["ModifyTimeBegin"] = self.modifyTimeBegin!
        }
        if self.modifyTimeEnd != nil {
            map["ModifyTimeEnd"] = self.modifyTimeEnd!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.processStatus != nil {
            map["ProcessStatus"] = self.processStatus!
        }
        if self.searchScope != nil {
            map["SearchScope"] = self.searchScope!
        }
        if self.startTimeBegin != nil {
            map["StartTimeBegin"] = self.startTimeBegin!
        }
        if self.startTimeEnd != nil {
            map["StartTimeEnd"] = self.startTimeEnd!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryIds"] as? [Int64] {
            self.categoryIds = value
        }
        if let value = dict["CreateTimeBegin"] as? String {
            self.createTimeBegin = value
        }
        if let value = dict["CreateTimeEnd"] as? String {
            self.createTimeEnd = value
        }
        if let value = dict["CreateUserName"] as? String {
            self.createUserName = value
        }
        if let value = dict["EndTimeBegin"] as? String {
            self.endTimeBegin = value
        }
        if let value = dict["EndTimeEnd"] as? String {
            self.endTimeEnd = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["ModifyTimeBegin"] as? String {
            self.modifyTimeBegin = value
        }
        if let value = dict["ModifyTimeEnd"] as? String {
            self.modifyTimeEnd = value
        }
        if let value = dict["ModifyUserName"] as? String {
            self.modifyUserName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProcessStatus"] as? Int32 {
            self.processStatus = value
        }
        if let value = dict["SearchScope"] as? Int32 {
            self.searchScope = value
        }
        if let value = dict["StartTimeBegin"] as? String {
            self.startTimeBegin = value
        }
        if let value = dict["StartTimeEnd"] as? String {
            self.startTimeEnd = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TagIds"] as? [Int64] {
            self.tagIds = value
        }
    }
}

public class SearchDocShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryIdsShrink: String?

    public var createTimeBegin: String?

    public var createTimeEnd: String?

    public var createUserName: String?

    public var endTimeBegin: String?

    public var endTimeEnd: String?

    public var keyword: String?

    public var modifyTimeBegin: String?

    public var modifyTimeEnd: String?

    public var modifyUserName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var processStatus: Int32?

    public var searchScope: Int32?

    public var startTimeBegin: String?

    public var startTimeEnd: String?

    public var status: Int32?

    public var tagIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryIdsShrink != nil {
            map["CategoryIds"] = self.categoryIdsShrink!
        }
        if self.createTimeBegin != nil {
            map["CreateTimeBegin"] = self.createTimeBegin!
        }
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.endTimeBegin != nil {
            map["EndTimeBegin"] = self.endTimeBegin!
        }
        if self.endTimeEnd != nil {
            map["EndTimeEnd"] = self.endTimeEnd!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.modifyTimeBegin != nil {
            map["ModifyTimeBegin"] = self.modifyTimeBegin!
        }
        if self.modifyTimeEnd != nil {
            map["ModifyTimeEnd"] = self.modifyTimeEnd!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.processStatus != nil {
            map["ProcessStatus"] = self.processStatus!
        }
        if self.searchScope != nil {
            map["SearchScope"] = self.searchScope!
        }
        if self.startTimeBegin != nil {
            map["StartTimeBegin"] = self.startTimeBegin!
        }
        if self.startTimeEnd != nil {
            map["StartTimeEnd"] = self.startTimeEnd!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIdsShrink != nil {
            map["TagIds"] = self.tagIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryIds"] as? String {
            self.categoryIdsShrink = value
        }
        if let value = dict["CreateTimeBegin"] as? String {
            self.createTimeBegin = value
        }
        if let value = dict["CreateTimeEnd"] as? String {
            self.createTimeEnd = value
        }
        if let value = dict["CreateUserName"] as? String {
            self.createUserName = value
        }
        if let value = dict["EndTimeBegin"] as? String {
            self.endTimeBegin = value
        }
        if let value = dict["EndTimeEnd"] as? String {
            self.endTimeEnd = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["ModifyTimeBegin"] as? String {
            self.modifyTimeBegin = value
        }
        if let value = dict["ModifyTimeEnd"] as? String {
            self.modifyTimeEnd = value
        }
        if let value = dict["ModifyUserName"] as? String {
            self.modifyUserName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProcessStatus"] as? Int32 {
            self.processStatus = value
        }
        if let value = dict["SearchScope"] as? Int32 {
            self.searchScope = value
        }
        if let value = dict["StartTimeBegin"] as? String {
            self.startTimeBegin = value
        }
        if let value = dict["StartTimeEnd"] as? String {
            self.startTimeEnd = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TagIds"] as? String {
            self.tagIdsShrink = value
        }
    }
}

public class SearchDocResponseBody : Tea.TeaModel {
    public class DocHits : Tea.TeaModel {
        public class DocTags : Tea.TeaModel {
            public var defaultTag: Bool?

            public var groupId: Int64?

            public var groupName: String?

            public var tagId: Int64?

            public var tagName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.defaultTag != nil {
                    map["DefaultTag"] = self.defaultTag!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.tagId != nil {
                    map["TagId"] = self.tagId!
                }
                if self.tagName != nil {
                    map["TagName"] = self.tagName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultTag"] as? Bool {
                    self.defaultTag = value
                }
                if let value = dict["GroupId"] as? Int64 {
                    self.groupId = value
                }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["TagId"] as? Int64 {
                    self.tagId = value
                }
                if let value = dict["TagName"] as? String {
                    self.tagName = value
                }
            }
        }
        public var bizCode: String?

        public var categoryId: Int64?

        public var config: String?

        public var createTime: String?

        public var createUserId: Int64?

        public var createUserName: String?

        public var docName: String?

        public var docTags: [SearchDocResponseBody.DocHits.DocTags]?

        public var effectStatus: Int32?

        public var endDate: String?

        public var knowledgeId: Int64?

        public var meta: String?

        public var modifyTime: String?

        public var modifyUserId: Int64?

        public var modifyUserName: String?

        public var processCanRetry: Bool?

        public var processMessage: String?

        public var processStatus: Int32?

        public var startDate: String?

        public var status: Int32?

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
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUserId != nil {
                map["CreateUserId"] = self.createUserId!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.docName != nil {
                map["DocName"] = self.docName!
            }
            if self.docTags != nil {
                var tmp : [Any] = []
                for k in self.docTags! {
                    tmp.append(k.toMap())
                }
                map["DocTags"] = tmp
            }
            if self.effectStatus != nil {
                map["EffectStatus"] = self.effectStatus!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.knowledgeId != nil {
                map["KnowledgeId"] = self.knowledgeId!
            }
            if self.meta != nil {
                map["Meta"] = self.meta!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.modifyUserId != nil {
                map["ModifyUserId"] = self.modifyUserId!
            }
            if self.modifyUserName != nil {
                map["ModifyUserName"] = self.modifyUserName!
            }
            if self.processCanRetry != nil {
                map["ProcessCanRetry"] = self.processCanRetry!
            }
            if self.processMessage != nil {
                map["ProcessMessage"] = self.processMessage!
            }
            if self.processStatus != nil {
                map["ProcessStatus"] = self.processStatus!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateUserId"] as? Int64 {
                self.createUserId = value
            }
            if let value = dict["CreateUserName"] as? String {
                self.createUserName = value
            }
            if let value = dict["DocName"] as? String {
                self.docName = value
            }
            if let value = dict["DocTags"] as? [Any?] {
                var tmp : [SearchDocResponseBody.DocHits.DocTags] = []
                for v in value {
                    if v != nil {
                        var model = SearchDocResponseBody.DocHits.DocTags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.docTags = tmp
            }
            if let value = dict["EffectStatus"] as? Int32 {
                self.effectStatus = value
            }
            if let value = dict["EndDate"] as? String {
                self.endDate = value
            }
            if let value = dict["KnowledgeId"] as? Int64 {
                self.knowledgeId = value
            }
            if let value = dict["Meta"] as? String {
                self.meta = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["ModifyUserId"] as? Int64 {
                self.modifyUserId = value
            }
            if let value = dict["ModifyUserName"] as? String {
                self.modifyUserName = value
            }
            if let value = dict["ProcessCanRetry"] as? Bool {
                self.processCanRetry = value
            }
            if let value = dict["ProcessMessage"] as? String {
                self.processMessage = value
            }
            if let value = dict["ProcessStatus"] as? Int32 {
                self.processStatus = value
            }
            if let value = dict["StartDate"] as? String {
                self.startDate = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var docHits: [SearchDocResponseBody.DocHits]?

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
        if self.docHits != nil {
            var tmp : [Any] = []
            for k in self.docHits! {
                tmp.append(k.toMap())
            }
            map["DocHits"] = tmp
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
        if let value = dict["DocHits"] as? [Any?] {
            var tmp : [SearchDocResponseBody.DocHits] = []
            for v in value {
                if v != nil {
                    var model = SearchDocResponseBody.DocHits()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.docHits = tmp
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

public class SearchDocResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchDocResponseBody?

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
            var model = SearchDocResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchFaqRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryIds: [Int64]?

    public var createTimeBegin: String?

    public var createTimeEnd: String?

    public var createUserName: String?

    public var endTimeBegin: String?

    public var endTimeEnd: String?

    public var keyword: String?

    public var modifyTimeBegin: String?

    public var modifyTimeEnd: String?

    public var modifyUserName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchScope: Int32?

    public var startTimeBegin: String?

    public var startTimeEnd: String?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryIds != nil {
            map["CategoryIds"] = self.categoryIds!
        }
        if self.createTimeBegin != nil {
            map["CreateTimeBegin"] = self.createTimeBegin!
        }
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.endTimeBegin != nil {
            map["EndTimeBegin"] = self.endTimeBegin!
        }
        if self.endTimeEnd != nil {
            map["EndTimeEnd"] = self.endTimeEnd!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.modifyTimeBegin != nil {
            map["ModifyTimeBegin"] = self.modifyTimeBegin!
        }
        if self.modifyTimeEnd != nil {
            map["ModifyTimeEnd"] = self.modifyTimeEnd!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchScope != nil {
            map["SearchScope"] = self.searchScope!
        }
        if self.startTimeBegin != nil {
            map["StartTimeBegin"] = self.startTimeBegin!
        }
        if self.startTimeEnd != nil {
            map["StartTimeEnd"] = self.startTimeEnd!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryIds"] as? [Int64] {
            self.categoryIds = value
        }
        if let value = dict["CreateTimeBegin"] as? String {
            self.createTimeBegin = value
        }
        if let value = dict["CreateTimeEnd"] as? String {
            self.createTimeEnd = value
        }
        if let value = dict["CreateUserName"] as? String {
            self.createUserName = value
        }
        if let value = dict["EndTimeBegin"] as? String {
            self.endTimeBegin = value
        }
        if let value = dict["EndTimeEnd"] as? String {
            self.endTimeEnd = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["ModifyTimeBegin"] as? String {
            self.modifyTimeBegin = value
        }
        if let value = dict["ModifyTimeEnd"] as? String {
            self.modifyTimeEnd = value
        }
        if let value = dict["ModifyUserName"] as? String {
            self.modifyUserName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SearchScope"] as? Int32 {
            self.searchScope = value
        }
        if let value = dict["StartTimeBegin"] as? String {
            self.startTimeBegin = value
        }
        if let value = dict["StartTimeEnd"] as? String {
            self.startTimeEnd = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class SearchFaqShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryIdsShrink: String?

    public var createTimeBegin: String?

    public var createTimeEnd: String?

    public var createUserName: String?

    public var endTimeBegin: String?

    public var endTimeEnd: String?

    public var keyword: String?

    public var modifyTimeBegin: String?

    public var modifyTimeEnd: String?

    public var modifyUserName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var searchScope: Int32?

    public var startTimeBegin: String?

    public var startTimeEnd: String?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryIdsShrink != nil {
            map["CategoryIds"] = self.categoryIdsShrink!
        }
        if self.createTimeBegin != nil {
            map["CreateTimeBegin"] = self.createTimeBegin!
        }
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.endTimeBegin != nil {
            map["EndTimeBegin"] = self.endTimeBegin!
        }
        if self.endTimeEnd != nil {
            map["EndTimeEnd"] = self.endTimeEnd!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.modifyTimeBegin != nil {
            map["ModifyTimeBegin"] = self.modifyTimeBegin!
        }
        if self.modifyTimeEnd != nil {
            map["ModifyTimeEnd"] = self.modifyTimeEnd!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchScope != nil {
            map["SearchScope"] = self.searchScope!
        }
        if self.startTimeBegin != nil {
            map["StartTimeBegin"] = self.startTimeBegin!
        }
        if self.startTimeEnd != nil {
            map["StartTimeEnd"] = self.startTimeEnd!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryIds"] as? String {
            self.categoryIdsShrink = value
        }
        if let value = dict["CreateTimeBegin"] as? String {
            self.createTimeBegin = value
        }
        if let value = dict["CreateTimeEnd"] as? String {
            self.createTimeEnd = value
        }
        if let value = dict["CreateUserName"] as? String {
            self.createUserName = value
        }
        if let value = dict["EndTimeBegin"] as? String {
            self.endTimeBegin = value
        }
        if let value = dict["EndTimeEnd"] as? String {
            self.endTimeEnd = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["ModifyTimeBegin"] as? String {
            self.modifyTimeBegin = value
        }
        if let value = dict["ModifyTimeEnd"] as? String {
            self.modifyTimeEnd = value
        }
        if let value = dict["ModifyUserName"] as? String {
            self.modifyUserName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SearchScope"] as? Int32 {
            self.searchScope = value
        }
        if let value = dict["StartTimeBegin"] as? String {
            self.startTimeBegin = value
        }
        if let value = dict["StartTimeEnd"] as? String {
            self.startTimeEnd = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class SearchFaqResponseBody : Tea.TeaModel {
    public class FaqHits : Tea.TeaModel {
        public var categoryId: Int64?

        public var createTime: String?

        public var createUserId: Int64?

        public var createUserName: String?

        public var effectStatus: Int32?

        public var hitSimilarTitles: [String]?

        public var hitSolutions: [String]?

        public var knowledgeId: Int64?

        public var modifyTime: String?

        public var modifyUserId: Int64?

        public var modifyUserName: String?

        public var status: Int32?

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
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUserId != nil {
                map["CreateUserId"] = self.createUserId!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.effectStatus != nil {
                map["EffectStatus"] = self.effectStatus!
            }
            if self.hitSimilarTitles != nil {
                map["HitSimilarTitles"] = self.hitSimilarTitles!
            }
            if self.hitSolutions != nil {
                map["HitSolutions"] = self.hitSolutions!
            }
            if self.knowledgeId != nil {
                map["KnowledgeId"] = self.knowledgeId!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.modifyUserId != nil {
                map["ModifyUserId"] = self.modifyUserId!
            }
            if self.modifyUserName != nil {
                map["ModifyUserName"] = self.modifyUserName!
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
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateUserId"] as? Int64 {
                self.createUserId = value
            }
            if let value = dict["CreateUserName"] as? String {
                self.createUserName = value
            }
            if let value = dict["EffectStatus"] as? Int32 {
                self.effectStatus = value
            }
            if let value = dict["HitSimilarTitles"] as? [String] {
                self.hitSimilarTitles = value
            }
            if let value = dict["HitSolutions"] as? [String] {
                self.hitSolutions = value
            }
            if let value = dict["KnowledgeId"] as? Int64 {
                self.knowledgeId = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["ModifyUserId"] as? Int64 {
                self.modifyUserId = value
            }
            if let value = dict["ModifyUserName"] as? String {
                self.modifyUserName = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var faqHits: [SearchFaqResponseBody.FaqHits]?

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
        if self.faqHits != nil {
            var tmp : [Any] = []
            for k in self.faqHits! {
                tmp.append(k.toMap())
            }
            map["FaqHits"] = tmp
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
        if let value = dict["FaqHits"] as? [Any?] {
            var tmp : [SearchFaqResponseBody.FaqHits] = []
            for v in value {
                if v != nil {
                    var model = SearchFaqResponseBody.FaqHits()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.faqHits = tmp
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

public class SearchFaqResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchFaqResponseBody?

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
            var model = SearchFaqResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TongyiChatDebugInfoRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var messageId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
    }
}

public class TongyiChatDebugInfoResponseBody : Tea.TeaModel {
    public class Pipeline : Tea.TeaModel {
        public var input: Any?

        public var name: String?

        public var nodeType: String?

        public var output: Any?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.input != nil {
                map["Input"] = self.input!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nodeType != nil {
                map["NodeType"] = self.nodeType!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Input"] as? Any {
                self.input = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NodeType"] as? String {
                self.nodeType = value
            }
            if let value = dict["Output"] as? Any {
                self.output = value
            }
        }
    }
    public var messageId: String?

    public var pipeline: [TongyiChatDebugInfoResponseBody.Pipeline]?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.pipeline != nil {
            var tmp : [Any] = []
            for k in self.pipeline! {
                tmp.append(k.toMap())
            }
            map["Pipeline"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["Pipeline"] as? [Any?] {
            var tmp : [TongyiChatDebugInfoResponseBody.Pipeline] = []
            for v in value {
                if v != nil {
                    var model = TongyiChatDebugInfoResponseBody.Pipeline()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pipeline = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class TongyiChatDebugInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TongyiChatDebugInfoResponseBody?

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
            var model = TongyiChatDebugInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCategoryRequest : Tea.TeaModel {
    public var agentKey: String?

    public var bizCode: String?

    public var categoryId: Int64?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateCategoryResponseBody : Tea.TeaModel {
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

public class UpdateCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCategoryResponseBody?

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
            var model = UpdateCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateConnQuestionRequest : Tea.TeaModel {
    public var agentKey: String?

    public var connQuestionId: Int64?

    public var outlineId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.connQuestionId != nil {
            map["ConnQuestionId"] = self.connQuestionId!
        }
        if self.outlineId != nil {
            map["OutlineId"] = self.outlineId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["ConnQuestionId"] as? Int64 {
            self.connQuestionId = value
        }
        if let value = dict["OutlineId"] as? Int64 {
            self.outlineId = value
        }
    }
}

public class UpdateConnQuestionResponseBody : Tea.TeaModel {
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

public class UpdateConnQuestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConnQuestionResponseBody?

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
            var model = UpdateConnQuestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDSEntityRequest : Tea.TeaModel {
    public var agentKey: String?

    public var entityId: Int64?

    public var entityName: String?

    public var entityType: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["EntityName"] as? String {
            self.entityName = value
        }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class UpdateDSEntityResponseBody : Tea.TeaModel {
    public var entityId: Int64?

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
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDSEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDSEntityResponseBody?

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
            var model = UpdateDSEntityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDSEntityValueRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var entityId: Int64?

    public var entityValueId: Int64?

    public var instanceId: String?

    public var synonyms: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.entityValueId != nil {
            map["EntityValueId"] = self.entityValueId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.synonyms != nil {
            map["Synonyms"] = self.synonyms!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["EntityValueId"] as? Int64 {
            self.entityValueId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Synonyms"] as? [String] {
            self.synonyms = value
        }
    }
}

public class UpdateDSEntityValueShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var entityId: Int64?

    public var entityValueId: Int64?

    public var instanceId: String?

    public var synonymsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.entityValueId != nil {
            map["EntityValueId"] = self.entityValueId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.synonymsShrink != nil {
            map["Synonyms"] = self.synonymsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["EntityValueId"] as? Int64 {
            self.entityValueId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Synonyms"] as? String {
            self.synonymsShrink = value
        }
    }
}

public class UpdateDSEntityValueResponseBody : Tea.TeaModel {
    public var entityValueId: Int64?

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
        if self.entityValueId != nil {
            map["EntityValueId"] = self.entityValueId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntityValueId"] as? Int64 {
            self.entityValueId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDSEntityValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDSEntityValueResponseBody?

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
            var model = UpdateDSEntityValueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDocRequest : Tea.TeaModel {
    public class DocMetadata : Tea.TeaModel {
        public class MetaCellInfoDTOList : Tea.TeaModel {
            public var fieldCode: String?

            public var fieldName: String?

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
                if self.fieldCode != nil {
                    map["FieldCode"] = self.fieldCode!
                }
                if self.fieldName != nil {
                    map["FieldName"] = self.fieldName!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FieldCode"] as? String {
                    self.fieldCode = value
                }
                if let value = dict["FieldName"] as? String {
                    self.fieldName = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var businessViewId: String?

        public var businessViewName: String?

        public var metaCellInfoDTOList: [UpdateDocRequest.DocMetadata.MetaCellInfoDTOList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessViewId != nil {
                map["BusinessViewId"] = self.businessViewId!
            }
            if self.businessViewName != nil {
                map["BusinessViewName"] = self.businessViewName!
            }
            if self.metaCellInfoDTOList != nil {
                var tmp : [Any] = []
                for k in self.metaCellInfoDTOList! {
                    tmp.append(k.toMap())
                }
                map["MetaCellInfoDTOList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BusinessViewId"] as? String {
                self.businessViewId = value
            }
            if let value = dict["BusinessViewName"] as? String {
                self.businessViewName = value
            }
            if let value = dict["MetaCellInfoDTOList"] as? [Any?] {
                var tmp : [UpdateDocRequest.DocMetadata.MetaCellInfoDTOList] = []
                for v in value {
                    if v != nil {
                        var model = UpdateDocRequest.DocMetadata.MetaCellInfoDTOList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.metaCellInfoDTOList = tmp
            }
        }
    }
    public var agentKey: String?

    public var categoryId: Int64?

    public var config: String?

    public var content: String?

    public var docMetadata: [UpdateDocRequest.DocMetadata]?

    public var docName: String?

    public var endDate: String?

    public var knowledgeId: Int64?

    public var meta: String?

    public var startDate: String?

    public var tagIds: [Int64]?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.docMetadata != nil {
            var tmp : [Any] = []
            for k in self.docMetadata! {
                tmp.append(k.toMap())
            }
            map["DocMetadata"] = tmp
        }
        if self.docName != nil {
            map["DocName"] = self.docName!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.meta != nil {
            map["Meta"] = self.meta!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["DocMetadata"] as? [Any?] {
            var tmp : [UpdateDocRequest.DocMetadata] = []
            for v in value {
                if v != nil {
                    var model = UpdateDocRequest.DocMetadata()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.docMetadata = tmp
        }
        if let value = dict["DocName"] as? String {
            self.docName = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["Meta"] as? String {
            self.meta = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TagIds"] as? [Int64] {
            self.tagIds = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class UpdateDocShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryId: Int64?

    public var config: String?

    public var content: String?

    public var docMetadataShrink: String?

    public var docName: String?

    public var endDate: String?

    public var knowledgeId: Int64?

    public var meta: String?

    public var startDate: String?

    public var tagIdsShrink: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.docMetadataShrink != nil {
            map["DocMetadata"] = self.docMetadataShrink!
        }
        if self.docName != nil {
            map["DocName"] = self.docName!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.meta != nil {
            map["Meta"] = self.meta!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.tagIdsShrink != nil {
            map["TagIds"] = self.tagIdsShrink!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["DocMetadata"] as? String {
            self.docMetadataShrink = value
        }
        if let value = dict["DocName"] as? String {
            self.docName = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["Meta"] as? String {
            self.meta = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TagIds"] as? String {
            self.tagIdsShrink = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class UpdateDocResponseBody : Tea.TeaModel {
    public var knowledgeId: Int64?

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
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDocResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDocResponseBody?

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
            var model = UpdateDocResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFaqRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryId: Int64?

    public var endDate: String?

    public var knowledgeId: Int64?

    public var startDate: String?

    public var tagIdList: [Int64]?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.tagIdList != nil {
            map["TagIdList"] = self.tagIdList!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TagIdList"] as? [Int64] {
            self.tagIdList = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class UpdateFaqShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryId: Int64?

    public var endDate: String?

    public var knowledgeId: Int64?

    public var startDate: String?

    public var tagIdListShrink: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.tagIdListShrink != nil {
            map["TagIdList"] = self.tagIdListShrink!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["KnowledgeId"] as? Int64 {
            self.knowledgeId = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TagIdList"] as? String {
            self.tagIdListShrink = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class UpdateFaqResponseBody : Tea.TeaModel {
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

public class UpdateFaqResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFaqResponseBody?

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
            var model = UpdateFaqResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var introduction: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.introduction != nil {
            map["Introduction"] = self.introduction!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Introduction"] as? String {
            self.introduction = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateInstanceResponseBody : Tea.TeaModel {
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

public class UpdateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceResponseBody?

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
            var model = UpdateInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateIntentRequest : Tea.TeaModel {
    public class IntentDefinition : Tea.TeaModel {
        public class SlotInfos : Tea.TeaModel {
            public var array: Bool?

            public var encrypt: Bool?

            public var interactive: Bool?

            public var name: String?

            public var slotId: String?

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
                if self.array != nil {
                    map["Array"] = self.array!
                }
                if self.encrypt != nil {
                    map["Encrypt"] = self.encrypt!
                }
                if self.interactive != nil {
                    map["Interactive"] = self.interactive!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.slotId != nil {
                    map["SlotId"] = self.slotId!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Array"] as? Bool {
                    self.array = value
                }
                if let value = dict["Encrypt"] as? Bool {
                    self.encrypt = value
                }
                if let value = dict["Interactive"] as? Bool {
                    self.interactive = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["SlotId"] as? String {
                    self.slotId = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var aliasName: String?

        public var intentName: String?

        public var slotInfos: [UpdateIntentRequest.IntentDefinition.SlotInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.intentName != nil {
                map["IntentName"] = self.intentName!
            }
            if self.slotInfos != nil {
                var tmp : [Any] = []
                for k in self.slotInfos! {
                    tmp.append(k.toMap())
                }
                map["SlotInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliasName"] as? String {
                self.aliasName = value
            }
            if let value = dict["IntentName"] as? String {
                self.intentName = value
            }
            if let value = dict["SlotInfos"] as? [Any?] {
                var tmp : [UpdateIntentRequest.IntentDefinition.SlotInfos] = []
                for v in value {
                    if v != nil {
                        var model = UpdateIntentRequest.IntentDefinition.SlotInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.slotInfos = tmp
            }
        }
    }
    public var agentKey: String?

    public var instanceId: String?

    public var intentDefinition: UpdateIntentRequest.IntentDefinition?

    public var intentId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.intentDefinition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentDefinition != nil {
            map["IntentDefinition"] = self.intentDefinition?.toMap()
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentDefinition"] as? [String: Any?] {
            var model = UpdateIntentRequest.IntentDefinition()
            model.fromMap(value)
            self.intentDefinition = model
        }
        if let value = dict["IntentId"] as? Int64 {
            self.intentId = value
        }
    }
}

public class UpdateIntentShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var intentDefinitionShrink: String?

    public var intentId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentDefinitionShrink != nil {
            map["IntentDefinition"] = self.intentDefinitionShrink!
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IntentDefinition"] as? String {
            self.intentDefinitionShrink = value
        }
        if let value = dict["IntentId"] as? Int64 {
            self.intentId = value
        }
    }
}

public class UpdateIntentResponseBody : Tea.TeaModel {
    public var intentId: Int64?

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
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IntentId"] as? Int64 {
            self.intentId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateIntentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIntentResponseBody?

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
            var model = UpdateIntentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateLgfRequest : Tea.TeaModel {
    public class LgfDefinition : Tea.TeaModel {
        public var intentId: Int64?

        public var ruleText: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.intentId != nil {
                map["IntentId"] = self.intentId!
            }
            if self.ruleText != nil {
                map["RuleText"] = self.ruleText!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IntentId"] as? Int64 {
                self.intentId = value
            }
            if let value = dict["RuleText"] as? String {
                self.ruleText = value
            }
        }
    }
    public var agentKey: String?

    public var instanceId: String?

    public var lgfDefinition: UpdateLgfRequest.LgfDefinition?

    public var lgfId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.lgfDefinition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lgfDefinition != nil {
            map["LgfDefinition"] = self.lgfDefinition?.toMap()
        }
        if self.lgfId != nil {
            map["LgfId"] = self.lgfId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LgfDefinition"] as? [String: Any?] {
            var model = UpdateLgfRequest.LgfDefinition()
            model.fromMap(value)
            self.lgfDefinition = model
        }
        if let value = dict["LgfId"] as? Int64 {
            self.lgfId = value
        }
    }
}

public class UpdateLgfShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var lgfDefinitionShrink: String?

    public var lgfId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lgfDefinitionShrink != nil {
            map["LgfDefinition"] = self.lgfDefinitionShrink!
        }
        if self.lgfId != nil {
            map["LgfId"] = self.lgfId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LgfDefinition"] as? String {
            self.lgfDefinitionShrink = value
        }
        if let value = dict["LgfId"] as? Int64 {
            self.lgfId = value
        }
    }
}

public class UpdateLgfResponseBody : Tea.TeaModel {
    public var lgfId: Int64?

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
        if self.lgfId != nil {
            map["LgfId"] = self.lgfId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LgfId"] as? Int64 {
            self.lgfId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateLgfResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLgfResponseBody?

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
            var model = UpdateLgfResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePerspectiveRequest : Tea.TeaModel {
    public var agentKey: String?

    public var name: String?

    public var perspectiveId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.perspectiveId != nil {
            map["PerspectiveId"] = self.perspectiveId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PerspectiveId"] as? String {
            self.perspectiveId = value
        }
    }
}

public class UpdatePerspectiveResponseBody : Tea.TeaModel {
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

public class UpdatePerspectiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePerspectiveResponseBody?

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
            var model = UpdatePerspectiveResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSimQuestionRequest : Tea.TeaModel {
    public var agentKey: String?

    public var simQuestionId: Int64?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.simQuestionId != nil {
            map["SimQuestionId"] = self.simQuestionId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["SimQuestionId"] as? Int64 {
            self.simQuestionId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class UpdateSimQuestionResponseBody : Tea.TeaModel {
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

public class UpdateSimQuestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSimQuestionResponseBody?

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
            var model = UpdateSimQuestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSolutionRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var contentType: Int32?

    public var perspectiveCodes: [String]?

    public var solutionId: Int64?

    public var tagIdList: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.perspectiveCodes != nil {
            map["PerspectiveCodes"] = self.perspectiveCodes!
        }
        if self.solutionId != nil {
            map["SolutionId"] = self.solutionId!
        }
        if self.tagIdList != nil {
            map["TagIdList"] = self.tagIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["ContentType"] as? Int32 {
            self.contentType = value
        }
        if let value = dict["PerspectiveCodes"] as? [String] {
            self.perspectiveCodes = value
        }
        if let value = dict["SolutionId"] as? Int64 {
            self.solutionId = value
        }
        if let value = dict["TagIdList"] as? [Int64] {
            self.tagIdList = value
        }
    }
}

public class UpdateSolutionShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var content: String?

    public var contentType: Int32?

    public var perspectiveCodes: [String]?

    public var solutionId: Int64?

    public var tagIdListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.perspectiveCodes != nil {
            map["PerspectiveCodes"] = self.perspectiveCodes!
        }
        if self.solutionId != nil {
            map["SolutionId"] = self.solutionId!
        }
        if self.tagIdListShrink != nil {
            map["TagIdList"] = self.tagIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["ContentType"] as? Int32 {
            self.contentType = value
        }
        if let value = dict["PerspectiveCodes"] as? [String] {
            self.perspectiveCodes = value
        }
        if let value = dict["SolutionId"] as? Int64 {
            self.solutionId = value
        }
        if let value = dict["TagIdList"] as? String {
            self.tagIdListShrink = value
        }
    }
}

public class UpdateSolutionResponseBody : Tea.TeaModel {
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

public class UpdateSolutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSolutionResponseBody?

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
            var model = UpdateSolutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTagRequest : Tea.TeaModel {
    public var agentKey: String?

    public var clientToken: String?

    public var groupId: Int64?

    public var id: Int64?

    public var tagName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["GroupId"] as? Int64 {
            self.groupId = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
    }
}

public class UpdateTagResponseBody : Tea.TeaModel {
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

public class UpdateTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTagResponseBody?

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
            var model = UpdateTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTagGroupRequest : Tea.TeaModel {
    public var agentKey: String?

    public var clientToken: String?

    public var groupName: String?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class UpdateTagGroupResponseBody : Tea.TeaModel {
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

public class UpdateTagGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTagGroupResponseBody?

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
            var model = UpdateTagGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserSayRequest : Tea.TeaModel {
    public class UserSayDefinition : Tea.TeaModel {
        public class SlotInfos : Tea.TeaModel {
            public var endIndex: Int32?

            public var slotId: String?

            public var startIndex: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endIndex != nil {
                    map["EndIndex"] = self.endIndex!
                }
                if self.slotId != nil {
                    map["SlotId"] = self.slotId!
                }
                if self.startIndex != nil {
                    map["StartIndex"] = self.startIndex!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndIndex"] as? Int32 {
                    self.endIndex = value
                }
                if let value = dict["SlotId"] as? String {
                    self.slotId = value
                }
                if let value = dict["StartIndex"] as? Int32 {
                    self.startIndex = value
                }
            }
        }
        public var content: String?

        public var intentId: Int64?

        public var slotInfos: [UpdateUserSayRequest.UserSayDefinition.SlotInfos]?

        public override init() {
            super.init()
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
            if self.intentId != nil {
                map["IntentId"] = self.intentId!
            }
            if self.slotInfos != nil {
                var tmp : [Any] = []
                for k in self.slotInfos! {
                    tmp.append(k.toMap())
                }
                map["SlotInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["IntentId"] as? Int64 {
                self.intentId = value
            }
            if let value = dict["SlotInfos"] as? [Any?] {
                var tmp : [UpdateUserSayRequest.UserSayDefinition.SlotInfos] = []
                for v in value {
                    if v != nil {
                        var model = UpdateUserSayRequest.UserSayDefinition.SlotInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.slotInfos = tmp
            }
        }
    }
    public var agentKey: String?

    public var instanceId: String?

    public var userSayDefinition: UpdateUserSayRequest.UserSayDefinition?

    public var userSayId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userSayDefinition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.userSayDefinition != nil {
            map["UserSayDefinition"] = self.userSayDefinition?.toMap()
        }
        if self.userSayId != nil {
            map["UserSayId"] = self.userSayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["UserSayDefinition"] as? [String: Any?] {
            var model = UpdateUserSayRequest.UserSayDefinition()
            model.fromMap(value)
            self.userSayDefinition = model
        }
        if let value = dict["UserSayId"] as? Int64 {
            self.userSayId = value
        }
    }
}

public class UpdateUserSayShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var userSayDefinitionShrink: String?

    public var userSayId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.userSayDefinitionShrink != nil {
            map["UserSayDefinition"] = self.userSayDefinitionShrink!
        }
        if self.userSayId != nil {
            map["UserSayId"] = self.userSayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentKey"] as? String {
            self.agentKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["UserSayDefinition"] as? String {
            self.userSayDefinitionShrink = value
        }
        if let value = dict["UserSayId"] as? Int64 {
            self.userSayId = value
        }
    }
}

public class UpdateUserSayResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var userSayId: Int64?

    public override init() {
        super.init()
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
        if self.userSayId != nil {
            map["UserSayId"] = self.userSayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserSayId"] as? Int64 {
            self.userSayId = value
        }
    }
}

public class UpdateUserSayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserSayResponseBody?

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
            var model = UpdateUserSayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
