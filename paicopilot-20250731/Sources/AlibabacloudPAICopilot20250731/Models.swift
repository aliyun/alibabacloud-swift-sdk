import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Chat : Tea.TeaModel {
    public var answer: ChatDetail?

    public var chatId: String?

    public var extraData: String?

    public var gmtCreateTime: String?

    public var gmtModified: String?

    public var message: String?

    public var ownerId: String?

    public var question: ChatDetail?

    public var sessionId: String?

    public var status: String?

    public var title: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.answer?.validate()
        try self.question?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.answer != nil {
            map["Answer"] = self.answer?.toMap()
        }
        if self.chatId != nil {
            map["ChatId"] = self.chatId!
        }
        if self.extraData != nil {
            map["ExtraData"] = self.extraData!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.question != nil {
            map["Question"] = self.question?.toMap()
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Answer"] as? [String: Any?] {
            var model = ChatDetail()
            model.fromMap(value)
            self.answer = model
        }
        if let value = dict["ChatId"] as? String {
            self.chatId = value
        }
        if let value = dict["ExtraData"] as? String {
            self.extraData = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["Question"] as? [String: Any?] {
            var model = ChatDetail()
            model.fromMap(value)
            self.question = model
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ChatDetail : Tea.TeaModel {
    public class UserInfo : Tea.TeaModel {
        public var name: String?

        public var role: String?

        public override init() {
            super.init()
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
            if self.role != nil {
                map["Role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Role"] as? String {
                self.role = value
            }
        }
    }
    public var content: String?

    public var gmtCreateTime: String?

    public var userInfo: ChatDetail.UserInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.userInfo != nil {
            map["UserInfo"] = self.userInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["UserInfo"] as? [String: Any?] {
            var model = ChatDetail.UserInfo()
            model.fromMap(value)
            self.userInfo = model
        }
    }
}

public class Feedback : Tea.TeaModel {
    public var chatId: String?

    public var feedbackAction: String?

    public var feedbackId: String?

    public var feedbackMessage: String?

    public var gmtCreateTime: String?

    public var gmtModified: String?

    public var ownerId: String?

    public var sessionId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chatId != nil {
            map["ChatId"] = self.chatId!
        }
        if self.feedbackAction != nil {
            map["FeedbackAction"] = self.feedbackAction!
        }
        if self.feedbackId != nil {
            map["FeedbackId"] = self.feedbackId!
        }
        if self.feedbackMessage != nil {
            map["FeedbackMessage"] = self.feedbackMessage!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChatId"] as? String {
            self.chatId = value
        }
        if let value = dict["FeedbackAction"] as? String {
            self.feedbackAction = value
        }
        if let value = dict["FeedbackId"] as? String {
            self.feedbackId = value
        }
        if let value = dict["FeedbackMessage"] as? String {
            self.feedbackMessage = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class Label : Tea.TeaModel {
    public var key: String?

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
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class Session : Tea.TeaModel {
    public var gmtCreateTime: String?

    public var gmtModified: String?

    public var ownerId: String?

    public var sessionId: String?

    public var sessionTitle: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.sessionTitle != nil {
            map["SessionTitle"] = self.sessionTitle!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SessionTitle"] as? String {
            self.sessionTitle = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class SearchInfoRequest : Tea.TeaModel {
    public class KnowledgeBaseFilters : Tea.TeaModel {
        public var collectionName: String?

        public var query: String?

        public var resultLimit: Int32?

        public var scoreThreshold: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.collectionName != nil {
                map["CollectionName"] = self.collectionName!
            }
            if self.query != nil {
                map["Query"] = self.query!
            }
            if self.resultLimit != nil {
                map["ResultLimit"] = self.resultLimit!
            }
            if self.scoreThreshold != nil {
                map["ScoreThreshold"] = self.scoreThreshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CollectionName"] as? String {
                self.collectionName = value
            }
            if let value = dict["Query"] as? String {
                self.query = value
            }
            if let value = dict["ResultLimit"] as? Int32 {
                self.resultLimit = value
            }
            if let value = dict["ScoreThreshold"] as? Double {
                self.scoreThreshold = value
            }
        }
    }
    public class WebFilters : Tea.TeaModel {
        public var category: String?

        public var includeSites: [String]?

        public var query: String?

        public var resultLimit: Int32?

        public var scoreThreshold: Double?

        public override init() {
            super.init()
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
            if self.includeSites != nil {
                map["IncludeSites"] = self.includeSites!
            }
            if self.query != nil {
                map["Query"] = self.query!
            }
            if self.resultLimit != nil {
                map["ResultLimit"] = self.resultLimit!
            }
            if self.scoreThreshold != nil {
                map["ScoreThreshold"] = self.scoreThreshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["IncludeSites"] as? [String] {
                self.includeSites = value
            }
            if let value = dict["Query"] as? String {
                self.query = value
            }
            if let value = dict["ResultLimit"] as? Int32 {
                self.resultLimit = value
            }
            if let value = dict["ScoreThreshold"] as? Double {
                self.scoreThreshold = value
            }
        }
    }
    public var knowledgeBaseFilters: [SearchInfoRequest.KnowledgeBaseFilters]?

    public var webFilters: [SearchInfoRequest.WebFilters]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.knowledgeBaseFilters != nil {
            var tmp : [Any] = []
            for k in self.knowledgeBaseFilters! {
                tmp.append(k.toMap())
            }
            map["KnowledgeBaseFilters"] = tmp
        }
        if self.webFilters != nil {
            var tmp : [Any] = []
            for k in self.webFilters! {
                tmp.append(k.toMap())
            }
            map["WebFilters"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KnowledgeBaseFilters"] as? [Any?] {
            var tmp : [SearchInfoRequest.KnowledgeBaseFilters] = []
            for v in value {
                if v != nil {
                    var model = SearchInfoRequest.KnowledgeBaseFilters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.knowledgeBaseFilters = tmp
        }
        if let value = dict["WebFilters"] as? [Any?] {
            var tmp : [SearchInfoRequest.WebFilters] = []
            for v in value {
                if v != nil {
                    var model = SearchInfoRequest.WebFilters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.webFilters = tmp
        }
    }
}

public class SearchInfoResponseBody : Tea.TeaModel {
    public class KnowledgeBaseSearchResults : Tea.TeaModel {
        public var index: String?

        public var resultContent: String?

        public var score: Double?

        public override init() {
            super.init()
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
            if self.resultContent != nil {
                map["ResultContent"] = self.resultContent!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Index"] as? String {
                self.index = value
            }
            if let value = dict["ResultContent"] as? String {
                self.resultContent = value
            }
            if let value = dict["Score"] as? Double {
                self.score = value
            }
        }
    }
    public class WebSearchResults : Tea.TeaModel {
        public var index: String?

        public var resultContent: String?

        public var score: Double?

        public var sourceLink: String?

        public override init() {
            super.init()
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
            if self.resultContent != nil {
                map["ResultContent"] = self.resultContent!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.sourceLink != nil {
                map["SourceLink"] = self.sourceLink!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Index"] as? String {
                self.index = value
            }
            if let value = dict["ResultContent"] as? String {
                self.resultContent = value
            }
            if let value = dict["Score"] as? Double {
                self.score = value
            }
            if let value = dict["SourceLink"] as? String {
                self.sourceLink = value
            }
        }
    }
    public var knowledgeBaseSearchResults: [SearchInfoResponseBody.KnowledgeBaseSearchResults]?

    public var requestId: String?

    public var webSearchResults: [SearchInfoResponseBody.WebSearchResults]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.knowledgeBaseSearchResults != nil {
            var tmp : [Any] = []
            for k in self.knowledgeBaseSearchResults! {
                tmp.append(k.toMap())
            }
            map["KnowledgeBaseSearchResults"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.webSearchResults != nil {
            var tmp : [Any] = []
            for k in self.webSearchResults! {
                tmp.append(k.toMap())
            }
            map["WebSearchResults"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KnowledgeBaseSearchResults"] as? [Any?] {
            var tmp : [SearchInfoResponseBody.KnowledgeBaseSearchResults] = []
            for v in value {
                if v != nil {
                    var model = SearchInfoResponseBody.KnowledgeBaseSearchResults()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.knowledgeBaseSearchResults = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WebSearchResults"] as? [Any?] {
            var tmp : [SearchInfoResponseBody.WebSearchResults] = []
            for v in value {
                if v != nil {
                    var model = SearchInfoResponseBody.WebSearchResults()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.webSearchResults = tmp
        }
    }
}

public class SearchInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
