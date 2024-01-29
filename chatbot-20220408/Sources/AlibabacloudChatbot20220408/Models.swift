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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
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
        if dict.keys.contains("AccessToken") && dict["AccessToken"] != nil {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StreamSecret") && dict["StreamSecret"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Perspective") && dict["Perspective"] != nil {
            self.perspective = dict["Perspective"] as! [String]
        }
        if dict.keys.contains("RecommendNum") && dict["RecommendNum"] != nil {
            self.recommendNum = dict["RecommendNum"] as! Int64
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Utterance") && dict["Utterance"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Perspective") && dict["Perspective"] != nil {
            self.perspectiveShrink = dict["Perspective"] as! String
        }
        if dict.keys.contains("RecommendNum") && dict["RecommendNum"] != nil {
            self.recommendNum = dict["RecommendNum"] as! Int64
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Utterance") && dict["Utterance"] != nil {
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
            if dict.keys.contains("Meta") && dict["Meta"] != nil {
                self.meta = dict["Meta"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
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
        if dict.keys.contains("Associate") && dict["Associate"] != nil {
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
        if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("AsrMaxEndSilence") && dict["AsrMaxEndSilence"] != nil {
            self.asrMaxEndSilence = dict["AsrMaxEndSilence"] as! Int32
        }
        if dict.keys.contains("Interruptible") && dict["Interruptible"] != nil {
            self.interruptible = dict["Interruptible"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SilenceReplyTimeout") && dict["SilenceReplyTimeout"] != nil {
            self.silenceReplyTimeout = dict["SilenceReplyTimeout"] as! Int32
        }
        if dict.keys.contains("WelcomeMessage") && dict["WelcomeMessage"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("BizTypeList") && dict["BizTypeList"] != nil {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Error") && dict["Error"] != nil {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") && dict["Response"] != nil {
            self.response = dict["Response"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
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
        if dict.keys.contains("BizTypeList") && dict["BizTypeList"] != nil {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Error") && dict["Error"] != nil {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") && dict["Response"] != nil {
            self.response = dict["Response"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentName") && dict["IntentName"] != nil {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! String
        }
        if dict.keys.contains("Perspective") && dict["Perspective"] != nil {
            self.perspective = dict["Perspective"] as! [String]
        }
        if dict.keys.contains("SandBox") && dict["SandBox"] != nil {
            self.sandBox = dict["SandBox"] as! Bool
        }
        if dict.keys.contains("SenderId") && dict["SenderId"] != nil {
            self.senderId = dict["SenderId"] as! String
        }
        if dict.keys.contains("SenderNick") && dict["SenderNick"] != nil {
            self.senderNick = dict["SenderNick"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Utterance") && dict["Utterance"] != nil {
            self.utterance = dict["Utterance"] as! String
        }
        if dict.keys.contains("VendorParam") && dict["VendorParam"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentName") && dict["IntentName"] != nil {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! String
        }
        if dict.keys.contains("Perspective") && dict["Perspective"] != nil {
            self.perspectiveShrink = dict["Perspective"] as! String
        }
        if dict.keys.contains("SandBox") && dict["SandBox"] != nil {
            self.sandBox = dict["SandBox"] as! Bool
        }
        if dict.keys.contains("SenderId") && dict["SenderId"] != nil {
            self.senderId = dict["SenderId"] as! String
        }
        if dict.keys.contains("SenderNick") && dict["SenderNick"] != nil {
            self.senderNick = dict["SenderNick"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Utterance") && dict["Utterance"] != nil {
            self.utterance = dict["Utterance"] as! String
        }
        if dict.keys.contains("VendorParam") && dict["VendorParam"] != nil {
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
                    if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
                        self.knowledgeId = dict["KnowledgeId"] as! String
                    }
                    if dict.keys.contains("Title") && dict["Title"] != nil {
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
                if dict.keys.contains("AnswerSource") && dict["AnswerSource"] != nil {
                    self.answerSource = dict["AnswerSource"] as! String
                }
                if dict.keys.contains("Category") && dict["Category"] != nil {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
                    self.contentType = dict["ContentType"] as! String
                }
                if dict.keys.contains("HitStatement") && dict["HitStatement"] != nil {
                    self.hitStatement = dict["HitStatement"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("RelatedKnowledges") && dict["RelatedKnowledges"] != nil {
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
                if dict.keys.contains("Score") && dict["Score"] != nil {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("Summary") && dict["Summary"] != nil {
                    self.summary = dict["Summary"] as! String
                }
                if dict.keys.contains("Title") && dict["Title"] != nil {
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
                if dict.keys.contains("AnswerSource") && dict["AnswerSource"] != nil {
                    self.answerSource = dict["AnswerSource"] as! String
                }
                if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
                    self.knowledgeId = dict["KnowledgeId"] as! String
                }
                if dict.keys.contains("Score") && dict["Score"] != nil {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("Title") && dict["Title"] != nil {
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
                    if dict.keys.contains("Hit") && dict["Hit"] != nil {
                        self.hit = dict["Hit"] as! Bool
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Origin") && dict["Origin"] != nil {
                        self.origin = dict["Origin"] as! String
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
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
                if dict.keys.contains("AnswerSource") && dict["AnswerSource"] != nil {
                    self.answerSource = dict["AnswerSource"] as! String
                }
                if dict.keys.contains("ArticleTitle") && dict["ArticleTitle"] != nil {
                    self.articleTitle = dict["ArticleTitle"] as! String
                }
                if dict.keys.contains("Commands") && dict["Commands"] != nil {
                    self.commands = dict["Commands"] as! [String: Any]
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
                    self.contentType = dict["ContentType"] as! String
                }
                if dict.keys.contains("DialogName") && dict["DialogName"] != nil {
                    self.dialogName = dict["DialogName"] as! String
                }
                if dict.keys.contains("Ext") && dict["Ext"] != nil {
                    self.ext = dict["Ext"] as! [String: Any]
                }
                if dict.keys.contains("ExternalFlags") && dict["ExternalFlags"] != nil {
                    self.externalFlags = dict["ExternalFlags"] as! [String: Any]
                }
                if dict.keys.contains("HitStatement") && dict["HitStatement"] != nil {
                    self.hitStatement = dict["HitStatement"] as! String
                }
                if dict.keys.contains("IntentName") && dict["IntentName"] != nil {
                    self.intentName = dict["IntentName"] as! String
                }
                if dict.keys.contains("MetaData") && dict["MetaData"] != nil {
                    self.metaData = dict["MetaData"] as! String
                }
                if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                    self.nodeId = dict["NodeId"] as! String
                }
                if dict.keys.contains("NodeName") && dict["NodeName"] != nil {
                    self.nodeName = dict["NodeName"] as! String
                }
                if dict.keys.contains("ResponseType") && dict["ResponseType"] != nil {
                    self.responseType = dict["ResponseType"] as! String
                }
                if dict.keys.contains("Score") && dict["Score"] != nil {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("Slots") && dict["Slots"] != nil {
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
                if dict.keys.contains("UserDefinedChatTitle") && dict["UserDefinedChatTitle"] != nil {
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
            if dict.keys.contains("AnswerSource") && dict["AnswerSource"] != nil {
                self.answerSource = dict["AnswerSource"] as! String
            }
            if dict.keys.contains("AnswerType") && dict["AnswerType"] != nil {
                self.answerType = dict["AnswerType"] as! String
            }
            if dict.keys.contains("Knowledge") && dict["Knowledge"] != nil {
                var model = ChatResponseBody.Messages.Knowledge()
                model.fromMap(dict["Knowledge"] as! [String: Any])
                self.knowledge = model
            }
            if dict.keys.contains("Recommends") && dict["Recommends"] != nil {
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
            if dict.keys.contains("Text") && dict["Text"] != nil {
                var model = ChatResponseBody.Messages.Text()
                model.fromMap(dict["Text"] as! [String: Any])
                self.text = model
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("VoiceTitle") && dict["VoiceTitle"] != nil {
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
        if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("Messages") && dict["Messages"] != nil {
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
        if dict.keys.contains("QuerySegList") && dict["QuerySegList"] != nil {
            self.querySegList = dict["QuerySegList"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("BizTypeList") && dict["BizTypeList"] != nil {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Error") && dict["Error"] != nil {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            self.errors = dict["Errors"] as! [String: Any]
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") && dict["Response"] != nil {
            self.response = dict["Response"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Warnings") && dict["Warnings"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ContinueInstancePublishTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCategoryRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentCategoryId != nil {
            map["ParentCategoryId"] = self.parentCategoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
            self.parentCategoryId = dict["ParentCategoryId"] as! Int64
        }
    }
}

public class CreateCategoryResponseBody : Tea.TeaModel {
    public class Category : Tea.TeaModel {
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
            if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
                self.parentCategoryId = dict["ParentCategoryId"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("Category") && dict["Category"] != nil {
            var model = CreateCategoryResponseBody.Category()
            model.fromMap(dict["Category"] as! [String: Any])
            self.category = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ConnQuestionId") && dict["ConnQuestionId"] != nil {
            self.connQuestionId = dict["ConnQuestionId"] as! Int64
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
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
        if dict.keys.contains("OutlineId") && dict["OutlineId"] != nil {
            self.outlineId = dict["OutlineId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityName") && dict["EntityName"] != nil {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Synonyms") && dict["Synonyms"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Synonyms") && dict["Synonyms"] != nil {
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
        if dict.keys.contains("EntityValueId") && dict["EntityValueId"] != nil {
            self.entityValueId = dict["EntityValueId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateDSEntityValueResponseBody()
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("SolutionContent") && dict["SolutionContent"] != nil {
            self.solutionContent = dict["SolutionContent"] as! String
        }
        if dict.keys.contains("SolutionType") && dict["SolutionType"] != nil {
            self.solutionType = dict["SolutionType"] as! Int32
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
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
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Introduction") && dict["Introduction"] != nil {
            self.introduction = dict["Introduction"] as! String
        }
        if dict.keys.contains("LanguageCode") && dict["LanguageCode"] != nil {
            self.languageCode = dict["LanguageCode"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RobotType") && dict["RobotType"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("BizTypeList") && dict["BizTypeList"] != nil {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Error") && dict["Error"] != nil {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") && dict["Response"] != nil {
            self.response = dict["Response"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
                if dict.keys.contains("Array") && dict["Array"] != nil {
                    self.array = dict["Array"] as! Bool
                }
                if dict.keys.contains("Encrypt") && dict["Encrypt"] != nil {
                    self.encrypt = dict["Encrypt"] as! Bool
                }
                if dict.keys.contains("Interactive") && dict["Interactive"] != nil {
                    self.interactive = dict["Interactive"] as! Bool
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("SlotId") && dict["SlotId"] != nil {
                    self.slotId = dict["SlotId"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
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
            if dict.keys.contains("AliasName") && dict["AliasName"] != nil {
                self.aliasName = dict["AliasName"] as! String
            }
            if dict.keys.contains("IntentName") && dict["IntentName"] != nil {
                self.intentName = dict["IntentName"] as! String
            }
            if dict.keys.contains("SlotInfos") && dict["SlotInfos"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentDefinition") && dict["IntentDefinition"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentDefinition") && dict["IntentDefinition"] != nil {
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
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
            if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("RuleText") && dict["RuleText"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LgfDefinition") && dict["LgfDefinition"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LgfDefinition") && dict["LgfDefinition"] != nil {
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
        if dict.keys.contains("LgfId") && dict["LgfId"] != nil {
            self.lgfId = dict["LgfId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
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
        if dict.keys.contains("PerspectiveId") && dict["PerspectiveId"] != nil {
            self.perspectiveId = dict["PerspectiveId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("DataIdList") && dict["DataIdList"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("DataIdList") && dict["DataIdList"] != nil {
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
        if dict.keys.contains("BizTypeList") && dict["BizTypeList"] != nil {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Error") && dict["Error"] != nil {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") && dict["Response"] != nil {
            self.response = dict["Response"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SimQuestionId") && dict["SimQuestionId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
            self.contentType = dict["ContentType"] as! Int32
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("PerspectiveCodes") && dict["PerspectiveCodes"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SolutionId") && dict["SolutionId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
                if dict.keys.contains("EndIndex") && dict["EndIndex"] != nil {
                    self.endIndex = dict["EndIndex"] as! Int32
                }
                if dict.keys.contains("SlotId") && dict["SlotId"] != nil {
                    self.slotId = dict["SlotId"] as! String
                }
                if dict.keys.contains("StartIndex") && dict["StartIndex"] != nil {
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
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("SlotInfos") && dict["SlotInfos"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserSayDefinition") && dict["UserSayDefinition"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserSayDefinition") && dict["UserSayDefinition"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserSayId") && dict["UserSayId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("OutlineId") && dict["OutlineId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityValueId") && dict["EntityValueId"] != nil {
            self.entityValueId = dict["EntityValueId"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("EntityValueId") && dict["EntityValueId"] != nil {
            self.entityValueId = dict["EntityValueId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteDSEntityValueResponseBody()
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("BizTypeList") && dict["BizTypeList"] != nil {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserId") && dict["CreateUserId"] != nil {
            self.createUserId = dict["CreateUserId"] as! Int64
        }
        if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("Error") && dict["Error"] != nil {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") && dict["Response"] != nil {
            self.response = dict["Response"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
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
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("LgfId") && dict["LgfId"] != nil {
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
        if dict.keys.contains("LgfId") && dict["LgfId"] != nil {
            self.lgfId = dict["LgfId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PerspectiveId") && dict["PerspectiveId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("SimQuestionId") && dict["SimQuestionId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("SolutionId") && dict["SolutionId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("UserSayId") && dict["UserSayId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserSayId") && dict["UserSayId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int64
        }
    }
}

public class DescribeCategoryResponseBody : Tea.TeaModel {
    public class Category : Tea.TeaModel {
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
            if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
                self.parentCategoryId = dict["ParentCategoryId"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("Category") && dict["Category"] != nil {
            var model = DescribeCategoryResponseBody.Category()
            model.fromMap(dict["Category"] as! [String: Any])
            self.category = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserId") && dict["CreateUserId"] != nil {
            self.createUserId = dict["CreateUserId"] as! String
        }
        if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityName") && dict["EntityName"] != nil {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("ModifyUserId") && dict["ModifyUserId"] != nil {
            self.modifyUserId = dict["ModifyUserId"] as! String
        }
        if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SysEntityCode") && dict["SysEntityCode"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDSEntityResponseBody()
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
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
            if dict.keys.contains("ConnQuestionId") && dict["ConnQuestionId"] != nil {
                self.connQuestionId = dict["ConnQuestionId"] as! Int64
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("OutlineId") && dict["OutlineId"] != nil {
                self.outlineId = dict["OutlineId"] as! Int64
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
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
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("SimQuestionId") && dict["SimQuestionId"] != nil {
                self.simQuestionId = dict["SimQuestionId"] as! Int64
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
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
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
                self.contentType = dict["ContentType"] as! Int32
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("PerspectiveCodes") && dict["PerspectiveCodes"] != nil {
                self.perspectiveCodes = dict["PerspectiveCodes"] as! [String]
            }
            if dict.keys.contains("PlainText") && dict["PlainText"] != nil {
                self.plainText = dict["PlainText"] as! String
            }
            if dict.keys.contains("SolutionId") && dict["SolutionId"] != nil {
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
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("EffectStatus") && dict["EffectStatus"] != nil {
            self.effectStatus = dict["EffectStatus"] as! Int32
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("Outlines") && dict["Outlines"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SimQuestions") && dict["SimQuestions"] != nil {
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
        if dict.keys.contains("Solutions") && dict["Solutions"] != nil {
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
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
            if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
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
        if dict.keys.contains("Avatar") && dict["Avatar"] != nil {
            self.avatar = dict["Avatar"] as! String
        }
        if dict.keys.contains("Categories") && dict["Categories"] != nil {
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
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("EditStatus") && dict["EditStatus"] != nil {
            self.editStatus = dict["EditStatus"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Introduction") && dict["Introduction"] != nil {
            self.introduction = dict["Introduction"] as! String
        }
        if dict.keys.contains("LanguageCode") && dict["LanguageCode"] != nil {
            self.languageCode = dict["LanguageCode"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RobotType") && dict["RobotType"] != nil {
            self.robotType = dict["RobotType"] as! String
        }
        if dict.keys.contains("TimeZone") && dict["TimeZone"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
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
            if dict.keys.contains("Array") && dict["Array"] != nil {
                self.array = dict["Array"] as! Bool
            }
            if dict.keys.contains("Encrypt") && dict["Encrypt"] != nil {
                self.encrypt = dict["Encrypt"] as! Bool
            }
            if dict.keys.contains("Interactive") && dict["Interactive"] != nil {
                self.interactive = dict["Interactive"] as! Bool
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SlotId") && dict["SlotId"] != nil {
                self.slotId = dict["SlotId"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
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
        if dict.keys.contains("AliasName") && dict["AliasName"] != nil {
            self.aliasName = dict["AliasName"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserId") && dict["CreateUserId"] != nil {
            self.createUserId = dict["CreateUserId"] as! String
        }
        if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("IntentName") && dict["IntentName"] != nil {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("ModifyUserId") && dict["ModifyUserId"] != nil {
            self.modifyUserId = dict["ModifyUserId"] as! String
        }
        if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlotInfos") && dict["SlotInfos"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PerspectiveId") && dict["PerspectiveId"] != nil {
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
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PerspectiveCode") && dict["PerspectiveCode"] != nil {
            self.perspectiveCode = dict["PerspectiveCode"] as! String
        }
        if dict.keys.contains("PerspectiveId") && dict["PerspectiveId"] != nil {
            self.perspectiveId = dict["PerspectiveId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SelfDefine") && dict["SelfDefine"] != nil {
            self.selfDefine = dict["SelfDefine"] as! Bool
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Feedback") && dict["Feedback"] != nil {
            self.feedback = dict["Feedback"] as! String
        }
        if dict.keys.contains("FeedbackContent") && dict["FeedbackContent"] != nil {
            self.feedbackContent = dict["FeedbackContent"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
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
        if dict.keys.contains("Feedback") && dict["Feedback"] != nil {
            self.feedback = dict["Feedback"] as! String
        }
        if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! Int32
        }
        if dict.keys.contains("ExtraInfo") && dict["ExtraInfo"] != nil {
            self.extraInfo = dict["ExtraInfo"] as! String
        }
        if dict.keys.contains("ForeignId") && dict["ForeignId"] != nil {
            self.foreignId = dict["ForeignId"] as! String
        }
        if dict.keys.contains("Nick") && dict["Nick"] != nil {
            self.nick = dict["Nick"] as! String
        }
        if dict.keys.contains("Telephone") && dict["Telephone"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
            if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
                self.agentKey = dict["AgentKey"] as! String
            }
            if dict.keys.contains("AgentName") && dict["AgentName"] != nil {
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetAgentInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetAsyncResultResponseBody()
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("BizTypeList") && dict["BizTypeList"] != nil {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Error") && dict["Error"] != nil {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            self.errors = dict["Errors"] as! [String: Any]
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") && dict["Response"] != nil {
            self.response = dict["Response"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Warnings") && dict["Warnings"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
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
        if dict.keys.contains("BizTypeList") && dict["BizTypeList"] != nil {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Error") && dict["Error"] != nil {
            self.error = dict["Error"] as! String
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            self.errors = dict["Errors"] as! [String: Any]
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Response") && dict["Response"] != nil {
            self.response = dict["Response"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Warnings") && dict["Warnings"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("From") && dict["From"] != nil {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("UserAccessToken") && dict["UserAccessToken"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryIds") && dict["CategoryIds"] != nil {
            self.categoryIds = dict["CategoryIds"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentName") && dict["AgentName"] != nil {
            self.agentName = dict["AgentName"] as! String
        }
        if dict.keys.contains("GoodsCodes") && dict["GoodsCodes"] != nil {
            self.goodsCodes = dict["GoodsCodes"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
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
            if dict.keys.contains("AgentId") && dict["AgentId"] != nil {
                self.agentId = dict["AgentId"] as! Int64
            }
            if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
                self.agentKey = dict["AgentKey"] as! String
            }
            if dict.keys.contains("AgentName") && dict["AgentName"] != nil {
                self.agentName = dict["AgentName"] as! String
            }
            if dict.keys.contains("InstanceInfos") && dict["InstanceInfos"] != nil {
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListAgentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCategoryRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.parentCategoryId != nil {
            map["ParentCategoryId"] = self.parentCategoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
            self.parentCategoryId = dict["ParentCategoryId"] as! Int64
        }
    }
}

public class ListCategoryResponseBody : Tea.TeaModel {
    public class Categories : Tea.TeaModel {
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
            if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
                self.parentCategoryId = dict["ParentCategoryId"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("Categories") && dict["Categories"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
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
            if dict.keys.contains("ConnQuestionId") && dict["ConnQuestionId"] != nil {
                self.connQuestionId = dict["ConnQuestionId"] as! Int64
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("OutlineId") && dict["OutlineId"] != nil {
                self.outlineId = dict["OutlineId"] as! Int64
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
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
        if dict.keys.contains("Outlines") && dict["Outlines"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
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
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUserId") && dict["CreateUserId"] != nil {
                self.createUserId = dict["CreateUserId"] as! String
            }
            if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
                self.entityId = dict["EntityId"] as! Int64
            }
            if dict.keys.contains("EntityName") && dict["EntityName"] != nil {
                self.entityName = dict["EntityName"] as! String
            }
            if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ModifyUserId") && dict["ModifyUserId"] != nil {
                self.modifyUserId = dict["ModifyUserId"] as! String
            }
            if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
                self.modifyUserName = dict["ModifyUserName"] as! String
            }
            if dict.keys.contains("SysEntityCode") && dict["SysEntityCode"] != nil {
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
        if dict.keys.contains("Entities") && dict["Entities"] != nil {
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityValueId") && dict["EntityValueId"] != nil {
            self.entityValueId = dict["EntityValueId"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
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
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
                self.entityId = dict["EntityId"] as! Int64
            }
            if dict.keys.contains("EntityValueId") && dict["EntityValueId"] != nil {
                self.entityValueId = dict["EntityValueId"] as! Int64
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("Synonyms") && dict["Synonyms"] != nil {
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
        if dict.keys.contains("EntityValues") && dict["EntityValues"] != nil {
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RobotType") && dict["RobotType"] != nil {
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
            if dict.keys.contains("Avatar") && dict["Avatar"] != nil {
                self.avatar = dict["Avatar"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Introduction") && dict["Introduction"] != nil {
                self.introduction = dict["Introduction"] as! String
            }
            if dict.keys.contains("LanguageCode") && dict["LanguageCode"] != nil {
                self.languageCode = dict["LanguageCode"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RobotType") && dict["RobotType"] != nil {
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
        if dict.keys.contains("Instances") && dict["Instances"] != nil {
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentName") && dict["IntentName"] != nil {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
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
                if dict.keys.contains("Array") && dict["Array"] != nil {
                    self.array = dict["Array"] as! Bool
                }
                if dict.keys.contains("Encrypt") && dict["Encrypt"] != nil {
                    self.encrypt = dict["Encrypt"] as! Bool
                }
                if dict.keys.contains("Interactive") && dict["Interactive"] != nil {
                    self.interactive = dict["Interactive"] as! Bool
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("SlotId") && dict["SlotId"] != nil {
                    self.slotId = dict["SlotId"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
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
            if dict.keys.contains("AliasName") && dict["AliasName"] != nil {
                self.aliasName = dict["AliasName"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUserId") && dict["CreateUserId"] != nil {
                self.createUserId = dict["CreateUserId"] as! String
            }
            if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("IntentName") && dict["IntentName"] != nil {
                self.intentName = dict["IntentName"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ModifyUserId") && dict["ModifyUserId"] != nil {
                self.modifyUserId = dict["ModifyUserId"] as! String
            }
            if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
                self.modifyUserName = dict["ModifyUserName"] as! String
            }
            if dict.keys.contains("SlotInfos") && dict["SlotInfos"] != nil {
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
        if dict.keys.contains("Intents") && dict["Intents"] != nil {
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("LgfText") && dict["LgfText"] != nil {
            self.lgfText = dict["LgfText"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
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
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("LgfId") && dict["LgfId"] != nil {
                self.lgfId = dict["LgfId"] as! Int64
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("RuleText") && dict["RuleText"] != nil {
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
        if dict.keys.contains("Lgfs") && dict["Lgfs"] != nil {
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("SaasGroupCodes") && dict["SaasGroupCodes"] != nil {
            self.saasGroupCodes = dict["SaasGroupCodes"] as! String
        }
        if dict.keys.contains("SaasName") && dict["SaasName"] != nil {
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
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("EnName") && dict["EnName"] != nil {
                self.enName = dict["EnName"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ServiceUrl") && dict["ServiceUrl"] != nil {
                self.serviceUrl = dict["ServiceUrl"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SaasToken") && dict["SaasToken"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
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
                if dict.keys.contains("PgCode") && dict["PgCode"] != nil {
                    self.pgCode = dict["PgCode"] as! String
                }
                if dict.keys.contains("PgEnName") && dict["PgEnName"] != nil {
                    self.pgEnName = dict["PgEnName"] as! String
                }
                if dict.keys.contains("PgName") && dict["PgName"] != nil {
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
            if dict.keys.contains("EnName") && dict["EnName"] != nil {
                self.enName = dict["EnName"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PgInfos") && dict["PgInfos"] != nil {
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
            if dict.keys.contains("SaasCode") && dict["SaasCode"] != nil {
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
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
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("SimQuestionId") && dict["SimQuestionId"] != nil {
                self.simQuestionId = dict["SimQuestionId"] as! Int64
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SimQuestions") && dict["SimQuestions"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
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
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
                self.contentType = dict["ContentType"] as! Int32
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("PerspectiveCodes") && dict["PerspectiveCodes"] != nil {
                self.perspectiveCodes = dict["PerspectiveCodes"] as! [String]
            }
            if dict.keys.contains("PlainText") && dict["PlainText"] != nil {
                self.plainText = dict["PlainText"] as! String
            }
            if dict.keys.contains("SolutionId") && dict["SolutionId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Solutions") && dict["Solutions"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListSolutionResponseBody()
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
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
                if dict.keys.contains("EndIndex") && dict["EndIndex"] != nil {
                    self.endIndex = dict["EndIndex"] as! Int32
                }
                if dict.keys.contains("SlotId") && dict["SlotId"] != nil {
                    self.slotId = dict["SlotId"] as! String
                }
                if dict.keys.contains("StartIndex") && dict["StartIndex"] != nil {
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
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("SlotInfos") && dict["SlotInfos"] != nil {
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
            if dict.keys.contains("UserSayId") && dict["UserSayId"] != nil {
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("UserSays") && dict["UserSays"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Utterance") && dict["Utterance"] != nil {
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
                    if dict.keys.contains("StandardWord") && dict["StandardWord"] != nil {
                        self.standardWord = dict["StandardWord"] as! String
                    }
                    if dict.keys.contains("Word") && dict["Word"] != nil {
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
                    if dict.keys.contains("StandardWord") && dict["StandardWord"] != nil {
                        self.standardWord = dict["StandardWord"] as! String
                    }
                    if dict.keys.contains("Word") && dict["Word"] != nil {
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
                if dict.keys.contains("GlobalDictList") && dict["GlobalDictList"] != nil {
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
                if dict.keys.contains("GlobalSensitiveWordList") && dict["GlobalSensitiveWordList"] != nil {
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
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Origin") && dict["Origin"] != nil {
                        self.origin = dict["Origin"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
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
                        if dict.keys.contains("Name") && dict["Name"] != nil {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Origin") && dict["Origin"] != nil {
                            self.origin = dict["Origin"] as! String
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
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
                    if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
                        self.intentId = dict["IntentId"] as! Int64
                    }
                    if dict.keys.contains("MatchDetail") && dict["MatchDetail"] != nil {
                        self.matchDetail = dict["MatchDetail"] as! String
                    }
                    if dict.keys.contains("MatchType") && dict["MatchType"] != nil {
                        self.matchType = dict["MatchType"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Score") && dict["Score"] != nil {
                        self.score = dict["Score"] as! Double
                    }
                    if dict.keys.contains("SlotList") && dict["SlotList"] != nil {
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
                if dict.keys.contains("EntityList") && dict["EntityList"] != nil {
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
                if dict.keys.contains("IntentList") && dict["IntentList"] != nil {
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
            if dict.keys.contains("DialogHubNluInfo") && dict["DialogHubNluInfo"] != nil {
                var model = NluResponseBody.Messages.DialogHubNluInfo()
                model.fromMap(dict["DialogHubNluInfo"] as! [String: Any])
                self.dialogHubNluInfo = model
            }
            if dict.keys.contains("DsNluInfo") && dict["DsNluInfo"] != nil {
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
        if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("Messages") && dict["Messages"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
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
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PerspectiveCode") && dict["PerspectiveCode"] != nil {
                self.perspectiveCode = dict["PerspectiveCode"] as! String
            }
            if dict.keys.contains("PerspectiveId") && dict["PerspectiveId"] != nil {
                self.perspectiveId = dict["PerspectiveId"] as! String
            }
            if dict.keys.contains("SelfDefine") && dict["SelfDefine"] != nil {
                self.selfDefine = dict["SelfDefine"] as! Bool
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("Perspectives") && dict["Perspectives"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryPerspectivesResponseBody()
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryIds") && dict["CategoryIds"] != nil {
            self.categoryIds = dict["CategoryIds"] as! [Int64]
        }
        if dict.keys.contains("CreateTimeBegin") && dict["CreateTimeBegin"] != nil {
            self.createTimeBegin = dict["CreateTimeBegin"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") && dict["CreateTimeEnd"] != nil {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("EndTimeBegin") && dict["EndTimeBegin"] != nil {
            self.endTimeBegin = dict["EndTimeBegin"] as! String
        }
        if dict.keys.contains("EndTimeEnd") && dict["EndTimeEnd"] != nil {
            self.endTimeEnd = dict["EndTimeEnd"] as! String
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("ModifyTimeBegin") && dict["ModifyTimeBegin"] != nil {
            self.modifyTimeBegin = dict["ModifyTimeBegin"] as! String
        }
        if dict.keys.contains("ModifyTimeEnd") && dict["ModifyTimeEnd"] != nil {
            self.modifyTimeEnd = dict["ModifyTimeEnd"] as! String
        }
        if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchScope") && dict["SearchScope"] != nil {
            self.searchScope = dict["SearchScope"] as! Int32
        }
        if dict.keys.contains("StartTimeBegin") && dict["StartTimeBegin"] != nil {
            self.startTimeBegin = dict["StartTimeBegin"] as! String
        }
        if dict.keys.contains("StartTimeEnd") && dict["StartTimeEnd"] != nil {
            self.startTimeEnd = dict["StartTimeEnd"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryIds") && dict["CategoryIds"] != nil {
            self.categoryIdsShrink = dict["CategoryIds"] as! String
        }
        if dict.keys.contains("CreateTimeBegin") && dict["CreateTimeBegin"] != nil {
            self.createTimeBegin = dict["CreateTimeBegin"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") && dict["CreateTimeEnd"] != nil {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("EndTimeBegin") && dict["EndTimeBegin"] != nil {
            self.endTimeBegin = dict["EndTimeBegin"] as! String
        }
        if dict.keys.contains("EndTimeEnd") && dict["EndTimeEnd"] != nil {
            self.endTimeEnd = dict["EndTimeEnd"] as! String
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("ModifyTimeBegin") && dict["ModifyTimeBegin"] != nil {
            self.modifyTimeBegin = dict["ModifyTimeBegin"] as! String
        }
        if dict.keys.contains("ModifyTimeEnd") && dict["ModifyTimeEnd"] != nil {
            self.modifyTimeEnd = dict["ModifyTimeEnd"] as! String
        }
        if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchScope") && dict["SearchScope"] != nil {
            self.searchScope = dict["SearchScope"] as! Int32
        }
        if dict.keys.contains("StartTimeBegin") && dict["StartTimeBegin"] != nil {
            self.startTimeBegin = dict["StartTimeBegin"] as! String
        }
        if dict.keys.contains("StartTimeEnd") && dict["StartTimeEnd"] != nil {
            self.startTimeEnd = dict["StartTimeEnd"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
            if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUserId") && dict["CreateUserId"] != nil {
                self.createUserId = dict["CreateUserId"] as! Int64
            }
            if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("EffectStatus") && dict["EffectStatus"] != nil {
                self.effectStatus = dict["EffectStatus"] as! Int32
            }
            if dict.keys.contains("HitSimilarTitles") && dict["HitSimilarTitles"] != nil {
                self.hitSimilarTitles = dict["HitSimilarTitles"] as! [String]
            }
            if dict.keys.contains("HitSolutions") && dict["HitSolutions"] != nil {
                self.hitSolutions = dict["HitSolutions"] as! [String]
            }
            if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
                self.knowledgeId = dict["KnowledgeId"] as! Int64
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ModifyUserId") && dict["ModifyUserId"] != nil {
                self.modifyUserId = dict["ModifyUserId"] as! Int64
            }
            if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
                self.modifyUserName = dict["ModifyUserName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
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
        if dict.keys.contains("FaqHits") && dict["FaqHits"] != nil {
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SearchFaqResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCategoryRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ConnQuestionId") && dict["ConnQuestionId"] != nil {
            self.connQuestionId = dict["ConnQuestionId"] as! Int64
        }
        if dict.keys.contains("OutlineId") && dict["OutlineId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityName") && dict["EntityName"] != nil {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityValueId") && dict["EntityValueId"] != nil {
            self.entityValueId = dict["EntityValueId"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Synonyms") && dict["Synonyms"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityValueId") && dict["EntityValueId"] != nil {
            self.entityValueId = dict["EntityValueId"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Synonyms") && dict["Synonyms"] != nil {
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
        if dict.keys.contains("EntityValueId") && dict["EntityValueId"] != nil {
            self.entityValueId = dict["EntityValueId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateDSEntityValueResponseBody()
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Introduction") && dict["Introduction"] != nil {
            self.introduction = dict["Introduction"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
                if dict.keys.contains("Array") && dict["Array"] != nil {
                    self.array = dict["Array"] as! Bool
                }
                if dict.keys.contains("Encrypt") && dict["Encrypt"] != nil {
                    self.encrypt = dict["Encrypt"] as! Bool
                }
                if dict.keys.contains("Interactive") && dict["Interactive"] != nil {
                    self.interactive = dict["Interactive"] as! Bool
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("SlotId") && dict["SlotId"] != nil {
                    self.slotId = dict["SlotId"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
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
            if dict.keys.contains("AliasName") && dict["AliasName"] != nil {
                self.aliasName = dict["AliasName"] as! String
            }
            if dict.keys.contains("IntentName") && dict["IntentName"] != nil {
                self.intentName = dict["IntentName"] as! String
            }
            if dict.keys.contains("SlotInfos") && dict["SlotInfos"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentDefinition") && dict["IntentDefinition"] != nil {
            var model = UpdateIntentRequest.IntentDefinition()
            model.fromMap(dict["IntentDefinition"] as! [String: Any])
            self.intentDefinition = model
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentDefinition") && dict["IntentDefinition"] != nil {
            self.intentDefinitionShrink = dict["IntentDefinition"] as! String
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
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
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
            if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("RuleText") && dict["RuleText"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LgfDefinition") && dict["LgfDefinition"] != nil {
            var model = UpdateLgfRequest.LgfDefinition()
            model.fromMap(dict["LgfDefinition"] as! [String: Any])
            self.lgfDefinition = model
        }
        if dict.keys.contains("LgfId") && dict["LgfId"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LgfDefinition") && dict["LgfDefinition"] != nil {
            self.lgfDefinitionShrink = dict["LgfDefinition"] as! String
        }
        if dict.keys.contains("LgfId") && dict["LgfId"] != nil {
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
        if dict.keys.contains("LgfId") && dict["LgfId"] != nil {
            self.lgfId = dict["LgfId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PerspectiveId") && dict["PerspectiveId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("SimQuestionId") && dict["SimQuestionId"] != nil {
            self.simQuestionId = dict["SimQuestionId"] as! Int64
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
            self.contentType = dict["ContentType"] as! Int32
        }
        if dict.keys.contains("PerspectiveCodes") && dict["PerspectiveCodes"] != nil {
            self.perspectiveCodes = dict["PerspectiveCodes"] as! [String]
        }
        if dict.keys.contains("SolutionId") && dict["SolutionId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
                if dict.keys.contains("EndIndex") && dict["EndIndex"] != nil {
                    self.endIndex = dict["EndIndex"] as! Int32
                }
                if dict.keys.contains("SlotId") && dict["SlotId"] != nil {
                    self.slotId = dict["SlotId"] as! String
                }
                if dict.keys.contains("StartIndex") && dict["StartIndex"] != nil {
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
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("SlotInfos") && dict["SlotInfos"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserSayDefinition") && dict["UserSayDefinition"] != nil {
            var model = UpdateUserSayRequest.UserSayDefinition()
            model.fromMap(dict["UserSayDefinition"] as! [String: Any])
            self.userSayDefinition = model
        }
        if dict.keys.contains("UserSayId") && dict["UserSayId"] != nil {
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserSayDefinition") && dict["UserSayDefinition"] != nil {
            self.userSayDefinitionShrink = dict["UserSayDefinition"] as! String
        }
        if dict.keys.contains("UserSayId") && dict["UserSayId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserSayId") && dict["UserSayId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateUserSayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
