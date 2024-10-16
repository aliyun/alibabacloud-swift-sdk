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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StreamSecret") {
            self.streamSecret = dict["StreamSecret"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ApplyForStreamAccessTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Perspective") {
            self.perspective = dict["Perspective"] as! [String]
        }
        if dict.keys.contains("RecommendNum") {
            self.recommendNum = dict["RecommendNum"] as! Int64
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Utterance") {
            self.utterance = dict["Utterance"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Perspective") {
            self.perspectiveShrink = dict["Perspective"] as! String
        }
        if dict.keys.contains("RecommendNum") {
            self.recommendNum = dict["RecommendNum"] as! Int64
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Utterance") {
            self.utterance = dict["Utterance"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Meta") {
                self.meta = dict["Meta"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Associate") {
            var tmp : [AssociateResponseBody.Associate] = []
            for v in dict["Associate"] as! [Any] {
                var model = AssociateResponseBody.Associate()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.associate = tmp
        }
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AssociateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BeginSessionRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AsrMaxEndSilence") {
            self.asrMaxEndSilence = dict["AsrMaxEndSilence"] as! Int32
        }
        if dict.keys.contains("Interruptible") {
            self.interruptible = dict["Interruptible"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SilenceReplyTimeout") {
            self.silenceReplyTimeout = dict["SilenceReplyTimeout"] as! Int32
        }
        if dict.keys.contains("WelcomeMessage") {
            self.welcomeMessage = dict["WelcomeMessage"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BeginSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeList") {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Error") {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") {
            self.response = dict["Response"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelInstancePublishTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeList") {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Error") {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") {
            self.response = dict["Response"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelPublishTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentName") {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! String
        }
        if dict.keys.contains("Perspective") {
            self.perspective = dict["Perspective"] as! [String]
        }
        if dict.keys.contains("SandBox") {
            self.sandBox = dict["SandBox"] as! Bool
        }
        if dict.keys.contains("SenderId") {
            self.senderId = dict["SenderId"] as! String
        }
        if dict.keys.contains("SenderNick") {
            self.senderNick = dict["SenderNick"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Utterance") {
            self.utterance = dict["Utterance"] as! String
        }
        if dict.keys.contains("VendorParam") {
            self.vendorParam = dict["VendorParam"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentName") {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! String
        }
        if dict.keys.contains("Perspective") {
            self.perspectiveShrink = dict["Perspective"] as! String
        }
        if dict.keys.contains("SandBox") {
            self.sandBox = dict["SandBox"] as! Bool
        }
        if dict.keys.contains("SenderId") {
            self.senderId = dict["SenderId"] as! String
        }
        if dict.keys.contains("SenderNick") {
            self.senderNick = dict["SenderNick"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Utterance") {
            self.utterance = dict["Utterance"] as! String
        }
        if dict.keys.contains("VendorParam") {
            self.vendorParam = dict["VendorParam"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("KnowledgeId") {
                        self.knowledgeId = dict["KnowledgeId"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnswerSource") {
                    self.answerSource = dict["AnswerSource"] as! String
                }
                if dict.keys.contains("Category") {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("ContentType") {
                    self.contentType = dict["ContentType"] as! String
                }
                if dict.keys.contains("HitStatement") {
                    self.hitStatement = dict["HitStatement"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("RelatedKnowledges") {
                    var tmp : [ChatResponseBody.Messages.Knowledge.RelatedKnowledges] = []
                    for v in dict["RelatedKnowledges"] as! [Any] {
                        var model = ChatResponseBody.Messages.Knowledge.RelatedKnowledges()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.relatedKnowledges = tmp
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("Summary") {
                    self.summary = dict["Summary"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnswerSource") {
                    self.answerSource = dict["AnswerSource"] as! String
                }
                if dict.keys.contains("KnowledgeId") {
                    self.knowledgeId = dict["KnowledgeId"] as! String
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Hit") {
                        self.hit = dict["Hit"] as! Bool
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Origin") {
                        self.origin = dict["Origin"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnswerSource") {
                    self.answerSource = dict["AnswerSource"] as! String
                }
                if dict.keys.contains("ArticleTitle") {
                    self.articleTitle = dict["ArticleTitle"] as! String
                }
                if dict.keys.contains("Commands") {
                    self.commands = dict["Commands"] as! [String: Any]
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("ContentType") {
                    self.contentType = dict["ContentType"] as! String
                }
                if dict.keys.contains("DialogName") {
                    self.dialogName = dict["DialogName"] as! String
                }
                if dict.keys.contains("Ext") {
                    self.ext = dict["Ext"] as! [String: Any]
                }
                if dict.keys.contains("ExternalFlags") {
                    self.externalFlags = dict["ExternalFlags"] as! [String: Any]
                }
                if dict.keys.contains("HitStatement") {
                    self.hitStatement = dict["HitStatement"] as! String
                }
                if dict.keys.contains("IntentName") {
                    self.intentName = dict["IntentName"] as! String
                }
                if dict.keys.contains("MetaData") {
                    self.metaData = dict["MetaData"] as! String
                }
                if dict.keys.contains("NodeId") {
                    self.nodeId = dict["NodeId"] as! String
                }
                if dict.keys.contains("NodeName") {
                    self.nodeName = dict["NodeName"] as! String
                }
                if dict.keys.contains("ResponseType") {
                    self.responseType = dict["ResponseType"] as! String
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("Slots") {
                    var tmp : [ChatResponseBody.Messages.Text.Slots] = []
                    for v in dict["Slots"] as! [Any] {
                        var model = ChatResponseBody.Messages.Text.Slots()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.slots = tmp
                }
                if dict.keys.contains("UserDefinedChatTitle") {
                    self.userDefinedChatTitle = dict["UserDefinedChatTitle"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnswerSource") {
                self.answerSource = dict["AnswerSource"] as! String
            }
            if dict.keys.contains("AnswerType") {
                self.answerType = dict["AnswerType"] as! String
            }
            if dict.keys.contains("Knowledge") {
                var model = ChatResponseBody.Messages.Knowledge()
                model.fromMap(dict["Knowledge"] as! [String: Any])
                self.knowledge = model
            }
            if dict.keys.contains("Recommends") {
                var tmp : [ChatResponseBody.Messages.Recommends] = []
                for v in dict["Recommends"] as! [Any] {
                    var model = ChatResponseBody.Messages.Recommends()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.recommends = tmp
            }
            if dict.keys.contains("Text") {
                var model = ChatResponseBody.Messages.Text()
                model.fromMap(dict["Text"] as! [String: Any])
                self.text = model
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("VoiceTitle") {
                self.voiceTitle = dict["VoiceTitle"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("Messages") {
            var tmp : [ChatResponseBody.Messages] = []
            for v in dict["Messages"] as! [Any] {
                var model = ChatResponseBody.Messages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.messages = tmp
        }
        if dict.keys.contains("QuerySegList") {
            self.querySegList = dict["QuerySegList"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ChatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeList") {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Error") {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Errors") {
            self.errors = dict["Errors"] as! [String: Any]
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") {
            self.response = dict["Response"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Warnings") {
            self.warnings = dict["Warnings"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ContinueInstancePublishTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("BizCode") {
            self.bizCode = dict["BizCode"] as! String
        }
        if dict.keys.contains("KnowledgeType") {
            self.knowledgeType = dict["KnowledgeType"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParentCategoryId") {
            self.parentCategoryId = dict["ParentCategoryId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentCategoryId") {
                self.parentCategoryId = dict["ParentCategoryId"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            var model = CreateCategoryResponseBody.Category()
            model.fromMap(dict["Category"] as! [String: Any])
            self.category = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ConnQuestionId") {
            self.connQuestionId = dict["ConnQuestionId"] as! Int64
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OutlineId") {
            self.outlineId = dict["OutlineId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateConnQuestionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityName") {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDSEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Synonyms") {
            self.synonyms = dict["Synonyms"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Synonyms") {
            self.synonymsShrink = dict["Synonyms"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityValueId") {
            self.entityValueId = dict["EntityValueId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDSEntityValueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldCode") {
                    self.fieldCode = dict["FieldCode"] as! String
                }
                if dict.keys.contains("FieldName") {
                    self.fieldName = dict["FieldName"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessViewId") {
                self.businessViewId = dict["BusinessViewId"] as! String
            }
            if dict.keys.contains("BusinessViewName") {
                self.businessViewName = dict["BusinessViewName"] as! String
            }
            if dict.keys.contains("MetaCellInfoDTOList") {
                var tmp : [CreateDocRequest.DocMetadata.MetaCellInfoDTOList] = []
                for v in dict["MetaCellInfoDTOList"] as! [Any] {
                    var model = CreateDocRequest.DocMetadata.MetaCellInfoDTOList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("DocMetadata") {
            var tmp : [CreateDocRequest.DocMetadata] = []
            for v in dict["DocMetadata"] as! [Any] {
                var model = CreateDocRequest.DocMetadata()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.docMetadata = tmp
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Meta") {
            self.meta = dict["Meta"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("TagIds") {
            self.tagIds = dict["TagIds"] as! [Int64]
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("DocMetadata") {
            self.docMetadataShrink = dict["DocMetadata"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Meta") {
            self.meta = dict["Meta"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("TagIds") {
            self.tagIdsShrink = dict["TagIds"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDocResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("SolutionContent") {
            self.solutionContent = dict["SolutionContent"] as! String
        }
        if dict.keys.contains("SolutionType") {
            self.solutionType = dict["SolutionType"] as! Int32
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateFaqResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
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
        if dict.keys.contains("RobotType") {
            self.robotType = dict["RobotType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeList") {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Error") {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") {
            self.response = dict["Response"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateInstancePublishTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Array") {
                    self.array = dict["Array"] as! Bool
                }
                if dict.keys.contains("Encrypt") {
                    self.encrypt = dict["Encrypt"] as! Bool
                }
                if dict.keys.contains("Interactive") {
                    self.interactive = dict["Interactive"] as! Bool
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("SlotId") {
                    self.slotId = dict["SlotId"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliasName") {
                self.aliasName = dict["AliasName"] as! String
            }
            if dict.keys.contains("IntentName") {
                self.intentName = dict["IntentName"] as! String
            }
            if dict.keys.contains("SlotInfos") {
                var tmp : [CreateIntentRequest.IntentDefinition.SlotInfos] = []
                for v in dict["SlotInfos"] as! [Any] {
                    var model = CreateIntentRequest.IntentDefinition.SlotInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentDefinition") {
            var model = CreateIntentRequest.IntentDefinition()
            model.fromMap(dict["IntentDefinition"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentDefinition") {
            self.intentDefinitionShrink = dict["IntentDefinition"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IntentId") {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateIntentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IntentId") {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("RuleText") {
                self.ruleText = dict["RuleText"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LgfDefinition") {
            var model = CreateLgfRequest.LgfDefinition()
            model.fromMap(dict["LgfDefinition"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LgfDefinition") {
            self.lgfDefinitionShrink = dict["LgfDefinition"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LgfId") {
            self.lgfId = dict["LgfId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateLgfResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PerspectiveId") {
            self.perspectiveId = dict["PerspectiveId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreatePerspectiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("DataIdList") {
            self.dataIdList = dict["DataIdList"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("DataIdList") {
            self.dataIdListShrink = dict["DataIdList"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeList") {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Error") {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") {
            self.response = dict["Response"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreatePublishTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SimQuestionId") {
            self.simQuestionId = dict["SimQuestionId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateSimQuestionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentType") {
            self.contentType = dict["ContentType"] as! Int32
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("PerspectiveCodes") {
            self.perspectiveCodes = dict["PerspectiveCodes"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SolutionId") {
            self.solutionId = dict["SolutionId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateSolutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndIndex") {
                    self.endIndex = dict["EndIndex"] as! Int32
                }
                if dict.keys.contains("SlotId") {
                    self.slotId = dict["SlotId"] as! String
                }
                if dict.keys.contains("StartIndex") {
                    self.startIndex = dict["StartIndex"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("IntentId") {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("SlotInfos") {
                var tmp : [CreateUserSayRequest.UserSayDefinition.SlotInfos] = []
                for v in dict["SlotInfos"] as! [Any] {
                    var model = CreateUserSayRequest.UserSayDefinition.SlotInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserSayDefinition") {
            var model = CreateUserSayRequest.UserSayDefinition()
            model.fromMap(dict["UserSayDefinition"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserSayDefinition") {
            self.userSayDefinitionShrink = dict["UserSayDefinition"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserSayId") {
            self.userSayId = dict["UserSayId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateUserSayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("OutlineId") {
            self.outlineId = dict["OutlineId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteConnQuestionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDSEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityValueId") {
            self.entityValueId = dict["EntityValueId"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityValueId") {
            self.entityValueId = dict["EntityValueId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDSEntityValueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDocResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteFaqResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeList") {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserId") {
            self.createUserId = dict["CreateUserId"] as! Int64
        }
        if dict.keys.contains("CreateUserName") {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("Error") {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") {
            self.response = dict["Response"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentId") {
            self.intentId = dict["IntentId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IntentId") {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteIntentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentId") {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("LgfId") {
            self.lgfId = dict["LgfId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LgfId") {
            self.lgfId = dict["LgfId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteLgfResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PerspectiveId") {
            self.perspectiveId = dict["PerspectiveId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeletePerspectiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("SimQuestionId") {
            self.simQuestionId = dict["SimQuestionId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteSimQuestionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("SolutionId") {
            self.solutionId = dict["SolutionId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteSolutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentId") {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("UserSayId") {
            self.userSayId = dict["UserSayId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserSayId") {
            self.userSayId = dict["UserSayId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteUserSayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentCategoryId") {
                self.parentCategoryId = dict["ParentCategoryId"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            var model = DescribeCategoryResponseBody.Category()
            model.fromMap(dict["Category"] as! [String: Any])
            self.category = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserId") {
            self.createUserId = dict["CreateUserId"] as! String
        }
        if dict.keys.contains("CreateUserName") {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityName") {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("ModifyUserId") {
            self.modifyUserId = dict["ModifyUserId"] as! String
        }
        if dict.keys.contains("ModifyUserName") {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SysEntityCode") {
            self.sysEntityCode = dict["SysEntityCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDSEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("ShowDetail") {
            self.showDetail = dict["ShowDetail"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParaLevel") {
                    self.paraLevel = dict["ParaLevel"] as! Int32
                }
                if dict.keys.contains("ParaNo") {
                    self.paraNo = dict["ParaNo"] as! Int32
                }
                if dict.keys.contains("ParaText") {
                    self.paraText = dict["ParaText"] as! String
                }
                if dict.keys.contains("ParaType") {
                    self.paraType = dict["ParaType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DocParas") {
                var tmp : [DescribeDocResponseBody.DocInfo.DocParas] = []
                for v in dict["DocParas"] as! [Any] {
                    var model = DescribeDocResponseBody.DocInfo.DocParas()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldCode") {
                    self.fieldCode = dict["FieldCode"] as! String
                }
                if dict.keys.contains("FieldName") {
                    self.fieldName = dict["FieldName"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessViewId") {
                self.businessViewId = dict["BusinessViewId"] as! String
            }
            if dict.keys.contains("BusinessViewName") {
                self.businessViewName = dict["BusinessViewName"] as! String
            }
            if dict.keys.contains("MetaCellInfoDTOList") {
                var tmp : [DescribeDocResponseBody.DocMetadata.MetaCellInfoDTOList] = []
                for v in dict["MetaCellInfoDTOList"] as! [Any] {
                    var model = DescribeDocResponseBody.DocMetadata.MetaCellInfoDTOList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultTag") {
                self.defaultTag = dict["DefaultTag"] as! Bool
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! Int64
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("TagId") {
                self.tagId = dict["TagId"] as! Int64
            }
            if dict.keys.contains("TagName") {
                self.tagName = dict["TagName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizCode") {
            self.bizCode = dict["BizCode"] as! String
        }
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserId") {
            self.createUserId = dict["CreateUserId"] as! Int64
        }
        if dict.keys.contains("CreateUserName") {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("DocInfo") {
            var model = DescribeDocResponseBody.DocInfo()
            model.fromMap(dict["DocInfo"] as! [String: Any])
            self.docInfo = model
        }
        if dict.keys.contains("DocMetadata") {
            var tmp : [DescribeDocResponseBody.DocMetadata] = []
            for v in dict["DocMetadata"] as! [Any] {
                var model = DescribeDocResponseBody.DocMetadata()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.docMetadata = tmp
        }
        if dict.keys.contains("DocName") {
            self.docName = dict["DocName"] as! String
        }
        if dict.keys.contains("DocTags") {
            var tmp : [DescribeDocResponseBody.DocTags] = []
            for v in dict["DocTags"] as! [Any] {
                var model = DescribeDocResponseBody.DocTags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.docTags = tmp
        }
        if dict.keys.contains("EffectStatus") {
            self.effectStatus = dict["EffectStatus"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("Meta") {
            self.meta = dict["Meta"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("ModifyUserId") {
            self.modifyUserId = dict["ModifyUserId"] as! Int64
        }
        if dict.keys.contains("ModifyUserName") {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("ProcessCanRetry") {
            self.processCanRetry = dict["ProcessCanRetry"] as! Bool
        }
        if dict.keys.contains("ProcessMessage") {
            self.processMessage = dict["ProcessMessage"] as! String
        }
        if dict.keys.contains("ProcessStatus") {
            self.processStatus = dict["ProcessStatus"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDocResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnQuestionId") {
                self.connQuestionId = dict["ConnQuestionId"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("OutlineId") {
                self.outlineId = dict["OutlineId"] as! Int64
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("SimQuestionId") {
                self.simQuestionId = dict["SimQuestionId"] as! Int64
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ContentType") {
                self.contentType = dict["ContentType"] as! Int32
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("PerspectiveCodes") {
                self.perspectiveCodes = dict["PerspectiveCodes"] as! [String]
            }
            if dict.keys.contains("PlainText") {
                self.plainText = dict["PlainText"] as! String
            }
            if dict.keys.contains("SolutionId") {
                self.solutionId = dict["SolutionId"] as! Int64
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
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserName") {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("EffectStatus") {
            self.effectStatus = dict["EffectStatus"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("ModifyUserName") {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("Outlines") {
            var tmp : [DescribeFaqResponseBody.Outlines] = []
            for v in dict["Outlines"] as! [Any] {
                var model = DescribeFaqResponseBody.Outlines()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.outlines = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SimQuestions") {
            var tmp : [DescribeFaqResponseBody.SimQuestions] = []
            for v in dict["SimQuestions"] as! [Any] {
                var model = DescribeFaqResponseBody.SimQuestions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.simQuestions = tmp
        }
        if dict.keys.contains("Solutions") {
            var tmp : [DescribeFaqResponseBody.Solutions] = []
            for v in dict["Solutions"] as! [Any] {
                var model = DescribeFaqResponseBody.Solutions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.solutions = tmp
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFaqResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeInstanceResponseBody : Tea.TeaModel {
    public class Categories : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentCategoryId") {
                self.parentCategoryId = dict["ParentCategoryId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Avatar") {
            self.avatar = dict["Avatar"] as! String
        }
        if dict.keys.contains("Categories") {
            var tmp : [DescribeInstanceResponseBody.Categories] = []
            for v in dict["Categories"] as! [Any] {
                var model = DescribeInstanceResponseBody.Categories()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.categories = tmp
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("EditStatus") {
            self.editStatus = dict["EditStatus"] as! String
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RobotType") {
            self.robotType = dict["RobotType"] as! String
        }
        if dict.keys.contains("TimeZone") {
            self.timeZone = dict["TimeZone"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentId") {
            self.intentId = dict["IntentId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Array") {
                self.array = dict["Array"] as! Bool
            }
            if dict.keys.contains("Encrypt") {
                self.encrypt = dict["Encrypt"] as! Bool
            }
            if dict.keys.contains("Interactive") {
                self.interactive = dict["Interactive"] as! Bool
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SlotId") {
                self.slotId = dict["SlotId"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliasName") {
            self.aliasName = dict["AliasName"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserId") {
            self.createUserId = dict["CreateUserId"] as! String
        }
        if dict.keys.contains("CreateUserName") {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("IntentId") {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("IntentName") {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("ModifyUserId") {
            self.modifyUserId = dict["ModifyUserId"] as! String
        }
        if dict.keys.contains("ModifyUserName") {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlotInfos") {
            var tmp : [DescribeIntentResponseBody.SlotInfos] = []
            for v in dict["SlotInfos"] as! [Any] {
                var model = DescribeIntentResponseBody.SlotInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeIntentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PerspectiveId") {
            self.perspectiveId = dict["PerspectiveId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PerspectiveCode") {
            self.perspectiveCode = dict["PerspectiveCode"] as! String
        }
        if dict.keys.contains("PerspectiveId") {
            self.perspectiveId = dict["PerspectiveId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SelfDefine") {
            self.selfDefine = dict["SelfDefine"] as! Bool
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePerspectiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Feedback") {
            self.feedback = dict["Feedback"] as! String
        }
        if dict.keys.contains("FeedbackContent") {
            self.feedbackContent = dict["FeedbackContent"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Feedback") {
            self.feedback = dict["Feedback"] as! String
        }
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = FeedbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! Int32
        }
        if dict.keys.contains("ExtraInfo") {
            self.extraInfo = dict["ExtraInfo"] as! String
        }
        if dict.keys.contains("ForeignId") {
            self.foreignId = dict["ForeignId"] as! String
        }
        if dict.keys.contains("Nick") {
            self.nick = dict["Nick"] as! String
        }
        if dict.keys.contains("Telephone") {
            self.telephone = dict["Telephone"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenerateUserAccessTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentKey") {
                self.agentKey = dict["AgentKey"] as! String
            }
            if dict.keys.contains("AgentName") {
                self.agentName = dict["AgentName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetAgentInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAgentInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAsyncResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RobotInstanceId") {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetBotSessionDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeList") {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Error") {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Errors") {
            self.errors = dict["Errors"] as! [String: Any]
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") {
            self.response = dict["Response"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Warnings") {
            self.warnings = dict["Warnings"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetInstancePublishTaskStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeList") {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Error") {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Errors") {
            self.errors = dict["Errors"] as! [String: Any]
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") {
            self.response = dict["Response"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Warnings") {
            self.warnings = dict["Warnings"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetPublishTaskStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("UserAccessToken") {
            self.userAccessToken = dict["UserAccessToken"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InitIMConnectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LinkInstanceCategoryRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryIds") {
            self.categoryIds = dict["CategoryIds"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = LinkInstanceCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentName") {
            self.agentName = dict["AgentName"] as! String
        }
        if dict.keys.contains("GoodsCodes") {
            self.goodsCodes = dict["GoodsCodes"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentId") {
                self.agentId = dict["AgentId"] as! Int64
            }
            if dict.keys.contains("AgentKey") {
                self.agentKey = dict["AgentKey"] as! String
            }
            if dict.keys.contains("AgentName") {
                self.agentName = dict["AgentName"] as! String
            }
            if dict.keys.contains("InstanceInfos") {
                self.instanceInfos = dict["InstanceInfos"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListAgentResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListAgentResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAgentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeType") {
            self.knowledgeType = dict["KnowledgeType"] as! Int32
        }
        if dict.keys.contains("ParentCategoryId") {
            self.parentCategoryId = dict["ParentCategoryId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentCategoryId") {
                self.parentCategoryId = dict["ParentCategoryId"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Categories") {
            var tmp : [ListCategoryResponseBody.Categories] = []
            for v in dict["Categories"] as! [Any] {
                var model = ListCategoryResponseBody.Categories()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.categories = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnQuestionId") {
                self.connQuestionId = dict["ConnQuestionId"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("OutlineId") {
                self.outlineId = dict["OutlineId"] as! Int64
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Outlines") {
            var tmp : [ListConnQuestionResponseBody.Outlines] = []
            for v in dict["Outlines"] as! [Any] {
                var model = ListConnQuestionResponseBody.Outlines()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.outlines = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListConnQuestionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUserId") {
                self.createUserId = dict["CreateUserId"] as! String
            }
            if dict.keys.contains("CreateUserName") {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("EntityId") {
                self.entityId = dict["EntityId"] as! Int64
            }
            if dict.keys.contains("EntityName") {
                self.entityName = dict["EntityName"] as! String
            }
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ModifyUserId") {
                self.modifyUserId = dict["ModifyUserId"] as! String
            }
            if dict.keys.contains("ModifyUserName") {
                self.modifyUserName = dict["ModifyUserName"] as! String
            }
            if dict.keys.contains("SysEntityCode") {
                self.sysEntityCode = dict["SysEntityCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Entities") {
            var tmp : [ListDSEntityResponseBody.Entities] = []
            for v in dict["Entities"] as! [Any] {
                var model = ListDSEntityResponseBody.Entities()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.entities = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDSEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityValueId") {
            self.entityValueId = dict["EntityValueId"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EntityId") {
                self.entityId = dict["EntityId"] as! Int64
            }
            if dict.keys.contains("EntityValueId") {
                self.entityValueId = dict["EntityValueId"] as! Int64
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("Synonyms") {
                self.synonyms = dict["Synonyms"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityValues") {
            var tmp : [ListDSEntityValueResponseBody.EntityValues] = []
            for v in dict["EntityValues"] as! [Any] {
                var model = ListDSEntityValueResponseBody.EntityValues()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.entityValues = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDSEntityValueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RobotType") {
            self.robotType = dict["RobotType"] as! String
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
            if dict.keys.contains("RobotType") {
                self.robotType = dict["RobotType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") {
            var tmp : [ListInstanceResponseBody.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = ListInstanceResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentName") {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Array") {
                    self.array = dict["Array"] as! Bool
                }
                if dict.keys.contains("Encrypt") {
                    self.encrypt = dict["Encrypt"] as! Bool
                }
                if dict.keys.contains("Interactive") {
                    self.interactive = dict["Interactive"] as! Bool
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("SlotId") {
                    self.slotId = dict["SlotId"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliasName") {
                self.aliasName = dict["AliasName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUserId") {
                self.createUserId = dict["CreateUserId"] as! String
            }
            if dict.keys.contains("CreateUserName") {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("IntentId") {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("IntentName") {
                self.intentName = dict["IntentName"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ModifyUserId") {
                self.modifyUserId = dict["ModifyUserId"] as! String
            }
            if dict.keys.contains("ModifyUserName") {
                self.modifyUserName = dict["ModifyUserName"] as! String
            }
            if dict.keys.contains("SlotInfos") {
                var tmp : [ListIntentResponseBody.Intents.SlotInfos] = []
                for v in dict["SlotInfos"] as! [Any] {
                    var model = ListIntentResponseBody.Intents.SlotInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Intents") {
            var tmp : [ListIntentResponseBody.Intents] = []
            for v in dict["Intents"] as! [Any] {
                var model = ListIntentResponseBody.Intents()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.intents = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListIntentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentId") {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("LgfText") {
            self.lgfText = dict["LgfText"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("IntentId") {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("LgfId") {
                self.lgfId = dict["LgfId"] as! Int64
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("RuleText") {
                self.ruleText = dict["RuleText"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lgfs") {
            var tmp : [ListLgfResponseBody.Lgfs] = []
            for v in dict["Lgfs"] as! [Any] {
                var model = ListLgfResponseBody.Lgfs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.lgfs = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListLgfResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("SaasGroupCodes") {
            self.saasGroupCodes = dict["SaasGroupCodes"] as! String
        }
        if dict.keys.contains("SaasName") {
            self.saasName = dict["SaasName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("EnName") {
                self.enName = dict["EnName"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ServiceUrl") {
                self.serviceUrl = dict["ServiceUrl"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListSaasInfoResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListSaasInfoResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SaasToken") {
            self.saasToken = dict["SaasToken"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSaasInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PgCode") {
                    self.pgCode = dict["PgCode"] as! String
                }
                if dict.keys.contains("PgEnName") {
                    self.pgEnName = dict["PgEnName"] as! String
                }
                if dict.keys.contains("PgName") {
                    self.pgName = dict["PgName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnName") {
                self.enName = dict["EnName"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PgInfos") {
                var tmp : [ListSaasPermissionGroupInfosResponseBody.Data.PgInfos] = []
                for v in dict["PgInfos"] as! [Any] {
                    var model = ListSaasPermissionGroupInfosResponseBody.Data.PgInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pgInfos = tmp
            }
            if dict.keys.contains("SaasCode") {
                self.saasCode = dict["SaasCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListSaasPermissionGroupInfosResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListSaasPermissionGroupInfosResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSaasPermissionGroupInfosResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("SimQuestionId") {
                self.simQuestionId = dict["SimQuestionId"] as! Int64
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SimQuestions") {
            var tmp : [ListSimQuestionResponseBody.SimQuestions] = []
            for v in dict["SimQuestions"] as! [Any] {
                var model = ListSimQuestionResponseBody.SimQuestions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSimQuestionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
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

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ContentType") {
                self.contentType = dict["ContentType"] as! Int32
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("PerspectiveCodes") {
                self.perspectiveCodes = dict["PerspectiveCodes"] as! [String]
            }
            if dict.keys.contains("PlainText") {
                self.plainText = dict["PlainText"] as! String
            }
            if dict.keys.contains("SolutionId") {
                self.solutionId = dict["SolutionId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Solutions") {
            var tmp : [ListSolutionResponseBody.Solutions] = []
            for v in dict["Solutions"] as! [Any] {
                var model = ListSolutionResponseBody.Solutions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSolutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("RobotInstanceId") {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTongyiChatHistorysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("RobotInstanceId") {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTongyiConversationLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentId") {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndIndex") {
                    self.endIndex = dict["EndIndex"] as! Int32
                }
                if dict.keys.contains("SlotId") {
                    self.slotId = dict["SlotId"] as! String
                }
                if dict.keys.contains("StartIndex") {
                    self.startIndex = dict["StartIndex"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("IntentId") {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("SlotInfos") {
                var tmp : [ListUserSayResponseBody.UserSays.SlotInfos] = []
                for v in dict["SlotInfos"] as! [Any] {
                    var model = ListUserSayResponseBody.UserSays.SlotInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.slotInfos = tmp
            }
            if dict.keys.contains("UserSayId") {
                self.userSayId = dict["UserSayId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
        if dict.keys.contains("UserSays") {
            var tmp : [ListUserSayResponseBody.UserSays] = []
            for v in dict["UserSays"] as! [Any] {
                var model = ListUserSayResponseBody.UserSays()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListUserSayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Utterance") {
            self.utterance = dict["Utterance"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("StandardWord") {
                        self.standardWord = dict["StandardWord"] as! String
                    }
                    if dict.keys.contains("Word") {
                        self.word = dict["Word"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("StandardWord") {
                        self.standardWord = dict["StandardWord"] as! String
                    }
                    if dict.keys.contains("Word") {
                        self.word = dict["Word"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GlobalDictList") {
                    var tmp : [NluResponseBody.Messages.DialogHubNluInfo.GlobalDictList] = []
                    for v in dict["GlobalDictList"] as! [Any] {
                        var model = NluResponseBody.Messages.DialogHubNluInfo.GlobalDictList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.globalDictList = tmp
                }
                if dict.keys.contains("GlobalSensitiveWordList") {
                    var tmp : [NluResponseBody.Messages.DialogHubNluInfo.GlobalSensitiveWordList] = []
                    for v in dict["GlobalSensitiveWordList"] as! [Any] {
                        var model = NluResponseBody.Messages.DialogHubNluInfo.GlobalSensitiveWordList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Origin") {
                        self.origin = dict["Origin"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Origin") {
                            self.origin = dict["Origin"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IntentId") {
                        self.intentId = dict["IntentId"] as! Int64
                    }
                    if dict.keys.contains("MatchDetail") {
                        self.matchDetail = dict["MatchDetail"] as! String
                    }
                    if dict.keys.contains("MatchType") {
                        self.matchType = dict["MatchType"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Score") {
                        self.score = dict["Score"] as! Double
                    }
                    if dict.keys.contains("SlotList") {
                        var tmp : [NluResponseBody.Messages.DsNluInfo.IntentList.SlotList] = []
                        for v in dict["SlotList"] as! [Any] {
                            var model = NluResponseBody.Messages.DsNluInfo.IntentList.SlotList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EntityList") {
                    var tmp : [NluResponseBody.Messages.DsNluInfo.EntityList] = []
                    for v in dict["EntityList"] as! [Any] {
                        var model = NluResponseBody.Messages.DsNluInfo.EntityList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.entityList = tmp
                }
                if dict.keys.contains("IntentList") {
                    var tmp : [NluResponseBody.Messages.DsNluInfo.IntentList] = []
                    for v in dict["IntentList"] as! [Any] {
                        var model = NluResponseBody.Messages.DsNluInfo.IntentList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DialogHubNluInfo") {
                var model = NluResponseBody.Messages.DialogHubNluInfo()
                model.fromMap(dict["DialogHubNluInfo"] as! [String: Any])
                self.dialogHubNluInfo = model
            }
            if dict.keys.contains("DsNluInfo") {
                var model = NluResponseBody.Messages.DsNluInfo()
                model.fromMap(dict["DsNluInfo"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("Messages") {
            var tmp : [NluResponseBody.Messages] = []
            for v in dict["Messages"] as! [Any] {
                var model = NluResponseBody.Messages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.messages = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = NluResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PerspectiveCode") {
                self.perspectiveCode = dict["PerspectiveCode"] as! String
            }
            if dict.keys.contains("PerspectiveId") {
                self.perspectiveId = dict["PerspectiveId"] as! String
            }
            if dict.keys.contains("SelfDefine") {
                self.selfDefine = dict["SelfDefine"] as! Bool
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Perspectives") {
            var tmp : [QueryPerspectivesResponseBody.Perspectives] = []
            for v in dict["Perspectives"] as! [Any] {
                var model = QueryPerspectivesResponseBody.Perspectives()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.perspectives = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryPerspectivesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RetryDocResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryIds") {
            self.categoryIds = dict["CategoryIds"] as! [Int64]
        }
        if dict.keys.contains("CreateTimeBegin") {
            self.createTimeBegin = dict["CreateTimeBegin"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateUserName") {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("EndTimeBegin") {
            self.endTimeBegin = dict["EndTimeBegin"] as! String
        }
        if dict.keys.contains("EndTimeEnd") {
            self.endTimeEnd = dict["EndTimeEnd"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("ModifyTimeBegin") {
            self.modifyTimeBegin = dict["ModifyTimeBegin"] as! String
        }
        if dict.keys.contains("ModifyTimeEnd") {
            self.modifyTimeEnd = dict["ModifyTimeEnd"] as! String
        }
        if dict.keys.contains("ModifyUserName") {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProcessStatus") {
            self.processStatus = dict["ProcessStatus"] as! Int32
        }
        if dict.keys.contains("SearchScope") {
            self.searchScope = dict["SearchScope"] as! Int32
        }
        if dict.keys.contains("StartTimeBegin") {
            self.startTimeBegin = dict["StartTimeBegin"] as! String
        }
        if dict.keys.contains("StartTimeEnd") {
            self.startTimeEnd = dict["StartTimeEnd"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TagIds") {
            self.tagIds = dict["TagIds"] as! [Int64]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryIds") {
            self.categoryIdsShrink = dict["CategoryIds"] as! String
        }
        if dict.keys.contains("CreateTimeBegin") {
            self.createTimeBegin = dict["CreateTimeBegin"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateUserName") {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("EndTimeBegin") {
            self.endTimeBegin = dict["EndTimeBegin"] as! String
        }
        if dict.keys.contains("EndTimeEnd") {
            self.endTimeEnd = dict["EndTimeEnd"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("ModifyTimeBegin") {
            self.modifyTimeBegin = dict["ModifyTimeBegin"] as! String
        }
        if dict.keys.contains("ModifyTimeEnd") {
            self.modifyTimeEnd = dict["ModifyTimeEnd"] as! String
        }
        if dict.keys.contains("ModifyUserName") {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProcessStatus") {
            self.processStatus = dict["ProcessStatus"] as! Int32
        }
        if dict.keys.contains("SearchScope") {
            self.searchScope = dict["SearchScope"] as! Int32
        }
        if dict.keys.contains("StartTimeBegin") {
            self.startTimeBegin = dict["StartTimeBegin"] as! String
        }
        if dict.keys.contains("StartTimeEnd") {
            self.startTimeEnd = dict["StartTimeEnd"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TagIds") {
            self.tagIdsShrink = dict["TagIds"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DefaultTag") {
                    self.defaultTag = dict["DefaultTag"] as! Bool
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! Int64
                }
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("TagId") {
                    self.tagId = dict["TagId"] as! Int64
                }
                if dict.keys.contains("TagName") {
                    self.tagName = dict["TagName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUserId") {
                self.createUserId = dict["CreateUserId"] as! Int64
            }
            if dict.keys.contains("CreateUserName") {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("DocName") {
                self.docName = dict["DocName"] as! String
            }
            if dict.keys.contains("DocTags") {
                var tmp : [SearchDocResponseBody.DocHits.DocTags] = []
                for v in dict["DocTags"] as! [Any] {
                    var model = SearchDocResponseBody.DocHits.DocTags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.docTags = tmp
            }
            if dict.keys.contains("EffectStatus") {
                self.effectStatus = dict["EffectStatus"] as! Int32
            }
            if dict.keys.contains("EndDate") {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("KnowledgeId") {
                self.knowledgeId = dict["KnowledgeId"] as! Int64
            }
            if dict.keys.contains("Meta") {
                self.meta = dict["Meta"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ModifyUserId") {
                self.modifyUserId = dict["ModifyUserId"] as! Int64
            }
            if dict.keys.contains("ModifyUserName") {
                self.modifyUserName = dict["ModifyUserName"] as! String
            }
            if dict.keys.contains("ProcessCanRetry") {
                self.processCanRetry = dict["ProcessCanRetry"] as! Bool
            }
            if dict.keys.contains("ProcessMessage") {
                self.processMessage = dict["ProcessMessage"] as! String
            }
            if dict.keys.contains("ProcessStatus") {
                self.processStatus = dict["ProcessStatus"] as! Int32
            }
            if dict.keys.contains("StartDate") {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DocHits") {
            var tmp : [SearchDocResponseBody.DocHits] = []
            for v in dict["DocHits"] as! [Any] {
                var model = SearchDocResponseBody.DocHits()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.docHits = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchDocResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryIds") {
            self.categoryIds = dict["CategoryIds"] as! [Int64]
        }
        if dict.keys.contains("CreateTimeBegin") {
            self.createTimeBegin = dict["CreateTimeBegin"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateUserName") {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("EndTimeBegin") {
            self.endTimeBegin = dict["EndTimeBegin"] as! String
        }
        if dict.keys.contains("EndTimeEnd") {
            self.endTimeEnd = dict["EndTimeEnd"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("ModifyTimeBegin") {
            self.modifyTimeBegin = dict["ModifyTimeBegin"] as! String
        }
        if dict.keys.contains("ModifyTimeEnd") {
            self.modifyTimeEnd = dict["ModifyTimeEnd"] as! String
        }
        if dict.keys.contains("ModifyUserName") {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchScope") {
            self.searchScope = dict["SearchScope"] as! Int32
        }
        if dict.keys.contains("StartTimeBegin") {
            self.startTimeBegin = dict["StartTimeBegin"] as! String
        }
        if dict.keys.contains("StartTimeEnd") {
            self.startTimeEnd = dict["StartTimeEnd"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryIds") {
            self.categoryIdsShrink = dict["CategoryIds"] as! String
        }
        if dict.keys.contains("CreateTimeBegin") {
            self.createTimeBegin = dict["CreateTimeBegin"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateUserName") {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("EndTimeBegin") {
            self.endTimeBegin = dict["EndTimeBegin"] as! String
        }
        if dict.keys.contains("EndTimeEnd") {
            self.endTimeEnd = dict["EndTimeEnd"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("ModifyTimeBegin") {
            self.modifyTimeBegin = dict["ModifyTimeBegin"] as! String
        }
        if dict.keys.contains("ModifyTimeEnd") {
            self.modifyTimeEnd = dict["ModifyTimeEnd"] as! String
        }
        if dict.keys.contains("ModifyUserName") {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchScope") {
            self.searchScope = dict["SearchScope"] as! Int32
        }
        if dict.keys.contains("StartTimeBegin") {
            self.startTimeBegin = dict["StartTimeBegin"] as! String
        }
        if dict.keys.contains("StartTimeEnd") {
            self.startTimeEnd = dict["StartTimeEnd"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUserId") {
                self.createUserId = dict["CreateUserId"] as! Int64
            }
            if dict.keys.contains("CreateUserName") {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("EffectStatus") {
                self.effectStatus = dict["EffectStatus"] as! Int32
            }
            if dict.keys.contains("HitSimilarTitles") {
                self.hitSimilarTitles = dict["HitSimilarTitles"] as! [String]
            }
            if dict.keys.contains("HitSolutions") {
                self.hitSolutions = dict["HitSolutions"] as! [String]
            }
            if dict.keys.contains("KnowledgeId") {
                self.knowledgeId = dict["KnowledgeId"] as! Int64
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ModifyUserId") {
                self.modifyUserId = dict["ModifyUserId"] as! Int64
            }
            if dict.keys.contains("ModifyUserName") {
                self.modifyUserName = dict["ModifyUserName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FaqHits") {
            var tmp : [SearchFaqResponseBody.FaqHits] = []
            for v in dict["FaqHits"] as! [Any] {
                var model = SearchFaqResponseBody.FaqHits()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.faqHits = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchFaqResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("BizCode") {
            self.bizCode = dict["BizCode"] as! String
        }
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ConnQuestionId") {
            self.connQuestionId = dict["ConnQuestionId"] as! Int64
        }
        if dict.keys.contains("OutlineId") {
            self.outlineId = dict["OutlineId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateConnQuestionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityName") {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateDSEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityValueId") {
            self.entityValueId = dict["EntityValueId"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Synonyms") {
            self.synonyms = dict["Synonyms"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityValueId") {
            self.entityValueId = dict["EntityValueId"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Synonyms") {
            self.synonymsShrink = dict["Synonyms"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityValueId") {
            self.entityValueId = dict["EntityValueId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateDSEntityValueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldCode") {
                    self.fieldCode = dict["FieldCode"] as! String
                }
                if dict.keys.contains("FieldName") {
                    self.fieldName = dict["FieldName"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessViewId") {
                self.businessViewId = dict["BusinessViewId"] as! String
            }
            if dict.keys.contains("BusinessViewName") {
                self.businessViewName = dict["BusinessViewName"] as! String
            }
            if dict.keys.contains("MetaCellInfoDTOList") {
                var tmp : [UpdateDocRequest.DocMetadata.MetaCellInfoDTOList] = []
                for v in dict["MetaCellInfoDTOList"] as! [Any] {
                    var model = UpdateDocRequest.DocMetadata.MetaCellInfoDTOList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("DocMetadata") {
            var tmp : [UpdateDocRequest.DocMetadata] = []
            for v in dict["DocMetadata"] as! [Any] {
                var model = UpdateDocRequest.DocMetadata()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.docMetadata = tmp
        }
        if dict.keys.contains("DocName") {
            self.docName = dict["DocName"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("Meta") {
            self.meta = dict["Meta"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("TagIds") {
            self.tagIds = dict["TagIds"] as! [Int64]
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("DocMetadata") {
            self.docMetadataShrink = dict["DocMetadata"] as! String
        }
        if dict.keys.contains("DocName") {
            self.docName = dict["DocName"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("Meta") {
            self.meta = dict["Meta"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("TagIds") {
            self.tagIdsShrink = dict["TagIds"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateDocResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateFaqResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Introduction") {
            self.introduction = dict["Introduction"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Array") {
                    self.array = dict["Array"] as! Bool
                }
                if dict.keys.contains("Encrypt") {
                    self.encrypt = dict["Encrypt"] as! Bool
                }
                if dict.keys.contains("Interactive") {
                    self.interactive = dict["Interactive"] as! Bool
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("SlotId") {
                    self.slotId = dict["SlotId"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliasName") {
                self.aliasName = dict["AliasName"] as! String
            }
            if dict.keys.contains("IntentName") {
                self.intentName = dict["IntentName"] as! String
            }
            if dict.keys.contains("SlotInfos") {
                var tmp : [UpdateIntentRequest.IntentDefinition.SlotInfos] = []
                for v in dict["SlotInfos"] as! [Any] {
                    var model = UpdateIntentRequest.IntentDefinition.SlotInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentDefinition") {
            var model = UpdateIntentRequest.IntentDefinition()
            model.fromMap(dict["IntentDefinition"] as! [String: Any])
            self.intentDefinition = model
        }
        if dict.keys.contains("IntentId") {
            self.intentId = dict["IntentId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentDefinition") {
            self.intentDefinitionShrink = dict["IntentDefinition"] as! String
        }
        if dict.keys.contains("IntentId") {
            self.intentId = dict["IntentId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IntentId") {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateIntentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IntentId") {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("RuleText") {
                self.ruleText = dict["RuleText"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LgfDefinition") {
            var model = UpdateLgfRequest.LgfDefinition()
            model.fromMap(dict["LgfDefinition"] as! [String: Any])
            self.lgfDefinition = model
        }
        if dict.keys.contains("LgfId") {
            self.lgfId = dict["LgfId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LgfDefinition") {
            self.lgfDefinitionShrink = dict["LgfDefinition"] as! String
        }
        if dict.keys.contains("LgfId") {
            self.lgfId = dict["LgfId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LgfId") {
            self.lgfId = dict["LgfId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateLgfResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PerspectiveId") {
            self.perspectiveId = dict["PerspectiveId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdatePerspectiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("SimQuestionId") {
            self.simQuestionId = dict["SimQuestionId"] as! Int64
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateSimQuestionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentType") {
            self.contentType = dict["ContentType"] as! Int32
        }
        if dict.keys.contains("PerspectiveCodes") {
            self.perspectiveCodes = dict["PerspectiveCodes"] as! [String]
        }
        if dict.keys.contains("SolutionId") {
            self.solutionId = dict["SolutionId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateSolutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndIndex") {
                    self.endIndex = dict["EndIndex"] as! Int32
                }
                if dict.keys.contains("SlotId") {
                    self.slotId = dict["SlotId"] as! String
                }
                if dict.keys.contains("StartIndex") {
                    self.startIndex = dict["StartIndex"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("IntentId") {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("SlotInfos") {
                var tmp : [UpdateUserSayRequest.UserSayDefinition.SlotInfos] = []
                for v in dict["SlotInfos"] as! [Any] {
                    var model = UpdateUserSayRequest.UserSayDefinition.SlotInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserSayDefinition") {
            var model = UpdateUserSayRequest.UserSayDefinition()
            model.fromMap(dict["UserSayDefinition"] as! [String: Any])
            self.userSayDefinition = model
        }
        if dict.keys.contains("UserSayId") {
            self.userSayId = dict["UserSayId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserSayDefinition") {
            self.userSayDefinitionShrink = dict["UserSayDefinition"] as! String
        }
        if dict.keys.contains("UserSayId") {
            self.userSayId = dict["UserSayId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserSayId") {
            self.userSayId = dict["UserSayId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateUserSayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
