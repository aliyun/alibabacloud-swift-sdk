import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BeeBotAssociateRequest : Tea.TeaModel {
    public var chatBotInstnaceId: String?

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
        if self.chatBotInstnaceId != nil {
            map["ChatBotInstnaceId"] = self.chatBotInstnaceId!
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
        if dict.keys.contains("ChatBotInstnaceId") {
            self.chatBotInstnaceId = dict["ChatBotInstnaceId"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Perspective") {
            self.perspective = dict["Perspective"] as! [String]
        }
        if dict.keys.contains("RecommendNum") {
            self.recommendNum = dict["RecommendNum"] as! Int32
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Utterance") {
            self.utterance = dict["Utterance"] as! String
        }
    }
}

public class BeeBotAssociateShrinkRequest : Tea.TeaModel {
    public var chatBotInstnaceId: String?

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
        if self.chatBotInstnaceId != nil {
            map["ChatBotInstnaceId"] = self.chatBotInstnaceId!
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
        if dict.keys.contains("ChatBotInstnaceId") {
            self.chatBotInstnaceId = dict["ChatBotInstnaceId"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Perspective") {
            self.perspectiveShrink = dict["Perspective"] as! String
        }
        if dict.keys.contains("RecommendNum") {
            self.recommendNum = dict["RecommendNum"] as! Int32
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Utterance") {
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
                if dict.keys.contains("Meta") {
                    self.meta = dict["Meta"] as! String
                }
                if dict.keys.contains("Title") {
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
            if dict.keys.contains("Associate") {
                self.associate = dict["Associate"] as! [BeeBotAssociateResponseBody.Data.Associate]
            }
            if dict.keys.contains("MessageId") {
                self.messageId = dict["MessageId"] as! String
            }
            if dict.keys.contains("SessionId") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = BeeBotAssociateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BeeBotAssociateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BeeBotChatRequest : Tea.TeaModel {
    public var chatBotInstnaceId: String?

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
        if self.chatBotInstnaceId != nil {
            map["ChatBotInstnaceId"] = self.chatBotInstnaceId!
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
        if dict.keys.contains("ChatBotInstnaceId") {
            self.chatBotInstnaceId = dict["ChatBotInstnaceId"] as! String
        }
        if dict.keys.contains("IntentName") {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! String
        }
        if dict.keys.contains("Perspective") {
            self.perspective = dict["Perspective"] as! [String]
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
            self.vendorParam = dict["VendorParam"] as! [String: Any]
        }
    }
}

public class BeeBotChatShrinkRequest : Tea.TeaModel {
    public var chatBotInstnaceId: String?

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
        if self.chatBotInstnaceId != nil {
            map["ChatBotInstnaceId"] = self.chatBotInstnaceId!
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
        if dict.keys.contains("ChatBotInstnaceId") {
            self.chatBotInstnaceId = dict["ChatBotInstnaceId"] as! String
        }
        if dict.keys.contains("IntentName") {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("KnowledgeId") {
            self.knowledgeId = dict["KnowledgeId"] as! String
        }
        if dict.keys.contains("Perspective") {
            self.perspectiveShrink = dict["Perspective"] as! String
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
                        self.relatedKnowledges = dict["RelatedKnowledges"] as! [BeeBotChatResponseBody.Data.Messages.Knowledge.RelatedKnowledges]
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
                    if dict.keys.contains("AnswerSource") {
                        self.answerSource = dict["AnswerSource"] as! String
                    }
                    if dict.keys.contains("KnowledgeId") {
                        self.knowledgeId = dict["KnowledgeId"] as! String
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
                    if dict.keys.contains("AnswerSource") {
                        self.answerSource = dict["AnswerSource"] as! String
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
                    if dict.keys.contains("Slots") {
                        self.slots = dict["Slots"] as! [BeeBotChatResponseBody.Data.Messages.Text.Slots]
                    }
                    if dict.keys.contains("UserDefinedChatTitle") {
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
                if dict.keys.contains("AnswerSource") {
                    self.answerSource = dict["AnswerSource"] as! String
                }
                if dict.keys.contains("AnswerType") {
                    self.answerType = dict["AnswerType"] as! String
                }
                if dict.keys.contains("Knowledge") {
                    var model = BeeBotChatResponseBody.Data.Messages.Knowledge()
                    model.fromMap(dict["Knowledge"] as! [String: Any])
                    self.knowledge = model
                }
                if dict.keys.contains("Recommends") {
                    self.recommends = dict["Recommends"] as! [BeeBotChatResponseBody.Data.Messages.Recommends]
                }
                if dict.keys.contains("Text") {
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
            if dict.keys.contains("MessageId") {
                self.messageId = dict["MessageId"] as! String
            }
            if dict.keys.contains("Messages") {
                self.messages = dict["Messages"] as! [BeeBotChatResponseBody.Data.Messages]
            }
            if dict.keys.contains("SessionId") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = BeeBotChatResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BeeBotChatResponseBody()
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
                if dict.keys.contains("PhoneNumber") {
                    self.phoneNumber = dict["PhoneNumber"] as! String
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("UrlType") {
                    self.urlType = dict["UrlType"] as! String
                }
            }
        }
        public var buttons: [CreateChatappTemplateRequest.Components.Buttons]?

        public var caption: String?

        public var fileName: String?

        public var format: String?

        public var text: String?

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
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.format != nil {
                map["Format"] = self.format!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Buttons") {
                self.buttons = dict["Buttons"] as! [CreateChatappTemplateRequest.Components.Buttons]
            }
            if dict.keys.contains("Caption") {
                self.caption = dict["Caption"] as! String
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("Format") {
                self.format = dict["Format"] as! String
            }
            if dict.keys.contains("Text") {
                self.text = dict["Text"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var category: String?

    public var components: [CreateChatappTemplateRequest.Components]?

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
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Components") {
            self.components = dict["Components"] as! [CreateChatappTemplateRequest.Components]
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("Example") {
            self.example = dict["Example"] as! [String: String]
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class CreateChatappTemplateShrinkRequest : Tea.TeaModel {
    public var category: String?

    public var componentsShrink: String?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.componentsShrink != nil {
            map["Components"] = self.componentsShrink!
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
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Components") {
            self.componentsShrink = dict["Components"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("Example") {
            self.exampleShrink = dict["Example"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TemplateType") {
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
            if dict.keys.contains("TemplateCode") {
                self.templateCode = dict["TemplateCode"] as! String
            }
            if dict.keys.contains("TemplateName") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateChatappTemplateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateChatappTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteChatappTemplateRequest : Tea.TeaModel {
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
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("TemplateCode") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteChatappTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetChatappTemplateDetailRequest : Tea.TeaModel {
    public var custWabaId: String?

    public var isvCode: String?

    public var language: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
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
                    if dict.keys.contains("PhoneNumber") {
                        self.phoneNumber = dict["PhoneNumber"] as! String
                    }
                    if dict.keys.contains("Text") {
                        self.text = dict["Text"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                    if dict.keys.contains("UrlType") {
                        self.urlType = dict["UrlType"] as! String
                    }
                }
            }
            public var buttons: [GetChatappTemplateDetailResponseBody.Data.Components.Buttons]?

            public var caption: String?

            public var fileName: String?

            public var format: String?

            public var text: String?

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
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.format != nil {
                    map["Format"] = self.format!
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Buttons") {
                    self.buttons = dict["Buttons"] as! [GetChatappTemplateDetailResponseBody.Data.Components.Buttons]
                }
                if dict.keys.contains("Caption") {
                    self.caption = dict["Caption"] as! String
                }
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("Format") {
                    self.format = dict["Format"] as! String
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Url") {
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

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditStatus") {
                self.auditStatus = dict["AuditStatus"] as! String
            }
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Components") {
                self.components = dict["Components"] as! [GetChatappTemplateDetailResponseBody.Data.Components]
            }
            if dict.keys.contains("Example") {
                self.example = dict["Example"] as! [String: String]
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TemplateCode") {
                self.templateCode = dict["TemplateCode"] as! String
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetChatappTemplateDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetChatappTemplateDetailResponseBody()
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
            if dict.keys.contains("Index") {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int32
            }
        }
    }
    public var auditStatus: String?

    public var custWabaId: String?

    public var isvCode: String?

    public var language: String?

    public var name: String?

    public var page: ListChatappTemplateRequest.Page?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditStatus") {
            self.auditStatus = dict["AuditStatus"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Page") {
            var model = ListChatappTemplateRequest.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
    }
}

public class ListChatappTemplateShrinkRequest : Tea.TeaModel {
    public var auditStatus: String?

    public var custWabaId: String?

    public var isvCode: String?

    public var language: String?

    public var name: String?

    public var pageShrink: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditStatus") {
            self.auditStatus = dict["AuditStatus"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Page") {
            self.pageShrink = dict["Page"] as! String
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

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditStatus") {
                self.auditStatus = dict["AuditStatus"] as! String
            }
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("TemplateCode") {
                self.templateCode = dict["TemplateCode"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
        }
    }
    public var code: String?

    public var listTemplate: [ListChatappTemplateResponseBody.ListTemplate]?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ListTemplate") {
            self.listTemplate = dict["ListTemplate"] as! [ListChatappTemplateResponseBody.ListTemplate]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
                if dict.keys.contains("PhoneNumber") {
                    self.phoneNumber = dict["PhoneNumber"] as! String
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("UrlType") {
                    self.urlType = dict["UrlType"] as! String
                }
            }
        }
        public var buttons: [ModifyChatappTemplateRequest.Components.Buttons]?

        public var caption: String?

        public var fileName: String?

        public var format: String?

        public var text: String?

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
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.format != nil {
                map["Format"] = self.format!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Buttons") {
                self.buttons = dict["Buttons"] as! [ModifyChatappTemplateRequest.Components.Buttons]
            }
            if dict.keys.contains("Caption") {
                self.caption = dict["Caption"] as! String
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("Format") {
                self.format = dict["Format"] as! String
            }
            if dict.keys.contains("Text") {
                self.text = dict["Text"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var components: [ModifyChatappTemplateRequest.Components]?

    public var custWabaId: String?

    public var example: [String: String]?

    public var isvCode: String?

    public var language: String?

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
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["Components"] = tmp
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Components") {
            self.components = dict["Components"] as! [ModifyChatappTemplateRequest.Components]
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("Example") {
            self.example = dict["Example"] as! [String: String]
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
    }
}

public class ModifyChatappTemplateShrinkRequest : Tea.TeaModel {
    public var componentsShrink: String?

    public var custWabaId: String?

    public var exampleShrink: String?

    public var isvCode: String?

    public var language: String?

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
        if self.componentsShrink != nil {
            map["Components"] = self.componentsShrink!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Components") {
            self.componentsShrink = dict["Components"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("Example") {
            self.exampleShrink = dict["Example"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
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
            if dict.keys.contains("TemplateCode") {
                self.templateCode = dict["TemplateCode"] as! String
            }
            if dict.keys.contains("TemplateName") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ModifyChatappTemplateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyChatappTemplateResponseBody()
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
            if dict.keys.contains("Payload") {
                self.payload = dict["Payload"] as! [String]
            }
            if dict.keys.contains("TemplateParams") {
                self.templateParams = dict["TemplateParams"] as! [String: String]
            }
            if dict.keys.contains("To") {
                self.to = dict["To"] as! String
            }
        }
    }
    public var channelType: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackId: String?

    public var from: String?

    public var isvCode: String?

    public var language: String?

    public var senderList: [SendChatappMassMessageRequest.SenderList]?

    public var taskId: String?

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
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackId") {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("SenderList") {
            self.senderList = dict["SenderList"] as! [SendChatappMassMessageRequest.SenderList]
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
    }
}

public class SendChatappMassMessageShrinkRequest : Tea.TeaModel {
    public var channelType: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackId: String?

    public var from: String?

    public var isvCode: String?

    public var language: String?

    public var senderListShrink: String?

    public var taskId: String?

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
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
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
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.senderListShrink != nil {
            map["SenderList"] = self.senderListShrink!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackId") {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("SenderList") {
            self.senderListShrink = dict["SenderList"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GroupMessageId") {
            self.groupMessageId = dict["GroupMessageId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendChatappMassMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendChatappMessageRequest : Tea.TeaModel {
    public var channelType: String?

    public var content: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackId: String?

    public var from: String?

    public var isvCode: String?

    public var language: String?

    public var messageType: String?

    public var payload: [String]?

    public var templateCode: String?

    public var templateParams: [String: String]?

    public var to: String?

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
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
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
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackId") {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("MessageType") {
            self.messageType = dict["MessageType"] as! String
        }
        if dict.keys.contains("Payload") {
            self.payload = dict["Payload"] as! [String]
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateParams") {
            self.templateParams = dict["TemplateParams"] as! [String: String]
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class SendChatappMessageShrinkRequest : Tea.TeaModel {
    public var channelType: String?

    public var content: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackId: String?

    public var from: String?

    public var isvCode: String?

    public var language: String?

    public var messageType: String?

    public var payloadShrink: String?

    public var templateCode: String?

    public var templateParamsShrink: String?

    public var to: String?

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
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
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
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.payloadShrink != nil {
            map["Payload"] = self.payloadShrink!
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackId") {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("MessageType") {
            self.messageType = dict["MessageType"] as! String
        }
        if dict.keys.contains("Payload") {
            self.payloadShrink = dict["Payload"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateParams") {
            self.templateParamsShrink = dict["TemplateParams"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
        }
        if dict.keys.contains("Type") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendChatappMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
