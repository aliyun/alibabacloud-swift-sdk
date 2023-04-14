import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BeeBotAssociateRequest : Tea.TeaModel {
    public var chatBotInstanceId: String?

    public var custSpaceId: String?

    public var isvCode: String?

    public var perspective: [String]?

    public var recommendNum: Int32?

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
        if self.chatBotInstanceId != nil {
            map["ChatBotInstanceId"] = self.chatBotInstanceId!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
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
        if dict.keys.contains("ChatBotInstanceId") && dict["ChatBotInstanceId"] != nil {
            self.chatBotInstanceId = dict["ChatBotInstanceId"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Perspective") && dict["Perspective"] != nil {
            self.perspective = dict["Perspective"] as! [String]
        }
        if dict.keys.contains("RecommendNum") && dict["RecommendNum"] != nil {
            self.recommendNum = dict["RecommendNum"] as! Int32
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Utterance") && dict["Utterance"] != nil {
            self.utterance = dict["Utterance"] as! String
        }
    }
}

public class BeeBotAssociateShrinkRequest : Tea.TeaModel {
    public var chatBotInstanceId: String?

    public var custSpaceId: String?

    public var isvCode: String?

    public var perspectiveShrink: String?

    public var recommendNum: Int32?

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
        if self.chatBotInstanceId != nil {
            map["ChatBotInstanceId"] = self.chatBotInstanceId!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
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
        if dict.keys.contains("ChatBotInstanceId") && dict["ChatBotInstanceId"] != nil {
            self.chatBotInstanceId = dict["ChatBotInstanceId"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Perspective") && dict["Perspective"] != nil {
            self.perspectiveShrink = dict["Perspective"] as! String
        }
        if dict.keys.contains("RecommendNum") && dict["RecommendNum"] != nil {
            self.recommendNum = dict["RecommendNum"] as! Int32
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Utterance") && dict["Utterance"] != nil {
            self.utterance = dict["Utterance"] as! String
        }
    }
}

public class BeeBotAssociateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
        public var associate: [BeeBotAssociateResponseBody.Data.Associate]?

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
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Associate") && dict["Associate"] != nil {
                var tmp : [BeeBotAssociateResponseBody.Data.Associate] = []
                for v in dict["Associate"] as! [Any] {
                    var model = BeeBotAssociateResponseBody.Data.Associate()
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
            if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
                self.sessionId = dict["SessionId"] as! String
            }
        }
    }
    public var code: String?

    public var data: BeeBotAssociateResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = BeeBotAssociateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BeeBotAssociateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BeeBotAssociateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BeeBotAssociateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BeeBotChatRequest : Tea.TeaModel {
    public var chatBotInstanceId: String?

    public var custSpaceId: String?

    public var intentName: String?

    public var isvCode: String?

    public var knowledgeId: String?

    public var perspective: [String]?

    public var senderId: String?

    public var senderNick: String?

    public var sessionId: String?

    public var utterance: String?

    public var vendorParam: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chatBotInstanceId != nil {
            map["ChatBotInstanceId"] = self.chatBotInstanceId!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.intentName != nil {
            map["IntentName"] = self.intentName!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.perspective != nil {
            map["Perspective"] = self.perspective!
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
        if dict.keys.contains("ChatBotInstanceId") && dict["ChatBotInstanceId"] != nil {
            self.chatBotInstanceId = dict["ChatBotInstanceId"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("IntentName") && dict["IntentName"] != nil {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! String
        }
        if dict.keys.contains("Perspective") && dict["Perspective"] != nil {
            self.perspective = dict["Perspective"] as! [String]
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
            self.vendorParam = dict["VendorParam"] as! [String: Any]
        }
    }
}

public class BeeBotChatShrinkRequest : Tea.TeaModel {
    public var chatBotInstanceId: String?

    public var custSpaceId: String?

    public var intentName: String?

    public var isvCode: String?

    public var knowledgeId: String?

    public var perspectiveShrink: String?

    public var senderId: String?

    public var senderNick: String?

    public var sessionId: String?

    public var utterance: String?

    public var vendorParamShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chatBotInstanceId != nil {
            map["ChatBotInstanceId"] = self.chatBotInstanceId!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.intentName != nil {
            map["IntentName"] = self.intentName!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.perspectiveShrink != nil {
            map["Perspective"] = self.perspectiveShrink!
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
        if self.vendorParamShrink != nil {
            map["VendorParam"] = self.vendorParamShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChatBotInstanceId") && dict["ChatBotInstanceId"] != nil {
            self.chatBotInstanceId = dict["ChatBotInstanceId"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("IntentName") && dict["IntentName"] != nil {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! String
        }
        if dict.keys.contains("Perspective") && dict["Perspective"] != nil {
            self.perspectiveShrink = dict["Perspective"] as! String
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
            self.vendorParamShrink = dict["VendorParam"] as! String
        }
    }
}

public class BeeBotChatResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

                public var relatedKnowledges: [BeeBotChatResponseBody.Data.Messages.Knowledge.RelatedKnowledges]?

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
                        var tmp : [BeeBotChatResponseBody.Data.Messages.Knowledge.RelatedKnowledges] = []
                        for v in dict["RelatedKnowledges"] as! [Any] {
                            var model = BeeBotChatResponseBody.Data.Messages.Knowledge.RelatedKnowledges()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.relatedKnowledges = tmp
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

                public var slots: [BeeBotChatResponseBody.Data.Messages.Text.Slots]?

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
                    if dict.keys.contains("Slots") && dict["Slots"] != nil {
                        var tmp : [BeeBotChatResponseBody.Data.Messages.Text.Slots] = []
                        for v in dict["Slots"] as! [Any] {
                            var model = BeeBotChatResponseBody.Data.Messages.Text.Slots()
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

            public var knowledge: BeeBotChatResponseBody.Data.Messages.Knowledge?

            public var recommends: [BeeBotChatResponseBody.Data.Messages.Recommends]?

            public var text: BeeBotChatResponseBody.Data.Messages.Text?

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
                    var model = BeeBotChatResponseBody.Data.Messages.Knowledge()
                    model.fromMap(dict["Knowledge"] as! [String: Any])
                    self.knowledge = model
                }
                if dict.keys.contains("Recommends") && dict["Recommends"] != nil {
                    var tmp : [BeeBotChatResponseBody.Data.Messages.Recommends] = []
                    for v in dict["Recommends"] as! [Any] {
                        var model = BeeBotChatResponseBody.Data.Messages.Recommends()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.recommends = tmp
                }
                if dict.keys.contains("Text") && dict["Text"] != nil {
                    var model = BeeBotChatResponseBody.Data.Messages.Text()
                    model.fromMap(dict["Text"] as! [String: Any])
                    self.text = model
                }
            }
        }
        public var messageId: String?

        public var messages: [BeeBotChatResponseBody.Data.Messages]?

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
                var tmp : [BeeBotChatResponseBody.Data.Messages] = []
                for v in dict["Messages"] as! [Any] {
                    var model = BeeBotChatResponseBody.Data.Messages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.messages = tmp
            }
            if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
                self.sessionId = dict["SessionId"] as! String
            }
        }
    }
    public var code: String?

    public var data: BeeBotChatResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = BeeBotChatResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BeeBotChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BeeBotChatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BeeBotChatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChatappBindWabaRequest : Tea.TeaModel {
    public var wabaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WabaId") && dict["WabaId"] != nil {
            self.wabaId = dict["WabaId"] as! String
        }
    }
}

public class ChatappBindWabaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var custSpaceId: String?

        public var wabaId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.custSpaceId != nil {
                map["CustSpaceId"] = self.custSpaceId!
            }
            if self.wabaId != nil {
                map["WabaId"] = self.wabaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
                self.custSpaceId = dict["CustSpaceId"] as! String
            }
            if dict.keys.contains("WabaId") && dict["WabaId"] != nil {
                self.wabaId = dict["WabaId"] as! String
            }
        }
    }
    public var code: String?

    public var data: ChatappBindWabaResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ChatappBindWabaResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ChatappBindWabaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappBindWabaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatappBindWabaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChatappEmbedSignUpRequest : Tea.TeaModel {
    public var inputToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inputToken != nil {
            map["InputToken"] = self.inputToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InputToken") && dict["InputToken"] != nil {
            self.inputToken = dict["InputToken"] as! String
        }
    }
}

public class ChatappEmbedSignUpResponseBody : Tea.TeaModel {
    public class Wabas : Tea.TeaModel {
        public var accountReviewStatus: String?

        public var currency: String?

        public var id: String?

        public var messageTemplateNamespace: String?

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
            if self.accountReviewStatus != nil {
                map["AccountReviewStatus"] = self.accountReviewStatus!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.messageTemplateNamespace != nil {
                map["MessageTemplateNamespace"] = self.messageTemplateNamespace!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountReviewStatus") && dict["AccountReviewStatus"] != nil {
                self.accountReviewStatus = dict["AccountReviewStatus"] as! String
            }
            if dict.keys.contains("Currency") && dict["Currency"] != nil {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("MessageTemplateNamespace") && dict["MessageTemplateNamespace"] != nil {
                self.messageTemplateNamespace = dict["MessageTemplateNamespace"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var wabas: [ChatappEmbedSignUpResponseBody.Wabas]?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.wabas != nil {
            var tmp : [Any] = []
            for k in self.wabas! {
                tmp.append(k.toMap())
            }
            map["Wabas"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Wabas") && dict["Wabas"] != nil {
            var tmp : [ChatappEmbedSignUpResponseBody.Wabas] = []
            for v in dict["Wabas"] as! [Any] {
                var model = ChatappEmbedSignUpResponseBody.Wabas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.wabas = tmp
        }
    }
}

public class ChatappEmbedSignUpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappEmbedSignUpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatappEmbedSignUpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChatappMigrationRegisterRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var phoneNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
    }
}

public class ChatappMigrationRegisterResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ChatappMigrationRegisterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappMigrationRegisterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatappMigrationRegisterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChatappMigrationVerifiedRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var phoneNumber: String?

    public var verifyCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("VerifyCode") && dict["VerifyCode"] != nil {
            self.verifyCode = dict["VerifyCode"] as! String
        }
    }
}

public class ChatappMigrationVerifiedResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public var phoneNumber: String?

        public override init() {
            super.init()
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
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
        }
    }
    public var code: String?

    public var data: ChatappMigrationVerifiedResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ChatappMigrationVerifiedResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ChatappMigrationVerifiedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappMigrationVerifiedResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatappMigrationVerifiedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChatappPhoneNumberRegisterRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var phoneNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
    }
}

public class ChatappPhoneNumberRegisterResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ChatappPhoneNumberRegisterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappPhoneNumberRegisterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatappPhoneNumberRegisterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChatappSyncPhoneNumberRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
    }
}

public class ChatappSyncPhoneNumberResponseBody : Tea.TeaModel {
    public class PhoneNumbers : Tea.TeaModel {
        public var codeVerificationStatus: String?

        public var messagingLimitTier: String?

        public var nameStatus: String?

        public var newNameStatus: String?

        public var phoneNumber: String?

        public var qualityRating: String?

        public var status: String?

        public var statusCallbackUrl: String?

        public var statusQueue: String?

        public var upCallbackUrl: String?

        public var upQueue: String?

        public var verifiedName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeVerificationStatus != nil {
                map["CodeVerificationStatus"] = self.codeVerificationStatus!
            }
            if self.messagingLimitTier != nil {
                map["MessagingLimitTier"] = self.messagingLimitTier!
            }
            if self.nameStatus != nil {
                map["NameStatus"] = self.nameStatus!
            }
            if self.newNameStatus != nil {
                map["NewNameStatus"] = self.newNameStatus!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.qualityRating != nil {
                map["QualityRating"] = self.qualityRating!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusCallbackUrl != nil {
                map["StatusCallbackUrl"] = self.statusCallbackUrl!
            }
            if self.statusQueue != nil {
                map["StatusQueue"] = self.statusQueue!
            }
            if self.upCallbackUrl != nil {
                map["UpCallbackUrl"] = self.upCallbackUrl!
            }
            if self.upQueue != nil {
                map["UpQueue"] = self.upQueue!
            }
            if self.verifiedName != nil {
                map["VerifiedName"] = self.verifiedName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CodeVerificationStatus") && dict["CodeVerificationStatus"] != nil {
                self.codeVerificationStatus = dict["CodeVerificationStatus"] as! String
            }
            if dict.keys.contains("MessagingLimitTier") && dict["MessagingLimitTier"] != nil {
                self.messagingLimitTier = dict["MessagingLimitTier"] as! String
            }
            if dict.keys.contains("NameStatus") && dict["NameStatus"] != nil {
                self.nameStatus = dict["NameStatus"] as! String
            }
            if dict.keys.contains("NewNameStatus") && dict["NewNameStatus"] != nil {
                self.newNameStatus = dict["NewNameStatus"] as! String
            }
            if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("QualityRating") && dict["QualityRating"] != nil {
                self.qualityRating = dict["QualityRating"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusCallbackUrl") && dict["StatusCallbackUrl"] != nil {
                self.statusCallbackUrl = dict["StatusCallbackUrl"] as! String
            }
            if dict.keys.contains("StatusQueue") && dict["StatusQueue"] != nil {
                self.statusQueue = dict["StatusQueue"] as! String
            }
            if dict.keys.contains("UpCallbackUrl") && dict["UpCallbackUrl"] != nil {
                self.upCallbackUrl = dict["UpCallbackUrl"] as! String
            }
            if dict.keys.contains("UpQueue") && dict["UpQueue"] != nil {
                self.upQueue = dict["UpQueue"] as! String
            }
            if dict.keys.contains("VerifiedName") && dict["VerifiedName"] != nil {
                self.verifiedName = dict["VerifiedName"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var phoneNumbers: [ChatappSyncPhoneNumberResponseBody.PhoneNumbers]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.phoneNumbers != nil {
            var tmp : [Any] = []
            for k in self.phoneNumbers! {
                tmp.append(k.toMap())
            }
            map["PhoneNumbers"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PhoneNumbers") && dict["PhoneNumbers"] != nil {
            var tmp : [ChatappSyncPhoneNumberResponseBody.PhoneNumbers] = []
            for v in dict["PhoneNumbers"] as! [Any] {
                var model = ChatappSyncPhoneNumberResponseBody.PhoneNumbers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.phoneNumbers = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ChatappSyncPhoneNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappSyncPhoneNumberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatappSyncPhoneNumberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChatappVerifyAndRegisterRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var phoneNumber: String?

    public var verifyCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("VerifyCode") && dict["VerifyCode"] != nil {
            self.verifyCode = dict["VerifyCode"] as! String
        }
    }
}

public class ChatappVerifyAndRegisterResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ChatappVerifyAndRegisterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappVerifyAndRegisterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatappVerifyAndRegisterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateChatappMigrationInitiateRequest : Tea.TeaModel {
    public var countryCode: String?

    public var custSpaceId: String?

    public var mobileNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.countryCode != nil {
            map["CountryCode"] = self.countryCode!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.mobileNumber != nil {
            map["MobileNumber"] = self.mobileNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CountryCode") && dict["CountryCode"] != nil {
            self.countryCode = dict["CountryCode"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("MobileNumber") && dict["MobileNumber"] != nil {
            self.mobileNumber = dict["MobileNumber"] as! String
        }
    }
}

public class CreateChatappMigrationInitiateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public var phoneNumber: String?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateChatappMigrationInitiateResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateChatappMigrationInitiateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateChatappMigrationInitiateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChatappMigrationInitiateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateChatappMigrationInitiateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateChatappTemplateRequest : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public class Buttons : Tea.TeaModel {
            public var phoneNumber: String?

            public var text: String?

            public var type: String?

            public var url: String?

            public var urlType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.phoneNumber != nil {
                    map["PhoneNumber"] = self.phoneNumber!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.urlType != nil {
                    map["UrlType"] = self.urlType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
                    self.phoneNumber = dict["PhoneNumber"] as! String
                }
                if dict.keys.contains("Text") && dict["Text"] != nil {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Url") && dict["Url"] != nil {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("UrlType") && dict["UrlType"] != nil {
                    self.urlType = dict["UrlType"] as! String
                }
            }
        }
        public var buttons: [CreateChatappTemplateRequest.Components.Buttons]?

        public var caption: String?

        public var duration: Int32?

        public var fileName: String?

        public var fileType: String?

        public var format: String?

        public var text: String?

        public var thumbUrl: String?

        public var type: String?

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
            if self.buttons != nil {
                var tmp : [Any] = []
                for k in self.buttons! {
                    tmp.append(k.toMap())
                }
                map["Buttons"] = tmp
            }
            if self.caption != nil {
                map["Caption"] = self.caption!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileType != nil {
                map["FileType"] = self.fileType!
            }
            if self.format != nil {
                map["Format"] = self.format!
            }
            if self.text != nil {
                map["Text"] = self.text!
            }
            if self.thumbUrl != nil {
                map["ThumbUrl"] = self.thumbUrl!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Buttons") && dict["Buttons"] != nil {
                var tmp : [CreateChatappTemplateRequest.Components.Buttons] = []
                for v in dict["Buttons"] as! [Any] {
                    var model = CreateChatappTemplateRequest.Components.Buttons()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.buttons = tmp
            }
            if dict.keys.contains("Caption") && dict["Caption"] != nil {
                self.caption = dict["Caption"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("FileName") && dict["FileName"] != nil {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("FileType") && dict["FileType"] != nil {
                self.fileType = dict["FileType"] as! String
            }
            if dict.keys.contains("Format") && dict["Format"] != nil {
                self.format = dict["Format"] as! String
            }
            if dict.keys.contains("Text") && dict["Text"] != nil {
                self.text = dict["Text"] as! String
            }
            if dict.keys.contains("ThumbUrl") && dict["ThumbUrl"] != nil {
                self.thumbUrl = dict["ThumbUrl"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var allowCategoryChange: Bool?

    public var category: String?

    public var components: [CreateChatappTemplateRequest.Components]?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var example: [String: String]?

    public var isvCode: String?

    public var language: String?

    public var name: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowCategoryChange != nil {
            map["AllowCategoryChange"] = self.allowCategoryChange!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["Components"] = tmp
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.example != nil {
            map["Example"] = self.example!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowCategoryChange") && dict["AllowCategoryChange"] != nil {
            self.allowCategoryChange = dict["AllowCategoryChange"] as! Bool
        }
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            var tmp : [CreateChatappTemplateRequest.Components] = []
            for v in dict["Components"] as! [Any] {
                var model = CreateChatappTemplateRequest.Components()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.components = tmp
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") && dict["CustWabaId"] != nil {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("Example") && dict["Example"] != nil {
            self.example = dict["Example"] as! [String: String]
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class CreateChatappTemplateShrinkRequest : Tea.TeaModel {
    public var allowCategoryChange: Bool?

    public var category: String?

    public var componentsShrink: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var exampleShrink: String?

    public var isvCode: String?

    public var language: String?

    public var name: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowCategoryChange != nil {
            map["AllowCategoryChange"] = self.allowCategoryChange!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.componentsShrink != nil {
            map["Components"] = self.componentsShrink!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.exampleShrink != nil {
            map["Example"] = self.exampleShrink!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowCategoryChange") && dict["AllowCategoryChange"] != nil {
            self.allowCategoryChange = dict["AllowCategoryChange"] as! Bool
        }
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            self.componentsShrink = dict["Components"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") && dict["CustWabaId"] != nil {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("Example") && dict["Example"] != nil {
            self.exampleShrink = dict["Example"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class CreateChatappTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var templateCode: String?

        public var templateName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
                self.templateCode = dict["TemplateCode"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateChatappTemplateResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateChatappTemplateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateChatappTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChatappTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateChatappTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteChatappTemplateRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var custWabaId: String?

    public var isvCode: String?

    public var templateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") && dict["CustWabaId"] != nil {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
            self.templateCode = dict["TemplateCode"] as! String
        }
    }
}

public class DeleteChatappTemplateResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteChatappTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChatappTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteChatappTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetChatappTemplateDetailRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var custWabaId: String?

    public var isvCode: String?

    public var language: String?

    public var templateCode: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") && dict["CustWabaId"] != nil {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class GetChatappTemplateDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Components : Tea.TeaModel {
            public class Buttons : Tea.TeaModel {
                public var phoneNumber: String?

                public var text: String?

                public var type: String?

                public var url: String?

                public var urlType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.phoneNumber != nil {
                        map["PhoneNumber"] = self.phoneNumber!
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    if self.urlType != nil {
                        map["UrlType"] = self.urlType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
                        self.phoneNumber = dict["PhoneNumber"] as! String
                    }
                    if dict.keys.contains("Text") && dict["Text"] != nil {
                        self.text = dict["Text"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Url") && dict["Url"] != nil {
                        self.url = dict["Url"] as! String
                    }
                    if dict.keys.contains("UrlType") && dict["UrlType"] != nil {
                        self.urlType = dict["UrlType"] as! String
                    }
                }
            }
            public var buttons: [GetChatappTemplateDetailResponseBody.Data.Components.Buttons]?

            public var caption: String?

            public var duration: Int32?

            public var fileName: String?

            public var fileType: String?

            public var format: String?

            public var latitude: String?

            public var locationAddress: String?

            public var locationName: String?

            public var longitude: String?

            public var text: String?

            public var thumbUrl: String?

            public var type: String?

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
                if self.buttons != nil {
                    var tmp : [Any] = []
                    for k in self.buttons! {
                        tmp.append(k.toMap())
                    }
                    map["Buttons"] = tmp
                }
                if self.caption != nil {
                    map["Caption"] = self.caption!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.fileType != nil {
                    map["FileType"] = self.fileType!
                }
                if self.format != nil {
                    map["Format"] = self.format!
                }
                if self.latitude != nil {
                    map["Latitude"] = self.latitude!
                }
                if self.locationAddress != nil {
                    map["LocationAddress"] = self.locationAddress!
                }
                if self.locationName != nil {
                    map["LocationName"] = self.locationName!
                }
                if self.longitude != nil {
                    map["Longitude"] = self.longitude!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.thumbUrl != nil {
                    map["ThumbUrl"] = self.thumbUrl!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Buttons") && dict["Buttons"] != nil {
                    var tmp : [GetChatappTemplateDetailResponseBody.Data.Components.Buttons] = []
                    for v in dict["Buttons"] as! [Any] {
                        var model = GetChatappTemplateDetailResponseBody.Data.Components.Buttons()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.buttons = tmp
                }
                if dict.keys.contains("Caption") && dict["Caption"] != nil {
                    self.caption = dict["Caption"] as! String
                }
                if dict.keys.contains("Duration") && dict["Duration"] != nil {
                    self.duration = dict["Duration"] as! Int32
                }
                if dict.keys.contains("FileName") && dict["FileName"] != nil {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("FileType") && dict["FileType"] != nil {
                    self.fileType = dict["FileType"] as! String
                }
                if dict.keys.contains("Format") && dict["Format"] != nil {
                    self.format = dict["Format"] as! String
                }
                if dict.keys.contains("Latitude") && dict["Latitude"] != nil {
                    self.latitude = dict["Latitude"] as! String
                }
                if dict.keys.contains("LocationAddress") && dict["LocationAddress"] != nil {
                    self.locationAddress = dict["LocationAddress"] as! String
                }
                if dict.keys.contains("LocationName") && dict["LocationName"] != nil {
                    self.locationName = dict["LocationName"] as! String
                }
                if dict.keys.contains("Longitude") && dict["Longitude"] != nil {
                    self.longitude = dict["Longitude"] as! String
                }
                if dict.keys.contains("Text") && dict["Text"] != nil {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("ThumbUrl") && dict["ThumbUrl"] != nil {
                    self.thumbUrl = dict["ThumbUrl"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Url") && dict["Url"] != nil {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var auditStatus: String?

        public var category: String?

        public var components: [GetChatappTemplateDetailResponseBody.Data.Components]?

        public var example: [String: String]?

        public var language: String?

        public var name: String?

        public var templateCode: String?

        public var templateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.components != nil {
                var tmp : [Any] = []
                for k in self.components! {
                    tmp.append(k.toMap())
                }
                map["Components"] = tmp
            }
            if self.example != nil {
                map["Example"] = self.example!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                self.auditStatus = dict["AuditStatus"] as! String
            }
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Components") && dict["Components"] != nil {
                var tmp : [GetChatappTemplateDetailResponseBody.Data.Components] = []
                for v in dict["Components"] as! [Any] {
                    var model = GetChatappTemplateDetailResponseBody.Data.Components()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.components = tmp
            }
            if dict.keys.contains("Example") && dict["Example"] != nil {
                self.example = dict["Example"] as! [String: String]
            }
            if dict.keys.contains("Language") && dict["Language"] != nil {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
                self.templateCode = dict["TemplateCode"] as! String
            }
            if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
                self.templateType = dict["TemplateType"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetChatappTemplateDetailResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetChatappTemplateDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetChatappTemplateDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatappTemplateDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetChatappTemplateDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetChatappUploadAuthorizationRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
    }
}

public class GetChatappUploadAuthorizationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var bucketName: String?

        public var dir: String?

        public var endPoint: String?

        public var expire: Int32?

        public var securityToken: String?

        public override init() {
            super.init()
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
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.dir != nil {
                map["Dir"] = self.dir!
            }
            if self.endPoint != nil {
                map["EndPoint"] = self.endPoint!
            }
            if self.expire != nil {
                map["Expire"] = self.expire!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("AccessKeySecret") && dict["AccessKeySecret"] != nil {
                self.accessKeySecret = dict["AccessKeySecret"] as! String
            }
            if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("Dir") && dict["Dir"] != nil {
                self.dir = dict["Dir"] as! String
            }
            if dict.keys.contains("EndPoint") && dict["EndPoint"] != nil {
                self.endPoint = dict["EndPoint"] as! String
            }
            if dict.keys.contains("Expire") && dict["Expire"] != nil {
                self.expire = dict["Expire"] as! Int32
            }
            if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
                self.securityToken = dict["SecurityToken"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetChatappUploadAuthorizationResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetChatappUploadAuthorizationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetChatappUploadAuthorizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatappUploadAuthorizationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetChatappUploadAuthorizationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetChatappVerifyCodeRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var locale: String?

    public var method: String?

    public var phoneNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.locale != nil {
            map["Locale"] = self.locale!
        }
        if self.method != nil {
            map["Method"] = self.method!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("Locale") && dict["Locale"] != nil {
            self.locale = dict["Locale"] as! String
        }
        if dict.keys.contains("Method") && dict["Method"] != nil {
            self.method = dict["Method"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
    }
}

public class GetChatappVerifyCodeResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetChatappVerifyCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatappVerifyCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetChatappVerifyCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMigrationVerifyCodeRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var locale: String?

    public var method: String?

    public var phoneNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.locale != nil {
            map["Locale"] = self.locale!
        }
        if self.method != nil {
            map["Method"] = self.method!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("Locale") && dict["Locale"] != nil {
            self.locale = dict["Locale"] as! String
        }
        if dict.keys.contains("Method") && dict["Method"] != nil {
            self.method = dict["Method"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
    }
}

public class GetMigrationVerifyCodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public var phoneNumber: String?

        public override init() {
            super.init()
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
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetMigrationVerifyCodeResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetMigrationVerifyCodeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetMigrationVerifyCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMigrationVerifyCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMigrationVerifyCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPhoneNumberVerificationStatusRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var phoneNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
    }
}

public class GetPhoneNumberVerificationStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var codeVerificationStatus: String?

        public var id: String?

        public var phoneNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeVerificationStatus != nil {
                map["CodeVerificationStatus"] = self.codeVerificationStatus!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CodeVerificationStatus") && dict["CodeVerificationStatus"] != nil {
                self.codeVerificationStatus = dict["CodeVerificationStatus"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetPhoneNumberVerificationStatusResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetPhoneNumberVerificationStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPhoneNumberVerificationStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPhoneNumberVerificationStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPhoneNumberVerificationStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IsvGetAppIdRequest : Tea.TeaModel {
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class IsvGetAppIdResponseBody : Tea.TeaModel {
    public var appId: String?

    public var code: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class IsvGetAppIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IsvGetAppIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = IsvGetAppIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListChatappTemplateRequest : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public var index: Int32?

        public var size: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Index") && dict["Index"] != nil {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int32
            }
        }
    }
    public var auditStatus: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var isvCode: String?

    public var language: String?

    public var name: String?

    public var page: ListChatappTemplateRequest.Page?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
            self.auditStatus = dict["AuditStatus"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") && dict["CustWabaId"] != nil {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Page") && dict["Page"] != nil {
            var model = ListChatappTemplateRequest.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class ListChatappTemplateShrinkRequest : Tea.TeaModel {
    public var auditStatus: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var isvCode: String?

    public var language: String?

    public var name: String?

    public var pageShrink: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageShrink != nil {
            map["Page"] = self.pageShrink!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
            self.auditStatus = dict["AuditStatus"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") && dict["CustWabaId"] != nil {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Page") && dict["Page"] != nil {
            self.pageShrink = dict["Page"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class ListChatappTemplateResponseBody : Tea.TeaModel {
    public class ListTemplate : Tea.TeaModel {
        public var auditStatus: String?

        public var category: String?

        public var language: String?

        public var templateCode: String?

        public var templateName: String?

        public var templateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                self.auditStatus = dict["AuditStatus"] as! String
            }
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Language") && dict["Language"] != nil {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
                self.templateCode = dict["TemplateCode"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
                self.templateType = dict["TemplateType"] as! String
            }
        }
    }
    public var code: String?

    public var listTemplate: [ListChatappTemplateResponseBody.ListTemplate]?

    public var message: String?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.listTemplate != nil {
            var tmp : [Any] = []
            for k in self.listTemplate! {
                tmp.append(k.toMap())
            }
            map["ListTemplate"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ListTemplate") && dict["ListTemplate"] != nil {
            var tmp : [ListChatappTemplateResponseBody.ListTemplate] = []
            for v in dict["ListTemplate"] as! [Any] {
                var model = ListChatappTemplateResponseBody.ListTemplate()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.listTemplate = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListChatappTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChatappTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListChatappTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyChatappTemplateRequest : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public class Buttons : Tea.TeaModel {
            public var phoneNumber: String?

            public var text: String?

            public var type: String?

            public var url: String?

            public var urlType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.phoneNumber != nil {
                    map["PhoneNumber"] = self.phoneNumber!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.urlType != nil {
                    map["UrlType"] = self.urlType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
                    self.phoneNumber = dict["PhoneNumber"] as! String
                }
                if dict.keys.contains("Text") && dict["Text"] != nil {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Url") && dict["Url"] != nil {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("UrlType") && dict["UrlType"] != nil {
                    self.urlType = dict["UrlType"] as! String
                }
            }
        }
        public var buttons: [ModifyChatappTemplateRequest.Components.Buttons]?

        public var caption: String?

        public var duration: Int32?

        public var fileName: String?

        public var fileType: String?

        public var format: String?

        public var text: String?

        public var thumbUrl: String?

        public var type: String?

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
            if self.buttons != nil {
                var tmp : [Any] = []
                for k in self.buttons! {
                    tmp.append(k.toMap())
                }
                map["Buttons"] = tmp
            }
            if self.caption != nil {
                map["Caption"] = self.caption!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileType != nil {
                map["FileType"] = self.fileType!
            }
            if self.format != nil {
                map["Format"] = self.format!
            }
            if self.text != nil {
                map["Text"] = self.text!
            }
            if self.thumbUrl != nil {
                map["ThumbUrl"] = self.thumbUrl!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Buttons") && dict["Buttons"] != nil {
                var tmp : [ModifyChatappTemplateRequest.Components.Buttons] = []
                for v in dict["Buttons"] as! [Any] {
                    var model = ModifyChatappTemplateRequest.Components.Buttons()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.buttons = tmp
            }
            if dict.keys.contains("Caption") && dict["Caption"] != nil {
                self.caption = dict["Caption"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("FileName") && dict["FileName"] != nil {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("FileType") && dict["FileType"] != nil {
                self.fileType = dict["FileType"] as! String
            }
            if dict.keys.contains("Format") && dict["Format"] != nil {
                self.format = dict["Format"] as! String
            }
            if dict.keys.contains("Text") && dict["Text"] != nil {
                self.text = dict["Text"] as! String
            }
            if dict.keys.contains("ThumbUrl") && dict["ThumbUrl"] != nil {
                self.thumbUrl = dict["ThumbUrl"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var category: String?

    public var components: [ModifyChatappTemplateRequest.Components]?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var example: [String: String]?

    public var isvCode: String?

    public var language: String?

    public var templateCode: String?

    public var templateType: String?

    public override init() {
        super.init()
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
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["Components"] = tmp
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.example != nil {
            map["Example"] = self.example!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            var tmp : [ModifyChatappTemplateRequest.Components] = []
            for v in dict["Components"] as! [Any] {
                var model = ModifyChatappTemplateRequest.Components()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.components = tmp
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") && dict["CustWabaId"] != nil {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("Example") && dict["Example"] != nil {
            self.example = dict["Example"] as! [String: String]
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class ModifyChatappTemplateShrinkRequest : Tea.TeaModel {
    public var category: String?

    public var componentsShrink: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var exampleShrink: String?

    public var isvCode: String?

    public var language: String?

    public var templateCode: String?

    public var templateType: String?

    public override init() {
        super.init()
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
        if self.componentsShrink != nil {
            map["Components"] = self.componentsShrink!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.exampleShrink != nil {
            map["Example"] = self.exampleShrink!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            self.componentsShrink = dict["Components"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") && dict["CustWabaId"] != nil {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("Example") && dict["Example"] != nil {
            self.exampleShrink = dict["Example"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class ModifyChatappTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var templateCode: String?

        public var templateName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
                self.templateCode = dict["TemplateCode"] as! String
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
        }
    }
    public var code: String?

    public var data: ModifyChatappTemplateResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ModifyChatappTemplateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyChatappTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyChatappTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyChatappTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPhoneBusinessProfileRequest : Tea.TeaModel {
    public var address: String?

    public var custSpaceId: String?

    public var description_: String?

    public var email: String?

    public var phoneNumber: String?

    public var profilePictureUrl: String?

    public var vertical: String?

    public var websites: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.profilePictureUrl != nil {
            map["ProfilePictureUrl"] = self.profilePictureUrl!
        }
        if self.vertical != nil {
            map["Vertical"] = self.vertical!
        }
        if self.websites != nil {
            map["Websites"] = self.websites!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ProfilePictureUrl") && dict["ProfilePictureUrl"] != nil {
            self.profilePictureUrl = dict["ProfilePictureUrl"] as! String
        }
        if dict.keys.contains("Vertical") && dict["Vertical"] != nil {
            self.vertical = dict["Vertical"] as! String
        }
        if dict.keys.contains("Websites") && dict["Websites"] != nil {
            self.websites = dict["Websites"] as! [String]
        }
    }
}

public class ModifyPhoneBusinessProfileShrinkRequest : Tea.TeaModel {
    public var address: String?

    public var custSpaceId: String?

    public var description_: String?

    public var email: String?

    public var phoneNumber: String?

    public var profilePictureUrl: String?

    public var vertical: String?

    public var websitesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.profilePictureUrl != nil {
            map["ProfilePictureUrl"] = self.profilePictureUrl!
        }
        if self.vertical != nil {
            map["Vertical"] = self.vertical!
        }
        if self.websitesShrink != nil {
            map["Websites"] = self.websitesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ProfilePictureUrl") && dict["ProfilePictureUrl"] != nil {
            self.profilePictureUrl = dict["ProfilePictureUrl"] as! String
        }
        if dict.keys.contains("Vertical") && dict["Vertical"] != nil {
            self.vertical = dict["Vertical"] as! String
        }
        if dict.keys.contains("Websites") && dict["Websites"] != nil {
            self.websitesShrink = dict["Websites"] as! String
        }
    }
}

public class ModifyPhoneBusinessProfileResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyPhoneBusinessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPhoneBusinessProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyPhoneBusinessProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryChatappBindWabaRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var isvCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
    }
}

public class QueryChatappBindWabaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountReviewStatus: String?

        public var currency: String?

        public var id: String?

        public var messageTemplateNamespace: String?

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
            if self.accountReviewStatus != nil {
                map["AccountReviewStatus"] = self.accountReviewStatus!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.messageTemplateNamespace != nil {
                map["MessageTemplateNamespace"] = self.messageTemplateNamespace!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountReviewStatus") && dict["AccountReviewStatus"] != nil {
                self.accountReviewStatus = dict["AccountReviewStatus"] as! String
            }
            if dict.keys.contains("Currency") && dict["Currency"] != nil {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("MessageTemplateNamespace") && dict["MessageTemplateNamespace"] != nil {
                self.messageTemplateNamespace = dict["MessageTemplateNamespace"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryChatappBindWabaResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryChatappBindWabaResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryChatappBindWabaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryChatappBindWabaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryChatappBindWabaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryChatappPhoneNumbersRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var isvCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
    }
}

public class QueryChatappPhoneNumbersResponseBody : Tea.TeaModel {
    public class PhoneNumbers : Tea.TeaModel {
        public var codeVerificationStatus: String?

        public var messagingLimitTier: String?

        public var nameStatus: String?

        public var newNameStatus: String?

        public var phoneNumber: String?

        public var qualityRating: String?

        public var status: String?

        public var statusCallbackUrl: String?

        public var statusQueue: String?

        public var upCallbackUrl: String?

        public var upQueue: String?

        public var verifiedName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeVerificationStatus != nil {
                map["CodeVerificationStatus"] = self.codeVerificationStatus!
            }
            if self.messagingLimitTier != nil {
                map["MessagingLimitTier"] = self.messagingLimitTier!
            }
            if self.nameStatus != nil {
                map["NameStatus"] = self.nameStatus!
            }
            if self.newNameStatus != nil {
                map["NewNameStatus"] = self.newNameStatus!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.qualityRating != nil {
                map["QualityRating"] = self.qualityRating!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusCallbackUrl != nil {
                map["StatusCallbackUrl"] = self.statusCallbackUrl!
            }
            if self.statusQueue != nil {
                map["StatusQueue"] = self.statusQueue!
            }
            if self.upCallbackUrl != nil {
                map["UpCallbackUrl"] = self.upCallbackUrl!
            }
            if self.upQueue != nil {
                map["UpQueue"] = self.upQueue!
            }
            if self.verifiedName != nil {
                map["VerifiedName"] = self.verifiedName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CodeVerificationStatus") && dict["CodeVerificationStatus"] != nil {
                self.codeVerificationStatus = dict["CodeVerificationStatus"] as! String
            }
            if dict.keys.contains("MessagingLimitTier") && dict["MessagingLimitTier"] != nil {
                self.messagingLimitTier = dict["MessagingLimitTier"] as! String
            }
            if dict.keys.contains("NameStatus") && dict["NameStatus"] != nil {
                self.nameStatus = dict["NameStatus"] as! String
            }
            if dict.keys.contains("NewNameStatus") && dict["NewNameStatus"] != nil {
                self.newNameStatus = dict["NewNameStatus"] as! String
            }
            if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("QualityRating") && dict["QualityRating"] != nil {
                self.qualityRating = dict["QualityRating"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusCallbackUrl") && dict["StatusCallbackUrl"] != nil {
                self.statusCallbackUrl = dict["StatusCallbackUrl"] as! String
            }
            if dict.keys.contains("StatusQueue") && dict["StatusQueue"] != nil {
                self.statusQueue = dict["StatusQueue"] as! String
            }
            if dict.keys.contains("UpCallbackUrl") && dict["UpCallbackUrl"] != nil {
                self.upCallbackUrl = dict["UpCallbackUrl"] as! String
            }
            if dict.keys.contains("UpQueue") && dict["UpQueue"] != nil {
                self.upQueue = dict["UpQueue"] as! String
            }
            if dict.keys.contains("VerifiedName") && dict["VerifiedName"] != nil {
                self.verifiedName = dict["VerifiedName"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var phoneNumbers: [QueryChatappPhoneNumbersResponseBody.PhoneNumbers]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.phoneNumbers != nil {
            var tmp : [Any] = []
            for k in self.phoneNumbers! {
                tmp.append(k.toMap())
            }
            map["PhoneNumbers"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PhoneNumbers") && dict["PhoneNumbers"] != nil {
            var tmp : [QueryChatappPhoneNumbersResponseBody.PhoneNumbers] = []
            for v in dict["PhoneNumbers"] as! [Any] {
                var model = QueryChatappPhoneNumbersResponseBody.PhoneNumbers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.phoneNumbers = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryChatappPhoneNumbersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryChatappPhoneNumbersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryChatappPhoneNumbersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPhoneBusinessProfileRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var phoneNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
    }
}

public class QueryPhoneBusinessProfileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var address: String?

        public var description_: String?

        public var email: String?

        public var profilePictureUrl: String?

        public var vertical: String?

        public var websites: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.profilePictureUrl != nil {
                map["ProfilePictureUrl"] = self.profilePictureUrl!
            }
            if self.vertical != nil {
                map["Vertical"] = self.vertical!
            }
            if self.websites != nil {
                map["Websites"] = self.websites!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") && dict["Address"] != nil {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("ProfilePictureUrl") && dict["ProfilePictureUrl"] != nil {
                self.profilePictureUrl = dict["ProfilePictureUrl"] as! String
            }
            if dict.keys.contains("Vertical") && dict["Vertical"] != nil {
                self.vertical = dict["Vertical"] as! String
            }
            if dict.keys.contains("Websites") && dict["Websites"] != nil {
                self.websites = dict["Websites"] as! [String]
            }
        }
    }
    public var code: String?

    public var data: QueryPhoneBusinessProfileResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryPhoneBusinessProfileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryPhoneBusinessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPhoneBusinessProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryPhoneBusinessProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryWabaBusinessInfoRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var wabaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("WabaId") && dict["WabaId"] != nil {
            self.wabaId = dict["WabaId"] as! String
        }
    }
}

public class QueryWabaBusinessInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var businessId: String?

        public var businessName: String?

        public var verificationStatus: String?

        public var vertical: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessId != nil {
                map["BusinessId"] = self.businessId!
            }
            if self.businessName != nil {
                map["BusinessName"] = self.businessName!
            }
            if self.verificationStatus != nil {
                map["VerificationStatus"] = self.verificationStatus!
            }
            if self.vertical != nil {
                map["Vertical"] = self.vertical!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BusinessId") && dict["BusinessId"] != nil {
                self.businessId = dict["BusinessId"] as! String
            }
            if dict.keys.contains("BusinessName") && dict["BusinessName"] != nil {
                self.businessName = dict["BusinessName"] as! String
            }
            if dict.keys.contains("VerificationStatus") && dict["VerificationStatus"] != nil {
                self.verificationStatus = dict["VerificationStatus"] as! String
            }
            if dict.keys.contains("Vertical") && dict["Vertical"] != nil {
                self.vertical = dict["Vertical"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryWabaBusinessInfoResponseBody.Data?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryWabaBusinessInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryWabaBusinessInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryWabaBusinessInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryWabaBusinessInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendChatappMassMessageRequest : Tea.TeaModel {
    public class SenderList : Tea.TeaModel {
        public var payload: [String]?

        public var templateParams: [String: String]?

        public var to: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.payload != nil {
                map["Payload"] = self.payload!
            }
            if self.templateParams != nil {
                map["TemplateParams"] = self.templateParams!
            }
            if self.to != nil {
                map["To"] = self.to!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Payload") && dict["Payload"] != nil {
                self.payload = dict["Payload"] as! [String]
            }
            if dict.keys.contains("TemplateParams") && dict["TemplateParams"] != nil {
                self.templateParams = dict["TemplateParams"] as! [String: String]
            }
            if dict.keys.contains("To") && dict["To"] != nil {
                self.to = dict["To"] as! String
            }
        }
    }
    public var channelType: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackDuration: Int32?

    public var fallBackId: String?

    public var from: String?

    public var isvCode: String?

    public var label: String?

    public var language: String?

    public var senderList: [SendChatappMassMessageRequest.SenderList]?

    public var tag: String?

    public var taskId: String?

    public var templateCode: String?

    public var ttl: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
        }
        if self.fallBackDuration != nil {
            map["FallBackDuration"] = self.fallBackDuration!
        }
        if self.fallBackId != nil {
            map["FallBackId"] = self.fallBackId!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.senderList != nil {
            var tmp : [Any] = []
            for k in self.senderList! {
                tmp.append(k.toMap())
            }
            map["SenderList"] = tmp
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") && dict["ChannelType"] != nil {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") && dict["CustWabaId"] != nil {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") && dict["FallBackContent"] != nil {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackDuration") && dict["FallBackDuration"] != nil {
            self.fallBackDuration = dict["FallBackDuration"] as! Int32
        }
        if dict.keys.contains("FallBackId") && dict["FallBackId"] != nil {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("From") && dict["From"] != nil {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("SenderList") && dict["SenderList"] != nil {
            var tmp : [SendChatappMassMessageRequest.SenderList] = []
            for v in dict["SenderList"] as! [Any] {
                var model = SendChatappMassMessageRequest.SenderList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.senderList = tmp
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("Ttl") && dict["Ttl"] != nil {
            self.ttl = dict["Ttl"] as! Int64
        }
    }
}

public class SendChatappMassMessageShrinkRequest : Tea.TeaModel {
    public var channelType: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackDuration: Int32?

    public var fallBackId: String?

    public var from: String?

    public var isvCode: String?

    public var label: String?

    public var language: String?

    public var senderListShrink: String?

    public var tag: String?

    public var taskId: String?

    public var templateCode: String?

    public var ttl: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
        }
        if self.fallBackDuration != nil {
            map["FallBackDuration"] = self.fallBackDuration!
        }
        if self.fallBackId != nil {
            map["FallBackId"] = self.fallBackId!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.senderListShrink != nil {
            map["SenderList"] = self.senderListShrink!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") && dict["ChannelType"] != nil {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") && dict["CustWabaId"] != nil {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") && dict["FallBackContent"] != nil {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackDuration") && dict["FallBackDuration"] != nil {
            self.fallBackDuration = dict["FallBackDuration"] as! Int32
        }
        if dict.keys.contains("FallBackId") && dict["FallBackId"] != nil {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("From") && dict["From"] != nil {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("SenderList") && dict["SenderList"] != nil {
            self.senderListShrink = dict["SenderList"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("Ttl") && dict["Ttl"] != nil {
            self.ttl = dict["Ttl"] as! Int64
        }
    }
}

public class SendChatappMassMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var groupMessageId: String?

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
        if self.groupMessageId != nil {
            map["GroupMessageId"] = self.groupMessageId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GroupMessageId") && dict["GroupMessageId"] != nil {
            self.groupMessageId = dict["GroupMessageId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SendChatappMassMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendChatappMassMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendChatappMassMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendChatappMessageRequest : Tea.TeaModel {
    public var channelType: String?

    public var content: String?

    public var contextMessageId: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackDuration: Int32?

    public var fallBackId: String?

    public var from: String?

    public var isvCode: String?

    public var label: String?

    public var language: String?

    public var messageType: String?

    public var payload: [String]?

    public var tag: String?

    public var taskId: String?

    public var templateCode: String?

    public var templateParams: [String: String]?

    public var to: String?

    public var trackingData: String?

    public var ttl: Int32?

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
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contextMessageId != nil {
            map["ContextMessageId"] = self.contextMessageId!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
        }
        if self.fallBackDuration != nil {
            map["FallBackDuration"] = self.fallBackDuration!
        }
        if self.fallBackId != nil {
            map["FallBackId"] = self.fallBackId!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateParams != nil {
            map["TemplateParams"] = self.templateParams!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.trackingData != nil {
            map["TrackingData"] = self.trackingData!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") && dict["ChannelType"] != nil {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContextMessageId") && dict["ContextMessageId"] != nil {
            self.contextMessageId = dict["ContextMessageId"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") && dict["CustWabaId"] != nil {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") && dict["FallBackContent"] != nil {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackDuration") && dict["FallBackDuration"] != nil {
            self.fallBackDuration = dict["FallBackDuration"] as! Int32
        }
        if dict.keys.contains("FallBackId") && dict["FallBackId"] != nil {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("From") && dict["From"] != nil {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("MessageType") && dict["MessageType"] != nil {
            self.messageType = dict["MessageType"] as! String
        }
        if dict.keys.contains("Payload") && dict["Payload"] != nil {
            self.payload = dict["Payload"] as! [String]
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateParams") && dict["TemplateParams"] != nil {
            self.templateParams = dict["TemplateParams"] as! [String: String]
        }
        if dict.keys.contains("To") && dict["To"] != nil {
            self.to = dict["To"] as! String
        }
        if dict.keys.contains("TrackingData") && dict["TrackingData"] != nil {
            self.trackingData = dict["TrackingData"] as! String
        }
        if dict.keys.contains("Ttl") && dict["Ttl"] != nil {
            self.ttl = dict["Ttl"] as! Int32
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class SendChatappMessageShrinkRequest : Tea.TeaModel {
    public var channelType: String?

    public var content: String?

    public var contextMessageId: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackDuration: Int32?

    public var fallBackId: String?

    public var from: String?

    public var isvCode: String?

    public var label: String?

    public var language: String?

    public var messageType: String?

    public var payloadShrink: String?

    public var tag: String?

    public var taskId: String?

    public var templateCode: String?

    public var templateParamsShrink: String?

    public var to: String?

    public var trackingData: String?

    public var ttl: Int32?

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
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contextMessageId != nil {
            map["ContextMessageId"] = self.contextMessageId!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
        }
        if self.fallBackDuration != nil {
            map["FallBackDuration"] = self.fallBackDuration!
        }
        if self.fallBackId != nil {
            map["FallBackId"] = self.fallBackId!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.payloadShrink != nil {
            map["Payload"] = self.payloadShrink!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateParamsShrink != nil {
            map["TemplateParams"] = self.templateParamsShrink!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.trackingData != nil {
            map["TrackingData"] = self.trackingData!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") && dict["ChannelType"] != nil {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContextMessageId") && dict["ContextMessageId"] != nil {
            self.contextMessageId = dict["ContextMessageId"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") && dict["CustWabaId"] != nil {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") && dict["FallBackContent"] != nil {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackDuration") && dict["FallBackDuration"] != nil {
            self.fallBackDuration = dict["FallBackDuration"] as! Int32
        }
        if dict.keys.contains("FallBackId") && dict["FallBackId"] != nil {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("From") && dict["From"] != nil {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") && dict["IsvCode"] != nil {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("MessageType") && dict["MessageType"] != nil {
            self.messageType = dict["MessageType"] as! String
        }
        if dict.keys.contains("Payload") && dict["Payload"] != nil {
            self.payloadShrink = dict["Payload"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateParams") && dict["TemplateParams"] != nil {
            self.templateParamsShrink = dict["TemplateParams"] as! String
        }
        if dict.keys.contains("To") && dict["To"] != nil {
            self.to = dict["To"] as! String
        }
        if dict.keys.contains("TrackingData") && dict["TrackingData"] != nil {
            self.trackingData = dict["TrackingData"] as! String
        }
        if dict.keys.contains("Ttl") && dict["Ttl"] != nil {
            self.ttl = dict["Ttl"] as! Int32
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class SendChatappMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SendChatappMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendChatappMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendChatappMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitIsvCustomerTermsRequest : Tea.TeaModel {
    public var businessDesc: String?

    public var contactMail: String?

    public var countryId: String?

    public var custName: String?

    public var custSpaceId: String?

    public var isvTerms: String?

    public var officeAddress: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessDesc != nil {
            map["BusinessDesc"] = self.businessDesc!
        }
        if self.contactMail != nil {
            map["ContactMail"] = self.contactMail!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.custName != nil {
            map["CustName"] = self.custName!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.isvTerms != nil {
            map["IsvTerms"] = self.isvTerms!
        }
        if self.officeAddress != nil {
            map["OfficeAddress"] = self.officeAddress!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessDesc") && dict["BusinessDesc"] != nil {
            self.businessDesc = dict["BusinessDesc"] as! String
        }
        if dict.keys.contains("ContactMail") && dict["ContactMail"] != nil {
            self.contactMail = dict["ContactMail"] as! String
        }
        if dict.keys.contains("CountryId") && dict["CountryId"] != nil {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("CustName") && dict["CustName"] != nil {
            self.custName = dict["CustName"] as! String
        }
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("IsvTerms") && dict["IsvTerms"] != nil {
            self.isvTerms = dict["IsvTerms"] as! String
        }
        if dict.keys.contains("OfficeAddress") && dict["OfficeAddress"] != nil {
            self.officeAddress = dict["OfficeAddress"] as! String
        }
    }
}

public class SubmitIsvCustomerTermsResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitIsvCustomerTermsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitIsvCustomerTermsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitIsvCustomerTermsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAccountWebhookRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var httpFlag: String?

    public var queueFlag: String?

    public var statusCallbackUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.httpFlag != nil {
            map["HttpFlag"] = self.httpFlag!
        }
        if self.queueFlag != nil {
            map["QueueFlag"] = self.queueFlag!
        }
        if self.statusCallbackUrl != nil {
            map["StatusCallbackUrl"] = self.statusCallbackUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("HttpFlag") && dict["HttpFlag"] != nil {
            self.httpFlag = dict["HttpFlag"] as! String
        }
        if dict.keys.contains("QueueFlag") && dict["QueueFlag"] != nil {
            self.queueFlag = dict["QueueFlag"] as! String
        }
        if dict.keys.contains("StatusCallbackUrl") && dict["StatusCallbackUrl"] != nil {
            self.statusCallbackUrl = dict["StatusCallbackUrl"] as! String
        }
    }
}

public class UpdateAccountWebhookResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAccountWebhookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAccountWebhookResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateAccountWebhookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePhoneWebhookRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var httpFlag: String?

    public var phoneNumber: String?

    public var queueFlag: String?

    public var statusCallbackUrl: String?

    public var upCallbackUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.httpFlag != nil {
            map["HttpFlag"] = self.httpFlag!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.queueFlag != nil {
            map["QueueFlag"] = self.queueFlag!
        }
        if self.statusCallbackUrl != nil {
            map["StatusCallbackUrl"] = self.statusCallbackUrl!
        }
        if self.upCallbackUrl != nil {
            map["UpCallbackUrl"] = self.upCallbackUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") && dict["CustSpaceId"] != nil {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("HttpFlag") && dict["HttpFlag"] != nil {
            self.httpFlag = dict["HttpFlag"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("QueueFlag") && dict["QueueFlag"] != nil {
            self.queueFlag = dict["QueueFlag"] as! String
        }
        if dict.keys.contains("StatusCallbackUrl") && dict["StatusCallbackUrl"] != nil {
            self.statusCallbackUrl = dict["StatusCallbackUrl"] as! String
        }
        if dict.keys.contains("UpCallbackUrl") && dict["UpCallbackUrl"] != nil {
            self.upCallbackUrl = dict["UpCallbackUrl"] as! String
        }
    }
}

public class UpdatePhoneWebhookResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdatePhoneWebhookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePhoneWebhookResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePhoneWebhookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
