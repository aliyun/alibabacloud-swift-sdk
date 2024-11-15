import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddChatappPhoneNumberRequest : Tea.TeaModel {
    public var cc: String?

    public var custSpaceId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var preValidateId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.cc != nil {
            map["Cc"] = self.cc!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.preValidateId != nil {
            map["PreValidateId"] = self.preValidateId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.verifiedName != nil {
            map["VerifiedName"] = self.verifiedName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cc") {
            self.cc = dict["Cc"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("PreValidateId") {
            self.preValidateId = dict["PreValidateId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("VerifiedName") {
            self.verifiedName = dict["VerifiedName"] as! String
        }
    }
}

public class AddChatappPhoneNumberResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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

public class AddChatappPhoneNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddChatappPhoneNumberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddChatappPhoneNumberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

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
        if dict.keys.contains("ChatBotInstanceId") {
            self.chatBotInstanceId = dict["ChatBotInstanceId"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
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
        if dict.keys.contains("ChatBotInstanceId") {
            self.chatBotInstanceId = dict["ChatBotInstanceId"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
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
            if dict.keys.contains("MessageId") {
                self.messageId = dict["MessageId"] as! String
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("ChatBotInstanceId") {
            self.chatBotInstanceId = dict["ChatBotInstanceId"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
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
        if dict.keys.contains("ChatBotInstanceId") {
            self.chatBotInstanceId = dict["ChatBotInstanceId"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
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
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class ChatappBindWabaRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("WabaId") {
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
            if dict.keys.contains("CustSpaceId") {
                self.custSpaceId = dict["CustSpaceId"] as! String
            }
            if dict.keys.contains("WabaId") {
                self.wabaId = dict["WabaId"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ChatappBindWabaResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ChatappBindWabaResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("InputToken") {
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
            if dict.keys.contains("AccountReviewStatus") {
                self.accountReviewStatus = dict["AccountReviewStatus"] as! String
            }
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("MessageTemplateNamespace") {
                self.messageTemplateNamespace = dict["MessageTemplateNamespace"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Wabas") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
    }
}

public class ChatappMigrationRegisterResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("VerifyCode") {
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
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ChatappMigrationVerifiedResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatappMigrationVerifiedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChatappPhoneNumberDeregisterRequest : Tea.TeaModel {
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
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
    }
}

public class ChatappPhoneNumberDeregisterResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
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

public class ChatappPhoneNumberDeregisterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappPhoneNumberDeregisterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatappPhoneNumberDeregisterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChatappPhoneNumberRegisterRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ChatappPhoneNumberRegisterResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatappPhoneNumberRegisterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChatappSyncPhoneNumberRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
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
            if dict.keys.contains("CodeVerificationStatus") {
                self.codeVerificationStatus = dict["CodeVerificationStatus"] as! String
            }
            if dict.keys.contains("MessagingLimitTier") {
                self.messagingLimitTier = dict["MessagingLimitTier"] as! String
            }
            if dict.keys.contains("NameStatus") {
                self.nameStatus = dict["NameStatus"] as! String
            }
            if dict.keys.contains("NewNameStatus") {
                self.newNameStatus = dict["NewNameStatus"] as! String
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("QualityRating") {
                self.qualityRating = dict["QualityRating"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusCallbackUrl") {
                self.statusCallbackUrl = dict["StatusCallbackUrl"] as! String
            }
            if dict.keys.contains("StatusQueue") {
                self.statusQueue = dict["StatusQueue"] as! String
            }
            if dict.keys.contains("UpCallbackUrl") {
                self.upCallbackUrl = dict["UpCallbackUrl"] as! String
            }
            if dict.keys.contains("UpQueue") {
                self.upQueue = dict["UpQueue"] as! String
            }
            if dict.keys.contains("VerifiedName") {
                self.verifiedName = dict["VerifiedName"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var phoneNumbers: [ChatappSyncPhoneNumberResponseBody.PhoneNumbers]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PhoneNumbers") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatappSyncPhoneNumberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChatappVerifyAndRegisterRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("VerifyCode") {
            self.verifyCode = dict["VerifyCode"] as! String
        }
    }
}

public class ChatappVerifyAndRegisterResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("CountryCode") {
            self.countryCode = dict["CountryCode"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("MobileNumber") {
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
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateChatappMigrationInitiateResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateChatappMigrationInitiateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateChatappTemplateRequest : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public class Buttons : Tea.TeaModel {
            public class SupportedApps : Tea.TeaModel {
                public var packageName: String?

                public var signatureHash: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.packageName != nil {
                        map["PackageName"] = self.packageName!
                    }
                    if self.signatureHash != nil {
                        map["SignatureHash"] = self.signatureHash!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PackageName") {
                        self.packageName = dict["PackageName"] as! String
                    }
                    if dict.keys.contains("SignatureHash") {
                        self.signatureHash = dict["SignatureHash"] as! String
                    }
                }
            }
            public var autofillText: String?

            public var couponCode: String?

            public var flowAction: String?

            public var flowId: String?

            public var isOptOut: Bool?

            public var navigateScreen: String?

            public var packageName: String?

            public var phoneNumber: String?

            public var signatureHash: String?

            public var supportedApps: [CreateChatappTemplateRequest.Components.Buttons.SupportedApps]?

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
                if self.autofillText != nil {
                    map["AutofillText"] = self.autofillText!
                }
                if self.couponCode != nil {
                    map["CouponCode"] = self.couponCode!
                }
                if self.flowAction != nil {
                    map["FlowAction"] = self.flowAction!
                }
                if self.flowId != nil {
                    map["FlowId"] = self.flowId!
                }
                if self.isOptOut != nil {
                    map["IsOptOut"] = self.isOptOut!
                }
                if self.navigateScreen != nil {
                    map["NavigateScreen"] = self.navigateScreen!
                }
                if self.packageName != nil {
                    map["PackageName"] = self.packageName!
                }
                if self.phoneNumber != nil {
                    map["PhoneNumber"] = self.phoneNumber!
                }
                if self.signatureHash != nil {
                    map["SignatureHash"] = self.signatureHash!
                }
                if self.supportedApps != nil {
                    var tmp : [Any] = []
                    for k in self.supportedApps! {
                        tmp.append(k.toMap())
                    }
                    map["SupportedApps"] = tmp
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
                if dict.keys.contains("AutofillText") {
                    self.autofillText = dict["AutofillText"] as! String
                }
                if dict.keys.contains("CouponCode") {
                    self.couponCode = dict["CouponCode"] as! String
                }
                if dict.keys.contains("FlowAction") {
                    self.flowAction = dict["FlowAction"] as! String
                }
                if dict.keys.contains("FlowId") {
                    self.flowId = dict["FlowId"] as! String
                }
                if dict.keys.contains("IsOptOut") {
                    self.isOptOut = dict["IsOptOut"] as! Bool
                }
                if dict.keys.contains("NavigateScreen") {
                    self.navigateScreen = dict["NavigateScreen"] as! String
                }
                if dict.keys.contains("PackageName") {
                    self.packageName = dict["PackageName"] as! String
                }
                if dict.keys.contains("PhoneNumber") {
                    self.phoneNumber = dict["PhoneNumber"] as! String
                }
                if dict.keys.contains("SignatureHash") {
                    self.signatureHash = dict["SignatureHash"] as! String
                }
                if dict.keys.contains("SupportedApps") {
                    var tmp : [CreateChatappTemplateRequest.Components.Buttons.SupportedApps] = []
                    for v in dict["SupportedApps"] as! [Any] {
                        var model = CreateChatappTemplateRequest.Components.Buttons.SupportedApps()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.supportedApps = tmp
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
        public class Cards : Tea.TeaModel {
            public class CardComponents : Tea.TeaModel {
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
                public var buttons: [CreateChatappTemplateRequest.Components.Cards.CardComponents.Buttons]?

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
                        var tmp : [CreateChatappTemplateRequest.Components.Cards.CardComponents.Buttons] = []
                        for v in dict["Buttons"] as! [Any] {
                            var model = CreateChatappTemplateRequest.Components.Cards.CardComponents.Buttons()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.buttons = tmp
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
            public var cardComponents: [CreateChatappTemplateRequest.Components.Cards.CardComponents]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cardComponents != nil {
                    var tmp : [Any] = []
                    for k in self.cardComponents! {
                        tmp.append(k.toMap())
                    }
                    map["CardComponents"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CardComponents") {
                    var tmp : [CreateChatappTemplateRequest.Components.Cards.CardComponents] = []
                    for v in dict["CardComponents"] as! [Any] {
                        var model = CreateChatappTemplateRequest.Components.Cards.CardComponents()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.cardComponents = tmp
                }
            }
        }
        public var addSecretRecommendation: Bool?

        public var buttons: [CreateChatappTemplateRequest.Components.Buttons]?

        public var caption: String?

        public var cards: [CreateChatappTemplateRequest.Components.Cards]?

        public var codeExpirationMinutes: Int32?

        public var duration: Int32?

        public var fileName: String?

        public var fileType: String?

        public var format: String?

        public var hasExpiration: Bool?

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
            if self.addSecretRecommendation != nil {
                map["AddSecretRecommendation"] = self.addSecretRecommendation!
            }
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
            if self.cards != nil {
                var tmp : [Any] = []
                for k in self.cards! {
                    tmp.append(k.toMap())
                }
                map["Cards"] = tmp
            }
            if self.codeExpirationMinutes != nil {
                map["CodeExpirationMinutes"] = self.codeExpirationMinutes!
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
            if self.hasExpiration != nil {
                map["HasExpiration"] = self.hasExpiration!
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
            if dict.keys.contains("AddSecretRecommendation") {
                self.addSecretRecommendation = dict["AddSecretRecommendation"] as! Bool
            }
            if dict.keys.contains("Buttons") {
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
            if dict.keys.contains("Caption") {
                self.caption = dict["Caption"] as! String
            }
            if dict.keys.contains("Cards") {
                var tmp : [CreateChatappTemplateRequest.Components.Cards] = []
                for v in dict["Cards"] as! [Any] {
                    var model = CreateChatappTemplateRequest.Components.Cards()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.cards = tmp
            }
            if dict.keys.contains("CodeExpirationMinutes") {
                self.codeExpirationMinutes = dict["CodeExpirationMinutes"] as! Int32
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("FileType") {
                self.fileType = dict["FileType"] as! String
            }
            if dict.keys.contains("Format") {
                self.format = dict["Format"] as! String
            }
            if dict.keys.contains("HasExpiration") {
                self.hasExpiration = dict["HasExpiration"] as! Bool
            }
            if dict.keys.contains("Text") {
                self.text = dict["Text"] as! String
            }
            if dict.keys.contains("ThumbUrl") {
                self.thumbUrl = dict["ThumbUrl"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Url") {
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

    public var messageSendTtlSeconds: Int32?

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
        if self.messageSendTtlSeconds != nil {
            map["MessageSendTtlSeconds"] = self.messageSendTtlSeconds!
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
        if dict.keys.contains("AllowCategoryChange") {
            self.allowCategoryChange = dict["AllowCategoryChange"] as! Bool
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Components") {
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
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
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
        if dict.keys.contains("MessageSendTtlSeconds") {
            self.messageSendTtlSeconds = dict["MessageSendTtlSeconds"] as! Int32
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
    public var allowCategoryChange: Bool?

    public var category: String?

    public var componentsShrink: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var exampleShrink: String?

    public var isvCode: String?

    public var language: String?

    public var messageSendTtlSeconds: Int32?

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
        if self.messageSendTtlSeconds != nil {
            map["MessageSendTtlSeconds"] = self.messageSendTtlSeconds!
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
        if dict.keys.contains("AllowCategoryChange") {
            self.allowCategoryChange = dict["AllowCategoryChange"] as! Bool
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Components") {
            self.componentsShrink = dict["Components"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
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
        if dict.keys.contains("MessageSendTtlSeconds") {
            self.messageSendTtlSeconds = dict["MessageSendTtlSeconds"] as! Int32
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
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class CreateFlowRequest : Tea.TeaModel {
    public var categories: [String]?

    public var custSpaceId: String?

    public var flowName: String?

    public override init() {
        super.init()
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
            map["Categories"] = self.categories!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Categories") {
            self.categories = dict["Categories"] as! [String]
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
    }
}

public class CreateFlowShrinkRequest : Tea.TeaModel {
    public var categoriesShrink: String?

    public var custSpaceId: String?

    public var flowName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoriesShrink != nil {
            map["Categories"] = self.categoriesShrink!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Categories") {
            self.categoriesShrink = dict["Categories"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
    }
}

public class CreateFlowResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categories: [String]?

        public var flowId: String?

        public var flowName: String?

        public override init() {
            super.init()
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
                map["Categories"] = self.categories!
            }
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Categories") {
                self.categories = dict["Categories"] as! [String]
            }
            if dict.keys.contains("FlowId") {
                self.flowId = dict["FlowId"] as! String
            }
            if dict.keys.contains("FlowName") {
                self.flowName = dict["FlowName"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateFlowResponseBody.Data?

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
            var model = CreateFlowResponseBody.Data()
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

public class CreateFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePhoneMessageQrdlRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var generateQrImage: String?

    public var phoneNumber: String?

    public var prefilledMessage: String?

    public override init() {
        super.init()
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
        if self.generateQrImage != nil {
            map["GenerateQrImage"] = self.generateQrImage!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.prefilledMessage != nil {
            map["PrefilledMessage"] = self.prefilledMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("GenerateQrImage") {
            self.generateQrImage = dict["GenerateQrImage"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("PrefilledMessage") {
            self.prefilledMessage = dict["PrefilledMessage"] as! String
        }
    }
}

public class CreatePhoneMessageQrdlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deepLinkUrl: String?

        public var generateQrImage: String?

        public var phoneNumber: String?

        public var prefilledMessage: String?

        public var qrImageUrl: String?

        public var qrdlCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deepLinkUrl != nil {
                map["DeepLinkUrl"] = self.deepLinkUrl!
            }
            if self.generateQrImage != nil {
                map["GenerateQrImage"] = self.generateQrImage!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.prefilledMessage != nil {
                map["PrefilledMessage"] = self.prefilledMessage!
            }
            if self.qrImageUrl != nil {
                map["QrImageUrl"] = self.qrImageUrl!
            }
            if self.qrdlCode != nil {
                map["QrdlCode"] = self.qrdlCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeepLinkUrl") {
                self.deepLinkUrl = dict["DeepLinkUrl"] as! String
            }
            if dict.keys.contains("GenerateQrImage") {
                self.generateQrImage = dict["GenerateQrImage"] as! String
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("PrefilledMessage") {
                self.prefilledMessage = dict["PrefilledMessage"] as! String
            }
            if dict.keys.contains("QrImageUrl") {
                self.qrImageUrl = dict["QrImageUrl"] as! String
            }
            if dict.keys.contains("QrdlCode") {
                self.qrdlCode = dict["QrdlCode"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreatePhoneMessageQrdlResponseBody.Data?

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
            var model = CreatePhoneMessageQrdlResponseBody.Data()
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

public class CreatePhoneMessageQrdlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePhoneMessageQrdlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePhoneMessageQrdlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteChatappTemplateRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var custWabaId: String?

    public var isvCode: String?

    public var language: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
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
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class DeleteChatappTemplateResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class DeleteFlowRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var flowId: String?

    public override init() {
        super.init()
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
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("FlowId") {
            self.flowId = dict["FlowId"] as! String
        }
    }
}

public class DeleteFlowResponseBody : Tea.TeaModel {
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

public class DeleteFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePhoneMessageQrdlRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var phoneNumber: String?

    public var qrdlCode: String?

    public override init() {
        super.init()
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
        if self.qrdlCode != nil {
            map["QrdlCode"] = self.qrdlCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("QrdlCode") {
            self.qrdlCode = dict["QrdlCode"] as! String
        }
    }
}

public class DeletePhoneMessageQrdlResponseBody : Tea.TeaModel {
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

public class DeletePhoneMessageQrdlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePhoneMessageQrdlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePhoneMessageQrdlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeprecateFlowRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var flowId: String?

    public override init() {
        super.init()
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
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("FlowId") {
            self.flowId = dict["FlowId"] as! String
        }
    }
}

public class DeprecateFlowResponseBody : Tea.TeaModel {
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

public class DeprecateFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeprecateFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeprecateFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableWhatsappROIMetricRequest : Tea.TeaModel {
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
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
    }
}

public class EnableWhatsappROIMetricResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
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

public class EnableWhatsappROIMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableWhatsappROIMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableWhatsappROIMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetChatappPhoneNumberMetricRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var end: Int64?

    public var granularity: String?

    public var isvCode: String?

    public var phoneNumber: String?

    public var start: Int64?

    public override init() {
        super.init()
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
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("End") {
            self.end = dict["End"] as! Int64
        }
        if dict.keys.contains("Granularity") {
            self.granularity = dict["Granularity"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("Start") {
            self.start = dict["Start"] as! Int64
        }
    }
}

public class GetChatappPhoneNumberMetricResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deliveredCount: Int32?

        public var end: Int64?

        public var granularity: String?

        public var phoneNumber: String?

        public var sentCount: Int32?

        public var start: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deliveredCount != nil {
                map["DeliveredCount"] = self.deliveredCount!
            }
            if self.end != nil {
                map["End"] = self.end!
            }
            if self.granularity != nil {
                map["Granularity"] = self.granularity!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.sentCount != nil {
                map["SentCount"] = self.sentCount!
            }
            if self.start != nil {
                map["Start"] = self.start!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeliveredCount") {
                self.deliveredCount = dict["DeliveredCount"] as! Int32
            }
            if dict.keys.contains("End") {
                self.end = dict["End"] as! Int64
            }
            if dict.keys.contains("Granularity") {
                self.granularity = dict["Granularity"] as! String
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("SentCount") {
                self.sentCount = dict["SentCount"] as! Int32
            }
            if dict.keys.contains("Start") {
                self.start = dict["Start"] as! Int64
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [GetChatappPhoneNumberMetricResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [GetChatappPhoneNumberMetricResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetChatappPhoneNumberMetricResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetChatappPhoneNumberMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatappPhoneNumberMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetChatappPhoneNumberMetricResponseBody()
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
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
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
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class GetChatappTemplateDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Components : Tea.TeaModel {
            public class Buttons : Tea.TeaModel {
                public class ExtendAttrs : Tea.TeaModel {
                    public var action: String?

                    public var intentCode: String?

                    public var nextLanguageCode: String?

                    public var nextTemplateCode: String?

                    public var nextTemplateName: String?

                    public override init() {
                        super.init()
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
                        if self.intentCode != nil {
                            map["IntentCode"] = self.intentCode!
                        }
                        if self.nextLanguageCode != nil {
                            map["NextLanguageCode"] = self.nextLanguageCode!
                        }
                        if self.nextTemplateCode != nil {
                            map["NextTemplateCode"] = self.nextTemplateCode!
                        }
                        if self.nextTemplateName != nil {
                            map["NextTemplateName"] = self.nextTemplateName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Action") {
                            self.action = dict["Action"] as! String
                        }
                        if dict.keys.contains("IntentCode") {
                            self.intentCode = dict["IntentCode"] as! String
                        }
                        if dict.keys.contains("NextLanguageCode") {
                            self.nextLanguageCode = dict["NextLanguageCode"] as! String
                        }
                        if dict.keys.contains("NextTemplateCode") {
                            self.nextTemplateCode = dict["NextTemplateCode"] as! String
                        }
                        if dict.keys.contains("NextTemplateName") {
                            self.nextTemplateName = dict["NextTemplateName"] as! String
                        }
                    }
                }
                public class SupportedApps : Tea.TeaModel {
                    public var packageName: String?

                    public var signatureHash: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.packageName != nil {
                            map["PackageName"] = self.packageName!
                        }
                        if self.signatureHash != nil {
                            map["SignatureHash"] = self.signatureHash!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("PackageName") {
                            self.packageName = dict["PackageName"] as! String
                        }
                        if dict.keys.contains("SignatureHash") {
                            self.signatureHash = dict["SignatureHash"] as! String
                        }
                    }
                }
                public var autofillText: String?

                public var couponCode: String?

                public var extendAttrs: GetChatappTemplateDetailResponseBody.Data.Components.Buttons.ExtendAttrs?

                public var flowAction: String?

                public var flowId: String?

                public var isOptOut: Bool?

                public var navigateScreen: String?

                public var packageName: String?

                public var phoneNumber: String?

                public var signatureHash: String?

                public var supportedApps: [GetChatappTemplateDetailResponseBody.Data.Components.Buttons.SupportedApps]?

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
                    try self.extendAttrs?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.autofillText != nil {
                        map["AutofillText"] = self.autofillText!
                    }
                    if self.couponCode != nil {
                        map["CouponCode"] = self.couponCode!
                    }
                    if self.extendAttrs != nil {
                        map["ExtendAttrs"] = self.extendAttrs?.toMap()
                    }
                    if self.flowAction != nil {
                        map["FlowAction"] = self.flowAction!
                    }
                    if self.flowId != nil {
                        map["FlowId"] = self.flowId!
                    }
                    if self.isOptOut != nil {
                        map["IsOptOut"] = self.isOptOut!
                    }
                    if self.navigateScreen != nil {
                        map["NavigateScreen"] = self.navigateScreen!
                    }
                    if self.packageName != nil {
                        map["PackageName"] = self.packageName!
                    }
                    if self.phoneNumber != nil {
                        map["PhoneNumber"] = self.phoneNumber!
                    }
                    if self.signatureHash != nil {
                        map["SignatureHash"] = self.signatureHash!
                    }
                    if self.supportedApps != nil {
                        var tmp : [Any] = []
                        for k in self.supportedApps! {
                            tmp.append(k.toMap())
                        }
                        map["SupportedApps"] = tmp
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
                    if dict.keys.contains("AutofillText") {
                        self.autofillText = dict["AutofillText"] as! String
                    }
                    if dict.keys.contains("CouponCode") {
                        self.couponCode = dict["CouponCode"] as! String
                    }
                    if dict.keys.contains("ExtendAttrs") {
                        var model = GetChatappTemplateDetailResponseBody.Data.Components.Buttons.ExtendAttrs()
                        model.fromMap(dict["ExtendAttrs"] as! [String: Any])
                        self.extendAttrs = model
                    }
                    if dict.keys.contains("FlowAction") {
                        self.flowAction = dict["FlowAction"] as! String
                    }
                    if dict.keys.contains("FlowId") {
                        self.flowId = dict["FlowId"] as! String
                    }
                    if dict.keys.contains("IsOptOut") {
                        self.isOptOut = dict["IsOptOut"] as! Bool
                    }
                    if dict.keys.contains("NavigateScreen") {
                        self.navigateScreen = dict["NavigateScreen"] as! String
                    }
                    if dict.keys.contains("PackageName") {
                        self.packageName = dict["PackageName"] as! String
                    }
                    if dict.keys.contains("PhoneNumber") {
                        self.phoneNumber = dict["PhoneNumber"] as! String
                    }
                    if dict.keys.contains("SignatureHash") {
                        self.signatureHash = dict["SignatureHash"] as! String
                    }
                    if dict.keys.contains("SupportedApps") {
                        var tmp : [GetChatappTemplateDetailResponseBody.Data.Components.Buttons.SupportedApps] = []
                        for v in dict["SupportedApps"] as! [Any] {
                            var model = GetChatappTemplateDetailResponseBody.Data.Components.Buttons.SupportedApps()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.supportedApps = tmp
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
            public class Cards : Tea.TeaModel {
                public class CardComponents : Tea.TeaModel {
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
                    public var buttons: [GetChatappTemplateDetailResponseBody.Data.Components.Cards.CardComponents.Buttons]?

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
                            var tmp : [GetChatappTemplateDetailResponseBody.Data.Components.Cards.CardComponents.Buttons] = []
                            for v in dict["Buttons"] as! [Any] {
                                var model = GetChatappTemplateDetailResponseBody.Data.Components.Cards.CardComponents.Buttons()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.buttons = tmp
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
                public var cardComponents: [GetChatappTemplateDetailResponseBody.Data.Components.Cards.CardComponents]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cardComponents != nil {
                        var tmp : [Any] = []
                        for k in self.cardComponents! {
                            tmp.append(k.toMap())
                        }
                        map["CardComponents"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CardComponents") {
                        var tmp : [GetChatappTemplateDetailResponseBody.Data.Components.Cards.CardComponents] = []
                        for v in dict["CardComponents"] as! [Any] {
                            var model = GetChatappTemplateDetailResponseBody.Data.Components.Cards.CardComponents()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.cardComponents = tmp
                    }
                }
            }
            public var addSecretRecommendation: Bool?

            public var buttons: [GetChatappTemplateDetailResponseBody.Data.Components.Buttons]?

            public var caption: String?

            public var cards: [GetChatappTemplateDetailResponseBody.Data.Components.Cards]?

            public var codeExpirationMinutes: Int32?

            public var duration: Int32?

            public var fileName: String?

            public var fileType: String?

            public var format: String?

            public var latitude: String?

            public var locationAddress: String?

            public var locationName: String?

            public var longitude: String?

            public var offerExpirationTimeMs: String?

            public var text: String?

            public var thumbUrl: String?

            public var type: String?

            public var url: String?

            public var hasExpiration: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addSecretRecommendation != nil {
                    map["AddSecretRecommendation"] = self.addSecretRecommendation!
                }
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
                if self.cards != nil {
                    var tmp : [Any] = []
                    for k in self.cards! {
                        tmp.append(k.toMap())
                    }
                    map["Cards"] = tmp
                }
                if self.codeExpirationMinutes != nil {
                    map["CodeExpirationMinutes"] = self.codeExpirationMinutes!
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
                if self.offerExpirationTimeMs != nil {
                    map["OfferExpirationTimeMs"] = self.offerExpirationTimeMs!
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
                if self.hasExpiration != nil {
                    map["hasExpiration"] = self.hasExpiration!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddSecretRecommendation") {
                    self.addSecretRecommendation = dict["AddSecretRecommendation"] as! Bool
                }
                if dict.keys.contains("Buttons") {
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
                if dict.keys.contains("Caption") {
                    self.caption = dict["Caption"] as! String
                }
                if dict.keys.contains("Cards") {
                    var tmp : [GetChatappTemplateDetailResponseBody.Data.Components.Cards] = []
                    for v in dict["Cards"] as! [Any] {
                        var model = GetChatappTemplateDetailResponseBody.Data.Components.Cards()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.cards = tmp
                }
                if dict.keys.contains("CodeExpirationMinutes") {
                    self.codeExpirationMinutes = dict["CodeExpirationMinutes"] as! Int32
                }
                if dict.keys.contains("Duration") {
                    self.duration = dict["Duration"] as! Int32
                }
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("FileType") {
                    self.fileType = dict["FileType"] as! String
                }
                if dict.keys.contains("Format") {
                    self.format = dict["Format"] as! String
                }
                if dict.keys.contains("Latitude") {
                    self.latitude = dict["Latitude"] as! String
                }
                if dict.keys.contains("LocationAddress") {
                    self.locationAddress = dict["LocationAddress"] as! String
                }
                if dict.keys.contains("LocationName") {
                    self.locationName = dict["LocationName"] as! String
                }
                if dict.keys.contains("Longitude") {
                    self.longitude = dict["Longitude"] as! String
                }
                if dict.keys.contains("OfferExpirationTimeMs") {
                    self.offerExpirationTimeMs = dict["OfferExpirationTimeMs"] as! String
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("ThumbUrl") {
                    self.thumbUrl = dict["ThumbUrl"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("hasExpiration") {
                    self.hasExpiration = dict["hasExpiration"] as! Bool
                }
            }
        }
        public var auditStatus: String?

        public var category: String?

        public var components: [GetChatappTemplateDetailResponseBody.Data.Components]?

        public var example: [String: String]?

        public var language: String?

        public var messageSendTtlSeconds: Int32?

        public var name: String?

        public var qualityScore: String?

        public var reason: String?

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
            if self.messageSendTtlSeconds != nil {
                map["MessageSendTtlSeconds"] = self.messageSendTtlSeconds!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.qualityScore != nil {
                map["QualityScore"] = self.qualityScore!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
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
            if dict.keys.contains("AuditStatus") {
                self.auditStatus = dict["AuditStatus"] as! String
            }
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Components") {
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
            if dict.keys.contains("Example") {
                self.example = dict["Example"] as! [String: String]
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("MessageSendTtlSeconds") {
                self.messageSendTtlSeconds = dict["MessageSendTtlSeconds"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("QualityScore") {
                self.qualityScore = dict["QualityScore"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("TemplateCode") {
                self.templateCode = dict["TemplateCode"] as! String
            }
            if dict.keys.contains("TemplateType") {
                self.templateType = dict["TemplateType"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class GetChatappTemplateMetricRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var end: Int64?

    public var granularity: String?

    public var isvCode: String?

    public var language: String?

    public var start: Int64?

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
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.start != nil {
            map["Start"] = self.start!
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
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("End") {
            self.end = dict["End"] as! Int64
        }
        if dict.keys.contains("Granularity") {
            self.granularity = dict["Granularity"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Start") {
            self.start = dict["Start"] as! Int64
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class GetChatappTemplateMetricResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Cliented : Tea.TeaModel {
            public var buttonContent: String?

            public var count: Int32?

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
                if self.buttonContent != nil {
                    map["ButtonContent"] = self.buttonContent!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ButtonContent") {
                    self.buttonContent = dict["ButtonContent"] as! String
                }
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var cliented: [GetChatappTemplateMetricResponseBody.Data.Cliented]?

        public var deliveredCount: Int32?

        public var end: Int64?

        public var language: String?

        public var readCount: Int32?

        public var sentCount: Int32?

        public var start: Int64?

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
            if self.cliented != nil {
                var tmp : [Any] = []
                for k in self.cliented! {
                    tmp.append(k.toMap())
                }
                map["Cliented"] = tmp
            }
            if self.deliveredCount != nil {
                map["DeliveredCount"] = self.deliveredCount!
            }
            if self.end != nil {
                map["End"] = self.end!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.readCount != nil {
                map["ReadCount"] = self.readCount!
            }
            if self.sentCount != nil {
                map["SentCount"] = self.sentCount!
            }
            if self.start != nil {
                map["Start"] = self.start!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cliented") {
                var tmp : [GetChatappTemplateMetricResponseBody.Data.Cliented] = []
                for v in dict["Cliented"] as! [Any] {
                    var model = GetChatappTemplateMetricResponseBody.Data.Cliented()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.cliented = tmp
            }
            if dict.keys.contains("DeliveredCount") {
                self.deliveredCount = dict["DeliveredCount"] as! Int32
            }
            if dict.keys.contains("End") {
                self.end = dict["End"] as! Int64
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("ReadCount") {
                self.readCount = dict["ReadCount"] as! Int32
            }
            if dict.keys.contains("SentCount") {
                self.sentCount = dict["SentCount"] as! Int32
            }
            if dict.keys.contains("Start") {
                self.start = dict["Start"] as! Int64
            }
            if dict.keys.contains("TemplateCode") {
                self.templateCode = dict["TemplateCode"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [GetChatappTemplateMetricResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [GetChatappTemplateMetricResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetChatappTemplateMetricResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetChatappTemplateMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatappTemplateMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetChatappTemplateMetricResponseBody()
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
        if dict.keys.contains("CustSpaceId") {
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
            if dict.keys.contains("AccessKeyId") {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("AccessKeySecret") {
                self.accessKeySecret = dict["AccessKeySecret"] as! String
            }
            if dict.keys.contains("BucketName") {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("Dir") {
                self.dir = dict["Dir"] as! String
            }
            if dict.keys.contains("EndPoint") {
                self.endPoint = dict["EndPoint"] as! String
            }
            if dict.keys.contains("Expire") {
                self.expire = dict["Expire"] as! Int32
            }
            if dict.keys.contains("SecurityToken") {
                self.securityToken = dict["SecurityToken"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetChatappUploadAuthorizationResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("Locale") {
            self.locale = dict["Locale"] as! String
        }
        if dict.keys.contains("Method") {
            self.method = dict["Method"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetChatappVerifyCodeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetChatappVerifyCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCommerceSettingRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetCommerceSettingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cartEnable: Bool?

        public var catalogVisible: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cartEnable != nil {
                map["CartEnable"] = self.cartEnable!
            }
            if self.catalogVisible != nil {
                map["CatalogVisible"] = self.catalogVisible!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CartEnable") {
                self.cartEnable = dict["CartEnable"] as! Bool
            }
            if dict.keys.contains("CatalogVisible") {
                self.catalogVisible = dict["CatalogVisible"] as! Bool
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetCommerceSettingResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetCommerceSettingResponseBody.Data()
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

public class GetCommerceSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCommerceSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCommerceSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConversationalAutomationRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetConversationalAutomationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Commands : Tea.TeaModel {
            public var commandDescription: String?

            public var commandName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commandDescription != nil {
                    map["CommandDescription"] = self.commandDescription!
                }
                if self.commandName != nil {
                    map["CommandName"] = self.commandName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommandDescription") {
                    self.commandDescription = dict["CommandDescription"] as! String
                }
                if dict.keys.contains("CommandName") {
                    self.commandName = dict["CommandName"] as! String
                }
            }
        }
        public var commands: [GetConversationalAutomationResponseBody.Data.Commands]?

        public var enableWelcomeMessage: Bool?

        public var phoneNumber: String?

        public var prompts: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commands != nil {
                var tmp : [Any] = []
                for k in self.commands! {
                    tmp.append(k.toMap())
                }
                map["Commands"] = tmp
            }
            if self.enableWelcomeMessage != nil {
                map["EnableWelcomeMessage"] = self.enableWelcomeMessage!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.prompts != nil {
                map["Prompts"] = self.prompts!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Commands") {
                var tmp : [GetConversationalAutomationResponseBody.Data.Commands] = []
                for v in dict["Commands"] as! [Any] {
                    var model = GetConversationalAutomationResponseBody.Data.Commands()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.commands = tmp
            }
            if dict.keys.contains("EnableWelcomeMessage") {
                self.enableWelcomeMessage = dict["EnableWelcomeMessage"] as! Bool
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("Prompts") {
                self.prompts = dict["Prompts"] as! [String]
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetConversationalAutomationResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetConversationalAutomationResponseBody.Data()
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

public class GetConversationalAutomationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConversationalAutomationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConversationalAutomationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFlowRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var flowId: String?

    public override init() {
        super.init()
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
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("FlowId") {
            self.flowId = dict["FlowId"] as! String
        }
    }
}

public class GetFlowResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categories: [String]?

        public var dataApiVersion: String?

        public var flowId: String?

        public var flowName: String?

        public var JSONVersion: String?

        public var previewUrl: String?

        public var previewUrlExpires: Int64?

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
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.dataApiVersion != nil {
                map["DataApiVersion"] = self.dataApiVersion!
            }
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            if self.JSONVersion != nil {
                map["JSONVersion"] = self.JSONVersion!
            }
            if self.previewUrl != nil {
                map["PreviewUrl"] = self.previewUrl!
            }
            if self.previewUrlExpires != nil {
                map["PreviewUrlExpires"] = self.previewUrlExpires!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Categories") {
                self.categories = dict["Categories"] as! [String]
            }
            if dict.keys.contains("DataApiVersion") {
                self.dataApiVersion = dict["DataApiVersion"] as! String
            }
            if dict.keys.contains("FlowId") {
                self.flowId = dict["FlowId"] as! String
            }
            if dict.keys.contains("FlowName") {
                self.flowName = dict["FlowName"] as! String
            }
            if dict.keys.contains("JSONVersion") {
                self.JSONVersion = dict["JSONVersion"] as! String
            }
            if dict.keys.contains("PreviewUrl") {
                self.previewUrl = dict["PreviewUrl"] as! String
            }
            if dict.keys.contains("PreviewUrlExpires") {
                self.previewUrlExpires = dict["PreviewUrlExpires"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetFlowResponseBody.Data?

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
            var model = GetFlowResponseBody.Data()
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

public class GetFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFlowJSONAssestRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var flowId: String?

    public override init() {
        super.init()
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
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("FlowId") {
            self.flowId = dict["FlowId"] as! String
        }
    }
}

public class GetFlowJSONAssestResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var filePath: String?

        public var flowId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.filePath != nil {
                map["FilePath"] = self.filePath!
            }
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FilePath") {
                self.filePath = dict["FilePath"] as! String
            }
            if dict.keys.contains("FlowId") {
                self.flowId = dict["FlowId"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetFlowJSONAssestResponseBody.Data?

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
            var model = GetFlowJSONAssestResponseBody.Data()
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

public class GetFlowJSONAssestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFlowJSONAssestResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetFlowJSONAssestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFlowPreviewUrlRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var flowId: String?

    public override init() {
        super.init()
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
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("FlowId") {
            self.flowId = dict["FlowId"] as! String
        }
    }
}

public class GetFlowPreviewUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var flowId: String?

        public var previewUrl: String?

        public var previewUrlExpires: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            if self.previewUrl != nil {
                map["PreviewUrl"] = self.previewUrl!
            }
            if self.previewUrlExpires != nil {
                map["PreviewUrlExpires"] = self.previewUrlExpires!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FlowId") {
                self.flowId = dict["FlowId"] as! String
            }
            if dict.keys.contains("PreviewUrl") {
                self.previewUrl = dict["PreviewUrl"] as! String
            }
            if dict.keys.contains("PreviewUrlExpires") {
                self.previewUrlExpires = dict["PreviewUrlExpires"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: GetFlowPreviewUrlResponseBody.Data?

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
            var model = GetFlowPreviewUrlResponseBody.Data()
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

public class GetFlowPreviewUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFlowPreviewUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetFlowPreviewUrlResponseBody()
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
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("Locale") {
            self.locale = dict["Locale"] as! String
        }
        if dict.keys.contains("Method") {
            self.method = dict["Method"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
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
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetMigrationVerifyCodeResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMigrationVerifyCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPermissionByCodeRequest : Tea.TeaModel {
    public var code: String?

    public var custSpaceId: String?

    public var permissions: [String]?

    public override init() {
        super.init()
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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.permissions != nil {
            map["Permissions"] = self.permissions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("Permissions") {
            self.permissions = dict["Permissions"] as! [String]
        }
    }
}

public class GetPermissionByCodeShrinkRequest : Tea.TeaModel {
    public var code: String?

    public var custSpaceId: String?

    public var permissionsShrink: String?

    public override init() {
        super.init()
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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.permissionsShrink != nil {
            map["Permissions"] = self.permissionsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("Permissions") {
            self.permissionsShrink = dict["Permissions"] as! String
        }
    }
}

public class GetPermissionByCodeResponseBody : Tea.TeaModel {
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

public class GetPermissionByCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPermissionByCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPermissionByCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPhoneEncryptionPublicKeyRequest : Tea.TeaModel {
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
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
    }
}

public class GetPhoneEncryptionPublicKeyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var encryptionPublicKey: String?

        public var encryptionPublicKeyStatus: String?

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
            if self.encryptionPublicKey != nil {
                map["EncryptionPublicKey"] = self.encryptionPublicKey!
            }
            if self.encryptionPublicKeyStatus != nil {
                map["EncryptionPublicKeyStatus"] = self.encryptionPublicKeyStatus!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EncryptionPublicKey") {
                self.encryptionPublicKey = dict["EncryptionPublicKey"] as! String
            }
            if dict.keys.contains("EncryptionPublicKeyStatus") {
                self.encryptionPublicKeyStatus = dict["EncryptionPublicKeyStatus"] as! String
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetPhoneEncryptionPublicKeyResponseBody.Data?

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
            var model = GetPhoneEncryptionPublicKeyResponseBody.Data()
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

public class GetPhoneEncryptionPublicKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPhoneEncryptionPublicKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPhoneEncryptionPublicKeyResponseBody()
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
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
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
            if dict.keys.contains("CodeVerificationStatus") {
                self.codeVerificationStatus = dict["CodeVerificationStatus"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("PhoneNumber") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetPhoneNumberVerificationStatusResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPhoneNumberVerificationStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPreValidatePhoneIdRequest : Tea.TeaModel {
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
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("VerifyCode") {
            self.verifyCode = dict["VerifyCode"] as! String
        }
    }
}

public class GetPreValidatePhoneIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var phoneNumber: String?

        public var phoneNumberId: String?

        public override init() {
            super.init()
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
            if self.phoneNumberId != nil {
                map["PhoneNumberId"] = self.phoneNumberId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("PhoneNumberId") {
                self.phoneNumberId = dict["PhoneNumberId"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetPreValidatePhoneIdResponseBody.Data?

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
            var model = GetPreValidatePhoneIdResponseBody.Data()
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

public class GetPreValidatePhoneIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPreValidatePhoneIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPreValidatePhoneIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWhatsappConnectionCatalogRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("WabaId") {
            self.wabaId = dict["WabaId"] as! String
        }
    }
}

public class GetWhatsappConnectionCatalogResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: [String: Any]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! [String: Any]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetWhatsappConnectionCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWhatsappConnectionCatalogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWhatsappConnectionCatalogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWhatsappHealthStatusRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var language: String?

    public var nodeType: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateCode: String?

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
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.nodeType != nil {
            map["NodeType"] = self.nodeType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("NodeType") {
            self.nodeType = dict["NodeType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("WabaId") {
            self.wabaId = dict["WabaId"] as! String
        }
    }
}

public class GetWhatsappHealthStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Entities : Tea.TeaModel {
            public class Errors : Tea.TeaModel {
                public var errorCode: String?

                public var errorDescription: String?

                public var possibleSolution: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.errorCode != nil {
                        map["ErrorCode"] = self.errorCode!
                    }
                    if self.errorDescription != nil {
                        map["ErrorDescription"] = self.errorDescription!
                    }
                    if self.possibleSolution != nil {
                        map["PossibleSolution"] = self.possibleSolution!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ErrorCode") {
                        self.errorCode = dict["ErrorCode"] as! String
                    }
                    if dict.keys.contains("ErrorDescription") {
                        self.errorDescription = dict["ErrorDescription"] as! String
                    }
                    if dict.keys.contains("PossibleSolution") {
                        self.possibleSolution = dict["PossibleSolution"] as! String
                    }
                }
            }
            public var businessId: String?

            public var canSendMessage: String?

            public var entityType: String?

            public var errors: [GetWhatsappHealthStatusResponseBody.Data.Entities.Errors]?

            public var language: String?

            public var phoneNumber: String?

            public var templateCode: String?

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
                if self.businessId != nil {
                    map["BusinessId"] = self.businessId!
                }
                if self.canSendMessage != nil {
                    map["CanSendMessage"] = self.canSendMessage!
                }
                if self.entityType != nil {
                    map["EntityType"] = self.entityType!
                }
                if self.errors != nil {
                    var tmp : [Any] = []
                    for k in self.errors! {
                        tmp.append(k.toMap())
                    }
                    map["Errors"] = tmp
                }
                if self.language != nil {
                    map["Language"] = self.language!
                }
                if self.phoneNumber != nil {
                    map["PhoneNumber"] = self.phoneNumber!
                }
                if self.templateCode != nil {
                    map["TemplateCode"] = self.templateCode!
                }
                if self.wabaId != nil {
                    map["WabaId"] = self.wabaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BusinessId") {
                    self.businessId = dict["BusinessId"] as! String
                }
                if dict.keys.contains("CanSendMessage") {
                    self.canSendMessage = dict["CanSendMessage"] as! String
                }
                if dict.keys.contains("EntityType") {
                    self.entityType = dict["EntityType"] as! String
                }
                if dict.keys.contains("Errors") {
                    var tmp : [GetWhatsappHealthStatusResponseBody.Data.Entities.Errors] = []
                    for v in dict["Errors"] as! [Any] {
                        var model = GetWhatsappHealthStatusResponseBody.Data.Entities.Errors()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.errors = tmp
                }
                if dict.keys.contains("Language") {
                    self.language = dict["Language"] as! String
                }
                if dict.keys.contains("PhoneNumber") {
                    self.phoneNumber = dict["PhoneNumber"] as! String
                }
                if dict.keys.contains("TemplateCode") {
                    self.templateCode = dict["TemplateCode"] as! String
                }
                if dict.keys.contains("WabaId") {
                    self.wabaId = dict["WabaId"] as! String
                }
            }
        }
        public var canSendMessage: String?

        public var entities: [GetWhatsappHealthStatusResponseBody.Data.Entities]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canSendMessage != nil {
                map["CanSendMessage"] = self.canSendMessage!
            }
            if self.entities != nil {
                var tmp : [Any] = []
                for k in self.entities! {
                    tmp.append(k.toMap())
                }
                map["Entities"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CanSendMessage") {
                self.canSendMessage = dict["CanSendMessage"] as! String
            }
            if dict.keys.contains("Entities") {
                var tmp : [GetWhatsappHealthStatusResponseBody.Data.Entities] = []
                for v in dict["Entities"] as! [Any] {
                    var model = GetWhatsappHealthStatusResponseBody.Data.Entities()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.entities = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetWhatsappHealthStatusResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetWhatsappHealthStatusResponseBody.Data()
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

public class GetWhatsappHealthStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWhatsappHealthStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWhatsappHealthStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IsvGetAppIdRequest : Tea.TeaModel {
    public var permissions: String?

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
        if self.permissions != nil {
            map["Permissions"] = self.permissions!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Permissions") {
            self.permissions = dict["Permissions"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class IsvGetAppIdResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var appId: String?

    public var code: String?

    public var configId: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.configId != nil {
            map["ConfigId"] = self.configId!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ConfigId") {
            self.configId = dict["ConfigId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            if dict.keys.contains("Index") {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int32
            }
        }
    }
    public var auditStatus: String?

    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AuditStatus") {
            self.auditStatus = dict["AuditStatus"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
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
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class ListChatappTemplateShrinkRequest : Tea.TeaModel {
    public var auditStatus: String?

    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if dict.keys.contains("AuditStatus") {
            self.auditStatus = dict["AuditStatus"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
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
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class ListChatappTemplateResponseBody : Tea.TeaModel {
    public class ListTemplate : Tea.TeaModel {
        public var auditStatus: String?

        public var category: String?

        public var language: String?

        public var lastUpdateTime: Int64?

        public var reason: String?

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
            if self.lastUpdateTime != nil {
                map["LastUpdateTime"] = self.lastUpdateTime!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
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
            if dict.keys.contains("AuditStatus") {
                self.auditStatus = dict["AuditStatus"] as! String
            }
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("LastUpdateTime") {
                self.lastUpdateTime = dict["LastUpdateTime"] as! Int64
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("TemplateCode") {
                self.templateCode = dict["TemplateCode"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateType") {
                self.templateType = dict["TemplateType"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ListTemplate") {
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
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class ListFlowRequest : Tea.TeaModel {
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
    public var custSpaceId: String?

    public var flowName: String?

    public var page: ListFlowRequest.Page?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("Page") {
            var model = ListFlowRequest.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
    }
}

public class ListFlowShrinkRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var flowName: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.pageShrink != nil {
            map["Page"] = self.pageShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
        if dict.keys.contains("Page") {
            self.pageShrink = dict["Page"] as! String
        }
    }
}

public class ListFlowResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categories: [String]?

        public var flowId: String?

        public var flowName: String?

        public override init() {
            super.init()
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
                map["Categories"] = self.categories!
            }
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Categories") {
                self.categories = dict["Categories"] as! [String]
            }
            if dict.keys.contains("FlowId") {
                self.flowId = dict["FlowId"] as! String
            }
            if dict.keys.contains("FlowName") {
                self.flowName = dict["FlowName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListFlowResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [ListFlowResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListFlowResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPhoneMessageQrdlRequest : Tea.TeaModel {
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
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
    }
}

public class ListPhoneMessageQrdlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deepLinkUrl: String?

        public var generateQrImage: String?

        public var phoneNumber: String?

        public var prefilledMessage: String?

        public var qrImageUrl: String?

        public var qrdlCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deepLinkUrl != nil {
                map["DeepLinkUrl"] = self.deepLinkUrl!
            }
            if self.generateQrImage != nil {
                map["GenerateQrImage"] = self.generateQrImage!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.prefilledMessage != nil {
                map["PrefilledMessage"] = self.prefilledMessage!
            }
            if self.qrImageUrl != nil {
                map["QrImageUrl"] = self.qrImageUrl!
            }
            if self.qrdlCode != nil {
                map["QrdlCode"] = self.qrdlCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeepLinkUrl") {
                self.deepLinkUrl = dict["DeepLinkUrl"] as! String
            }
            if dict.keys.contains("GenerateQrImage") {
                self.generateQrImage = dict["GenerateQrImage"] as! String
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("PrefilledMessage") {
                self.prefilledMessage = dict["PrefilledMessage"] as! String
            }
            if dict.keys.contains("QrImageUrl") {
                self.qrImageUrl = dict["QrImageUrl"] as! String
            }
            if dict.keys.contains("QrdlCode") {
                self.qrdlCode = dict["QrdlCode"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListPhoneMessageQrdlResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            var tmp : [ListPhoneMessageQrdlResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListPhoneMessageQrdlResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPhoneMessageQrdlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPhoneMessageQrdlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPhoneMessageQrdlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductRequest : Tea.TeaModel {
    public var after: String?

    public var before: String?

    public var catalogId: String?

    public var custSpaceId: String?

    public var fields: String?

    public var limit: Int64?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.after != nil {
            map["After"] = self.after!
        }
        if self.before != nil {
            map["Before"] = self.before!
        }
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.fields != nil {
            map["Fields"] = self.fields!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("After") {
            self.after = dict["After"] as! String
        }
        if dict.keys.contains("Before") {
            self.before = dict["Before"] as! String
        }
        if dict.keys.contains("CatalogId") {
            self.catalogId = dict["CatalogId"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("Fields") {
            self.fields = dict["Fields"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("WabaId") {
            self.wabaId = dict["WabaId"] as! String
        }
    }
}

public class ListProductResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class Paging : Tea.TeaModel {
            public class Cursors : Tea.TeaModel {
                public var after: String?

                public var before: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.after != nil {
                        map["After"] = self.after!
                    }
                    if self.before != nil {
                        map["Before"] = self.before!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("After") {
                        self.after = dict["After"] as! String
                    }
                    if dict.keys.contains("Before") {
                        self.before = dict["Before"] as! String
                    }
                }
            }
            public var cursors: ListProductResponseBody.Model.Paging.Cursors?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cursors?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cursors != nil {
                    map["Cursors"] = self.cursors?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cursors") {
                    var model = ListProductResponseBody.Model.Paging.Cursors()
                    model.fromMap(dict["Cursors"] as! [String: Any])
                    self.cursors = model
                }
            }
        }
        public var data: [[String: Any]]?

        public var paging: ListProductResponseBody.Model.Paging?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.paging?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.paging != nil {
                map["Paging"] = self.paging?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! [[String: Any]]
            }
            if dict.keys.contains("Paging") {
                var model = ListProductResponseBody.Model.Paging()
                model.fromMap(dict["Paging"] as! [String: Any])
                self.paging = model
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: ListProductResponseBody.Model?

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
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = ListProductResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductCatalogRequest : Tea.TeaModel {
    public var after: String?

    public var before: String?

    public var businessId: Int64?

    public var custSpaceId: String?

    public var fields: String?

    public var limit: Int64?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.after != nil {
            map["After"] = self.after!
        }
        if self.before != nil {
            map["Before"] = self.before!
        }
        if self.businessId != nil {
            map["BusinessId"] = self.businessId!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.fields != nil {
            map["Fields"] = self.fields!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("After") {
            self.after = dict["After"] as! String
        }
        if dict.keys.contains("Before") {
            self.before = dict["Before"] as! String
        }
        if dict.keys.contains("BusinessId") {
            self.businessId = dict["BusinessId"] as! Int64
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("Fields") {
            self.fields = dict["Fields"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ListProductCatalogResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class Paging : Tea.TeaModel {
            public class Cursors : Tea.TeaModel {
                public var after: String?

                public var before: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.after != nil {
                        map["After"] = self.after!
                    }
                    if self.before != nil {
                        map["Before"] = self.before!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("After") {
                        self.after = dict["After"] as! String
                    }
                    if dict.keys.contains("Before") {
                        self.before = dict["Before"] as! String
                    }
                }
            }
            public var cursors: ListProductCatalogResponseBody.Model.Paging.Cursors?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cursors?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cursors != nil {
                    map["Cursors"] = self.cursors?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cursors") {
                    var model = ListProductCatalogResponseBody.Model.Paging.Cursors()
                    model.fromMap(dict["Cursors"] as! [String: Any])
                    self.cursors = model
                }
            }
        }
        public var data: [[String: Any]]?

        public var paging: ListProductCatalogResponseBody.Model.Paging?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.paging?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.paging != nil {
                map["Paging"] = self.paging?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! [[String: Any]]
            }
            if dict.keys.contains("Paging") {
                var model = ListProductCatalogResponseBody.Model.Paging()
                model.fromMap(dict["Paging"] as! [String: Any])
                self.paging = model
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: ListProductCatalogResponseBody.Model?

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
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = ListProductCatalogResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListProductCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductCatalogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListProductCatalogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyChatappTemplateRequest : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public class Buttons : Tea.TeaModel {
            public class SupportedApps : Tea.TeaModel {
                public var packageName: String?

                public var signatureHash: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.packageName != nil {
                        map["PackageName"] = self.packageName!
                    }
                    if self.signatureHash != nil {
                        map["SignatureHash"] = self.signatureHash!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PackageName") {
                        self.packageName = dict["PackageName"] as! String
                    }
                    if dict.keys.contains("SignatureHash") {
                        self.signatureHash = dict["SignatureHash"] as! String
                    }
                }
            }
            public var autofillText: String?

            public var couponCode: String?

            public var flowAction: String?

            public var flowId: String?

            public var isOptOut: Bool?

            public var navigateScreen: String?

            public var packageName: String?

            public var phoneNumber: String?

            public var signatureHash: String?

            public var supportedApps: [ModifyChatappTemplateRequest.Components.Buttons.SupportedApps]?

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
                if self.autofillText != nil {
                    map["AutofillText"] = self.autofillText!
                }
                if self.couponCode != nil {
                    map["CouponCode"] = self.couponCode!
                }
                if self.flowAction != nil {
                    map["FlowAction"] = self.flowAction!
                }
                if self.flowId != nil {
                    map["FlowId"] = self.flowId!
                }
                if self.isOptOut != nil {
                    map["IsOptOut"] = self.isOptOut!
                }
                if self.navigateScreen != nil {
                    map["NavigateScreen"] = self.navigateScreen!
                }
                if self.packageName != nil {
                    map["PackageName"] = self.packageName!
                }
                if self.phoneNumber != nil {
                    map["PhoneNumber"] = self.phoneNumber!
                }
                if self.signatureHash != nil {
                    map["SignatureHash"] = self.signatureHash!
                }
                if self.supportedApps != nil {
                    var tmp : [Any] = []
                    for k in self.supportedApps! {
                        tmp.append(k.toMap())
                    }
                    map["SupportedApps"] = tmp
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
                if dict.keys.contains("AutofillText") {
                    self.autofillText = dict["AutofillText"] as! String
                }
                if dict.keys.contains("CouponCode") {
                    self.couponCode = dict["CouponCode"] as! String
                }
                if dict.keys.contains("FlowAction") {
                    self.flowAction = dict["FlowAction"] as! String
                }
                if dict.keys.contains("FlowId") {
                    self.flowId = dict["FlowId"] as! String
                }
                if dict.keys.contains("IsOptOut") {
                    self.isOptOut = dict["IsOptOut"] as! Bool
                }
                if dict.keys.contains("NavigateScreen") {
                    self.navigateScreen = dict["NavigateScreen"] as! String
                }
                if dict.keys.contains("PackageName") {
                    self.packageName = dict["PackageName"] as! String
                }
                if dict.keys.contains("PhoneNumber") {
                    self.phoneNumber = dict["PhoneNumber"] as! String
                }
                if dict.keys.contains("SignatureHash") {
                    self.signatureHash = dict["SignatureHash"] as! String
                }
                if dict.keys.contains("SupportedApps") {
                    var tmp : [ModifyChatappTemplateRequest.Components.Buttons.SupportedApps] = []
                    for v in dict["SupportedApps"] as! [Any] {
                        var model = ModifyChatappTemplateRequest.Components.Buttons.SupportedApps()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.supportedApps = tmp
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
        public class Cards : Tea.TeaModel {
            public class CardComponents : Tea.TeaModel {
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
                public var buttons: [ModifyChatappTemplateRequest.Components.Cards.CardComponents.Buttons]?

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
                        var tmp : [ModifyChatappTemplateRequest.Components.Cards.CardComponents.Buttons] = []
                        for v in dict["Buttons"] as! [Any] {
                            var model = ModifyChatappTemplateRequest.Components.Cards.CardComponents.Buttons()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.buttons = tmp
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
            public var cardComponents: [ModifyChatappTemplateRequest.Components.Cards.CardComponents]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cardComponents != nil {
                    var tmp : [Any] = []
                    for k in self.cardComponents! {
                        tmp.append(k.toMap())
                    }
                    map["CardComponents"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CardComponents") {
                    var tmp : [ModifyChatappTemplateRequest.Components.Cards.CardComponents] = []
                    for v in dict["CardComponents"] as! [Any] {
                        var model = ModifyChatappTemplateRequest.Components.Cards.CardComponents()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.cardComponents = tmp
                }
            }
        }
        public var addSecretRecommendation: Bool?

        public var buttons: [ModifyChatappTemplateRequest.Components.Buttons]?

        public var caption: String?

        public var cards: [ModifyChatappTemplateRequest.Components.Cards]?

        public var codeExpirationMinutes: Int32?

        public var duration: Int32?

        public var fileName: String?

        public var fileType: String?

        public var format: String?

        public var hasExpiration: Bool?

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
            if self.addSecretRecommendation != nil {
                map["AddSecretRecommendation"] = self.addSecretRecommendation!
            }
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
            if self.cards != nil {
                var tmp : [Any] = []
                for k in self.cards! {
                    tmp.append(k.toMap())
                }
                map["Cards"] = tmp
            }
            if self.codeExpirationMinutes != nil {
                map["CodeExpirationMinutes"] = self.codeExpirationMinutes!
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
            if self.hasExpiration != nil {
                map["HasExpiration"] = self.hasExpiration!
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
            if dict.keys.contains("AddSecretRecommendation") {
                self.addSecretRecommendation = dict["AddSecretRecommendation"] as! Bool
            }
            if dict.keys.contains("Buttons") {
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
            if dict.keys.contains("Caption") {
                self.caption = dict["Caption"] as! String
            }
            if dict.keys.contains("Cards") {
                var tmp : [ModifyChatappTemplateRequest.Components.Cards] = []
                for v in dict["Cards"] as! [Any] {
                    var model = ModifyChatappTemplateRequest.Components.Cards()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.cards = tmp
            }
            if dict.keys.contains("CodeExpirationMinutes") {
                self.codeExpirationMinutes = dict["CodeExpirationMinutes"] as! Int32
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("FileType") {
                self.fileType = dict["FileType"] as! String
            }
            if dict.keys.contains("Format") {
                self.format = dict["Format"] as! String
            }
            if dict.keys.contains("HasExpiration") {
                self.hasExpiration = dict["HasExpiration"] as! Bool
            }
            if dict.keys.contains("Text") {
                self.text = dict["Text"] as! String
            }
            if dict.keys.contains("ThumbUrl") {
                self.thumbUrl = dict["ThumbUrl"] as! String
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

    public var components: [ModifyChatappTemplateRequest.Components]?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var example: [String: String]?

    public var isvCode: String?

    public var language: String?

    public var messageSendTtlSeconds: Int32?

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
        if self.messageSendTtlSeconds != nil {
            map["MessageSendTtlSeconds"] = self.messageSendTtlSeconds!
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
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Components") {
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
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
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
        if dict.keys.contains("MessageSendTtlSeconds") {
            self.messageSendTtlSeconds = dict["MessageSendTtlSeconds"] as! Int32
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateType") {
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

    public var messageSendTtlSeconds: Int32?

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
        if self.messageSendTtlSeconds != nil {
            map["MessageSendTtlSeconds"] = self.messageSendTtlSeconds!
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
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Components") {
            self.componentsShrink = dict["Components"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
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
        if dict.keys.contains("MessageSendTtlSeconds") {
            self.messageSendTtlSeconds = dict["MessageSendTtlSeconds"] as! Int32
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateType") {
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
            if dict.keys.contains("TemplateCode") {
                self.templateCode = dict["TemplateCode"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class ModifyFlowRequest : Tea.TeaModel {
    public var categories: [String]?

    public var custSpaceId: String?

    public var flowId: String?

    public var flowName: String?

    public override init() {
        super.init()
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
            map["Categories"] = self.categories!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Categories") {
            self.categories = dict["Categories"] as! [String]
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("FlowId") {
            self.flowId = dict["FlowId"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
    }
}

public class ModifyFlowShrinkRequest : Tea.TeaModel {
    public var categoriesShrink: String?

    public var custSpaceId: String?

    public var flowId: String?

    public var flowName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoriesShrink != nil {
            map["Categories"] = self.categoriesShrink!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Categories") {
            self.categoriesShrink = dict["Categories"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("FlowId") {
            self.flowId = dict["FlowId"] as! String
        }
        if dict.keys.contains("FlowName") {
            self.flowName = dict["FlowName"] as! String
        }
    }
}

public class ModifyFlowResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categories: [String]?

        public var flowId: String?

        public var flowName: String?

        public override init() {
            super.init()
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
                map["Categories"] = self.categories!
            }
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Categories") {
                self.categories = dict["Categories"] as! [String]
            }
            if dict.keys.contains("FlowId") {
                self.flowId = dict["FlowId"] as! String
            }
            if dict.keys.contains("FlowName") {
                self.flowName = dict["FlowName"] as! String
            }
        }
    }
    public var code: String?

    public var data: ModifyFlowResponseBody.Data?

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
            var model = ModifyFlowResponseBody.Data()
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

public class ModifyFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPhoneBusinessProfileRequest : Tea.TeaModel {
    public var about: String?

    public var address: String?

    public var custSpaceId: String?

    public var description_: String?

    public var email: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var profilePictureUrl: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.about != nil {
            map["About"] = self.about!
        }
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.profilePictureUrl != nil {
            map["ProfilePictureUrl"] = self.profilePictureUrl!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("About") {
            self.about = dict["About"] as! String
        }
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ProfilePictureUrl") {
            self.profilePictureUrl = dict["ProfilePictureUrl"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Vertical") {
            self.vertical = dict["Vertical"] as! String
        }
        if dict.keys.contains("Websites") {
            self.websites = dict["Websites"] as! [String]
        }
    }
}

public class ModifyPhoneBusinessProfileShrinkRequest : Tea.TeaModel {
    public var about: String?

    public var address: String?

    public var custSpaceId: String?

    public var description_: String?

    public var email: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var profilePictureUrl: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.about != nil {
            map["About"] = self.about!
        }
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.profilePictureUrl != nil {
            map["ProfilePictureUrl"] = self.profilePictureUrl!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("About") {
            self.about = dict["About"] as! String
        }
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ProfilePictureUrl") {
            self.profilePictureUrl = dict["ProfilePictureUrl"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Vertical") {
            self.vertical = dict["Vertical"] as! String
        }
        if dict.keys.contains("Websites") {
            self.websitesShrink = dict["Websites"] as! String
        }
    }
}

public class ModifyPhoneBusinessProfileResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyPhoneBusinessProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishFlowRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var flowId: String?

    public override init() {
        super.init()
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
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("FlowId") {
            self.flowId = dict["FlowId"] as! String
        }
    }
}

public class PublishFlowResponseBody : Tea.TeaModel {
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

public class PublishFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PublishFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryChatappBindWabaRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var isvCode: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryChatappBindWabaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountReviewStatus: String?

        public var authInternationalRateEligibility: [String: Any]?

        public var businessId: String?

        public var businessName: String?

        public var currency: String?

        public var id: String?

        public var messageTemplateNamespace: String?

        public var name: String?

        public var primaryBusinessLocation: String?

        public override init() {
            super.init()
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
            if self.authInternationalRateEligibility != nil {
                map["AuthInternationalRateEligibility"] = self.authInternationalRateEligibility!
            }
            if self.businessId != nil {
                map["BusinessId"] = self.businessId!
            }
            if self.businessName != nil {
                map["BusinessName"] = self.businessName!
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
            if self.primaryBusinessLocation != nil {
                map["PrimaryBusinessLocation"] = self.primaryBusinessLocation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountReviewStatus") {
                self.accountReviewStatus = dict["AccountReviewStatus"] as! String
            }
            if dict.keys.contains("AuthInternationalRateEligibility") {
                self.authInternationalRateEligibility = dict["AuthInternationalRateEligibility"] as! [String: Any]
            }
            if dict.keys.contains("BusinessId") {
                self.businessId = dict["BusinessId"] as! String
            }
            if dict.keys.contains("BusinessName") {
                self.businessName = dict["BusinessName"] as! String
            }
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("MessageTemplateNamespace") {
                self.messageTemplateNamespace = dict["MessageTemplateNamespace"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PrimaryBusinessLocation") {
                self.primaryBusinessLocation = dict["PrimaryBusinessLocation"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: QueryChatappBindWabaResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryChatappBindWabaResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryChatappBindWabaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryChatappPhoneNumbersRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var isvCode: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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
            if dict.keys.contains("CodeVerificationStatus") {
                self.codeVerificationStatus = dict["CodeVerificationStatus"] as! String
            }
            if dict.keys.contains("MessagingLimitTier") {
                self.messagingLimitTier = dict["MessagingLimitTier"] as! String
            }
            if dict.keys.contains("NameStatus") {
                self.nameStatus = dict["NameStatus"] as! String
            }
            if dict.keys.contains("NewNameStatus") {
                self.newNameStatus = dict["NewNameStatus"] as! String
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("QualityRating") {
                self.qualityRating = dict["QualityRating"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusCallbackUrl") {
                self.statusCallbackUrl = dict["StatusCallbackUrl"] as! String
            }
            if dict.keys.contains("StatusQueue") {
                self.statusQueue = dict["StatusQueue"] as! String
            }
            if dict.keys.contains("UpCallbackUrl") {
                self.upCallbackUrl = dict["UpCallbackUrl"] as! String
            }
            if dict.keys.contains("UpQueue") {
                self.upQueue = dict["UpQueue"] as! String
            }
            if dict.keys.contains("VerifiedName") {
                self.verifiedName = dict["VerifiedName"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PhoneNumbers") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryChatappPhoneNumbersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPhoneBusinessProfileRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryPhoneBusinessProfileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var about: String?

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
            if self.about != nil {
                map["About"] = self.about!
            }
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
            if dict.keys.contains("About") {
                self.about = dict["About"] as! String
            }
            if dict.keys.contains("Address") {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("ProfilePictureUrl") {
                self.profilePictureUrl = dict["ProfilePictureUrl"] as! String
            }
            if dict.keys.contains("Vertical") {
                self.vertical = dict["Vertical"] as! String
            }
            if dict.keys.contains("Websites") {
                self.websites = dict["Websites"] as! [String]
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: QueryPhoneBusinessProfileResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryPhoneBusinessProfileResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryPhoneBusinessProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryWabaBusinessInfoRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("WabaId") {
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
            if dict.keys.contains("BusinessId") {
                self.businessId = dict["BusinessId"] as! String
            }
            if dict.keys.contains("BusinessName") {
                self.businessName = dict["BusinessName"] as! String
            }
            if dict.keys.contains("VerificationStatus") {
                self.verificationStatus = dict["VerificationStatus"] as! String
            }
            if dict.keys.contains("Vertical") {
                self.vertical = dict["Vertical"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: QueryWabaBusinessInfoResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryWabaBusinessInfoResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryWabaBusinessInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendChatappMassMessageRequest : Tea.TeaModel {
    public class SenderList : Tea.TeaModel {
        public class FlowAction : Tea.TeaModel {
            public var flowActionData: [String: String]?

            public var flowToken: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.flowActionData != nil {
                    map["FlowActionData"] = self.flowActionData!
                }
                if self.flowToken != nil {
                    map["FlowToken"] = self.flowToken!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FlowActionData") {
                    self.flowActionData = dict["FlowActionData"] as! [String: String]
                }
                if dict.keys.contains("FlowToken") {
                    self.flowToken = dict["FlowToken"] as! String
                }
            }
        }
        public class ProductAction : Tea.TeaModel {
            public class Sections : Tea.TeaModel {
                public class ProductItems : Tea.TeaModel {
                    public var productRetailerId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.productRetailerId != nil {
                            map["ProductRetailerId"] = self.productRetailerId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ProductRetailerId") {
                            self.productRetailerId = dict["ProductRetailerId"] as! String
                        }
                    }
                }
                public var productItems: [SendChatappMassMessageRequest.SenderList.ProductAction.Sections.ProductItems]?

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
                    if self.productItems != nil {
                        var tmp : [Any] = []
                        for k in self.productItems! {
                            tmp.append(k.toMap())
                        }
                        map["ProductItems"] = tmp
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ProductItems") {
                        var tmp : [SendChatappMassMessageRequest.SenderList.ProductAction.Sections.ProductItems] = []
                        for v in dict["ProductItems"] as! [Any] {
                            var model = SendChatappMassMessageRequest.SenderList.ProductAction.Sections.ProductItems()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.productItems = tmp
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                }
            }
            public var sections: [SendChatappMassMessageRequest.SenderList.ProductAction.Sections]?

            public var thumbnailProductRetailerId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.sections != nil {
                    var tmp : [Any] = []
                    for k in self.sections! {
                        tmp.append(k.toMap())
                    }
                    map["Sections"] = tmp
                }
                if self.thumbnailProductRetailerId != nil {
                    map["ThumbnailProductRetailerId"] = self.thumbnailProductRetailerId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Sections") {
                    var tmp : [SendChatappMassMessageRequest.SenderList.ProductAction.Sections] = []
                    for v in dict["Sections"] as! [Any] {
                        var model = SendChatappMassMessageRequest.SenderList.ProductAction.Sections()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.sections = tmp
                }
                if dict.keys.contains("ThumbnailProductRetailerId") {
                    self.thumbnailProductRetailerId = dict["ThumbnailProductRetailerId"] as! String
                }
            }
        }
        public var flowAction: SendChatappMassMessageRequest.SenderList.FlowAction?

        public var payload: [String]?

        public var productAction: SendChatappMassMessageRequest.SenderList.ProductAction?

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
            try self.flowAction?.validate()
            try self.productAction?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flowAction != nil {
                map["FlowAction"] = self.flowAction?.toMap()
            }
            if self.payload != nil {
                map["Payload"] = self.payload!
            }
            if self.productAction != nil {
                map["ProductAction"] = self.productAction?.toMap()
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
            if dict.keys.contains("FlowAction") {
                var model = SendChatappMassMessageRequest.SenderList.FlowAction()
                model.fromMap(dict["FlowAction"] as! [String: Any])
                self.flowAction = model
            }
            if dict.keys.contains("Payload") {
                self.payload = dict["Payload"] as! [String]
            }
            if dict.keys.contains("ProductAction") {
                var model = SendChatappMassMessageRequest.SenderList.ProductAction()
                model.fromMap(dict["ProductAction"] as! [String: Any])
                self.productAction = model
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

    public var custSpaceId: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackDuration: Int32?

    public var fallBackId: String?

    public var fallBackRule: String?

    public var from: String?

    public var isvCode: String?

    public var label: String?

    public var language: String?

    public var senderList: [SendChatappMassMessageRequest.SenderList]?

    public var tag: String?

    public var taskId: String?

    public var templateCode: String?

    public var templateName: String?

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
        if self.fallBackRule != nil {
            map["FallBackRule"] = self.fallBackRule!
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
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackDuration") {
            self.fallBackDuration = dict["FallBackDuration"] as! Int32
        }
        if dict.keys.contains("FallBackId") {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("FallBackRule") {
            self.fallBackRule = dict["FallBackRule"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("SenderList") {
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
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("Ttl") {
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

    public var fallBackRule: String?

    public var from: String?

    public var isvCode: String?

    public var label: String?

    public var language: String?

    public var senderListShrink: String?

    public var tag: String?

    public var taskId: String?

    public var templateCode: String?

    public var templateName: String?

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
        if self.fallBackRule != nil {
            map["FallBackRule"] = self.fallBackRule!
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
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackDuration") {
            self.fallBackDuration = dict["FallBackDuration"] as! Int32
        }
        if dict.keys.contains("FallBackId") {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("FallBackRule") {
            self.fallBackRule = dict["FallBackRule"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("SenderList") {
            self.senderListShrink = dict["SenderList"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("Ttl") {
            self.ttl = dict["Ttl"] as! Int64
        }
    }
}

public class SendChatappMassMessageResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
    public class FlowAction : Tea.TeaModel {
        public var flowActionData: [String: String]?

        public var flowToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flowActionData != nil {
                map["FlowActionData"] = self.flowActionData!
            }
            if self.flowToken != nil {
                map["FlowToken"] = self.flowToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FlowActionData") {
                self.flowActionData = dict["FlowActionData"] as! [String: String]
            }
            if dict.keys.contains("FlowToken") {
                self.flowToken = dict["FlowToken"] as! String
            }
        }
    }
    public class ProductAction : Tea.TeaModel {
        public class Sections : Tea.TeaModel {
            public class ProductItems : Tea.TeaModel {
                public var productRetailerId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.productRetailerId != nil {
                        map["ProductRetailerId"] = self.productRetailerId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ProductRetailerId") {
                        self.productRetailerId = dict["ProductRetailerId"] as! String
                    }
                }
            }
            public var productItems: [SendChatappMessageRequest.ProductAction.Sections.ProductItems]?

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
                if self.productItems != nil {
                    var tmp : [Any] = []
                    for k in self.productItems! {
                        tmp.append(k.toMap())
                    }
                    map["ProductItems"] = tmp
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ProductItems") {
                    var tmp : [SendChatappMessageRequest.ProductAction.Sections.ProductItems] = []
                    for v in dict["ProductItems"] as! [Any] {
                        var model = SendChatappMessageRequest.ProductAction.Sections.ProductItems()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.productItems = tmp
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public var sections: [SendChatappMessageRequest.ProductAction.Sections]?

        public var thumbnailProductRetailerId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sections != nil {
                var tmp : [Any] = []
                for k in self.sections! {
                    tmp.append(k.toMap())
                }
                map["Sections"] = tmp
            }
            if self.thumbnailProductRetailerId != nil {
                map["ThumbnailProductRetailerId"] = self.thumbnailProductRetailerId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Sections") {
                var tmp : [SendChatappMessageRequest.ProductAction.Sections] = []
                for v in dict["Sections"] as! [Any] {
                    var model = SendChatappMessageRequest.ProductAction.Sections()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sections = tmp
            }
            if dict.keys.contains("ThumbnailProductRetailerId") {
                self.thumbnailProductRetailerId = dict["ThumbnailProductRetailerId"] as! String
            }
        }
    }
    public var channelType: String?

    public var content: String?

    public var contextMessageId: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackDuration: Int32?

    public var fallBackId: String?

    public var fallBackRule: String?

    public var flowAction: SendChatappMessageRequest.FlowAction?

    public var from: String?

    public var isvCode: String?

    public var label: String?

    public var language: String?

    public var messageType: String?

    public var payload: [String]?

    public var productAction: SendChatappMessageRequest.ProductAction?

    public var tag: String?

    public var taskId: String?

    public var templateCode: String?

    public var templateName: String?

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
        try self.flowAction?.validate()
        try self.productAction?.validate()
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
        if self.fallBackRule != nil {
            map["FallBackRule"] = self.fallBackRule!
        }
        if self.flowAction != nil {
            map["FlowAction"] = self.flowAction?.toMap()
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
        if self.productAction != nil {
            map["ProductAction"] = self.productAction?.toMap()
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
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
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
        if dict.keys.contains("ChannelType") {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContextMessageId") {
            self.contextMessageId = dict["ContextMessageId"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackDuration") {
            self.fallBackDuration = dict["FallBackDuration"] as! Int32
        }
        if dict.keys.contains("FallBackId") {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("FallBackRule") {
            self.fallBackRule = dict["FallBackRule"] as! String
        }
        if dict.keys.contains("FlowAction") {
            var model = SendChatappMessageRequest.FlowAction()
            model.fromMap(dict["FlowAction"] as! [String: Any])
            self.flowAction = model
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
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
        if dict.keys.contains("ProductAction") {
            var model = SendChatappMessageRequest.ProductAction()
            model.fromMap(dict["ProductAction"] as! [String: Any])
            self.productAction = model
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateParams") {
            self.templateParams = dict["TemplateParams"] as! [String: String]
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
        }
        if dict.keys.contains("TrackingData") {
            self.trackingData = dict["TrackingData"] as! String
        }
        if dict.keys.contains("Ttl") {
            self.ttl = dict["Ttl"] as! Int32
        }
        if dict.keys.contains("Type") {
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

    public var fallBackRule: String?

    public var flowActionShrink: String?

    public var from: String?

    public var isvCode: String?

    public var label: String?

    public var language: String?

    public var messageType: String?

    public var payloadShrink: String?

    public var productActionShrink: String?

    public var tag: String?

    public var taskId: String?

    public var templateCode: String?

    public var templateName: String?

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
        if self.fallBackRule != nil {
            map["FallBackRule"] = self.fallBackRule!
        }
        if self.flowActionShrink != nil {
            map["FlowAction"] = self.flowActionShrink!
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
        if self.productActionShrink != nil {
            map["ProductAction"] = self.productActionShrink!
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
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
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
        if dict.keys.contains("ChannelType") {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContextMessageId") {
            self.contextMessageId = dict["ContextMessageId"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackDuration") {
            self.fallBackDuration = dict["FallBackDuration"] as! Int32
        }
        if dict.keys.contains("FallBackId") {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("FallBackRule") {
            self.fallBackRule = dict["FallBackRule"] as! String
        }
        if dict.keys.contains("FlowAction") {
            self.flowActionShrink = dict["FlowAction"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
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
        if dict.keys.contains("ProductAction") {
            self.productActionShrink = dict["ProductAction"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateParams") {
            self.templateParamsShrink = dict["TemplateParams"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
        }
        if dict.keys.contains("TrackingData") {
            self.trackingData = dict["TrackingData"] as! String
        }
        if dict.keys.contains("Ttl") {
            self.ttl = dict["Ttl"] as! Int32
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("BusinessDesc") {
            self.businessDesc = dict["BusinessDesc"] as! String
        }
        if dict.keys.contains("ContactMail") {
            self.contactMail = dict["ContactMail"] as! String
        }
        if dict.keys.contains("CountryId") {
            self.countryId = dict["CountryId"] as! String
        }
        if dict.keys.contains("CustName") {
            self.custName = dict["CustName"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("IsvTerms") {
            self.isvTerms = dict["IsvTerms"] as! String
        }
        if dict.keys.contains("OfficeAddress") {
            self.officeAddress = dict["OfficeAddress"] as! String
        }
    }
}

public class SubmitIsvCustomerTermsResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitIsvCustomerTermsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TriggerChatFlowRequest : Tea.TeaModel {
    public var claimTimeMillis: Int64?

    public var data: [String: Any]?

    public var discardTimeMillis: Int64?

    public var flowCode: String?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.claimTimeMillis != nil {
            map["ClaimTimeMillis"] = self.claimTimeMillis!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.discardTimeMillis != nil {
            map["DiscardTimeMillis"] = self.discardTimeMillis!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClaimTimeMillis") {
            self.claimTimeMillis = dict["ClaimTimeMillis"] as! Int64
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("DiscardTimeMillis") {
            self.discardTimeMillis = dict["DiscardTimeMillis"] as! Int64
        }
        if dict.keys.contains("FlowCode") {
            self.flowCode = dict["FlowCode"] as! String
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class TriggerChatFlowShrinkRequest : Tea.TeaModel {
    public var claimTimeMillis: Int64?

    public var dataShrink: String?

    public var discardTimeMillis: Int64?

    public var flowCode: String?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.claimTimeMillis != nil {
            map["ClaimTimeMillis"] = self.claimTimeMillis!
        }
        if self.dataShrink != nil {
            map["Data"] = self.dataShrink!
        }
        if self.discardTimeMillis != nil {
            map["DiscardTimeMillis"] = self.discardTimeMillis!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClaimTimeMillis") {
            self.claimTimeMillis = dict["ClaimTimeMillis"] as! Int64
        }
        if dict.keys.contains("Data") {
            self.dataShrink = dict["Data"] as! String
        }
        if dict.keys.contains("DiscardTimeMillis") {
            self.discardTimeMillis = dict["DiscardTimeMillis"] as! Int64
        }
        if dict.keys.contains("FlowCode") {
            self.flowCode = dict["FlowCode"] as! String
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class TriggerChatFlowResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [String: Any]
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

public class TriggerChatFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TriggerChatFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TriggerChatFlowResponseBody()
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
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("HttpFlag") {
            self.httpFlag = dict["HttpFlag"] as! String
        }
        if dict.keys.contains("QueueFlag") {
            self.queueFlag = dict["QueueFlag"] as! String
        }
        if dict.keys.contains("StatusCallbackUrl") {
            self.statusCallbackUrl = dict["StatusCallbackUrl"] as! String
        }
    }
}

public class UpdateAccountWebhookResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateAccountWebhookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCommerceSettingRequest : Tea.TeaModel {
    public var cartEnable: Bool?

    public var catalogVisible: Bool?

    public var custSpaceId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cartEnable != nil {
            map["CartEnable"] = self.cartEnable!
        }
        if self.catalogVisible != nil {
            map["CatalogVisible"] = self.catalogVisible!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CartEnable") {
            self.cartEnable = dict["CartEnable"] as! Bool
        }
        if dict.keys.contains("CatalogVisible") {
            self.catalogVisible = dict["CatalogVisible"] as! Bool
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UpdateCommerceSettingResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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

public class UpdateCommerceSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCommerceSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateCommerceSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateConversationalAutomationRequest : Tea.TeaModel {
    public class Commands : Tea.TeaModel {
        public var commandDescription: String?

        public var commandName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commandDescription != nil {
                map["CommandDescription"] = self.commandDescription!
            }
            if self.commandName != nil {
                map["CommandName"] = self.commandName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommandDescription") {
                self.commandDescription = dict["CommandDescription"] as! String
            }
            if dict.keys.contains("CommandName") {
                self.commandName = dict["CommandName"] as! String
            }
        }
    }
    public var commands: [UpdateConversationalAutomationRequest.Commands]?

    public var custSpaceId: String?

    public var enableWelcomeMessage: Bool?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var prompts: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commands != nil {
            var tmp : [Any] = []
            for k in self.commands! {
                tmp.append(k.toMap())
            }
            map["Commands"] = tmp
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.enableWelcomeMessage != nil {
            map["EnableWelcomeMessage"] = self.enableWelcomeMessage!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.prompts != nil {
            map["Prompts"] = self.prompts!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Commands") {
            var tmp : [UpdateConversationalAutomationRequest.Commands] = []
            for v in dict["Commands"] as! [Any] {
                var model = UpdateConversationalAutomationRequest.Commands()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.commands = tmp
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("EnableWelcomeMessage") {
            self.enableWelcomeMessage = dict["EnableWelcomeMessage"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("Prompts") {
            self.prompts = dict["Prompts"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UpdateConversationalAutomationShrinkRequest : Tea.TeaModel {
    public var commandsShrink: String?

    public var custSpaceId: String?

    public var enableWelcomeMessage: Bool?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var promptsShrink: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commandsShrink != nil {
            map["Commands"] = self.commandsShrink!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.enableWelcomeMessage != nil {
            map["EnableWelcomeMessage"] = self.enableWelcomeMessage!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.promptsShrink != nil {
            map["Prompts"] = self.promptsShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Commands") {
            self.commandsShrink = dict["Commands"] as! String
        }
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("EnableWelcomeMessage") {
            self.enableWelcomeMessage = dict["EnableWelcomeMessage"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("Prompts") {
            self.promptsShrink = dict["Prompts"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UpdateConversationalAutomationResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
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

public class UpdateConversationalAutomationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConversationalAutomationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateConversationalAutomationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFlowJSONAssetRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var filePath: String?

    public var flowId: String?

    public override init() {
        super.init()
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
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("FilePath") {
            self.filePath = dict["FilePath"] as! String
        }
        if dict.keys.contains("FlowId") {
            self.flowId = dict["FlowId"] as! String
        }
    }
}

public class UpdateFlowJSONAssetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var flowId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FlowId") {
                self.flowId = dict["FlowId"] as! String
            }
        }
    }
    public var code: String?

    public var data: UpdateFlowJSONAssetResponseBody.Data?

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
            var model = UpdateFlowJSONAssetResponseBody.Data()
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

public class UpdateFlowJSONAssetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFlowJSONAssetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateFlowJSONAssetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePhoneEncryptionPublicKeyRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var encryptionPublicKey: String?

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
        if self.encryptionPublicKey != nil {
            map["EncryptionPublicKey"] = self.encryptionPublicKey!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("EncryptionPublicKey") {
            self.encryptionPublicKey = dict["EncryptionPublicKey"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
    }
}

public class UpdatePhoneEncryptionPublicKeyResponseBody : Tea.TeaModel {
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

public class UpdatePhoneEncryptionPublicKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePhoneEncryptionPublicKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePhoneEncryptionPublicKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePhoneMessageQrdlRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var generateQrImage: String?

    public var phoneNumber: String?

    public var prefilledMessage: String?

    public var qrdlCode: String?

    public override init() {
        super.init()
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
        if self.generateQrImage != nil {
            map["GenerateQrImage"] = self.generateQrImage!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.prefilledMessage != nil {
            map["PrefilledMessage"] = self.prefilledMessage!
        }
        if self.qrdlCode != nil {
            map["QrdlCode"] = self.qrdlCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("GenerateQrImage") {
            self.generateQrImage = dict["GenerateQrImage"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("PrefilledMessage") {
            self.prefilledMessage = dict["PrefilledMessage"] as! String
        }
        if dict.keys.contains("QrdlCode") {
            self.qrdlCode = dict["QrdlCode"] as! String
        }
    }
}

public class UpdatePhoneMessageQrdlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deepLinkUrl: String?

        public var generateQrImage: String?

        public var phoneNumber: String?

        public var prefilledMessage: String?

        public var qrImageUrl: String?

        public var qrdlCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deepLinkUrl != nil {
                map["DeepLinkUrl"] = self.deepLinkUrl!
            }
            if self.generateQrImage != nil {
                map["GenerateQrImage"] = self.generateQrImage!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.prefilledMessage != nil {
                map["PrefilledMessage"] = self.prefilledMessage!
            }
            if self.qrImageUrl != nil {
                map["QrImageUrl"] = self.qrImageUrl!
            }
            if self.qrdlCode != nil {
                map["QrdlCode"] = self.qrdlCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeepLinkUrl") {
                self.deepLinkUrl = dict["DeepLinkUrl"] as! String
            }
            if dict.keys.contains("GenerateQrImage") {
                self.generateQrImage = dict["GenerateQrImage"] as! String
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("PrefilledMessage") {
                self.prefilledMessage = dict["PrefilledMessage"] as! String
            }
            if dict.keys.contains("QrImageUrl") {
                self.qrImageUrl = dict["QrImageUrl"] as! String
            }
            if dict.keys.contains("QrdlCode") {
                self.qrdlCode = dict["QrdlCode"] as! String
            }
        }
    }
    public var code: String?

    public var data: UpdatePhoneMessageQrdlResponseBody.Data?

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
            var model = UpdatePhoneMessageQrdlResponseBody.Data()
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

public class UpdatePhoneMessageQrdlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePhoneMessageQrdlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePhoneMessageQrdlResponseBody()
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
        if dict.keys.contains("CustSpaceId") {
            self.custSpaceId = dict["CustSpaceId"] as! String
        }
        if dict.keys.contains("HttpFlag") {
            self.httpFlag = dict["HttpFlag"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("QueueFlag") {
            self.queueFlag = dict["QueueFlag"] as! String
        }
        if dict.keys.contains("StatusCallbackUrl") {
            self.statusCallbackUrl = dict["StatusCallbackUrl"] as! String
        }
        if dict.keys.contains("UpCallbackUrl") {
            self.upCallbackUrl = dict["UpCallbackUrl"] as! String
        }
    }
}

public class UpdatePhoneWebhookResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
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
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePhoneWebhookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
