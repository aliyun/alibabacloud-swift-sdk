import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CheckHealthRequest : Tea.TeaModel {
    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CheckHealthResponseBody : Tea.TeaModel {
    public var authSource: String?

    public var callerType: String?

    public var code: String?

    public var digitalEmployeeName: String?

    public var message: String?

    public var requestId: String?

    public var tenantId: Int64?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authSource != nil {
            map["authSource"] = self.authSource!
        }
        if self.callerType != nil {
            map["callerType"] = self.callerType!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.digitalEmployeeName != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeName!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authSource"] as? String {
            self.authSource = value
        }
        if let value = dict["callerType"] as? String {
            self.callerType = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["digitalEmployeeName"] as? String {
            self.digitalEmployeeName = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["tenantId"] as? Int64 {
            self.tenantId = value
        }
        if let value = dict["userId"] as? Int64 {
            self.userId = value
        }
    }
}

public class CheckHealthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckHealthResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckHealthResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateConversationRequest : Tea.TeaModel {
    public var metadata: String?

    public var objectId: String?

    public var operatingObjectName: [Any]?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metadata != nil {
            map["metadata"] = self.metadata!
        }
        if self.objectId != nil {
            map["objectId"] = self.objectId!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["metadata"] as? String {
            self.metadata = value
        }
        if let value = dict["objectId"] as? String {
            self.objectId = value
        }
        if let value = dict["operatingObjectName"] as? [Any] {
            self.operatingObjectName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreateConversationShrinkRequest : Tea.TeaModel {
    public var metadata: String?

    public var objectId: String?

    public var operatingObjectNameShrink: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metadata != nil {
            map["metadata"] = self.metadata!
        }
        if self.objectId != nil {
            map["objectId"] = self.objectId!
        }
        if self.operatingObjectNameShrink != nil {
            map["operatingObjectName"] = self.operatingObjectNameShrink!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["metadata"] as? String {
            self.metadata = value
        }
        if let value = dict["objectId"] as? String {
            self.objectId = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectNameShrink = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreateConversationResponseBody : Tea.TeaModel {
    public var code: String?

    public var conversationId: String?

    public var createdAt: String?

    public var message: String?

    public var metadata: [String: Any]?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.conversationId != nil {
            map["conversationId"] = self.conversationId!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.metadata != nil {
            map["metadata"] = self.metadata!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["conversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["metadata"] as? [String: Any] {
            self.metadata = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class CreateConversationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConversationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateConversationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCustomOrgRequest : Tea.TeaModel {
    public var corpId: String?

    public var corpName: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.corpId != nil {
            map["corpId"] = self.corpId!
        }
        if self.corpName != nil {
            map["corpName"] = self.corpName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["corpId"] as? String {
            self.corpId = value
        }
        if let value = dict["corpName"] as? String {
            self.corpName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreateCustomOrgResponseBody : Tea.TeaModel {
    public var code: String?

    public var corpId: String?

    public var corpName: String?

    public var message: String?

    public var platformType: String?

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
            map["code"] = self.code!
        }
        if self.corpId != nil {
            map["corpId"] = self.corpId!
        }
        if self.corpName != nil {
            map["corpName"] = self.corpName!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.platformType != nil {
            map["platformType"] = self.platformType!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["corpId"] as? String {
            self.corpId = value
        }
        if let value = dict["corpName"] as? String {
            self.corpName = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["platformType"] as? String {
            self.platformType = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCustomOrgResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomOrgResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCustomOrgResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateGroupAliDingChatRequest : Tea.TeaModel {
    public class UpdateFrequency : Tea.TeaModel {
        public var cron: String?

        public var enabled: Bool?

        public var preset: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cron != nil {
                map["cron"] = self.cron!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.preset != nil {
                map["preset"] = self.preset!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cron"] as? String {
                self.cron = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["preset"] as? String {
                self.preset = value
            }
        }
    }
    public var chatId: String?

    public var chatName: String?

    public var description_: String?

    public var directoryId: String?

    public var groupId: String?

    public var historyStartTime: String?

    public var notes: String?

    public var operatingObjectName: String?

    public var sourceTags: String?

    public var tenantId: String?

    public var updateFrequency: CreateGroupAliDingChatRequest.UpdateFrequency?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.updateFrequency?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.chatName != nil {
            map["chatName"] = self.chatName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.historyStartTime != nil {
            map["historyStartTime"] = self.historyStartTime!
        }
        if self.notes != nil {
            map["notes"] = self.notes!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.sourceTags != nil {
            map["sourceTags"] = self.sourceTags!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.updateFrequency != nil {
            map["updateFrequency"] = self.updateFrequency?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["chatName"] as? String {
            self.chatName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["groupId"] as? String {
            self.groupId = value
        }
        if let value = dict["historyStartTime"] as? String {
            self.historyStartTime = value
        }
        if let value = dict["notes"] as? String {
            self.notes = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["sourceTags"] as? String {
            self.sourceTags = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["updateFrequency"] as? [String: Any?] {
            var model = CreateGroupAliDingChatRequest.UpdateFrequency()
            model.fromMap(value)
            self.updateFrequency = model
        }
    }
}

public class CreateGroupAliDingChatShrinkRequest : Tea.TeaModel {
    public var chatId: String?

    public var chatName: String?

    public var description_: String?

    public var directoryId: String?

    public var groupId: String?

    public var historyStartTime: String?

    public var notes: String?

    public var operatingObjectName: String?

    public var sourceTags: String?

    public var tenantId: String?

    public var updateFrequencyShrink: String?

    public override init() {
        super.init()
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
            map["chatId"] = self.chatId!
        }
        if self.chatName != nil {
            map["chatName"] = self.chatName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.historyStartTime != nil {
            map["historyStartTime"] = self.historyStartTime!
        }
        if self.notes != nil {
            map["notes"] = self.notes!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.sourceTags != nil {
            map["sourceTags"] = self.sourceTags!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.updateFrequencyShrink != nil {
            map["updateFrequency"] = self.updateFrequencyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["chatName"] as? String {
            self.chatName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["groupId"] as? String {
            self.groupId = value
        }
        if let value = dict["historyStartTime"] as? String {
            self.historyStartTime = value
        }
        if let value = dict["notes"] as? String {
            self.notes = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["sourceTags"] as? String {
            self.sourceTags = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["updateFrequency"] as? String {
            self.updateFrequencyShrink = value
        }
    }
}

public class CreateGroupAliDingChatResponseBody : Tea.TeaModel {
    public var chatId: String?

    public var code: String?

    public var directoryId: String?

    public var gmtCreate: String?

    public var groupId: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var sourceId: String?

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
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["groupId"] as? String {
            self.groupId = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreateGroupAliDingChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupAliDingChatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateGroupAliDingChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateKnowledgeBaseAliDingDocRequest : Tea.TeaModel {
    public var description_: String?

    public var directoryId: String?

    public var filePublicUrl: String?

    public var knowledgeId: String?

    public var name: String?

    public var operatingObjectName: String?

    public var sourceTags: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.filePublicUrl != nil {
            map["filePublicUrl"] = self.filePublicUrl!
        }
        if self.knowledgeId != nil {
            map["knowledgeId"] = self.knowledgeId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.sourceTags != nil {
            map["sourceTags"] = self.sourceTags!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["filePublicUrl"] as? String {
            self.filePublicUrl = value
        }
        if let value = dict["knowledgeId"] as? String {
            self.knowledgeId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["sourceTags"] as? String {
            self.sourceTags = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreateKnowledgeBaseAliDingDocResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

    public var filePublicUrl: String?

    public var gmtCreate: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var sourceId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.filePublicUrl != nil {
            map["filePublicUrl"] = self.filePublicUrl!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["filePublicUrl"] as? String {
            self.filePublicUrl = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreateKnowledgeBaseAliDingDocResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKnowledgeBaseAliDingDocResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateKnowledgeBaseAliDingDocResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateKnowledgeBaseDirectoryRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var parentDirectoryId: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentDirectoryId != nil {
            map["parentDirectoryId"] = self.parentDirectoryId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parentDirectoryId"] as? String {
            self.parentDirectoryId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreateKnowledgeBaseDirectoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var description_: String?

    public var directoryId: String?

    public var directoryKind: String?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var message: String?

    public var name: String?

    public var parentDirectoryId: String?

    public var path: String?

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
            map["code"] = self.code!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.directoryKind != nil {
            map["directoryKind"] = self.directoryKind!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentDirectoryId != nil {
            map["parentDirectoryId"] = self.parentDirectoryId!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["directoryKind"] as? String {
            self.directoryKind = value
        }
        if let value = dict["gmtCreate"] as? Int64 {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? Int64 {
            self.gmtModified = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parentDirectoryId"] as? String {
            self.parentDirectoryId = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateKnowledgeBaseDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKnowledgeBaseDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateKnowledgeBaseDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateKnowledgeBaseFileRequest : Tea.TeaModel {
    public var description_: String?

    public var directoryId: String?

    public var fileExt: String?

    public var fileName: String?

    public var filePath: String?

    public var filePublicUrl: String?

    public var fileRecordId: String?

    public var knowledgeId: String?

    public var name: String?

    public var operatingObjectName: String?

    public var sourceTags: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.fileExt != nil {
            map["fileExt"] = self.fileExt!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.filePath != nil {
            map["filePath"] = self.filePath!
        }
        if self.filePublicUrl != nil {
            map["filePublicUrl"] = self.filePublicUrl!
        }
        if self.fileRecordId != nil {
            map["fileRecordId"] = self.fileRecordId!
        }
        if self.knowledgeId != nil {
            map["knowledgeId"] = self.knowledgeId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.sourceTags != nil {
            map["sourceTags"] = self.sourceTags!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["fileExt"] as? String {
            self.fileExt = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["filePath"] as? String {
            self.filePath = value
        }
        if let value = dict["filePublicUrl"] as? String {
            self.filePublicUrl = value
        }
        if let value = dict["fileRecordId"] as? String {
            self.fileRecordId = value
        }
        if let value = dict["knowledgeId"] as? String {
            self.knowledgeId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["sourceTags"] as? String {
            self.sourceTags = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreateKnowledgeBaseFileResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

    public var gmtCreate: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var sourceId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreateKnowledgeBaseFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKnowledgeBaseFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateKnowledgeBaseFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateKnowledgeBaseTextRequest : Tea.TeaModel {
    public var description_: String?

    public var directoryId: String?

    public var knowledgeId: String?

    public var name: String?

    public var operatingObjectName: String?

    public var sourceTags: String?

    public var tenantId: String?

    public var textContent: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.knowledgeId != nil {
            map["knowledgeId"] = self.knowledgeId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.sourceTags != nil {
            map["sourceTags"] = self.sourceTags!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.textContent != nil {
            map["textContent"] = self.textContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["knowledgeId"] as? String {
            self.knowledgeId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["sourceTags"] as? String {
            self.sourceTags = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["textContent"] as? String {
            self.textContent = value
        }
    }
}

public class CreateKnowledgeBaseTextResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

    public var gmtCreate: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var sourceId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreateKnowledgeBaseTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKnowledgeBaseTextResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateKnowledgeBaseTextResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePersonalAliDingChatRequest : Tea.TeaModel {
    public class UpdateFrequency : Tea.TeaModel {
        public var cron: String?

        public var enabled: Bool?

        public var preset: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cron != nil {
                map["cron"] = self.cron!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.preset != nil {
                map["preset"] = self.preset!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cron"] as? String {
                self.cron = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["preset"] as? String {
                self.preset = value
            }
        }
    }
    public var chatId: String?

    public var chatName: String?

    public var description_: String?

    public var directoryId: String?

    public var historyStartTime: String?

    public var notes: String?

    public var operatingObjectName: String?

    public var sourceTags: String?

    public var tenantId: String?

    public var updateFrequency: CreatePersonalAliDingChatRequest.UpdateFrequency?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.updateFrequency?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.chatName != nil {
            map["chatName"] = self.chatName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.historyStartTime != nil {
            map["historyStartTime"] = self.historyStartTime!
        }
        if self.notes != nil {
            map["notes"] = self.notes!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.sourceTags != nil {
            map["sourceTags"] = self.sourceTags!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.updateFrequency != nil {
            map["updateFrequency"] = self.updateFrequency?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["chatName"] as? String {
            self.chatName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["historyStartTime"] as? String {
            self.historyStartTime = value
        }
        if let value = dict["notes"] as? String {
            self.notes = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["sourceTags"] as? String {
            self.sourceTags = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["updateFrequency"] as? [String: Any?] {
            var model = CreatePersonalAliDingChatRequest.UpdateFrequency()
            model.fromMap(value)
            self.updateFrequency = model
        }
    }
}

public class CreatePersonalAliDingChatShrinkRequest : Tea.TeaModel {
    public var chatId: String?

    public var chatName: String?

    public var description_: String?

    public var directoryId: String?

    public var historyStartTime: String?

    public var notes: String?

    public var operatingObjectName: String?

    public var sourceTags: String?

    public var tenantId: String?

    public var updateFrequencyShrink: String?

    public override init() {
        super.init()
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
            map["chatId"] = self.chatId!
        }
        if self.chatName != nil {
            map["chatName"] = self.chatName!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.historyStartTime != nil {
            map["historyStartTime"] = self.historyStartTime!
        }
        if self.notes != nil {
            map["notes"] = self.notes!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.sourceTags != nil {
            map["sourceTags"] = self.sourceTags!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.updateFrequencyShrink != nil {
            map["updateFrequency"] = self.updateFrequencyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["chatName"] as? String {
            self.chatName = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["historyStartTime"] as? String {
            self.historyStartTime = value
        }
        if let value = dict["notes"] as? String {
            self.notes = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["sourceTags"] as? String {
            self.sourceTags = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["updateFrequency"] as? String {
            self.updateFrequencyShrink = value
        }
    }
}

public class CreatePersonalAliDingChatResponseBody : Tea.TeaModel {
    public var chatId: String?

    public var code: String?

    public var directoryId: String?

    public var gmtCreate: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var sourceId: String?

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
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreatePersonalAliDingChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePersonalAliDingChatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePersonalAliDingChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePersonalAliDingMeetingRequest : Tea.TeaModel {
    public var description_: String?

    public var directoryId: String?

    public var name: String?

    public var notes: String?

    public var operatingObjectName: String?

    public var shanjiUrl: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.notes != nil {
            map["notes"] = self.notes!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.shanjiUrl != nil {
            map["shanjiUrl"] = self.shanjiUrl!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["notes"] as? String {
            self.notes = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["shanjiUrl"] as? String {
            self.shanjiUrl = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreatePersonalAliDingMeetingResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

    public var gmtCreate: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var sourceId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreatePersonalAliDingMeetingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePersonalAliDingMeetingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePersonalAliDingMeetingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePersonalAlidingDocRequest : Tea.TeaModel {
    public var description_: String?

    public var directoryId: String?

    public var filePublicUrl: String?

    public var name: String?

    public var operatingObjectName: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.filePublicUrl != nil {
            map["filePublicUrl"] = self.filePublicUrl!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["filePublicUrl"] as? String {
            self.filePublicUrl = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreatePersonalAlidingDocResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

    public var filePublicUrl: String?

    public var gmtCreate: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var sourceId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.filePublicUrl != nil {
            map["filePublicUrl"] = self.filePublicUrl!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["filePublicUrl"] as? String {
            self.filePublicUrl = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreatePersonalAlidingDocResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePersonalAlidingDocResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePersonalAlidingDocResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePersonalAlidingKnowledgeBaseRequest : Tea.TeaModel {
    public class ObjectBindings : Tea.TeaModel {
        public var objectId: String?

        public var objectType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.objectId != nil {
                map["objectId"] = self.objectId!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["objectId"] as? String {
                self.objectId = value
            }
            if let value = dict["objectType"] as? String {
                self.objectType = value
            }
        }
    }
    public class SyncConfig : Tea.TeaModel {
        public var cron: String?

        public var enabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cron != nil {
                map["cron"] = self.cron!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cron"] as? String {
                self.cron = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
        }
    }
    public var directoryId: String?

    public var kbName: String?

    public var kbUrl: String?

    public var objectBindings: [CreatePersonalAlidingKnowledgeBaseRequest.ObjectBindings]?

    public var operatingObjectName: String?

    public var syncConfig: CreatePersonalAlidingKnowledgeBaseRequest.SyncConfig?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.syncConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.kbName != nil {
            map["kbName"] = self.kbName!
        }
        if self.kbUrl != nil {
            map["kbUrl"] = self.kbUrl!
        }
        if self.objectBindings != nil {
            var tmp : [Any] = []
            for k in self.objectBindings! {
                tmp.append(k.toMap())
            }
            map["objectBindings"] = tmp
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.syncConfig != nil {
            map["syncConfig"] = self.syncConfig?.toMap()
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["kbName"] as? String {
            self.kbName = value
        }
        if let value = dict["kbUrl"] as? String {
            self.kbUrl = value
        }
        if let value = dict["objectBindings"] as? [Any?] {
            var tmp : [CreatePersonalAlidingKnowledgeBaseRequest.ObjectBindings] = []
            for v in value {
                if v != nil {
                    var model = CreatePersonalAlidingKnowledgeBaseRequest.ObjectBindings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.objectBindings = tmp
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["syncConfig"] as? [String: Any?] {
            var model = CreatePersonalAlidingKnowledgeBaseRequest.SyncConfig()
            model.fromMap(value)
            self.syncConfig = model
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreatePersonalAlidingKnowledgeBaseShrinkRequest : Tea.TeaModel {
    public var directoryId: String?

    public var kbName: String?

    public var kbUrl: String?

    public var objectBindingsShrink: String?

    public var operatingObjectName: String?

    public var syncConfigShrink: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.kbName != nil {
            map["kbName"] = self.kbName!
        }
        if self.kbUrl != nil {
            map["kbUrl"] = self.kbUrl!
        }
        if self.objectBindingsShrink != nil {
            map["objectBindings"] = self.objectBindingsShrink!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.syncConfigShrink != nil {
            map["syncConfig"] = self.syncConfigShrink!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["kbName"] as? String {
            self.kbName = value
        }
        if let value = dict["kbUrl"] as? String {
            self.kbUrl = value
        }
        if let value = dict["objectBindings"] as? String {
            self.objectBindingsShrink = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["syncConfig"] as? String {
            self.syncConfigShrink = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreatePersonalAlidingKnowledgeBaseResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

    public var gmtCreate: String?

    public var kbUrl: String?

    public var message: String?

    public var name: String?

    public var operatingObjectName: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.kbUrl != nil {
            map["kbUrl"] = self.kbUrl!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["kbUrl"] as? String {
            self.kbUrl = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreatePersonalAlidingKnowledgeBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePersonalAlidingKnowledgeBaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePersonalAlidingKnowledgeBaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePersonalDingtalkMeetingRequest : Tea.TeaModel {
    public var credentialId: String?

    public var description_: String?

    public var directoryId: String?

    public var name: String?

    public var notes: String?

    public var operatingObjectName: String?

    public var roomCode: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialId != nil {
            map["credentialId"] = self.credentialId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.notes != nil {
            map["notes"] = self.notes!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.roomCode != nil {
            map["roomCode"] = self.roomCode!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["credentialId"] as? String {
            self.credentialId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["notes"] as? String {
            self.notes = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["roomCode"] as? String {
            self.roomCode = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreatePersonalDingtalkMeetingResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

    public var gmtCreate: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var sourceId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreatePersonalDingtalkMeetingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePersonalDingtalkMeetingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePersonalDingtalkMeetingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePersonalDingtalkMinutesRequest : Tea.TeaModel {
    public var description_: String?

    public var directoryId: String?

    public var name: String?

    public var notes: String?

    public var operatingObjectName: String?

    public var shanjiUrl: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.notes != nil {
            map["notes"] = self.notes!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.shanjiUrl != nil {
            map["shanjiUrl"] = self.shanjiUrl!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["notes"] as? String {
            self.notes = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["shanjiUrl"] as? String {
            self.shanjiUrl = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreatePersonalDingtalkMinutesResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

    public var gmtCreate: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var sourceId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreatePersonalDingtalkMinutesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePersonalDingtalkMinutesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePersonalDingtalkMinutesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePersonalDirectoryRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var operatingObjectName: String?

    public var parentDirectoryId: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.parentDirectoryId != nil {
            map["parentDirectoryId"] = self.parentDirectoryId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["parentDirectoryId"] as? String {
            self.parentDirectoryId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreatePersonalDirectoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var description_: String?

    public var directoryId: String?

    public var directoryKind: String?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var message: String?

    public var name: String?

    public var operatingObjectName: String?

    public var parentDirectoryId: String?

    public var path: String?

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
            map["code"] = self.code!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.directoryKind != nil {
            map["directoryKind"] = self.directoryKind!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.parentDirectoryId != nil {
            map["parentDirectoryId"] = self.parentDirectoryId!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["directoryKind"] as? String {
            self.directoryKind = value
        }
        if let value = dict["gmtCreate"] as? Int64 {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? Int64 {
            self.gmtModified = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["parentDirectoryId"] as? String {
            self.parentDirectoryId = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePersonalDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePersonalDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePersonalDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePersonalFeishuChatRequest : Tea.TeaModel {
    public class UpdateFrequency : Tea.TeaModel {
        public var cron: String?

        public var enabled: Bool?

        public var preset: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cron != nil {
                map["cron"] = self.cron!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.preset != nil {
                map["preset"] = self.preset!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cron"] as? String {
                self.cron = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["preset"] as? String {
                self.preset = value
            }
        }
    }
    public var chatId: String?

    public var description_: String?

    public var directoryId: String?

    public var historyStartTime: String?

    public var notes: String?

    public var operatingObjectName: String?

    public var sourceTags: String?

    public var tenantId: String?

    public var updateFrequency: CreatePersonalFeishuChatRequest.UpdateFrequency?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.updateFrequency?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.historyStartTime != nil {
            map["historyStartTime"] = self.historyStartTime!
        }
        if self.notes != nil {
            map["notes"] = self.notes!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.sourceTags != nil {
            map["sourceTags"] = self.sourceTags!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.updateFrequency != nil {
            map["updateFrequency"] = self.updateFrequency?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["historyStartTime"] as? String {
            self.historyStartTime = value
        }
        if let value = dict["notes"] as? String {
            self.notes = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["sourceTags"] as? String {
            self.sourceTags = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["updateFrequency"] as? [String: Any?] {
            var model = CreatePersonalFeishuChatRequest.UpdateFrequency()
            model.fromMap(value)
            self.updateFrequency = model
        }
    }
}

public class CreatePersonalFeishuChatShrinkRequest : Tea.TeaModel {
    public var chatId: String?

    public var description_: String?

    public var directoryId: String?

    public var historyStartTime: String?

    public var notes: String?

    public var operatingObjectName: String?

    public var sourceTags: String?

    public var tenantId: String?

    public var updateFrequencyShrink: String?

    public override init() {
        super.init()
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
            map["chatId"] = self.chatId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.historyStartTime != nil {
            map["historyStartTime"] = self.historyStartTime!
        }
        if self.notes != nil {
            map["notes"] = self.notes!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.sourceTags != nil {
            map["sourceTags"] = self.sourceTags!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.updateFrequencyShrink != nil {
            map["updateFrequency"] = self.updateFrequencyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["historyStartTime"] as? String {
            self.historyStartTime = value
        }
        if let value = dict["notes"] as? String {
            self.notes = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["sourceTags"] as? String {
            self.sourceTags = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["updateFrequency"] as? String {
            self.updateFrequencyShrink = value
        }
    }
}

public class CreatePersonalFeishuChatResponseBody : Tea.TeaModel {
    public var chatId: String?

    public var code: String?

    public var directoryId: String?

    public var gmtCreate: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var sourceId: String?

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
        if self.chatId != nil {
            map["chatId"] = self.chatId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chatId"] as? String {
            self.chatId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreatePersonalFeishuChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePersonalFeishuChatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePersonalFeishuChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePersonalFeishuMinuteRequest : Tea.TeaModel {
    public var credentialId: String?

    public var description_: String?

    public var directoryId: String?

    public var minuteToken: String?

    public var name: String?

    public var operatingObjectName: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialId != nil {
            map["credentialId"] = self.credentialId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.minuteToken != nil {
            map["minuteToken"] = self.minuteToken!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["credentialId"] as? String {
            self.credentialId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["minuteToken"] as? String {
            self.minuteToken = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreatePersonalFeishuMinuteResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

    public var gmtCreate: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var sourceId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreatePersonalFeishuMinuteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePersonalFeishuMinuteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePersonalFeishuMinuteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePersonalFileRequest : Tea.TeaModel {
    public var description_: String?

    public var directoryId: String?

    public var fileExt: String?

    public var fileName: String?

    public var filePath: String?

    public var filePublicUrl: String?

    public var fileRecordId: String?

    public var name: String?

    public var operatingObjectName: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.fileExt != nil {
            map["fileExt"] = self.fileExt!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.filePath != nil {
            map["filePath"] = self.filePath!
        }
        if self.filePublicUrl != nil {
            map["filePublicUrl"] = self.filePublicUrl!
        }
        if self.fileRecordId != nil {
            map["fileRecordId"] = self.fileRecordId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["fileExt"] as? String {
            self.fileExt = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["filePath"] as? String {
            self.filePath = value
        }
        if let value = dict["filePublicUrl"] as? String {
            self.filePublicUrl = value
        }
        if let value = dict["fileRecordId"] as? String {
            self.fileRecordId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreatePersonalFileResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

    public var gmtCreate: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var sourceId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreatePersonalFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePersonalFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePersonalFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePersonalTextRequest : Tea.TeaModel {
    public var description_: String?

    public var directoryId: String?

    public var name: String?

    public var operatingObjectName: String?

    public var tenantId: String?

    public var textContent: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.textContent != nil {
            map["textContent"] = self.textContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["textContent"] as? String {
            self.textContent = value
        }
    }
}

public class CreatePersonalTextResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

    public var gmtCreate: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var sourceId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreatePersonalTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePersonalTextResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePersonalTextResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePersonalVoiceMeetingHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

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
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePersonalVoiceMeetingRequest : Tea.TeaModel {
    public var description_: String?

    public var directoryId: String?

    public var fileUrl: String?

    public var name: String?

    public var operatingObjectName: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.fileUrl != nil {
            map["fileUrl"] = self.fileUrl!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["fileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreatePersonalVoiceMeetingResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

    public var gmtCreate: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var sourceId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CreatePersonalVoiceMeetingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePersonalVoiceMeetingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePersonalVoiceMeetingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateScheduledTaskRequest : Tea.TeaModel {
    public class Description_ : Tea.TeaModel {
        public var content: String?

        public var enabled: Bool?

        public var name: String?

        public var objectId: String?

        public var objectType: String?

        public var skillCode: String?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectId != nil {
                map["objectId"] = self.objectId!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
            }
            if self.skillCode != nil {
                map["skillCode"] = self.skillCode!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["objectId"] as? String {
                self.objectId = value
            }
            if let value = dict["objectType"] as? String {
                self.objectType = value
            }
            if let value = dict["skillCode"] as? String {
                self.skillCode = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class Segments : Tea.TeaModel {
        public var content: String?

        public var enabled: Bool?

        public var name: String?

        public var objectId: String?

        public var objectType: String?

        public var skillCode: String?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectId != nil {
                map["objectId"] = self.objectId!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
            }
            if self.skillCode != nil {
                map["skillCode"] = self.skillCode!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["objectId"] as? String {
                self.objectId = value
            }
            if let value = dict["objectType"] as? String {
                self.objectType = value
            }
            if let value = dict["skillCode"] as? String {
                self.skillCode = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class TaskDetail : Tea.TeaModel {
        public class RelatedObjects : Tea.TeaModel {
            public var mentionType: String?

            public var name: String?

            public var objectId: String?

            public var objectType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mentionType != nil {
                    map["mentionType"] = self.mentionType!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.objectId != nil {
                    map["objectId"] = self.objectId!
                }
                if self.objectType != nil {
                    map["objectType"] = self.objectType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["mentionType"] as? String {
                    self.mentionType = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["objectId"] as? String {
                    self.objectId = value
                }
                if let value = dict["objectType"] as? String {
                    self.objectType = value
                }
            }
        }
        public class RelatedSemantics : Tea.TeaModel {
            public var attributes: String?

            public var entity: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attributes != nil {
                    map["attributes"] = self.attributes!
                }
                if self.entity != nil {
                    map["entity"] = self.entity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["attributes"] as? String {
                    self.attributes = value
                }
                if let value = dict["entity"] as? String {
                    self.entity = value
                }
            }
        }
        public class RelatedSkills : Tea.TeaModel {
            public var displayName: String?

            public var name: String?

            public var skillCode: String?

            public var sourceIds: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.skillCode != nil {
                    map["skillCode"] = self.skillCode!
                }
                if self.sourceIds != nil {
                    map["sourceIds"] = self.sourceIds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["displayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["skillCode"] as? String {
                    self.skillCode = value
                }
                if let value = dict["sourceIds"] as? [String] {
                    self.sourceIds = value
                }
            }
        }
        public var relatedObjects: [CreateScheduledTaskRequest.TaskDetail.RelatedObjects]?

        public var relatedSemantics: [CreateScheduledTaskRequest.TaskDetail.RelatedSemantics]?

        public var relatedSkills: [CreateScheduledTaskRequest.TaskDetail.RelatedSkills]?

        public var taskUnderstand: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.relatedObjects != nil {
                var tmp : [Any] = []
                for k in self.relatedObjects! {
                    tmp.append(k.toMap())
                }
                map["relatedObjects"] = tmp
            }
            if self.relatedSemantics != nil {
                var tmp : [Any] = []
                for k in self.relatedSemantics! {
                    tmp.append(k.toMap())
                }
                map["relatedSemantics"] = tmp
            }
            if self.relatedSkills != nil {
                var tmp : [Any] = []
                for k in self.relatedSkills! {
                    tmp.append(k.toMap())
                }
                map["relatedSkills"] = tmp
            }
            if self.taskUnderstand != nil {
                map["taskUnderstand"] = self.taskUnderstand!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["relatedObjects"] as? [Any?] {
                var tmp : [CreateScheduledTaskRequest.TaskDetail.RelatedObjects] = []
                for v in value {
                    if v != nil {
                        var model = CreateScheduledTaskRequest.TaskDetail.RelatedObjects()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.relatedObjects = tmp
            }
            if let value = dict["relatedSemantics"] as? [Any?] {
                var tmp : [CreateScheduledTaskRequest.TaskDetail.RelatedSemantics] = []
                for v in value {
                    if v != nil {
                        var model = CreateScheduledTaskRequest.TaskDetail.RelatedSemantics()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.relatedSemantics = tmp
            }
            if let value = dict["relatedSkills"] as? [Any?] {
                var tmp : [CreateScheduledTaskRequest.TaskDetail.RelatedSkills] = []
                for v in value {
                    if v != nil {
                        var model = CreateScheduledTaskRequest.TaskDetail.RelatedSkills()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.relatedSkills = tmp
            }
            if let value = dict["taskUnderstand"] as? String {
                self.taskUnderstand = value
            }
        }
    }
    public class TriggerConfig : Tea.TeaModel {
        public class PushConfig : Tea.TeaModel {
            public var channelType: String?

            public var contentScope: String?

            public var deliveryMethod: String?

            public var enabled: Bool?

            public var fileFormat: String?

            public var operatingObjectName: String?

            public var receiverType: String?

            public override init() {
                super.init()
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
                    map["channelType"] = self.channelType!
                }
                if self.contentScope != nil {
                    map["contentScope"] = self.contentScope!
                }
                if self.deliveryMethod != nil {
                    map["deliveryMethod"] = self.deliveryMethod!
                }
                if self.enabled != nil {
                    map["enabled"] = self.enabled!
                }
                if self.fileFormat != nil {
                    map["fileFormat"] = self.fileFormat!
                }
                if self.operatingObjectName != nil {
                    map["operatingObjectName"] = self.operatingObjectName!
                }
                if self.receiverType != nil {
                    map["receiverType"] = self.receiverType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["channelType"] as? String {
                    self.channelType = value
                }
                if let value = dict["contentScope"] as? String {
                    self.contentScope = value
                }
                if let value = dict["deliveryMethod"] as? String {
                    self.deliveryMethod = value
                }
                if let value = dict["enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["fileFormat"] as? String {
                    self.fileFormat = value
                }
                if let value = dict["operatingObjectName"] as? String {
                    self.operatingObjectName = value
                }
                if let value = dict["receiverType"] as? String {
                    self.receiverType = value
                }
            }
        }
        public var cron: String?

        public var language: String?

        public var pushConfig: [CreateScheduledTaskRequest.TriggerConfig.PushConfig]?

        public var timezone: String?

        public var triggerMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cron != nil {
                map["cron"] = self.cron!
            }
            if self.language != nil {
                map["language"] = self.language!
            }
            if self.pushConfig != nil {
                var tmp : [Any] = []
                for k in self.pushConfig! {
                    tmp.append(k.toMap())
                }
                map["pushConfig"] = tmp
            }
            if self.timezone != nil {
                map["timezone"] = self.timezone!
            }
            if self.triggerMode != nil {
                map["triggerMode"] = self.triggerMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cron"] as? String {
                self.cron = value
            }
            if let value = dict["language"] as? String {
                self.language = value
            }
            if let value = dict["pushConfig"] as? [Any?] {
                var tmp : [CreateScheduledTaskRequest.TriggerConfig.PushConfig] = []
                for v in value {
                    if v != nil {
                        var model = CreateScheduledTaskRequest.TriggerConfig.PushConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pushConfig = tmp
            }
            if let value = dict["timezone"] as? String {
                self.timezone = value
            }
            if let value = dict["triggerMode"] as? String {
                self.triggerMode = value
            }
        }
    }
    public var collaborationGroupId: String?

    public var description_: [CreateScheduledTaskRequest.Description_]?

    public var digitalEmployeeName: [String]?

    public var isOpen: Bool?

    public var model: String?

    public var name: String?

    public var segments: [CreateScheduledTaskRequest.Segments]?

    public var taskDetail: CreateScheduledTaskRequest.TaskDetail?

    public var tenantId: String?

    public var triggerConfig: CreateScheduledTaskRequest.TriggerConfig?

    public var visibility: String?

    public var visibleMemberUserIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.taskDetail?.validate()
        try self.triggerConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collaborationGroupId != nil {
            map["collaborationGroupId"] = self.collaborationGroupId!
        }
        if self.description_ != nil {
            var tmp : [Any] = []
            for k in self.description_! {
                tmp.append(k.toMap())
            }
            map["description"] = tmp
        }
        if self.digitalEmployeeName != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeName!
        }
        if self.isOpen != nil {
            map["isOpen"] = self.isOpen!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.segments != nil {
            var tmp : [Any] = []
            for k in self.segments! {
                tmp.append(k.toMap())
            }
            map["segments"] = tmp
        }
        if self.taskDetail != nil {
            map["taskDetail"] = self.taskDetail?.toMap()
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.triggerConfig != nil {
            map["triggerConfig"] = self.triggerConfig?.toMap()
        }
        if self.visibility != nil {
            map["visibility"] = self.visibility!
        }
        if self.visibleMemberUserIds != nil {
            map["visibleMemberUserIds"] = self.visibleMemberUserIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["collaborationGroupId"] as? String {
            self.collaborationGroupId = value
        }
        if let value = dict["description"] as? [Any?] {
            var tmp : [CreateScheduledTaskRequest.Description_] = []
            for v in value {
                if v != nil {
                    var model = CreateScheduledTaskRequest.Description_()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.description_ = tmp
        }
        if let value = dict["digitalEmployeeName"] as? [String] {
            self.digitalEmployeeName = value
        }
        if let value = dict["isOpen"] as? Bool {
            self.isOpen = value
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["segments"] as? [Any?] {
            var tmp : [CreateScheduledTaskRequest.Segments] = []
            for v in value {
                if v != nil {
                    var model = CreateScheduledTaskRequest.Segments()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.segments = tmp
        }
        if let value = dict["taskDetail"] as? [String: Any?] {
            var model = CreateScheduledTaskRequest.TaskDetail()
            model.fromMap(value)
            self.taskDetail = model
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["triggerConfig"] as? [String: Any?] {
            var model = CreateScheduledTaskRequest.TriggerConfig()
            model.fromMap(value)
            self.triggerConfig = model
        }
        if let value = dict["visibility"] as? String {
            self.visibility = value
        }
        if let value = dict["visibleMemberUserIds"] as? [String] {
            self.visibleMemberUserIds = value
        }
    }
}

public class CreateScheduledTaskShrinkRequest : Tea.TeaModel {
    public var collaborationGroupId: String?

    public var descriptionShrink: String?

    public var digitalEmployeeNameShrink: String?

    public var isOpen: Bool?

    public var model: String?

    public var name: String?

    public var segmentsShrink: String?

    public var taskDetailShrink: String?

    public var tenantId: String?

    public var triggerConfigShrink: String?

    public var visibility: String?

    public var visibleMemberUserIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collaborationGroupId != nil {
            map["collaborationGroupId"] = self.collaborationGroupId!
        }
        if self.descriptionShrink != nil {
            map["description"] = self.descriptionShrink!
        }
        if self.digitalEmployeeNameShrink != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeNameShrink!
        }
        if self.isOpen != nil {
            map["isOpen"] = self.isOpen!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.segmentsShrink != nil {
            map["segments"] = self.segmentsShrink!
        }
        if self.taskDetailShrink != nil {
            map["taskDetail"] = self.taskDetailShrink!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.triggerConfigShrink != nil {
            map["triggerConfig"] = self.triggerConfigShrink!
        }
        if self.visibility != nil {
            map["visibility"] = self.visibility!
        }
        if self.visibleMemberUserIdsShrink != nil {
            map["visibleMemberUserIds"] = self.visibleMemberUserIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["collaborationGroupId"] as? String {
            self.collaborationGroupId = value
        }
        if let value = dict["description"] as? String {
            self.descriptionShrink = value
        }
        if let value = dict["digitalEmployeeName"] as? String {
            self.digitalEmployeeNameShrink = value
        }
        if let value = dict["isOpen"] as? Bool {
            self.isOpen = value
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["segments"] as? String {
            self.segmentsShrink = value
        }
        if let value = dict["taskDetail"] as? String {
            self.taskDetailShrink = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["triggerConfig"] as? String {
            self.triggerConfigShrink = value
        }
        if let value = dict["visibility"] as? String {
            self.visibility = value
        }
        if let value = dict["visibleMemberUserIds"] as? String {
            self.visibleMemberUserIdsShrink = value
        }
    }
}

public class CreateScheduledTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateScheduledTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScheduledTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateScheduledTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTenantDirectoryRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var parentId: Int64?

    public var path: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parentId"] as? Int64 {
            self.parentId = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class CreateTenantDirectoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var description_: String?

    public var directoryId: String?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var id: Int64?

    public var message: String?

    public var name: String?

    public var operatingObjectName: String?

    public var parentId: Int64?

    public var path: String?

    public var requestId: String?

    public var tenantId: Int64?

    public var userId: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["gmtCreate"] as? Int64 {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? Int64 {
            self.gmtModified = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["parentId"] as? Int64 {
            self.parentId = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["tenantId"] as? Int64 {
            self.tenantId = value
        }
        if let value = dict["userId"] as? Int64 {
            self.userId = value
        }
    }
}

public class CreateTenantDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTenantDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTenantDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUserRequest : Tea.TeaModel {
    public var displayName: String?

    public var passwordEncrypted: String?

    public var roleCodes: [String]?

    public var tenantId: String?

    public var wnAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.passwordEncrypted != nil {
            map["passwordEncrypted"] = self.passwordEncrypted!
        }
        if self.roleCodes != nil {
            map["roleCodes"] = self.roleCodes!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.wnAccountId != nil {
            map["wnAccountId"] = self.wnAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["passwordEncrypted"] as? String {
            self.passwordEncrypted = value
        }
        if let value = dict["roleCodes"] as? [String] {
            self.roleCodes = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["wnAccountId"] as? String {
            self.wnAccountId = value
        }
    }
}

public class CreateUserShrinkRequest : Tea.TeaModel {
    public var displayName: String?

    public var passwordEncrypted: String?

    public var roleCodesShrink: String?

    public var tenantId: String?

    public var wnAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.passwordEncrypted != nil {
            map["passwordEncrypted"] = self.passwordEncrypted!
        }
        if self.roleCodesShrink != nil {
            map["roleCodes"] = self.roleCodesShrink!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.wnAccountId != nil {
            map["wnAccountId"] = self.wnAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["passwordEncrypted"] as? String {
            self.passwordEncrypted = value
        }
        if let value = dict["roleCodes"] as? String {
            self.roleCodesShrink = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["wnAccountId"] as? String {
            self.wnAccountId = value
        }
    }
}

public class CreateUserResponseBody : Tea.TeaModel {
    public var accountId: String?

    public var code: String?

    public var displayName: String?

    public var isNewUser: Bool?

    public var message: String?

    public var requestId: String?

    public var wnUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.isNewUser != nil {
            map["isNewUser"] = self.isNewUser!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountId"] as? String {
            self.accountId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["isNewUser"] as? Bool {
            self.isNewUser = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class CreateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteChatSessionRequest : Tea.TeaModel {
    public var sessionId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class DeleteChatSessionResponseBody : Tea.TeaModel {
    public var code: String?

    public var deleted: Bool?

    public var hardDelete: Bool?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.deleted != nil {
            map["deleted"] = self.deleted!
        }
        if self.hardDelete != nil {
            map["hardDelete"] = self.hardDelete!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["deleted"] as? Bool {
            self.deleted = value
        }
        if let value = dict["hardDelete"] as? Bool {
            self.hardDelete = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class DeleteChatSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChatSessionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteChatSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSourceRequest : Tea.TeaModel {
    public var sourceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class DeleteSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var deleted: Bool?

    public var message: String?

    public var requestId: String?

    public var sourceId: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.deleted != nil {
            map["deleted"] = self.deleted!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["deleted"] as? Bool {
            self.deleted = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
    }
}

public class DeleteSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTenantDirectoryRequest : Tea.TeaModel {
    public var deleteMode: String?

    public var directoryId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteMode != nil {
            map["deleteMode"] = self.deleteMode!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deleteMode"] as? String {
            self.deleteMode = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class DeleteTenantDirectoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var deleteMode: String?

    public var directoryId: String?

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
            map["code"] = self.code!
        }
        if self.deleteMode != nil {
            map["deleteMode"] = self.deleteMode!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["deleteMode"] as? String {
            self.deleteMode = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteTenantDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTenantDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTenantDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableTokenRequest : Tea.TeaModel {
    public var tenantId: String?

    public var wnUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class DisableTokenResponseBody : Tea.TeaModel {
    public var code: String?

    public var disabled: Bool?

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
            map["code"] = self.code!
        }
        if self.disabled != nil {
            map["disabled"] = self.disabled!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["disabled"] as? Bool {
            self.disabled = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DisableTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableTokenRequest : Tea.TeaModel {
    public var tenantId: String?

    public var wnUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class EnableTokenResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var token: String?

    public var tokenMasked: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.tokenMasked != nil {
            map["tokenMasked"] = self.tokenMasked!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["token"] as? String {
            self.token = value
        }
        if let value = dict["tokenMasked"] as? String {
            self.tokenMasked = value
        }
    }
}

public class EnableTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChatSessionRequest : Tea.TeaModel {
    public var limit: Int32?

    public var sessionId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.limit != nil {
            map["limit"] = self.limit!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class GetChatSessionResponseBody : Tea.TeaModel {
    public class Messages : Tea.TeaModel {
        public var content: String?

        public var contextCleared: Bool?

        public var fromShare: Bool?

        public var id: String?

        public var metadata: [String: Any]?

        public var object: String?

        public var role: String?

        public var shareUserName: String?

        public var status: String?

        public var traceId: String?

        public var updateAt: Int64?

        public var userFeedback: String?

        public override init() {
            super.init()
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
                map["content"] = self.content!
            }
            if self.contextCleared != nil {
                map["contextCleared"] = self.contextCleared!
            }
            if self.fromShare != nil {
                map["fromShare"] = self.fromShare!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.metadata != nil {
                map["metadata"] = self.metadata!
            }
            if self.object != nil {
                map["object"] = self.object!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            if self.shareUserName != nil {
                map["shareUserName"] = self.shareUserName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            if self.updateAt != nil {
                map["updateAt"] = self.updateAt!
            }
            if self.userFeedback != nil {
                map["userFeedback"] = self.userFeedback!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["contextCleared"] as? Bool {
                self.contextCleared = value
            }
            if let value = dict["fromShare"] as? Bool {
                self.fromShare = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["metadata"] as? [String: Any] {
                self.metadata = value
            }
            if let value = dict["object"] as? String {
                self.object = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
            if let value = dict["shareUserName"] as? String {
                self.shareUserName = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
            }
            if let value = dict["updateAt"] as? Int64 {
                self.updateAt = value
            }
            if let value = dict["userFeedback"] as? String {
                self.userFeedback = value
            }
        }
    }
    public class Session : Tea.TeaModel {
        public var createdAt: Int64?

        public var id: String?

        public var isExpired: Bool?

        public var metadata: [String: Any]?

        public var model: String?

        public var object: String?

        public var objectId: String?

        public var operatingObjectName: [String]?

        public var title: String?

        public var updatedAt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.isExpired != nil {
                map["isExpired"] = self.isExpired!
            }
            if self.metadata != nil {
                map["metadata"] = self.metadata!
            }
            if self.model != nil {
                map["model"] = self.model!
            }
            if self.object != nil {
                map["object"] = self.object!
            }
            if self.objectId != nil {
                map["objectId"] = self.objectId!
            }
            if self.operatingObjectName != nil {
                map["operatingObjectName"] = self.operatingObjectName!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? Int64 {
                self.createdAt = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["isExpired"] as? Bool {
                self.isExpired = value
            }
            if let value = dict["metadata"] as? [String: Any] {
                self.metadata = value
            }
            if let value = dict["model"] as? String {
                self.model = value
            }
            if let value = dict["object"] as? String {
                self.object = value
            }
            if let value = dict["objectId"] as? String {
                self.objectId = value
            }
            if let value = dict["operatingObjectName"] as? [String] {
                self.operatingObjectName = value
            }
            if let value = dict["title"] as? String {
                self.title = value
            }
            if let value = dict["updatedAt"] as? Int64 {
                self.updatedAt = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var messages: [GetChatSessionResponseBody.Messages]?

    public var requestId: String?

    public var session: GetChatSessionResponseBody.Session?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.session?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["messages"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.session != nil {
            map["session"] = self.session?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["messages"] as? [Any?] {
            var tmp : [GetChatSessionResponseBody.Messages] = []
            for v in value {
                if v != nil {
                    var model = GetChatSessionResponseBody.Messages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messages = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["session"] as? [String: Any?] {
            var model = GetChatSessionResponseBody.Session()
            model.fromMap(value)
            self.session = model
        }
    }
}

public class GetChatSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatSessionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetChatSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetGraphSchemaRequest : Tea.TeaModel {
    public var graphName: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.graphName != nil {
            map["graphName"] = self.graphName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["graphName"] as? String {
            self.graphName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class GetGraphSchemaResponseBody : Tea.TeaModel {
    public var code: String?

    public var graphName: String?

    public var message: String?

    public var requestId: String?

    public var schemaVersion: String?

    public var yamlEdit: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.graphName != nil {
            map["graphName"] = self.graphName!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.schemaVersion != nil {
            map["schemaVersion"] = self.schemaVersion!
        }
        if self.yamlEdit != nil {
            map["yamlEdit"] = self.yamlEdit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["graphName"] as? String {
            self.graphName = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["schemaVersion"] as? String {
            self.schemaVersion = value
        }
        if let value = dict["yamlEdit"] as? String {
            self.yamlEdit = value
        }
    }
}

public class GetGraphSchemaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGraphSchemaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetGraphSchemaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceExpireTimeRequest : Tea.TeaModel {
    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class GetInstanceExpireTimeResponseBody : Tea.TeaModel {
    public var code: String?

    public var found: Bool?

    public var instanceExpireTime: String?

    public var instanceId: String?

    public var instanceStatus: String?

    public var message: String?

    public var requestId: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.found != nil {
            map["found"] = self.found!
        }
        if self.instanceExpireTime != nil {
            map["instanceExpireTime"] = self.instanceExpireTime!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.instanceStatus != nil {
            map["instanceStatus"] = self.instanceStatus!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["found"] as? Bool {
            self.found = value
        }
        if let value = dict["instanceExpireTime"] as? String {
            self.instanceExpireTime = value
        }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["instanceStatus"] as? String {
            self.instanceStatus = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["tenantId"] as? Int64 {
            self.tenantId = value
        }
    }
}

public class GetInstanceExpireTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceExpireTimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInstanceExpireTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetKnowledgeBaseSourceRequest : Tea.TeaModel {
    public var sourceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class GetKnowledgeBaseSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var description_: String?

    public var directoryId: String?

    public var directoryPath: String?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var sourceId: String?

    public var sourceKind: String?

    public var sourceTags: String?

    public var sourceType: String?

    public var status: String?

    public var statusMessage: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.directoryPath != nil {
            map["directoryPath"] = self.directoryPath!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.sourceKind != nil {
            map["sourceKind"] = self.sourceKind!
        }
        if self.sourceTags != nil {
            map["sourceTags"] = self.sourceTags!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.statusMessage != nil {
            map["statusMessage"] = self.statusMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["directoryPath"] as? String {
            self.directoryPath = value
        }
        if let value = dict["gmtCreate"] as? Int64 {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? Int64 {
            self.gmtModified = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["sourceKind"] as? String {
            self.sourceKind = value
        }
        if let value = dict["sourceTags"] as? String {
            self.sourceTags = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["statusMessage"] as? String {
            self.statusMessage = value
        }
    }
}

public class GetKnowledgeBaseSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetKnowledgeBaseSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetKnowledgeBaseSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetScheduledTaskExecutionDetailRequest : Tea.TeaModel {
    public var executionId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionId != nil {
            map["executionId"] = self.executionId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["executionId"] as? String {
            self.executionId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class GetScheduledTaskExecutionDetailResponseBody : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var name: String?

        public var path: String?

        public override init() {
            super.init()
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
                map["name"] = self.name!
            }
            if self.path != nil {
                map["path"] = self.path!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["path"] as? String {
                self.path = value
            }
        }
    }
    public class Metadata : Tea.TeaModel {
        public var sessionId: String?

        public var usage: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.usage != nil {
                map["usage"] = self.usage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["usage"] as? [String: Any] {
                self.usage = value
            }
        }
    }
    public class TriggerInfo : Tea.TeaModel {
        public var triggeredBy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.triggeredBy != nil {
                map["triggeredBy"] = self.triggeredBy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["triggeredBy"] as? String {
                self.triggeredBy = value
            }
        }
    }
    public var code: String?

    public var completedAt: String?

    public var content: String?

    public var creator: String?

    public var digitalEmployeeName: [String]?

    public var errorMessage: String?

    public var executionId: String?

    public var files: [GetScheduledTaskExecutionDetailResponseBody.Files]?

    public var gmtCreate: String?

    public var message: String?

    public var metadata: GetScheduledTaskExecutionDetailResponseBody.Metadata?

    public var outputContent: String?

    public var pushResult: String?

    public var requestId: String?

    public var skillCodes: [String]?

    public var startedAt: String?

    public var status: String?

    public var taskId: String?

    public var title: String?

    public var triggerInfo: GetScheduledTaskExecutionDetailResponseBody.TriggerInfo?

    public var triggerType: String?

    public var visibility: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metadata?.validate()
        try self.triggerInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.completedAt != nil {
            map["completedAt"] = self.completedAt!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.creator != nil {
            map["creator"] = self.creator!
        }
        if self.digitalEmployeeName != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeName!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.executionId != nil {
            map["executionId"] = self.executionId!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["files"] = tmp
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.metadata != nil {
            map["metadata"] = self.metadata?.toMap()
        }
        if self.outputContent != nil {
            map["outputContent"] = self.outputContent!
        }
        if self.pushResult != nil {
            map["pushResult"] = self.pushResult!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.skillCodes != nil {
            map["skillCodes"] = self.skillCodes!
        }
        if self.startedAt != nil {
            map["startedAt"] = self.startedAt!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.triggerInfo != nil {
            map["triggerInfo"] = self.triggerInfo?.toMap()
        }
        if self.triggerType != nil {
            map["triggerType"] = self.triggerType!
        }
        if self.visibility != nil {
            map["visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["completedAt"] as? String {
            self.completedAt = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["creator"] as? String {
            self.creator = value
        }
        if let value = dict["digitalEmployeeName"] as? [String] {
            self.digitalEmployeeName = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["executionId"] as? String {
            self.executionId = value
        }
        if let value = dict["files"] as? [Any?] {
            var tmp : [GetScheduledTaskExecutionDetailResponseBody.Files] = []
            for v in value {
                if v != nil {
                    var model = GetScheduledTaskExecutionDetailResponseBody.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["metadata"] as? [String: Any?] {
            var model = GetScheduledTaskExecutionDetailResponseBody.Metadata()
            model.fromMap(value)
            self.metadata = model
        }
        if let value = dict["outputContent"] as? String {
            self.outputContent = value
        }
        if let value = dict["pushResult"] as? String {
            self.pushResult = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["skillCodes"] as? [String] {
            self.skillCodes = value
        }
        if let value = dict["startedAt"] as? String {
            self.startedAt = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
        if let value = dict["triggerInfo"] as? [String: Any?] {
            var model = GetScheduledTaskExecutionDetailResponseBody.TriggerInfo()
            model.fromMap(value)
            self.triggerInfo = model
        }
        if let value = dict["triggerType"] as? String {
            self.triggerType = value
        }
        if let value = dict["visibility"] as? String {
            self.visibility = value
        }
    }
}

public class GetScheduledTaskExecutionDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScheduledTaskExecutionDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetScheduledTaskExecutionDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetScheduledTaskExecutionRecordsRequest : Tea.TeaModel {
    public var collaborationGroupId: String?

    public var initiatorUserId: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var status: String?

    public var taskId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collaborationGroupId != nil {
            map["collaborationGroupId"] = self.collaborationGroupId!
        }
        if self.initiatorUserId != nil {
            map["initiatorUserId"] = self.initiatorUserId!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["collaborationGroupId"] as? String {
            self.collaborationGroupId = value
        }
        if let value = dict["initiatorUserId"] as? String {
            self.initiatorUserId = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class GetScheduledTaskExecutionRecordsResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public class Timeline : Tea.TeaModel {
            public var actualTime: String?

            public var displayName: String?

            public var errorMessage: String?

            public var executionId: String?

            public var isExpired: Bool?

            public var outputContent: String?

            public var scheduledTime: String?

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
                if self.actualTime != nil {
                    map["actualTime"] = self.actualTime!
                }
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.errorMessage != nil {
                    map["errorMessage"] = self.errorMessage!
                }
                if self.executionId != nil {
                    map["executionId"] = self.executionId!
                }
                if self.isExpired != nil {
                    map["isExpired"] = self.isExpired!
                }
                if self.outputContent != nil {
                    map["outputContent"] = self.outputContent!
                }
                if self.scheduledTime != nil {
                    map["scheduledTime"] = self.scheduledTime!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["actualTime"] as? String {
                    self.actualTime = value
                }
                if let value = dict["displayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["errorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["executionId"] as? String {
                    self.executionId = value
                }
                if let value = dict["isExpired"] as? Bool {
                    self.isExpired = value
                }
                if let value = dict["outputContent"] as? String {
                    self.outputContent = value
                }
                if let value = dict["scheduledTime"] as? String {
                    self.scheduledTime = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
            }
        }
        public var collaborationGroupId: String?

        public var cronExpression: String?

        public var description_: String?

        public var isOpen: Bool?

        public var model: String?

        public var name: String?

        public var taskId: String?

        public var timeline: [GetScheduledTaskExecutionRecordsResponseBody.Tasks.Timeline]?

        public var timezone: String?

        public var triggerType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.collaborationGroupId != nil {
                map["collaborationGroupId"] = self.collaborationGroupId!
            }
            if self.cronExpression != nil {
                map["cronExpression"] = self.cronExpression!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.isOpen != nil {
                map["isOpen"] = self.isOpen!
            }
            if self.model != nil {
                map["model"] = self.model!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.timeline != nil {
                var tmp : [Any] = []
                for k in self.timeline! {
                    tmp.append(k.toMap())
                }
                map["timeline"] = tmp
            }
            if self.timezone != nil {
                map["timezone"] = self.timezone!
            }
            if self.triggerType != nil {
                map["triggerType"] = self.triggerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["collaborationGroupId"] as? String {
                self.collaborationGroupId = value
            }
            if let value = dict["cronExpression"] as? String {
                self.cronExpression = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["isOpen"] as? Bool {
                self.isOpen = value
            }
            if let value = dict["model"] as? String {
                self.model = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["timeline"] as? [Any?] {
                var tmp : [GetScheduledTaskExecutionRecordsResponseBody.Tasks.Timeline] = []
                for v in value {
                    if v != nil {
                        var model = GetScheduledTaskExecutionRecordsResponseBody.Tasks.Timeline()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.timeline = tmp
            }
            if let value = dict["timezone"] as? String {
                self.timezone = value
            }
            if let value = dict["triggerType"] as? String {
                self.triggerType = value
            }
        }
    }
    public var code: String?

    public var hasMore: Bool?

    public var message: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tasks: [GetScheduledTaskExecutionRecordsResponseBody.Tasks]?

    public var total: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.hasMore != nil {
            map["hasMore"] = self.hasMore!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["tasks"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["hasMore"] as? Bool {
            self.hasMore = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["tasks"] as? [Any?] {
            var tmp : [GetScheduledTaskExecutionRecordsResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = GetScheduledTaskExecutionRecordsResponseBody.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class GetScheduledTaskExecutionRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScheduledTaskExecutionRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetScheduledTaskExecutionRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetScheduledTaskUnderstandDetailRequest : Tea.TeaModel {
    public class Segments : Tea.TeaModel {
        public var content: String?

        public var enabled: String?

        public var name: String?

        public var objectId: String?

        public var objectType: String?

        public var skillCode: String?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectId != nil {
                map["objectId"] = self.objectId!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
            }
            if self.skillCode != nil {
                map["skillCode"] = self.skillCode!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["enabled"] as? String {
                self.enabled = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["objectId"] as? String {
                self.objectId = value
            }
            if let value = dict["objectType"] as? String {
                self.objectType = value
            }
            if let value = dict["skillCode"] as? String {
                self.skillCode = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var collaborationGroupId: String?

    public var digitalEmployeeName: [String]?

    public var segments: [GetScheduledTaskUnderstandDetailRequest.Segments]?

    public var tenantId: String?

    public var userInput: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collaborationGroupId != nil {
            map["collaborationGroupId"] = self.collaborationGroupId!
        }
        if self.digitalEmployeeName != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeName!
        }
        if self.segments != nil {
            var tmp : [Any] = []
            for k in self.segments! {
                tmp.append(k.toMap())
            }
            map["segments"] = tmp
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.userInput != nil {
            map["userInput"] = self.userInput!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["collaborationGroupId"] as? String {
            self.collaborationGroupId = value
        }
        if let value = dict["digitalEmployeeName"] as? [String] {
            self.digitalEmployeeName = value
        }
        if let value = dict["segments"] as? [Any?] {
            var tmp : [GetScheduledTaskUnderstandDetailRequest.Segments] = []
            for v in value {
                if v != nil {
                    var model = GetScheduledTaskUnderstandDetailRequest.Segments()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.segments = tmp
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["userInput"] as? String {
            self.userInput = value
        }
    }
}

public class GetScheduledTaskUnderstandDetailShrinkRequest : Tea.TeaModel {
    public var collaborationGroupId: String?

    public var digitalEmployeeNameShrink: String?

    public var segmentsShrink: String?

    public var tenantId: String?

    public var userInput: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collaborationGroupId != nil {
            map["collaborationGroupId"] = self.collaborationGroupId!
        }
        if self.digitalEmployeeNameShrink != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeNameShrink!
        }
        if self.segmentsShrink != nil {
            map["segments"] = self.segmentsShrink!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.userInput != nil {
            map["userInput"] = self.userInput!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["collaborationGroupId"] as? String {
            self.collaborationGroupId = value
        }
        if let value = dict["digitalEmployeeName"] as? String {
            self.digitalEmployeeNameShrink = value
        }
        if let value = dict["segments"] as? String {
            self.segmentsShrink = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["userInput"] as? String {
            self.userInput = value
        }
    }
}

public class GetScheduledTaskUnderstandDetailResponseBody : Tea.TeaModel {
    public class RelatedObjects : Tea.TeaModel {
        public var mentionType: String?

        public var name: String?

        public var objectId: String?

        public var objectType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mentionType != nil {
                map["mentionType"] = self.mentionType!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectId != nil {
                map["objectId"] = self.objectId!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mentionType"] as? String {
                self.mentionType = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["objectId"] as? String {
                self.objectId = value
            }
            if let value = dict["objectType"] as? String {
                self.objectType = value
            }
        }
    }
    public class RelatedSemantics : Tea.TeaModel {
        public var attributes: String?

        public var entity: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributes != nil {
                map["attributes"] = self.attributes!
            }
            if self.entity != nil {
                map["entity"] = self.entity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["attributes"] as? String {
                self.attributes = value
            }
            if let value = dict["entity"] as? String {
                self.entity = value
            }
        }
    }
    public class RelatedSkills : Tea.TeaModel {
        public var displayName: String?

        public var name: String?

        public var skillCode: String?

        public var sourceIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.skillCode != nil {
                map["skillCode"] = self.skillCode!
            }
            if self.sourceIds != nil {
                map["sourceIds"] = self.sourceIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["skillCode"] as? String {
                self.skillCode = value
            }
            if let value = dict["sourceIds"] as? [String] {
                self.sourceIds = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var relatedObjects: [GetScheduledTaskUnderstandDetailResponseBody.RelatedObjects]?

    public var relatedSemantics: [GetScheduledTaskUnderstandDetailResponseBody.RelatedSemantics]?

    public var relatedSkills: [GetScheduledTaskUnderstandDetailResponseBody.RelatedSkills]?

    public var requestId: String?

    public var taskUnderstand: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.relatedObjects != nil {
            var tmp : [Any] = []
            for k in self.relatedObjects! {
                tmp.append(k.toMap())
            }
            map["relatedObjects"] = tmp
        }
        if self.relatedSemantics != nil {
            var tmp : [Any] = []
            for k in self.relatedSemantics! {
                tmp.append(k.toMap())
            }
            map["relatedSemantics"] = tmp
        }
        if self.relatedSkills != nil {
            var tmp : [Any] = []
            for k in self.relatedSkills! {
                tmp.append(k.toMap())
            }
            map["relatedSkills"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskUnderstand != nil {
            map["taskUnderstand"] = self.taskUnderstand!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["relatedObjects"] as? [Any?] {
            var tmp : [GetScheduledTaskUnderstandDetailResponseBody.RelatedObjects] = []
            for v in value {
                if v != nil {
                    var model = GetScheduledTaskUnderstandDetailResponseBody.RelatedObjects()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.relatedObjects = tmp
        }
        if let value = dict["relatedSemantics"] as? [Any?] {
            var tmp : [GetScheduledTaskUnderstandDetailResponseBody.RelatedSemantics] = []
            for v in value {
                if v != nil {
                    var model = GetScheduledTaskUnderstandDetailResponseBody.RelatedSemantics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.relatedSemantics = tmp
        }
        if let value = dict["relatedSkills"] as? [Any?] {
            var tmp : [GetScheduledTaskUnderstandDetailResponseBody.RelatedSkills] = []
            for v in value {
                if v != nil {
                    var model = GetScheduledTaskUnderstandDetailResponseBody.RelatedSkills()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.relatedSkills = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskUnderstand"] as? String {
            self.taskUnderstand = value
        }
    }
}

public class GetScheduledTaskUnderstandDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScheduledTaskUnderstandDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetScheduledTaskUnderstandDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSkillRequest : Tea.TeaModel {
    public var includeSkillFiles: Bool?

    public var skillCode: String?

    public var skillName: String?

    public var tenantId: String?

    public var viewMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.includeSkillFiles != nil {
            map["includeSkillFiles"] = self.includeSkillFiles!
        }
        if self.skillCode != nil {
            map["skillCode"] = self.skillCode!
        }
        if self.skillName != nil {
            map["skillName"] = self.skillName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.viewMode != nil {
            map["viewMode"] = self.viewMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["includeSkillFiles"] as? Bool {
            self.includeSkillFiles = value
        }
        if let value = dict["skillCode"] as? String {
            self.skillCode = value
        }
        if let value = dict["skillName"] as? String {
            self.skillName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["viewMode"] as? String {
            self.viewMode = value
        }
    }
}

public class GetSkillResponseBody : Tea.TeaModel {
    public class Arguments : Tea.TeaModel {
        public var default_: String?

        public var description_: String?

        public var enum_: [String]?

        public var name: String?

        public var required_: Bool?

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
            if self.default_ != nil {
                map["default"] = self.default_!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.enum_ != nil {
                map["enum"] = self.enum_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.required_ != nil {
                map["required"] = self.required_!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["default"] as? String {
                self.default_ = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["enum"] as? [String] {
                self.enum_ = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["required"] as? Bool {
                self.required_ = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var arguments: [GetSkillResponseBody.Arguments]?

    public var code: String?

    public var createdTime: String?

    public var description_: String?

    public var detailLogic: String?

    public var displayName: String?

    public var executeMode: String?

    public var globalAccess: Bool?

    public var hasDraftChanges: Bool?

    public var inputConfig: String?

    public var inputConfigFormatted: [[String: Any]]?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var skillCode: String?

    public var skillFiles: [[String: Any]]?

    public var skillHubDefinitionId: Int64?

    public var skillMdSummary: String?

    public var sourceType: String?

    public var status: String?

    public var tags: [String]?

    public var updatedTime: String?

    public var versionCount: Int64?

    public var versionNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arguments != nil {
            var tmp : [Any] = []
            for k in self.arguments! {
                tmp.append(k.toMap())
            }
            map["arguments"] = tmp
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.detailLogic != nil {
            map["detailLogic"] = self.detailLogic!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.executeMode != nil {
            map["executeMode"] = self.executeMode!
        }
        if self.globalAccess != nil {
            map["globalAccess"] = self.globalAccess!
        }
        if self.hasDraftChanges != nil {
            map["hasDraftChanges"] = self.hasDraftChanges!
        }
        if self.inputConfig != nil {
            map["inputConfig"] = self.inputConfig!
        }
        if self.inputConfigFormatted != nil {
            map["inputConfigFormatted"] = self.inputConfigFormatted!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.skillCode != nil {
            map["skillCode"] = self.skillCode!
        }
        if self.skillFiles != nil {
            map["skillFiles"] = self.skillFiles!
        }
        if self.skillHubDefinitionId != nil {
            map["skillHubDefinitionId"] = self.skillHubDefinitionId!
        }
        if self.skillMdSummary != nil {
            map["skillMdSummary"] = self.skillMdSummary!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        if self.updatedTime != nil {
            map["updatedTime"] = self.updatedTime!
        }
        if self.versionCount != nil {
            map["versionCount"] = self.versionCount!
        }
        if self.versionNumber != nil {
            map["versionNumber"] = self.versionNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["arguments"] as? [Any?] {
            var tmp : [GetSkillResponseBody.Arguments] = []
            for v in value {
                if v != nil {
                    var model = GetSkillResponseBody.Arguments()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.arguments = tmp
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["detailLogic"] as? String {
            self.detailLogic = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["executeMode"] as? String {
            self.executeMode = value
        }
        if let value = dict["globalAccess"] as? Bool {
            self.globalAccess = value
        }
        if let value = dict["hasDraftChanges"] as? Bool {
            self.hasDraftChanges = value
        }
        if let value = dict["inputConfig"] as? String {
            self.inputConfig = value
        }
        if let value = dict["inputConfigFormatted"] as? [[String: Any]] {
            self.inputConfigFormatted = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["skillCode"] as? String {
            self.skillCode = value
        }
        if let value = dict["skillFiles"] as? [[String: Any]] {
            self.skillFiles = value
        }
        if let value = dict["skillHubDefinitionId"] as? Int64 {
            self.skillHubDefinitionId = value
        }
        if let value = dict["skillMdSummary"] as? String {
            self.skillMdSummary = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["updatedTime"] as? String {
            self.updatedTime = value
        }
        if let value = dict["versionCount"] as? Int64 {
            self.versionCount = value
        }
        if let value = dict["versionNumber"] as? String {
            self.versionNumber = value
        }
    }
}

public class GetSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSkillRunRequest : Tea.TeaModel {
    public var includeLogs: Bool?

    public var runId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.includeLogs != nil {
            map["includeLogs"] = self.includeLogs!
        }
        if self.runId != nil {
            map["runId"] = self.runId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["includeLogs"] as? Bool {
            self.includeLogs = value
        }
        if let value = dict["runId"] as? String {
            self.runId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class GetSkillRunResponseBody : Tea.TeaModel {
    public var code: String?

    public var createdAt: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var finishedAt: String?

    public var logs: [[String: Any]]?

    public var message: String?

    public var progress: Int64?

    public var progressMessage: String?

    public var requestId: String?

    public var result: [String: Any]?

    public var runId: String?

    public var skillCode: String?

    public var skillName: String?

    public var startedAt: String?

    public var status: String?

    public var usage: [String: Any]?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.finishedAt != nil {
            map["finishedAt"] = self.finishedAt!
        }
        if self.logs != nil {
            map["logs"] = self.logs!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.progress != nil {
            map["progress"] = self.progress!
        }
        if self.progressMessage != nil {
            map["progressMessage"] = self.progressMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        if self.runId != nil {
            map["runId"] = self.runId!
        }
        if self.skillCode != nil {
            map["skillCode"] = self.skillCode!
        }
        if self.skillName != nil {
            map["skillName"] = self.skillName!
        }
        if self.startedAt != nil {
            map["startedAt"] = self.startedAt!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.usage != nil {
            map["usage"] = self.usage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["finishedAt"] as? String {
            self.finishedAt = value
        }
        if let value = dict["logs"] as? [[String: Any]] {
            self.logs = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["progress"] as? Int64 {
            self.progress = value
        }
        if let value = dict["progressMessage"] as? String {
            self.progressMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["result"] as? [String: Any] {
            self.result = value
        }
        if let value = dict["runId"] as? String {
            self.runId = value
        }
        if let value = dict["skillCode"] as? String {
            self.skillCode = value
        }
        if let value = dict["skillName"] as? String {
            self.skillName = value
        }
        if let value = dict["startedAt"] as? String {
            self.startedAt = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["usage"] as? [String: Any] {
            self.usage = value
        }
    }
}

public class GetSkillRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSkillRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSkillRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSourceRequest : Tea.TeaModel {
    public var includeDetails: Bool?

    public var sourceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.includeDetails != nil {
            map["includeDetails"] = self.includeDetails!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["includeDetails"] as? Bool {
            self.includeDetails = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class GetSourceResponseBody : Tea.TeaModel {
    public class ObjectBindings : Tea.TeaModel {
        public var graphName: String?

        public var objectId: String?

        public var objectType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.graphName != nil {
                map["graphName"] = self.graphName!
            }
            if self.objectId != nil {
                map["objectId"] = self.objectId!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["graphName"] as? String {
                self.graphName = value
            }
            if let value = dict["objectId"] as? String {
                self.objectId = value
            }
            if let value = dict["objectType"] as? String {
                self.objectType = value
            }
        }
    }
    public class UnstructuredDocs : Tea.TeaModel {
        public var completionTime: String?

        public var fileName: String?

        public var fileRecordId: String?

        public var fileType: String?

        public var ossUrl: String?

        public var semanticsId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completionTime != nil {
                map["completionTime"] = self.completionTime!
            }
            if self.fileName != nil {
                map["fileName"] = self.fileName!
            }
            if self.fileRecordId != nil {
                map["fileRecordId"] = self.fileRecordId!
            }
            if self.fileType != nil {
                map["fileType"] = self.fileType!
            }
            if self.ossUrl != nil {
                map["ossUrl"] = self.ossUrl!
            }
            if self.semanticsId != nil {
                map["semanticsId"] = self.semanticsId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["completionTime"] as? String {
                self.completionTime = value
            }
            if let value = dict["fileName"] as? String {
                self.fileName = value
            }
            if let value = dict["fileRecordId"] as? String {
                self.fileRecordId = value
            }
            if let value = dict["fileType"] as? String {
                self.fileType = value
            }
            if let value = dict["ossUrl"] as? String {
                self.ossUrl = value
            }
            if let value = dict["semanticsId"] as? String {
                self.semanticsId = value
            }
        }
    }
    public var code: String?

    public var completionTime: String?

    public var description_: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var hasNotes: Bool?

    public var hasSettings: Bool?

    public var hasStructuredTables: Bool?

    public var hasUnstructuredDocs: Bool?

    public var message: String?

    public var name: String?

    public var notes: String?

    public var objectBindings: [GetSourceResponseBody.ObjectBindings]?

    public var objectId: String?

    public var objectType: String?

    public var operatingObjectName: String?

    public var requestId: String?

    public var scope: String?

    public var settings: [String: Any]?

    public var skillOutputId: String?

    public var sourceId: String?

    public var sourceKind: String?

    public var sourceTags: String?

    public var sourceType: String?

    public var status: String?

    public var structuredTables: [String]?

    public var unstructuredDocs: [GetSourceResponseBody.UnstructuredDocs]?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.completionTime != nil {
            map["completionTime"] = self.completionTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.hasNotes != nil {
            map["hasNotes"] = self.hasNotes!
        }
        if self.hasSettings != nil {
            map["hasSettings"] = self.hasSettings!
        }
        if self.hasStructuredTables != nil {
            map["hasStructuredTables"] = self.hasStructuredTables!
        }
        if self.hasUnstructuredDocs != nil {
            map["hasUnstructuredDocs"] = self.hasUnstructuredDocs!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.notes != nil {
            map["notes"] = self.notes!
        }
        if self.objectBindings != nil {
            var tmp : [Any] = []
            for k in self.objectBindings! {
                tmp.append(k.toMap())
            }
            map["objectBindings"] = tmp
        }
        if self.objectId != nil {
            map["objectId"] = self.objectId!
        }
        if self.objectType != nil {
            map["objectType"] = self.objectType!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.settings != nil {
            map["settings"] = self.settings!
        }
        if self.skillOutputId != nil {
            map["skillOutputId"] = self.skillOutputId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.sourceKind != nil {
            map["sourceKind"] = self.sourceKind!
        }
        if self.sourceTags != nil {
            map["sourceTags"] = self.sourceTags!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.structuredTables != nil {
            map["structuredTables"] = self.structuredTables!
        }
        if self.unstructuredDocs != nil {
            var tmp : [Any] = []
            for k in self.unstructuredDocs! {
                tmp.append(k.toMap())
            }
            map["unstructuredDocs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["completionTime"] as? String {
            self.completionTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["hasNotes"] as? Bool {
            self.hasNotes = value
        }
        if let value = dict["hasSettings"] as? Bool {
            self.hasSettings = value
        }
        if let value = dict["hasStructuredTables"] as? Bool {
            self.hasStructuredTables = value
        }
        if let value = dict["hasUnstructuredDocs"] as? Bool {
            self.hasUnstructuredDocs = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["notes"] as? String {
            self.notes = value
        }
        if let value = dict["objectBindings"] as? [Any?] {
            var tmp : [GetSourceResponseBody.ObjectBindings] = []
            for v in value {
                if v != nil {
                    var model = GetSourceResponseBody.ObjectBindings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.objectBindings = tmp
        }
        if let value = dict["objectId"] as? String {
            self.objectId = value
        }
        if let value = dict["objectType"] as? String {
            self.objectType = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["settings"] as? [String: Any] {
            self.settings = value
        }
        if let value = dict["skillOutputId"] as? String {
            self.skillOutputId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["sourceKind"] as? String {
            self.sourceKind = value
        }
        if let value = dict["sourceTags"] as? String {
            self.sourceTags = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["structuredTables"] as? [String] {
            self.structuredTables = value
        }
        if let value = dict["unstructuredDocs"] as? [Any?] {
            var tmp : [GetSourceResponseBody.UnstructuredDocs] = []
            for v in value {
                if v != nil {
                    var model = GetSourceResponseBody.UnstructuredDocs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.unstructuredDocs = tmp
        }
    }
}

public class GetSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSourceUploadSignatureRequest : Tea.TeaModel {
    public var contentType: String?

    public var expires: Int64?

    public var filename: String?

    public var operatingObjectName: String?

    public var scope: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.expires != nil {
            map["expires"] = self.expires!
        }
        if self.filename != nil {
            map["filename"] = self.filename!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["contentType"] as? String {
            self.contentType = value
        }
        if let value = dict["expires"] as? Int64 {
            self.expires = value
        }
        if let value = dict["filename"] as? String {
            self.filename = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class GetSourceUploadSignatureResponseBody : Tea.TeaModel {
    public var code: String?

    public var contentType: String?

    public var expiresIn: Int64?

    public var filePublicUrl: String?

    public var fileRecordId: String?

    public var fileUrl: String?

    public var message: String?

    public var method: String?

    public var objectName: String?

    public var requestId: String?

    public var uploadSignatureUrl: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.expiresIn != nil {
            map["expiresIn"] = self.expiresIn!
        }
        if self.filePublicUrl != nil {
            map["filePublicUrl"] = self.filePublicUrl!
        }
        if self.fileRecordId != nil {
            map["fileRecordId"] = self.fileRecordId!
        }
        if self.fileUrl != nil {
            map["fileUrl"] = self.fileUrl!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.method != nil {
            map["method"] = self.method!
        }
        if self.objectName != nil {
            map["objectName"] = self.objectName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.uploadSignatureUrl != nil {
            map["uploadSignatureUrl"] = self.uploadSignatureUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["contentType"] as? String {
            self.contentType = value
        }
        if let value = dict["expiresIn"] as? Int64 {
            self.expiresIn = value
        }
        if let value = dict["filePublicUrl"] as? String {
            self.filePublicUrl = value
        }
        if let value = dict["fileRecordId"] as? String {
            self.fileRecordId = value
        }
        if let value = dict["fileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["method"] as? String {
            self.method = value
        }
        if let value = dict["objectName"] as? String {
            self.objectName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["uploadSignatureUrl"] as? String {
            self.uploadSignatureUrl = value
        }
    }
}

public class GetSourceUploadSignatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSourceUploadSignatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSourceUploadSignatureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTokenInfoRequest : Tea.TeaModel {
    public var tenantId: String?

    public var wnUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class GetTokenInfoResponseBody : Tea.TeaModel {
    public var code: String?

    public var enabled: Bool?

    public var gmtCreate: String?

    public var message: String?

    public var requestId: String?

    public var tokenMasked: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.tokenMasked != nil {
            map["tokenMasked"] = self.tokenMasked!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["tokenMasked"] as? String {
            self.tokenMasked = value
        }
    }
}

public class GetTokenInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTokenInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTokenInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public var tenantId: String?

    public var wnAccountId: String?

    public var wnUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.wnAccountId != nil {
            map["wnAccountId"] = self.wnAccountId!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["wnAccountId"] as? String {
            self.wnAccountId = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public var accountId: String?

    public var code: String?

    public var displayName: String?

    public var gmtCreate: String?

    public var isActive: Bool?

    public var lastLoginTime: String?

    public var message: String?

    public var requestId: String?

    public var roleCodes: [String]?

    public var userGroupIds: [String]?

    public var wnUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.isActive != nil {
            map["isActive"] = self.isActive!
        }
        if self.lastLoginTime != nil {
            map["lastLoginTime"] = self.lastLoginTime!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.roleCodes != nil {
            map["roleCodes"] = self.roleCodes!
        }
        if self.userGroupIds != nil {
            map["userGroupIds"] = self.userGroupIds!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountId"] as? String {
            self.accountId = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["isActive"] as? Bool {
            self.isActive = value
        }
        if let value = dict["lastLoginTime"] as? String {
            self.lastLoginTime = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["roleCodes"] as? [String] {
            self.roleCodes = value
        }
        if let value = dict["userGroupIds"] as? [String] {
            self.userGroupIds = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class GetUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserCreditUsageRequest : Tea.TeaModel {
    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class GetUserCreditUsageResponseBody : Tea.TeaModel {
    public var code: String?

    public var creditLimit: String?

    public var message: String?

    public var remainingCredits: String?

    public var requestId: String?

    public var shadowCreditLimit: String?

    public var shadowRemainingCredits: String?

    public var shadowUsedCredits: String?

    public var tenantId: Int64?

    public var usedCredits: String?

    public var userId: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.creditLimit != nil {
            map["creditLimit"] = self.creditLimit!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.remainingCredits != nil {
            map["remainingCredits"] = self.remainingCredits!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.shadowCreditLimit != nil {
            map["shadowCreditLimit"] = self.shadowCreditLimit!
        }
        if self.shadowRemainingCredits != nil {
            map["shadowRemainingCredits"] = self.shadowRemainingCredits!
        }
        if self.shadowUsedCredits != nil {
            map["shadowUsedCredits"] = self.shadowUsedCredits!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.usedCredits != nil {
            map["usedCredits"] = self.usedCredits!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["creditLimit"] as? String {
            self.creditLimit = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["remainingCredits"] as? String {
            self.remainingCredits = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["shadowCreditLimit"] as? String {
            self.shadowCreditLimit = value
        }
        if let value = dict["shadowRemainingCredits"] as? String {
            self.shadowRemainingCredits = value
        }
        if let value = dict["shadowUsedCredits"] as? String {
            self.shadowUsedCredits = value
        }
        if let value = dict["tenantId"] as? Int64 {
            self.tenantId = value
        }
        if let value = dict["usedCredits"] as? String {
            self.usedCredits = value
        }
        if let value = dict["userId"] as? Int64 {
            self.userId = value
        }
    }
}

public class GetUserCreditUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserCreditUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserCreditUsageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserInfoRequest : Tea.TeaModel {
    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class GetUserInfoResponseBody : Tea.TeaModel {
    public class TenantList : Tea.TeaModel {
        public var crmType: String?

        public var tenantId: Int64?

        public var tenantName: String?

        public var tenantType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.crmType != nil {
                map["crmType"] = self.crmType!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.tenantName != nil {
                map["tenantName"] = self.tenantName!
            }
            if self.tenantType != nil {
                map["tenantType"] = self.tenantType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["crmType"] as? String {
                self.crmType = value
            }
            if let value = dict["tenantId"] as? Int64 {
                self.tenantId = value
            }
            if let value = dict["tenantName"] as? String {
                self.tenantName = value
            }
            if let value = dict["tenantType"] as? String {
                self.tenantType = value
            }
        }
    }
    public var avatar: String?

    public var code: String?

    public var crmType: String?

    public var isAdmin: Bool?

    public var isSystemTenant: Bool?

    public var languagePreference: String?

    public var message: String?

    public var name: String?

    public var offering: String?

    public var parsedOffering: String?

    public var profileRole: String?

    public var profileRoleInfo: String?

    public var requestId: String?

    public var selfIntroduction: String?

    public var tenantId: Int64?

    public var tenantList: [GetUserInfoResponseBody.TenantList]?

    public var tenantName: String?

    public var tenantType: String?

    public var userCode: String?

    public var userId: Int64?

    public override init() {
        super.init()
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
            map["avatar"] = self.avatar!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.crmType != nil {
            map["crmType"] = self.crmType!
        }
        if self.isAdmin != nil {
            map["isAdmin"] = self.isAdmin!
        }
        if self.isSystemTenant != nil {
            map["isSystemTenant"] = self.isSystemTenant!
        }
        if self.languagePreference != nil {
            map["languagePreference"] = self.languagePreference!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.offering != nil {
            map["offering"] = self.offering!
        }
        if self.parsedOffering != nil {
            map["parsedOffering"] = self.parsedOffering!
        }
        if self.profileRole != nil {
            map["profileRole"] = self.profileRole!
        }
        if self.profileRoleInfo != nil {
            map["profileRoleInfo"] = self.profileRoleInfo!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.selfIntroduction != nil {
            map["selfIntroduction"] = self.selfIntroduction!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.tenantList != nil {
            var tmp : [Any] = []
            for k in self.tenantList! {
                tmp.append(k.toMap())
            }
            map["tenantList"] = tmp
        }
        if self.tenantName != nil {
            map["tenantName"] = self.tenantName!
        }
        if self.tenantType != nil {
            map["tenantType"] = self.tenantType!
        }
        if self.userCode != nil {
            map["userCode"] = self.userCode!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["avatar"] as? String {
            self.avatar = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["crmType"] as? String {
            self.crmType = value
        }
        if let value = dict["isAdmin"] as? Bool {
            self.isAdmin = value
        }
        if let value = dict["isSystemTenant"] as? Bool {
            self.isSystemTenant = value
        }
        if let value = dict["languagePreference"] as? String {
            self.languagePreference = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["offering"] as? String {
            self.offering = value
        }
        if let value = dict["parsedOffering"] as? String {
            self.parsedOffering = value
        }
        if let value = dict["profileRole"] as? String {
            self.profileRole = value
        }
        if let value = dict["profileRoleInfo"] as? String {
            self.profileRoleInfo = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["selfIntroduction"] as? String {
            self.selfIntroduction = value
        }
        if let value = dict["tenantId"] as? Int64 {
            self.tenantId = value
        }
        if let value = dict["tenantList"] as? [Any?] {
            var tmp : [GetUserInfoResponseBody.TenantList] = []
            for v in value {
                if v != nil {
                    var model = GetUserInfoResponseBody.TenantList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tenantList = tmp
        }
        if let value = dict["tenantName"] as? String {
            self.tenantName = value
        }
        if let value = dict["tenantType"] as? String {
            self.tenantType = value
        }
        if let value = dict["userCode"] as? String {
            self.userCode = value
        }
        if let value = dict["userId"] as? Int64 {
            self.userId = value
        }
    }
}

public class GetUserInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GrantAgentUsersRequest : Tea.TeaModel {
    public var expireDate: Int64?

    public var operatingObjectName: String?

    public var permissions: [String]?

    public var tenantId: String?

    public var userGroupIds: [String]?

    public var userIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expireDate != nil {
            map["expireDate"] = self.expireDate!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.permissions != nil {
            map["permissions"] = self.permissions!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.userGroupIds != nil {
            map["userGroupIds"] = self.userGroupIds!
        }
        if self.userIds != nil {
            map["userIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["expireDate"] as? Int64 {
            self.expireDate = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["permissions"] as? [String] {
            self.permissions = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["userGroupIds"] as? [String] {
            self.userGroupIds = value
        }
        if let value = dict["userIds"] as? [String] {
            self.userIds = value
        }
    }
}

public class GrantAgentUsersShrinkRequest : Tea.TeaModel {
    public var expireDate: Int64?

    public var operatingObjectName: String?

    public var permissionsShrink: String?

    public var tenantId: String?

    public var userGroupIdsShrink: String?

    public var userIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expireDate != nil {
            map["expireDate"] = self.expireDate!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.permissionsShrink != nil {
            map["permissions"] = self.permissionsShrink!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.userGroupIdsShrink != nil {
            map["userGroupIds"] = self.userGroupIdsShrink!
        }
        if self.userIdsShrink != nil {
            map["userIds"] = self.userIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["expireDate"] as? Int64 {
            self.expireDate = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["permissions"] as? String {
            self.permissionsShrink = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["userGroupIds"] as? String {
            self.userGroupIdsShrink = value
        }
        if let value = dict["userIds"] as? String {
            self.userIdsShrink = value
        }
    }
}

public class GrantAgentUsersResponseBody : Tea.TeaModel {
    public var code: String?

    public var grantedCount: Int64?

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
            map["code"] = self.code!
        }
        if self.grantedCount != nil {
            map["grantedCount"] = self.grantedCount!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["grantedCount"] as? Int64 {
            self.grantedCount = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GrantAgentUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantAgentUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GrantAgentUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAdminKnowledgeBasesRequest : Tea.TeaModel {
    public var directoryId: String?

    public var keyword: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var sortField: String?

    public var sortOrder: String?

    public var sourceTypes: [String]?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sortField != nil {
            map["sortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["sortOrder"] = self.sortOrder!
        }
        if self.sourceTypes != nil {
            map["sourceTypes"] = self.sourceTypes!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["sortField"] as? String {
            self.sortField = value
        }
        if let value = dict["sortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["sourceTypes"] as? [String] {
            self.sourceTypes = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListAdminKnowledgeBasesShrinkRequest : Tea.TeaModel {
    public var directoryId: String?

    public var keyword: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var sortField: String?

    public var sortOrder: String?

    public var sourceTypesShrink: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sortField != nil {
            map["sortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["sortOrder"] = self.sortOrder!
        }
        if self.sourceTypesShrink != nil {
            map["sourceTypes"] = self.sourceTypesShrink!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["sortField"] as? String {
            self.sortField = value
        }
        if let value = dict["sortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["sourceTypes"] as? String {
            self.sourceTypesShrink = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListAdminKnowledgeBasesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class ObjectBindings : Tea.TeaModel {
            public var graphName: String?

            public var objectId: String?

            public var objectName: String?

            public var objectType: String?

            public var objectTypeName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.graphName != nil {
                    map["graphName"] = self.graphName!
                }
                if self.objectId != nil {
                    map["objectId"] = self.objectId!
                }
                if self.objectName != nil {
                    map["objectName"] = self.objectName!
                }
                if self.objectType != nil {
                    map["objectType"] = self.objectType!
                }
                if self.objectTypeName != nil {
                    map["objectTypeName"] = self.objectTypeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["graphName"] as? String {
                    self.graphName = value
                }
                if let value = dict["objectId"] as? String {
                    self.objectId = value
                }
                if let value = dict["objectName"] as? String {
                    self.objectName = value
                }
                if let value = dict["objectType"] as? String {
                    self.objectType = value
                }
                if let value = dict["objectTypeName"] as? String {
                    self.objectTypeName = value
                }
            }
        }
        public var creatorName: String?

        public var description_: String?

        public var directoryKind: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var itemId: String?

        public var itemType: String?

        public var name: String?

        public var objectBindings: [ListAdminKnowledgeBasesResponseBody.Items.ObjectBindings]?

        public var sourceFailedCount: Int64?

        public var sourceKind: String?

        public var sourceReadyCount: Int64?

        public var sourceStatus: String?

        public var sourceTotalCount: Int64?

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
            if self.creatorName != nil {
                map["creatorName"] = self.creatorName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.directoryKind != nil {
                map["directoryKind"] = self.directoryKind!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.itemId != nil {
                map["itemId"] = self.itemId!
            }
            if self.itemType != nil {
                map["itemType"] = self.itemType!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectBindings != nil {
                var tmp : [Any] = []
                for k in self.objectBindings! {
                    tmp.append(k.toMap())
                }
                map["objectBindings"] = tmp
            }
            if self.sourceFailedCount != nil {
                map["sourceFailedCount"] = self.sourceFailedCount!
            }
            if self.sourceKind != nil {
                map["sourceKind"] = self.sourceKind!
            }
            if self.sourceReadyCount != nil {
                map["sourceReadyCount"] = self.sourceReadyCount!
            }
            if self.sourceStatus != nil {
                map["sourceStatus"] = self.sourceStatus!
            }
            if self.sourceTotalCount != nil {
                map["sourceTotalCount"] = self.sourceTotalCount!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["creatorName"] as? String {
                self.creatorName = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["directoryKind"] as? String {
                self.directoryKind = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["itemId"] as? String {
                self.itemId = value
            }
            if let value = dict["itemType"] as? String {
                self.itemType = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["objectBindings"] as? [Any?] {
                var tmp : [ListAdminKnowledgeBasesResponseBody.Items.ObjectBindings] = []
                for v in value {
                    if v != nil {
                        var model = ListAdminKnowledgeBasesResponseBody.Items.ObjectBindings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.objectBindings = tmp
            }
            if let value = dict["sourceFailedCount"] as? Int64 {
                self.sourceFailedCount = value
            }
            if let value = dict["sourceKind"] as? String {
                self.sourceKind = value
            }
            if let value = dict["sourceReadyCount"] as? Int64 {
                self.sourceReadyCount = value
            }
            if let value = dict["sourceStatus"] as? String {
                self.sourceStatus = value
            }
            if let value = dict["sourceTotalCount"] as? Int64 {
                self.sourceTotalCount = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
        }
    }
    public var code: String?

    public var items: [ListAdminKnowledgeBasesResponseBody.Items]?

    public var message: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListAdminKnowledgeBasesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListAdminKnowledgeBasesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListAdminKnowledgeBasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAdminKnowledgeBasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAdminKnowledgeBasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAgentsRequest : Tea.TeaModel {
    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListAgentsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var authMode: String?

        public var displayName: String?

        public var isActive: Bool?

        public var operatingObjectName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authMode != nil {
                map["authMode"] = self.authMode!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.isActive != nil {
                map["isActive"] = self.isActive!
            }
            if self.operatingObjectName != nil {
                map["operatingObjectName"] = self.operatingObjectName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["authMode"] as? String {
                self.authMode = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["isActive"] as? Bool {
                self.isActive = value
            }
            if let value = dict["operatingObjectName"] as? String {
                self.operatingObjectName = value
            }
        }
    }
    public var code: String?

    public var items: [ListAgentsResponseBody.Items]?

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
            map["code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListAgentsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListAgentsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAgentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAgentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAgentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAuthorizedAgentsRequest : Tea.TeaModel {
    public var permission: String?

    public var targetUserId: Int64?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.permission != nil {
            map["permission"] = self.permission!
        }
        if self.targetUserId != nil {
            map["targetUserId"] = self.targetUserId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["permission"] as? String {
            self.permission = value
        }
        if let value = dict["targetUserId"] as? Int64 {
            self.targetUserId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListAuthorizedAgentsResponseBody : Tea.TeaModel {
    public var agentNames: [String]?

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
        if self.agentNames != nil {
            map["agentNames"] = self.agentNames!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentNames"] as? [String] {
            self.agentNames = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAuthorizedAgentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAuthorizedAgentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAuthorizedAgentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAuthorizedUsersRequest : Tea.TeaModel {
    public var granteeType: String?

    public var keyword: String?

    public var operatingObjectName: String?

    public var permission: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.granteeType != nil {
            map["granteeType"] = self.granteeType!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.permission != nil {
            map["permission"] = self.permission!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["granteeType"] as? String {
            self.granteeType = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["permission"] as? String {
            self.permission = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListAuthorizedUsersResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var expireDate: Int64?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var grantedBy: Int64?

        public var granteeId: String?

        public var granteeType: String?

        public var id: Int64?

        public var memberCount: Int64?

        public var permissions: [String]?

        public var userGroupId: String?

        public var userGroupName: String?

        public var userId: Int64?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expireDate != nil {
                map["expireDate"] = self.expireDate!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.grantedBy != nil {
                map["grantedBy"] = self.grantedBy!
            }
            if self.granteeId != nil {
                map["granteeId"] = self.granteeId!
            }
            if self.granteeType != nil {
                map["granteeType"] = self.granteeType!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.memberCount != nil {
                map["memberCount"] = self.memberCount!
            }
            if self.permissions != nil {
                map["permissions"] = self.permissions!
            }
            if self.userGroupId != nil {
                map["userGroupId"] = self.userGroupId!
            }
            if self.userGroupName != nil {
                map["userGroupName"] = self.userGroupName!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            if self.userName != nil {
                map["userName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["expireDate"] as? Int64 {
                self.expireDate = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["grantedBy"] as? Int64 {
                self.grantedBy = value
            }
            if let value = dict["granteeId"] as? String {
                self.granteeId = value
            }
            if let value = dict["granteeType"] as? String {
                self.granteeType = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["memberCount"] as? Int64 {
                self.memberCount = value
            }
            if let value = dict["permissions"] as? [String] {
                self.permissions = value
            }
            if let value = dict["userGroupId"] as? String {
                self.userGroupId = value
            }
            if let value = dict["userGroupName"] as? String {
                self.userGroupName = value
            }
            if let value = dict["userId"] as? Int64 {
                self.userId = value
            }
            if let value = dict["userName"] as? String {
                self.userName = value
            }
        }
    }
    public var authMode: String?

    public var code: String?

    public var items: [ListAuthorizedUsersResponseBody.Items]?

    public var message: String?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMode != nil {
            map["authMode"] = self.authMode!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authMode"] as? String {
            self.authMode = value
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListAuthorizedUsersResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListAuthorizedUsersResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListAuthorizedUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAuthorizedUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAuthorizedUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAvailableConfigsRequest : Tea.TeaModel {
    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListAvailableConfigsResponseBody : Tea.TeaModel {
    public class Configs : Tea.TeaModel {
        public var corpId: String?

        public var corpName: String?

        public var platformType: String?

        public var ssoSettingsId: String?

        public var ssoSettingsName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.corpId != nil {
                map["corpId"] = self.corpId!
            }
            if self.corpName != nil {
                map["corpName"] = self.corpName!
            }
            if self.platformType != nil {
                map["platformType"] = self.platformType!
            }
            if self.ssoSettingsId != nil {
                map["ssoSettingsId"] = self.ssoSettingsId!
            }
            if self.ssoSettingsName != nil {
                map["ssoSettingsName"] = self.ssoSettingsName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["corpId"] as? String {
                self.corpId = value
            }
            if let value = dict["corpName"] as? String {
                self.corpName = value
            }
            if let value = dict["platformType"] as? String {
                self.platformType = value
            }
            if let value = dict["ssoSettingsId"] as? String {
                self.ssoSettingsId = value
            }
            if let value = dict["ssoSettingsName"] as? String {
                self.ssoSettingsName = value
            }
        }
    }
    public var code: String?

    public var configs: [ListAvailableConfigsResponseBody.Configs]?

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
            map["code"] = self.code!
        }
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["configs"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["configs"] as? [Any?] {
            var tmp : [ListAvailableConfigsResponseBody.Configs] = []
            for v in value {
                if v != nil {
                    var model = ListAvailableConfigsResponseBody.Configs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configs = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAvailableConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAvailableConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAvailableConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBillingRequest : Tea.TeaModel {
    public var bizId: String?

    public var bizType: String?

    public var endTime: String?

    public var ignoreZero: Bool?

    public var operation: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var startTime: String?

    public var status: String?

    public var tenantId: String?

    public var wnUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["bizId"] = self.bizId!
        }
        if self.bizType != nil {
            map["bizType"] = self.bizType!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.ignoreZero != nil {
            map["ignoreZero"] = self.ignoreZero!
        }
        if self.operation != nil {
            map["operation"] = self.operation!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bizId"] as? String {
            self.bizId = value
        }
        if let value = dict["bizType"] as? String {
            self.bizType = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["ignoreZero"] as? Bool {
            self.ignoreZero = value
        }
        if let value = dict["operation"] as? String {
            self.operation = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class ListBillingResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var billingId: String?

        public var bizId: String?

        public var bizType: String?

        public var costSource: [String]?

        public var costSourceDisplayName: [String]?

        public var endTime: String?

        public var entryObjectId: String?

        public var entryObjectType: String?

        public var isShadow: Bool?

        public var operation: String?

        public var operationDisplayName: String?

        public var startTime: String?

        public var status: String?

        public var statusDisplayName: String?

        public var tenantId: Int64?

        public var totalCreditCost: String?

        public var wnUserId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billingId != nil {
                map["billingId"] = self.billingId!
            }
            if self.bizId != nil {
                map["bizId"] = self.bizId!
            }
            if self.bizType != nil {
                map["bizType"] = self.bizType!
            }
            if self.costSource != nil {
                map["costSource"] = self.costSource!
            }
            if self.costSourceDisplayName != nil {
                map["costSourceDisplayName"] = self.costSourceDisplayName!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.entryObjectId != nil {
                map["entryObjectId"] = self.entryObjectId!
            }
            if self.entryObjectType != nil {
                map["entryObjectType"] = self.entryObjectType!
            }
            if self.isShadow != nil {
                map["isShadow"] = self.isShadow!
            }
            if self.operation != nil {
                map["operation"] = self.operation!
            }
            if self.operationDisplayName != nil {
                map["operationDisplayName"] = self.operationDisplayName!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusDisplayName != nil {
                map["statusDisplayName"] = self.statusDisplayName!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.totalCreditCost != nil {
                map["totalCreditCost"] = self.totalCreditCost!
            }
            if self.wnUserId != nil {
                map["wnUserId"] = self.wnUserId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["billingId"] as? String {
                self.billingId = value
            }
            if let value = dict["bizId"] as? String {
                self.bizId = value
            }
            if let value = dict["bizType"] as? String {
                self.bizType = value
            }
            if let value = dict["costSource"] as? [String] {
                self.costSource = value
            }
            if let value = dict["costSourceDisplayName"] as? [String] {
                self.costSourceDisplayName = value
            }
            if let value = dict["endTime"] as? String {
                self.endTime = value
            }
            if let value = dict["entryObjectId"] as? String {
                self.entryObjectId = value
            }
            if let value = dict["entryObjectType"] as? String {
                self.entryObjectType = value
            }
            if let value = dict["isShadow"] as? Bool {
                self.isShadow = value
            }
            if let value = dict["operation"] as? String {
                self.operation = value
            }
            if let value = dict["operationDisplayName"] as? String {
                self.operationDisplayName = value
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["statusDisplayName"] as? String {
                self.statusDisplayName = value
            }
            if let value = dict["tenantId"] as? Int64 {
                self.tenantId = value
            }
            if let value = dict["totalCreditCost"] as? String {
                self.totalCreditCost = value
            }
            if let value = dict["wnUserId"] as? String {
                self.wnUserId = value
            }
        }
    }
    public var code: String?

    public var list: [ListBillingResponseBody.List]?

    public var message: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["list"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["list"] as? [Any?] {
            var tmp : [ListBillingResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = ListBillingResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListBillingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBillingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListBillingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListChatSessionsRequest : Tea.TeaModel {
    public var digitalEmployeeName: String?

    public var keyword: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.digitalEmployeeName != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeName!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["digitalEmployeeName"] as? String {
            self.digitalEmployeeName = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListChatSessionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var hasMore: Bool?

    public var message: String?

    public var page: Int32?

    public var pageSize: String?

    public var requestId: String?

    public var sessions: [Any]?

    public var tenantId: String?

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
            map["code"] = self.code!
        }
        if self.hasMore != nil {
            map["hasMore"] = self.hasMore!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sessions != nil {
            map["sessions"] = self.sessions!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["hasMore"] as? Bool {
            self.hasMore = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sessions"] as? [Any] {
            self.sessions = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListChatSessionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChatSessionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListChatSessionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGraphsRequest : Tea.TeaModel {
    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListGraphsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var businessProfile: String?

        public var displayName: String?

        public var graphName: String?

        public var isDefault: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessProfile != nil {
                map["businessProfile"] = self.businessProfile!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.graphName != nil {
                map["graphName"] = self.graphName!
            }
            if self.isDefault != nil {
                map["isDefault"] = self.isDefault!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["businessProfile"] as? String {
                self.businessProfile = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["graphName"] as? String {
                self.graphName = value
            }
            if let value = dict["isDefault"] as? Bool {
                self.isDefault = value
            }
        }
    }
    public var code: String?

    public var items: [ListGraphsResponseBody.Items]?

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
            map["code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListGraphsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListGraphsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListGraphsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGraphsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListGraphsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKnowledgeBaseDirectoriesRequest : Tea.TeaModel {
    public var directoryId: String?

    public var sortField: String?

    public var sortOrder: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.sortField != nil {
            map["sortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["sortOrder"] = self.sortOrder!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["sortField"] as? String {
            self.sortField = value
        }
        if let value = dict["sortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListKnowledgeBaseDirectoriesResponseBody : Tea.TeaModel {
    public var code: String?

    public var directories: [Any]?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.directories != nil {
            map["directories"] = self.directories!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directories"] as? [Any] {
            self.directories = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListKnowledgeBaseDirectoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKnowledgeBaseDirectoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListKnowledgeBaseDirectoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOutputFilesRequest : Tea.TeaModel {
    public var itemType: String?

    public var keyword: String?

    public var operatingObjectName: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var sharedOnly: Bool?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.itemType != nil {
            map["itemType"] = self.itemType!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sharedOnly != nil {
            map["sharedOnly"] = self.sharedOnly!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["itemType"] as? String {
            self.itemType = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["sharedOnly"] as? Bool {
            self.sharedOnly = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListOutputFilesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class OutputItems : Tea.TeaModel {
            public class EmailInfo : Tea.TeaModel {
                public var body: String?

                public var contentType: String?

                public var recipients: [String]?

                public var subject: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.body != nil {
                        map["body"] = self.body!
                    }
                    if self.contentType != nil {
                        map["contentType"] = self.contentType!
                    }
                    if self.recipients != nil {
                        map["recipients"] = self.recipients!
                    }
                    if self.subject != nil {
                        map["subject"] = self.subject!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["body"] as? String {
                        self.body = value
                    }
                    if let value = dict["contentType"] as? String {
                        self.contentType = value
                    }
                    if let value = dict["recipients"] as? [String] {
                        self.recipients = value
                    }
                    if let value = dict["subject"] as? String {
                        self.subject = value
                    }
                }
            }
            public class FileInfo : Tea.TeaModel {
                public var description_: String?

                public var name: String?

                public var path: String?

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
                    if self.description_ != nil {
                        map["description"] = self.description_!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.path != nil {
                        map["path"] = self.path!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["path"] as? String {
                        self.path = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public class SlidesInfo : Tea.TeaModel {
                public var completedSlides: Int64?

                public var pptId: String?

                public var pptName: String?

                public var totalSlides: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.completedSlides != nil {
                        map["completedSlides"] = self.completedSlides!
                    }
                    if self.pptId != nil {
                        map["pptId"] = self.pptId!
                    }
                    if self.pptName != nil {
                        map["pptName"] = self.pptName!
                    }
                    if self.totalSlides != nil {
                        map["totalSlides"] = self.totalSlides!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["completedSlides"] as? Int64 {
                        self.completedSlides = value
                    }
                    if let value = dict["pptId"] as? String {
                        self.pptId = value
                    }
                    if let value = dict["pptName"] as? String {
                        self.pptName = value
                    }
                    if let value = dict["totalSlides"] as? Int64 {
                        self.totalSlides = value
                    }
                }
            }
            public var createTime: String?

            public var emailInfo: ListOutputFilesResponseBody.Items.OutputItems.EmailInfo?

            public var fileInfo: ListOutputFilesResponseBody.Items.OutputItems.FileInfo?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var itemName: String?

            public var itemType: String?

            public var itemTypeDisplayName: String?

            public var messageId: String?

            public var outputItemId: String?

            public var shareEnabled: Bool?

            public var shareToken: String?

            public var skillOutputId: String?

            public var slidesInfo: ListOutputFilesResponseBody.Items.OutputItems.SlidesInfo?

            public var taskExecutionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.emailInfo?.validate()
                try self.fileInfo?.validate()
                try self.slidesInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.emailInfo != nil {
                    map["emailInfo"] = self.emailInfo?.toMap()
                }
                if self.fileInfo != nil {
                    map["fileInfo"] = self.fileInfo?.toMap()
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["gmtModified"] = self.gmtModified!
                }
                if self.itemName != nil {
                    map["itemName"] = self.itemName!
                }
                if self.itemType != nil {
                    map["itemType"] = self.itemType!
                }
                if self.itemTypeDisplayName != nil {
                    map["itemTypeDisplayName"] = self.itemTypeDisplayName!
                }
                if self.messageId != nil {
                    map["messageId"] = self.messageId!
                }
                if self.outputItemId != nil {
                    map["outputItemId"] = self.outputItemId!
                }
                if self.shareEnabled != nil {
                    map["shareEnabled"] = self.shareEnabled!
                }
                if self.shareToken != nil {
                    map["shareToken"] = self.shareToken!
                }
                if self.skillOutputId != nil {
                    map["skillOutputId"] = self.skillOutputId!
                }
                if self.slidesInfo != nil {
                    map["slidesInfo"] = self.slidesInfo?.toMap()
                }
                if self.taskExecutionId != nil {
                    map["taskExecutionId"] = self.taskExecutionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["emailInfo"] as? [String: Any?] {
                    var model = ListOutputFilesResponseBody.Items.OutputItems.EmailInfo()
                    model.fromMap(value)
                    self.emailInfo = model
                }
                if let value = dict["fileInfo"] as? [String: Any?] {
                    var model = ListOutputFilesResponseBody.Items.OutputItems.FileInfo()
                    model.fromMap(value)
                    self.fileInfo = model
                }
                if let value = dict["gmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["gmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["itemName"] as? String {
                    self.itemName = value
                }
                if let value = dict["itemType"] as? String {
                    self.itemType = value
                }
                if let value = dict["itemTypeDisplayName"] as? String {
                    self.itemTypeDisplayName = value
                }
                if let value = dict["messageId"] as? String {
                    self.messageId = value
                }
                if let value = dict["outputItemId"] as? String {
                    self.outputItemId = value
                }
                if let value = dict["shareEnabled"] as? Bool {
                    self.shareEnabled = value
                }
                if let value = dict["shareToken"] as? String {
                    self.shareToken = value
                }
                if let value = dict["skillOutputId"] as? String {
                    self.skillOutputId = value
                }
                if let value = dict["slidesInfo"] as? [String: Any?] {
                    var model = ListOutputFilesResponseBody.Items.OutputItems.SlidesInfo()
                    model.fromMap(value)
                    self.slidesInfo = model
                }
                if let value = dict["taskExecutionId"] as? String {
                    self.taskExecutionId = value
                }
            }
        }
        public var conversationId: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var name: String?

        public var operatingObjectName: String?

        public var outputId: String?

        public var outputItems: [ListOutputFilesResponseBody.Items.OutputItems]?

        public var outputType: String?

        public var outputTypeDisplayName: String?

        public var skillOutputId: String?

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
            if self.conversationId != nil {
                map["conversationId"] = self.conversationId!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.operatingObjectName != nil {
                map["operatingObjectName"] = self.operatingObjectName!
            }
            if self.outputId != nil {
                map["outputId"] = self.outputId!
            }
            if self.outputItems != nil {
                var tmp : [Any] = []
                for k in self.outputItems! {
                    tmp.append(k.toMap())
                }
                map["outputItems"] = tmp
            }
            if self.outputType != nil {
                map["outputType"] = self.outputType!
            }
            if self.outputTypeDisplayName != nil {
                map["outputTypeDisplayName"] = self.outputTypeDisplayName!
            }
            if self.skillOutputId != nil {
                map["skillOutputId"] = self.skillOutputId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["conversationId"] as? String {
                self.conversationId = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["operatingObjectName"] as? String {
                self.operatingObjectName = value
            }
            if let value = dict["outputId"] as? String {
                self.outputId = value
            }
            if let value = dict["outputItems"] as? [Any?] {
                var tmp : [ListOutputFilesResponseBody.Items.OutputItems] = []
                for v in value {
                    if v != nil {
                        var model = ListOutputFilesResponseBody.Items.OutputItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.outputItems = tmp
            }
            if let value = dict["outputType"] as? String {
                self.outputType = value
            }
            if let value = dict["outputTypeDisplayName"] as? String {
                self.outputTypeDisplayName = value
            }
            if let value = dict["skillOutputId"] as? String {
                self.skillOutputId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var items: [ListOutputFilesResponseBody.Items]?

    public var message: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListOutputFilesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListOutputFilesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListOutputFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOutputFilesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListOutputFilesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPersonalDirectoryContentsRequest : Tea.TeaModel {
    public var directoryId: String?

    public var operatingObjectName: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var sortField: String?

    public var sortOrder: String?

    public var sourceTypes: [String]?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sortField != nil {
            map["sortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["sortOrder"] = self.sortOrder!
        }
        if self.sourceTypes != nil {
            map["sourceTypes"] = self.sourceTypes!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["sortField"] as? String {
            self.sortField = value
        }
        if let value = dict["sortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["sourceTypes"] as? [String] {
            self.sourceTypes = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListPersonalDirectoryContentsShrinkRequest : Tea.TeaModel {
    public var directoryId: String?

    public var operatingObjectName: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var sortField: String?

    public var sortOrder: String?

    public var sourceTypesShrink: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sortField != nil {
            map["sortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["sortOrder"] = self.sortOrder!
        }
        if self.sourceTypesShrink != nil {
            map["sourceTypes"] = self.sourceTypesShrink!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["sortField"] as? String {
            self.sortField = value
        }
        if let value = dict["sortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["sourceTypes"] as? String {
            self.sourceTypesShrink = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListPersonalDirectoryContentsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class ObjectBindings : Tea.TeaModel {
            public var objectId: String?

            public var objectName: String?

            public var objectType: String?

            public var objectTypeName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.objectId != nil {
                    map["objectId"] = self.objectId!
                }
                if self.objectName != nil {
                    map["objectName"] = self.objectName!
                }
                if self.objectType != nil {
                    map["objectType"] = self.objectType!
                }
                if self.objectTypeName != nil {
                    map["objectTypeName"] = self.objectTypeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["objectId"] as? String {
                    self.objectId = value
                }
                if let value = dict["objectName"] as? String {
                    self.objectName = value
                }
                if let value = dict["objectType"] as? String {
                    self.objectType = value
                }
                if let value = dict["objectTypeName"] as? String {
                    self.objectTypeName = value
                }
            }
        }
        public var creatorName: String?

        public var description_: String?

        public var directoryKind: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var itemId: String?

        public var itemType: String?

        public var name: String?

        public var objectBindings: [ListPersonalDirectoryContentsResponseBody.Items.ObjectBindings]?

        public var sourceFailedCount: Int64?

        public var sourceKind: String?

        public var sourceReadyCount: Int64?

        public var sourceStatus: String?

        public var sourceTotalCount: Int64?

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
            if self.creatorName != nil {
                map["creatorName"] = self.creatorName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.directoryKind != nil {
                map["directoryKind"] = self.directoryKind!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.itemId != nil {
                map["itemId"] = self.itemId!
            }
            if self.itemType != nil {
                map["itemType"] = self.itemType!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectBindings != nil {
                var tmp : [Any] = []
                for k in self.objectBindings! {
                    tmp.append(k.toMap())
                }
                map["objectBindings"] = tmp
            }
            if self.sourceFailedCount != nil {
                map["sourceFailedCount"] = self.sourceFailedCount!
            }
            if self.sourceKind != nil {
                map["sourceKind"] = self.sourceKind!
            }
            if self.sourceReadyCount != nil {
                map["sourceReadyCount"] = self.sourceReadyCount!
            }
            if self.sourceStatus != nil {
                map["sourceStatus"] = self.sourceStatus!
            }
            if self.sourceTotalCount != nil {
                map["sourceTotalCount"] = self.sourceTotalCount!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["creatorName"] as? String {
                self.creatorName = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["directoryKind"] as? String {
                self.directoryKind = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["itemId"] as? String {
                self.itemId = value
            }
            if let value = dict["itemType"] as? String {
                self.itemType = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["objectBindings"] as? [Any?] {
                var tmp : [ListPersonalDirectoryContentsResponseBody.Items.ObjectBindings] = []
                for v in value {
                    if v != nil {
                        var model = ListPersonalDirectoryContentsResponseBody.Items.ObjectBindings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.objectBindings = tmp
            }
            if let value = dict["sourceFailedCount"] as? Int64 {
                self.sourceFailedCount = value
            }
            if let value = dict["sourceKind"] as? String {
                self.sourceKind = value
            }
            if let value = dict["sourceReadyCount"] as? Int64 {
                self.sourceReadyCount = value
            }
            if let value = dict["sourceStatus"] as? String {
                self.sourceStatus = value
            }
            if let value = dict["sourceTotalCount"] as? Int64 {
                self.sourceTotalCount = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
        }
    }
    public var code: String?

    public var items: [ListPersonalDirectoryContentsResponseBody.Items]?

    public var message: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListPersonalDirectoryContentsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListPersonalDirectoryContentsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListPersonalDirectoryContentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPersonalDirectoryContentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPersonalDirectoryContentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRolesRequest : Tea.TeaModel {
    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListRolesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var description_: String?

        public var roleCode: String?

        public var roleName: String?

        public var toggleable: Bool?

        public override init() {
            super.init()
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
                map["description"] = self.description_!
            }
            if self.roleCode != nil {
                map["roleCode"] = self.roleCode!
            }
            if self.roleName != nil {
                map["roleName"] = self.roleName!
            }
            if self.toggleable != nil {
                map["toggleable"] = self.toggleable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["roleCode"] as? String {
                self.roleCode = value
            }
            if let value = dict["roleName"] as? String {
                self.roleName = value
            }
            if let value = dict["toggleable"] as? Bool {
                self.toggleable = value
            }
        }
    }
    public var code: String?

    public var items: [ListRolesResponseBody.Items]?

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
            map["code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListRolesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListRolesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRolesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRolesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScheduledTasksRequest : Tea.TeaModel {
    public var collaborationGroupId: String?

    public var creatorOnly: Bool?

    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var tenantId: String?

    public var visibilities: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collaborationGroupId != nil {
            map["collaborationGroupId"] = self.collaborationGroupId!
        }
        if self.creatorOnly != nil {
            map["creatorOnly"] = self.creatorOnly!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.visibilities != nil {
            map["visibilities"] = self.visibilities!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["collaborationGroupId"] as? String {
            self.collaborationGroupId = value
        }
        if let value = dict["creatorOnly"] as? Bool {
            self.creatorOnly = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["visibilities"] as? [String] {
            self.visibilities = value
        }
    }
}

public class ListScheduledTasksShrinkRequest : Tea.TeaModel {
    public var collaborationGroupId: String?

    public var creatorOnly: Bool?

    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var tenantId: String?

    public var visibilitiesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collaborationGroupId != nil {
            map["collaborationGroupId"] = self.collaborationGroupId!
        }
        if self.creatorOnly != nil {
            map["creatorOnly"] = self.creatorOnly!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.visibilitiesShrink != nil {
            map["visibilities"] = self.visibilitiesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["collaborationGroupId"] as? String {
            self.collaborationGroupId = value
        }
        if let value = dict["creatorOnly"] as? Bool {
            self.creatorOnly = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["visibilities"] as? String {
            self.visibilitiesShrink = value
        }
    }
}

public class ListScheduledTasksResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var abnormalReason: String?

        public var canDelete: Bool?

        public var canEdit: Bool?

        public var canExecute: Bool?

        public var canToggle: Bool?

        public var collaborationGroupId: String?

        public var creator: String?

        public var creatorName: String?

        public var cronExpression: String?

        public var description_: String?

        public var digitalEmployeeName: [String]?

        public var executionCount: Int64?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var isOpen: Bool?

        public var model: String?

        public var name: String?

        public var status: String?

        public var taskId: String?

        public var triggerType: String?

        public var visibility: String?

        public var visibleMemberUserIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.abnormalReason != nil {
                map["abnormalReason"] = self.abnormalReason!
            }
            if self.canDelete != nil {
                map["canDelete"] = self.canDelete!
            }
            if self.canEdit != nil {
                map["canEdit"] = self.canEdit!
            }
            if self.canExecute != nil {
                map["canExecute"] = self.canExecute!
            }
            if self.canToggle != nil {
                map["canToggle"] = self.canToggle!
            }
            if self.collaborationGroupId != nil {
                map["collaborationGroupId"] = self.collaborationGroupId!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.creatorName != nil {
                map["creatorName"] = self.creatorName!
            }
            if self.cronExpression != nil {
                map["cronExpression"] = self.cronExpression!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.digitalEmployeeName != nil {
                map["digitalEmployeeName"] = self.digitalEmployeeName!
            }
            if self.executionCount != nil {
                map["executionCount"] = self.executionCount!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.isOpen != nil {
                map["isOpen"] = self.isOpen!
            }
            if self.model != nil {
                map["model"] = self.model!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.triggerType != nil {
                map["triggerType"] = self.triggerType!
            }
            if self.visibility != nil {
                map["visibility"] = self.visibility!
            }
            if self.visibleMemberUserIds != nil {
                map["visibleMemberUserIds"] = self.visibleMemberUserIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["abnormalReason"] as? String {
                self.abnormalReason = value
            }
            if let value = dict["canDelete"] as? Bool {
                self.canDelete = value
            }
            if let value = dict["canEdit"] as? Bool {
                self.canEdit = value
            }
            if let value = dict["canExecute"] as? Bool {
                self.canExecute = value
            }
            if let value = dict["canToggle"] as? Bool {
                self.canToggle = value
            }
            if let value = dict["collaborationGroupId"] as? String {
                self.collaborationGroupId = value
            }
            if let value = dict["creator"] as? String {
                self.creator = value
            }
            if let value = dict["creatorName"] as? String {
                self.creatorName = value
            }
            if let value = dict["cronExpression"] as? String {
                self.cronExpression = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["digitalEmployeeName"] as? [String] {
                self.digitalEmployeeName = value
            }
            if let value = dict["executionCount"] as? Int64 {
                self.executionCount = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["isOpen"] as? Bool {
                self.isOpen = value
            }
            if let value = dict["model"] as? String {
                self.model = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["triggerType"] as? String {
                self.triggerType = value
            }
            if let value = dict["visibility"] as? String {
                self.visibility = value
            }
            if let value = dict["visibleMemberUserIds"] as? [String] {
                self.visibleMemberUserIds = value
            }
        }
    }
    public var code: String?

    public var hasMore: Bool?

    public var items: [ListScheduledTasksResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.hasMore != nil {
            map["hasMore"] = self.hasMore!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["hasMore"] as? Bool {
            self.hasMore = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListScheduledTasksResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListScheduledTasksResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListScheduledTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScheduledTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListScheduledTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSkillsRequest : Tea.TeaModel {
    public var bindStatus: String?

    public var filterType: String?

    public var keyword: String?

    public var operatingObjectName: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var tags: [String]?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindStatus != nil {
            map["bindStatus"] = self.bindStatus!
        }
        if self.filterType != nil {
            map["filterType"] = self.filterType!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bindStatus"] as? String {
            self.bindStatus = value
        }
        if let value = dict["filterType"] as? String {
            self.filterType = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListSkillsShrinkRequest : Tea.TeaModel {
    public var bindStatus: String?

    public var filterType: String?

    public var keyword: String?

    public var operatingObjectName: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var tagsShrink: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindStatus != nil {
            map["bindStatus"] = self.bindStatus!
        }
        if self.filterType != nil {
            map["filterType"] = self.filterType!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bindStatus"] as? String {
            self.bindStatus = value
        }
        if let value = dict["filterType"] as? String {
            self.filterType = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListSkillsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var createdTime: String?

        public var description_: String?

        public var executeMode: String?

        public var globalAccess: Bool?

        public var hasDraftChanges: Bool?

        public var name: String?

        public var skillCode: String?

        public var skillHubDefinitionId: Int64?

        public var sourceType: String?

        public var status: String?

        public var tags: [String]?

        public var updatedTime: String?

        public var versionNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdTime != nil {
                map["createdTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.executeMode != nil {
                map["executeMode"] = self.executeMode!
            }
            if self.globalAccess != nil {
                map["globalAccess"] = self.globalAccess!
            }
            if self.hasDraftChanges != nil {
                map["hasDraftChanges"] = self.hasDraftChanges!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.skillCode != nil {
                map["skillCode"] = self.skillCode!
            }
            if self.skillHubDefinitionId != nil {
                map["skillHubDefinitionId"] = self.skillHubDefinitionId!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.tags != nil {
                map["tags"] = self.tags!
            }
            if self.updatedTime != nil {
                map["updatedTime"] = self.updatedTime!
            }
            if self.versionNumber != nil {
                map["versionNumber"] = self.versionNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["executeMode"] as? String {
                self.executeMode = value
            }
            if let value = dict["globalAccess"] as? Bool {
                self.globalAccess = value
            }
            if let value = dict["hasDraftChanges"] as? Bool {
                self.hasDraftChanges = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["skillCode"] as? String {
                self.skillCode = value
            }
            if let value = dict["skillHubDefinitionId"] as? Int64 {
                self.skillHubDefinitionId = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["tags"] as? [String] {
                self.tags = value
            }
            if let value = dict["updatedTime"] as? String {
                self.updatedTime = value
            }
            if let value = dict["versionNumber"] as? String {
                self.versionNumber = value
            }
        }
    }
    public var code: String?

    public var items: [ListSkillsResponseBody.Items]?

    public var message: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListSkillsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListSkillsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListSkillsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSkillsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSkillsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTenantDirectoryRequest : Tea.TeaModel {
    public var directoryId: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var sortField: String?

    public var sortOrder: String?

    public var sourceTypes: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sortField != nil {
            map["sortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["sortOrder"] = self.sortOrder!
        }
        if self.sourceTypes != nil {
            map["sourceTypes"] = self.sourceTypes!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["sortField"] as? String {
            self.sortField = value
        }
        if let value = dict["sortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["sourceTypes"] as? String {
            self.sourceTypes = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListTenantDirectoryResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var creatorName: String?

        public var description_: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var itemId: String?

        public var itemType: String?

        public var name: String?

        public var objectBindings: [[String: Any]]?

        public var sourceFailedCount: Int64?

        public var sourceReadyCount: Int64?

        public var sourceStatus: String?

        public var sourceTotalCount: Int64?

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
            if self.creatorName != nil {
                map["creatorName"] = self.creatorName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.itemId != nil {
                map["itemId"] = self.itemId!
            }
            if self.itemType != nil {
                map["itemType"] = self.itemType!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectBindings != nil {
                map["objectBindings"] = self.objectBindings!
            }
            if self.sourceFailedCount != nil {
                map["sourceFailedCount"] = self.sourceFailedCount!
            }
            if self.sourceReadyCount != nil {
                map["sourceReadyCount"] = self.sourceReadyCount!
            }
            if self.sourceStatus != nil {
                map["sourceStatus"] = self.sourceStatus!
            }
            if self.sourceTotalCount != nil {
                map["sourceTotalCount"] = self.sourceTotalCount!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["creatorName"] as? String {
                self.creatorName = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["itemId"] as? String {
                self.itemId = value
            }
            if let value = dict["itemType"] as? String {
                self.itemType = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["objectBindings"] as? [[String: Any]] {
                self.objectBindings = value
            }
            if let value = dict["sourceFailedCount"] as? Int64 {
                self.sourceFailedCount = value
            }
            if let value = dict["sourceReadyCount"] as? Int64 {
                self.sourceReadyCount = value
            }
            if let value = dict["sourceStatus"] as? String {
                self.sourceStatus = value
            }
            if let value = dict["sourceTotalCount"] as? Int64 {
                self.sourceTotalCount = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
        }
    }
    public var code: String?

    public var items: [ListTenantDirectoryResponseBody.Items]?

    public var message: String?

    public var page: Int64?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListTenantDirectoryResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListTenantDirectoryResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListTenantDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTenantDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTenantDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUserVisibleKnowledgeBaseContentsRequest : Tea.TeaModel {
    public var directoryId: String?

    public var keyword: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var sortField: String?

    public var sortOrder: String?

    public var sourceTypes: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sortField != nil {
            map["sortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["sortOrder"] = self.sortOrder!
        }
        if self.sourceTypes != nil {
            map["sourceTypes"] = self.sourceTypes!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["sortField"] as? String {
            self.sortField = value
        }
        if let value = dict["sortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["sourceTypes"] as? String {
            self.sourceTypes = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListUserVisibleKnowledgeBaseContentsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class ShareInfos : Tea.TeaModel {
            public var submissionId: String?

            public var submitterId: Int64?

            public var submitterName: String?

            public var targetDirectoryId: String?

            public var targetDirectoryName: String?

            public var targetKbRootDirectoryId: String?

            public var targetKbRootDirectoryName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.submissionId != nil {
                    map["submissionId"] = self.submissionId!
                }
                if self.submitterId != nil {
                    map["submitterId"] = self.submitterId!
                }
                if self.submitterName != nil {
                    map["submitterName"] = self.submitterName!
                }
                if self.targetDirectoryId != nil {
                    map["targetDirectoryId"] = self.targetDirectoryId!
                }
                if self.targetDirectoryName != nil {
                    map["targetDirectoryName"] = self.targetDirectoryName!
                }
                if self.targetKbRootDirectoryId != nil {
                    map["targetKbRootDirectoryId"] = self.targetKbRootDirectoryId!
                }
                if self.targetKbRootDirectoryName != nil {
                    map["targetKbRootDirectoryName"] = self.targetKbRootDirectoryName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["submissionId"] as? String {
                    self.submissionId = value
                }
                if let value = dict["submitterId"] as? Int64 {
                    self.submitterId = value
                }
                if let value = dict["submitterName"] as? String {
                    self.submitterName = value
                }
                if let value = dict["targetDirectoryId"] as? String {
                    self.targetDirectoryId = value
                }
                if let value = dict["targetDirectoryName"] as? String {
                    self.targetDirectoryName = value
                }
                if let value = dict["targetKbRootDirectoryId"] as? String {
                    self.targetKbRootDirectoryId = value
                }
                if let value = dict["targetKbRootDirectoryName"] as? String {
                    self.targetKbRootDirectoryName = value
                }
            }
        }
        public var creatorName: String?

        public var description_: String?

        public var directoryKind: String?

        public var directoryType: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var itemId: String?

        public var itemType: String?

        public var kbSubmissionPending: Bool?

        public var modifierName: String?

        public var name: String?

        public var objectBindings: [[String: Any]]?

        public var ooVisibilityMode: String?

        public var readOnly: Bool?

        public var shareInfos: [ListUserVisibleKnowledgeBaseContentsResponseBody.Items.ShareInfos]?

        public var shared: Bool?

        public var sourceFailedCount: Int64?

        public var sourceKind: String?

        public var sourceReadyCount: Int64?

        public var sourceStatus: String?

        public var sourceTotalCount: Int64?

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
            if self.creatorName != nil {
                map["creatorName"] = self.creatorName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.directoryKind != nil {
                map["directoryKind"] = self.directoryKind!
            }
            if self.directoryType != nil {
                map["directoryType"] = self.directoryType!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.itemId != nil {
                map["itemId"] = self.itemId!
            }
            if self.itemType != nil {
                map["itemType"] = self.itemType!
            }
            if self.kbSubmissionPending != nil {
                map["kbSubmissionPending"] = self.kbSubmissionPending!
            }
            if self.modifierName != nil {
                map["modifierName"] = self.modifierName!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectBindings != nil {
                map["objectBindings"] = self.objectBindings!
            }
            if self.ooVisibilityMode != nil {
                map["ooVisibilityMode"] = self.ooVisibilityMode!
            }
            if self.readOnly != nil {
                map["readOnly"] = self.readOnly!
            }
            if self.shareInfos != nil {
                var tmp : [Any] = []
                for k in self.shareInfos! {
                    tmp.append(k.toMap())
                }
                map["shareInfos"] = tmp
            }
            if self.shared != nil {
                map["shared"] = self.shared!
            }
            if self.sourceFailedCount != nil {
                map["sourceFailedCount"] = self.sourceFailedCount!
            }
            if self.sourceKind != nil {
                map["sourceKind"] = self.sourceKind!
            }
            if self.sourceReadyCount != nil {
                map["sourceReadyCount"] = self.sourceReadyCount!
            }
            if self.sourceStatus != nil {
                map["sourceStatus"] = self.sourceStatus!
            }
            if self.sourceTotalCount != nil {
                map["sourceTotalCount"] = self.sourceTotalCount!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["creatorName"] as? String {
                self.creatorName = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["directoryKind"] as? String {
                self.directoryKind = value
            }
            if let value = dict["directoryType"] as? String {
                self.directoryType = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["itemId"] as? String {
                self.itemId = value
            }
            if let value = dict["itemType"] as? String {
                self.itemType = value
            }
            if let value = dict["kbSubmissionPending"] as? Bool {
                self.kbSubmissionPending = value
            }
            if let value = dict["modifierName"] as? String {
                self.modifierName = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["objectBindings"] as? [[String: Any]] {
                self.objectBindings = value
            }
            if let value = dict["ooVisibilityMode"] as? String {
                self.ooVisibilityMode = value
            }
            if let value = dict["readOnly"] as? Bool {
                self.readOnly = value
            }
            if let value = dict["shareInfos"] as? [Any?] {
                var tmp : [ListUserVisibleKnowledgeBaseContentsResponseBody.Items.ShareInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListUserVisibleKnowledgeBaseContentsResponseBody.Items.ShareInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.shareInfos = tmp
            }
            if let value = dict["shared"] as? Bool {
                self.shared = value
            }
            if let value = dict["sourceFailedCount"] as? Int64 {
                self.sourceFailedCount = value
            }
            if let value = dict["sourceKind"] as? String {
                self.sourceKind = value
            }
            if let value = dict["sourceReadyCount"] as? Int64 {
                self.sourceReadyCount = value
            }
            if let value = dict["sourceStatus"] as? String {
                self.sourceStatus = value
            }
            if let value = dict["sourceTotalCount"] as? Int64 {
                self.sourceTotalCount = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
        }
    }
    public var code: String?

    public var items: [ListUserVisibleKnowledgeBaseContentsResponseBody.Items]?

    public var message: String?

    public var page: Int64?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListUserVisibleKnowledgeBaseContentsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListUserVisibleKnowledgeBaseContentsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListUserVisibleKnowledgeBaseContentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserVisibleKnowledgeBaseContentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUserVisibleKnowledgeBaseContentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUserVisibleKnowledgeBasesRequest : Tea.TeaModel {
    public var keyword: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListUserVisibleKnowledgeBasesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var creatorId: Int64?

        public var creatorName: String?

        public var description_: String?

        public var directoryId: String?

        public var directoryKind: String?

        public var directoryType: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

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
            if self.creatorId != nil {
                map["creatorId"] = self.creatorId!
            }
            if self.creatorName != nil {
                map["creatorName"] = self.creatorName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.directoryId != nil {
                map["directoryId"] = self.directoryId!
            }
            if self.directoryKind != nil {
                map["directoryKind"] = self.directoryKind!
            }
            if self.directoryType != nil {
                map["directoryType"] = self.directoryType!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["creatorId"] as? Int64 {
                self.creatorId = value
            }
            if let value = dict["creatorName"] as? String {
                self.creatorName = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["directoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["directoryKind"] as? String {
                self.directoryKind = value
            }
            if let value = dict["directoryType"] as? String {
                self.directoryType = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var code: String?

    public var items: [ListUserVisibleKnowledgeBasesResponseBody.Items]?

    public var message: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListUserVisibleKnowledgeBasesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListUserVisibleKnowledgeBasesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListUserVisibleKnowledgeBasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserVisibleKnowledgeBasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUserVisibleKnowledgeBasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var accountIds: [String]?

    public var isActive: Bool?

    public var keyword: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var roleCodes: [String]?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIds != nil {
            map["accountIds"] = self.accountIds!
        }
        if self.isActive != nil {
            map["isActive"] = self.isActive!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.roleCodes != nil {
            map["roleCodes"] = self.roleCodes!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountIds"] as? [String] {
            self.accountIds = value
        }
        if let value = dict["isActive"] as? Bool {
            self.isActive = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["roleCodes"] as? [String] {
            self.roleCodes = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListUsersShrinkRequest : Tea.TeaModel {
    public var accountIdsShrink: String?

    public var isActive: Bool?

    public var keyword: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var roleCodesShrink: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIdsShrink != nil {
            map["accountIds"] = self.accountIdsShrink!
        }
        if self.isActive != nil {
            map["isActive"] = self.isActive!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.roleCodesShrink != nil {
            map["roleCodes"] = self.roleCodesShrink!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountIds"] as? String {
            self.accountIdsShrink = value
        }
        if let value = dict["isActive"] as? Bool {
            self.isActive = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["roleCodes"] as? String {
            self.roleCodesShrink = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var accountId: String?

        public var displayName: String?

        public var gmtCreate: String?

        public var isActive: Bool?

        public var lastLoginTime: String?

        public var roleCodes: [String]?

        public var userId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.isActive != nil {
                map["isActive"] = self.isActive!
            }
            if self.lastLoginTime != nil {
                map["lastLoginTime"] = self.lastLoginTime!
            }
            if self.roleCodes != nil {
                map["roleCodes"] = self.roleCodes!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accountId"] as? String {
                self.accountId = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["isActive"] as? Bool {
                self.isActive = value
            }
            if let value = dict["lastLoginTime"] as? String {
                self.lastLoginTime = value
            }
            if let value = dict["roleCodes"] as? [String] {
                self.roleCodes = value
            }
            if let value = dict["userId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var items: [ListUsersResponseBody.Items]?

    public var message: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListUsersResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListUsersResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVisibleKnowledgeBaseContentsRequest : Tea.TeaModel {
    public var directoryId: String?

    public var operatingObjectName: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var sortField: String?

    public var sortOrder: String?

    public var sourceTypes: [String]?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sortField != nil {
            map["sortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["sortOrder"] = self.sortOrder!
        }
        if self.sourceTypes != nil {
            map["sourceTypes"] = self.sourceTypes!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["sortField"] as? String {
            self.sortField = value
        }
        if let value = dict["sortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["sourceTypes"] as? [String] {
            self.sourceTypes = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListVisibleKnowledgeBaseContentsShrinkRequest : Tea.TeaModel {
    public var directoryId: String?

    public var operatingObjectName: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var sortField: String?

    public var sortOrder: String?

    public var sourceTypesShrink: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sortField != nil {
            map["sortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["sortOrder"] = self.sortOrder!
        }
        if self.sourceTypesShrink != nil {
            map["sourceTypes"] = self.sourceTypesShrink!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["sortField"] as? String {
            self.sortField = value
        }
        if let value = dict["sortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["sourceTypes"] as? String {
            self.sourceTypesShrink = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListVisibleKnowledgeBaseContentsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class ObjectBindings : Tea.TeaModel {
            public var graphName: String?

            public var objectId: String?

            public var objectName: String?

            public var objectType: String?

            public var objectTypeName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.graphName != nil {
                    map["graphName"] = self.graphName!
                }
                if self.objectId != nil {
                    map["objectId"] = self.objectId!
                }
                if self.objectName != nil {
                    map["objectName"] = self.objectName!
                }
                if self.objectType != nil {
                    map["objectType"] = self.objectType!
                }
                if self.objectTypeName != nil {
                    map["objectTypeName"] = self.objectTypeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["graphName"] as? String {
                    self.graphName = value
                }
                if let value = dict["objectId"] as? String {
                    self.objectId = value
                }
                if let value = dict["objectName"] as? String {
                    self.objectName = value
                }
                if let value = dict["objectType"] as? String {
                    self.objectType = value
                }
                if let value = dict["objectTypeName"] as? String {
                    self.objectTypeName = value
                }
            }
        }
        public var creatorName: String?

        public var description_: String?

        public var directoryKind: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var itemId: String?

        public var itemType: String?

        public var name: String?

        public var objectBindings: [ListVisibleKnowledgeBaseContentsResponseBody.Items.ObjectBindings]?

        public var sourceFailedCount: Int64?

        public var sourceKind: String?

        public var sourceReadyCount: Int64?

        public var sourceStatus: String?

        public var sourceTotalCount: Int64?

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
            if self.creatorName != nil {
                map["creatorName"] = self.creatorName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.directoryKind != nil {
                map["directoryKind"] = self.directoryKind!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.itemId != nil {
                map["itemId"] = self.itemId!
            }
            if self.itemType != nil {
                map["itemType"] = self.itemType!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectBindings != nil {
                var tmp : [Any] = []
                for k in self.objectBindings! {
                    tmp.append(k.toMap())
                }
                map["objectBindings"] = tmp
            }
            if self.sourceFailedCount != nil {
                map["sourceFailedCount"] = self.sourceFailedCount!
            }
            if self.sourceKind != nil {
                map["sourceKind"] = self.sourceKind!
            }
            if self.sourceReadyCount != nil {
                map["sourceReadyCount"] = self.sourceReadyCount!
            }
            if self.sourceStatus != nil {
                map["sourceStatus"] = self.sourceStatus!
            }
            if self.sourceTotalCount != nil {
                map["sourceTotalCount"] = self.sourceTotalCount!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["creatorName"] as? String {
                self.creatorName = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["directoryKind"] as? String {
                self.directoryKind = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["itemId"] as? String {
                self.itemId = value
            }
            if let value = dict["itemType"] as? String {
                self.itemType = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["objectBindings"] as? [Any?] {
                var tmp : [ListVisibleKnowledgeBaseContentsResponseBody.Items.ObjectBindings] = []
                for v in value {
                    if v != nil {
                        var model = ListVisibleKnowledgeBaseContentsResponseBody.Items.ObjectBindings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.objectBindings = tmp
            }
            if let value = dict["sourceFailedCount"] as? Int64 {
                self.sourceFailedCount = value
            }
            if let value = dict["sourceKind"] as? String {
                self.sourceKind = value
            }
            if let value = dict["sourceReadyCount"] as? Int64 {
                self.sourceReadyCount = value
            }
            if let value = dict["sourceStatus"] as? String {
                self.sourceStatus = value
            }
            if let value = dict["sourceTotalCount"] as? Int64 {
                self.sourceTotalCount = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
        }
    }
    public var code: String?

    public var items: [ListVisibleKnowledgeBaseContentsResponseBody.Items]?

    public var message: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListVisibleKnowledgeBaseContentsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListVisibleKnowledgeBaseContentsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListVisibleKnowledgeBaseContentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVisibleKnowledgeBaseContentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVisibleKnowledgeBaseContentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVisibleKnowledgeBasesHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

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
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListVisibleKnowledgeBasesRequest : Tea.TeaModel {
    public var operatingObjectName: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ListVisibleKnowledgeBasesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var creatorName: String?

        public var description_: String?

        public var directoryId: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var name: String?

        public var path: String?

        public var sourceFailedCount: Int64?

        public var sourceReadyCount: Int64?

        public var sourceTotalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creatorName != nil {
                map["creatorName"] = self.creatorName!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.directoryId != nil {
                map["directoryId"] = self.directoryId!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.path != nil {
                map["path"] = self.path!
            }
            if self.sourceFailedCount != nil {
                map["sourceFailedCount"] = self.sourceFailedCount!
            }
            if self.sourceReadyCount != nil {
                map["sourceReadyCount"] = self.sourceReadyCount!
            }
            if self.sourceTotalCount != nil {
                map["sourceTotalCount"] = self.sourceTotalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["creatorName"] as? String {
                self.creatorName = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["directoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["gmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["path"] as? String {
                self.path = value
            }
            if let value = dict["sourceFailedCount"] as? Int64 {
                self.sourceFailedCount = value
            }
            if let value = dict["sourceReadyCount"] as? Int64 {
                self.sourceReadyCount = value
            }
            if let value = dict["sourceTotalCount"] as? Int64 {
                self.sourceTotalCount = value
            }
        }
    }
    public var code: String?

    public var items: [ListVisibleKnowledgeBasesResponseBody.Items]?

    public var message: String?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [ListVisibleKnowledgeBasesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListVisibleKnowledgeBasesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListVisibleKnowledgeBasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVisibleKnowledgeBasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVisibleKnowledgeBasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MoveKnowledgeBaseResourceRequest : Tea.TeaModel {
    public var knowledgeId: String?

    public var sourceDirectoryId: String?

    public var sourceId: String?

    public var targetDirectoryId: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["knowledgeId"] = self.knowledgeId!
        }
        if self.sourceDirectoryId != nil {
            map["sourceDirectoryId"] = self.sourceDirectoryId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.targetDirectoryId != nil {
            map["targetDirectoryId"] = self.targetDirectoryId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["knowledgeId"] as? String {
            self.knowledgeId = value
        }
        if let value = dict["sourceDirectoryId"] as? String {
            self.sourceDirectoryId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["targetDirectoryId"] as? String {
            self.targetDirectoryId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class MoveKnowledgeBaseResourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var knowledgeId: String?

    public var message: String?

    public var requestId: String?

    public var sourceDirectoryId: String?

    public var sourceId: String?

    public var targetDirectoryId: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.knowledgeId != nil {
            map["knowledgeId"] = self.knowledgeId!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sourceDirectoryId != nil {
            map["sourceDirectoryId"] = self.sourceDirectoryId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.targetDirectoryId != nil {
            map["targetDirectoryId"] = self.targetDirectoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["knowledgeId"] as? String {
            self.knowledgeId = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sourceDirectoryId"] as? String {
            self.sourceDirectoryId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["targetDirectoryId"] as? String {
            self.targetDirectoryId = value
        }
    }
}

public class MoveKnowledgeBaseResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveKnowledgeBaseResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = MoveKnowledgeBaseResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MoveResourceRequest : Tea.TeaModel {
    public var sourceDirectoryId: String?

    public var sourceId: String?

    public var targetDirectoryId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceDirectoryId != nil {
            map["sourceDirectoryId"] = self.sourceDirectoryId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.targetDirectoryId != nil {
            map["targetDirectoryId"] = self.targetDirectoryId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sourceDirectoryId"] as? String {
            self.sourceDirectoryId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["targetDirectoryId"] as? String {
            self.targetDirectoryId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class MoveResourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var sourceDirectoryId: String?

    public var sourceId: String?

    public var success: Bool?

    public var targetDirectoryId: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sourceDirectoryId != nil {
            map["sourceDirectoryId"] = self.sourceDirectoryId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.targetDirectoryId != nil {
            map["targetDirectoryId"] = self.targetDirectoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sourceDirectoryId"] as? String {
            self.sourceDirectoryId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["targetDirectoryId"] as? String {
            self.targetDirectoryId = value
        }
    }
}

public class MoveResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = MoveResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PreviewKnowledgeBaseSourceRequest : Tea.TeaModel {
    public var sourceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class PreviewKnowledgeBaseSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var content: String?

    public var fileExt: String?

    public var fileName: String?

    public var message: String?

    public var previewType: String?

    public var previewUrl: String?

    public var publicUrl: String?

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
            map["code"] = self.code!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.fileExt != nil {
            map["fileExt"] = self.fileExt!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.previewType != nil {
            map["previewType"] = self.previewType!
        }
        if self.previewUrl != nil {
            map["previewUrl"] = self.previewUrl!
        }
        if self.publicUrl != nil {
            map["publicUrl"] = self.publicUrl!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["fileExt"] as? String {
            self.fileExt = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["previewType"] as? String {
            self.previewType = value
        }
        if let value = dict["previewUrl"] as? String {
            self.previewUrl = value
        }
        if let value = dict["publicUrl"] as? String {
            self.publicUrl = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class PreviewKnowledgeBaseSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PreviewKnowledgeBaseSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PreviewKnowledgeBaseSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PreviewPersonalSourceHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

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
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class PreviewPersonalSourceRequest : Tea.TeaModel {
    public var sourceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class PreviewPersonalSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var content: String?

    public var fileExt: String?

    public var fileName: String?

    public var message: String?

    public var previewType: String?

    public var previewUrl: String?

    public var publicUrl: String?

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
            map["code"] = self.code!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.fileExt != nil {
            map["fileExt"] = self.fileExt!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.previewType != nil {
            map["previewType"] = self.previewType!
        }
        if self.previewUrl != nil {
            map["previewUrl"] = self.previewUrl!
        }
        if self.publicUrl != nil {
            map["publicUrl"] = self.publicUrl!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["fileExt"] as? String {
            self.fileExt = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["previewType"] as? String {
            self.previewType = value
        }
        if let value = dict["previewUrl"] as? String {
            self.previewUrl = value
        }
        if let value = dict["publicUrl"] as? String {
            self.publicUrl = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class PreviewPersonalSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PreviewPersonalSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PreviewPersonalSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPrimaryObjectDataRequest : Tea.TeaModel {
    public var keyword: String?

    public var onlyFavorites: Bool?

    public var operatingObjectName: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.onlyFavorites != nil {
            map["onlyFavorites"] = self.onlyFavorites!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["onlyFavorites"] as? Bool {
            self.onlyFavorites = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class QueryPrimaryObjectDataResponseBody : Tea.TeaModel {
    public var code: String?

    public var items: [[String: String]]?

    public var message: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.items != nil {
            map["items"] = self.items!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [[String: String]] {
            self.items = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class QueryPrimaryObjectDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPrimaryObjectDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryPrimaryObjectDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySemanticKnowledgeRequest : Tea.TeaModel {
    public var agentName: String?

    public var graphName: String?

    public var query: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["agentName"] = self.agentName!
        }
        if self.graphName != nil {
            map["graphName"] = self.graphName!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentName"] as? String {
            self.agentName = value
        }
        if let value = dict["graphName"] as? String {
            self.graphName = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class QuerySemanticKnowledgeResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var schemaKnowledge: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.schemaKnowledge != nil {
            map["schemaKnowledge"] = self.schemaKnowledge!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["schemaKnowledge"] as? String {
            self.schemaKnowledge = value
        }
    }
}

public class QuerySemanticKnowledgeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySemanticKnowledgeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QuerySemanticKnowledgeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySyncResultRequest : Tea.TeaModel {
    public var taskId: Int64?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class QuerySyncResultResponseBody : Tea.TeaModel {
    public class DeptStats : Tea.TeaModel {
        public var created: Int64?

        public var deleted: Int64?

        public var moved: Int64?

        public var renamed: Int64?

        public var skipped: Int64?

        public var totalExternal: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.deleted != nil {
                map["deleted"] = self.deleted!
            }
            if self.moved != nil {
                map["moved"] = self.moved!
            }
            if self.renamed != nil {
                map["renamed"] = self.renamed!
            }
            if self.skipped != nil {
                map["skipped"] = self.skipped!
            }
            if self.totalExternal != nil {
                map["totalExternal"] = self.totalExternal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["created"] as? Int64 {
                self.created = value
            }
            if let value = dict["deleted"] as? Int64 {
                self.deleted = value
            }
            if let value = dict["moved"] as? Int64 {
                self.moved = value
            }
            if let value = dict["renamed"] as? Int64 {
                self.renamed = value
            }
            if let value = dict["skipped"] as? Int64 {
                self.skipped = value
            }
            if let value = dict["totalExternal"] as? Int64 {
                self.totalExternal = value
            }
        }
    }
    public class MemberStats : Tea.TeaModel {
        public var failed: Int64?

        public var relationshipAdded: Int64?

        public var relationshipRemoved: Int64?

        public var totalExternal: Int64?

        public var unchanged: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failed != nil {
                map["failed"] = self.failed!
            }
            if self.relationshipAdded != nil {
                map["relationshipAdded"] = self.relationshipAdded!
            }
            if self.relationshipRemoved != nil {
                map["relationshipRemoved"] = self.relationshipRemoved!
            }
            if self.totalExternal != nil {
                map["totalExternal"] = self.totalExternal!
            }
            if self.unchanged != nil {
                map["unchanged"] = self.unchanged!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["failed"] as? Int64 {
                self.failed = value
            }
            if let value = dict["relationshipAdded"] as? Int64 {
                self.relationshipAdded = value
            }
            if let value = dict["relationshipRemoved"] as? Int64 {
                self.relationshipRemoved = value
            }
            if let value = dict["totalExternal"] as? Int64 {
                self.totalExternal = value
            }
            if let value = dict["unchanged"] as? Int64 {
                self.unchanged = value
            }
        }
    }
    public var code: String?

    public var completedAt: String?

    public var corpId: String?

    public var deptStats: QuerySyncResultResponseBody.DeptStats?

    public var durationSeconds: Int64?

    public var errorMessage: String?

    public var memberStats: QuerySyncResultResponseBody.MemberStats?

    public var message: String?

    public var platformType: String?

    public var requestId: String?

    public var startedAt: String?

    public var status: String?

    public var submittedAt: String?

    public var summary: String?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deptStats?.validate()
        try self.memberStats?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.completedAt != nil {
            map["completedAt"] = self.completedAt!
        }
        if self.corpId != nil {
            map["corpId"] = self.corpId!
        }
        if self.deptStats != nil {
            map["deptStats"] = self.deptStats?.toMap()
        }
        if self.durationSeconds != nil {
            map["durationSeconds"] = self.durationSeconds!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.memberStats != nil {
            map["memberStats"] = self.memberStats?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.platformType != nil {
            map["platformType"] = self.platformType!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.startedAt != nil {
            map["startedAt"] = self.startedAt!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.submittedAt != nil {
            map["submittedAt"] = self.submittedAt!
        }
        if self.summary != nil {
            map["summary"] = self.summary!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["completedAt"] as? String {
            self.completedAt = value
        }
        if let value = dict["corpId"] as? String {
            self.corpId = value
        }
        if let value = dict["deptStats"] as? [String: Any?] {
            var model = QuerySyncResultResponseBody.DeptStats()
            model.fromMap(value)
            self.deptStats = model
        }
        if let value = dict["durationSeconds"] as? Int64 {
            self.durationSeconds = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["memberStats"] as? [String: Any?] {
            var model = QuerySyncResultResponseBody.MemberStats()
            model.fromMap(value)
            self.memberStats = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["platformType"] as? String {
            self.platformType = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["startedAt"] as? String {
            self.startedAt = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["submittedAt"] as? String {
            self.submittedAt = value
        }
        if let value = dict["summary"] as? String {
            self.summary = value
        }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class QuerySyncResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySyncResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QuerySyncResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecommendNextActionsRequest : Tea.TeaModel {
    public var customPrompt: String?

    public var outputType: String?

    public var recentMessageCount: Int64?

    public var sessionId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customPrompt != nil {
            map["customPrompt"] = self.customPrompt!
        }
        if self.outputType != nil {
            map["outputType"] = self.outputType!
        }
        if self.recentMessageCount != nil {
            map["recentMessageCount"] = self.recentMessageCount!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["customPrompt"] as? String {
            self.customPrompt = value
        }
        if let value = dict["outputType"] as? String {
            self.outputType = value
        }
        if let value = dict["recentMessageCount"] as? Int64 {
            self.recentMessageCount = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class RecommendNextActionsResponseBody : Tea.TeaModel {
    public class NextActions : Tea.TeaModel {
        public var actionTitle: String?

        public var skillCode: String?

        public var skillName: String?

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
            if self.actionTitle != nil {
                map["actionTitle"] = self.actionTitle!
            }
            if self.skillCode != nil {
                map["skillCode"] = self.skillCode!
            }
            if self.skillName != nil {
                map["skillName"] = self.skillName!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["actionTitle"] as? String {
                self.actionTitle = value
            }
            if let value = dict["skillCode"] as? String {
                self.skillCode = value
            }
            if let value = dict["skillName"] as? String {
                self.skillName = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var nextActions: [RecommendNextActionsResponseBody.NextActions]?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextActions != nil {
            var tmp : [Any] = []
            for k in self.nextActions! {
                tmp.append(k.toMap())
            }
            map["nextActions"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["nextActions"] as? [Any?] {
            var tmp : [RecommendNextActionsResponseBody.NextActions] = []
            for v in value {
                if v != nil {
                    var model = RecommendNextActionsResponseBody.NextActions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nextActions = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class RecommendNextActionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecommendNextActionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RecommendNextActionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveUserRequest : Tea.TeaModel {
    public var tenantId: String?

    public var wnUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class RemoveUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var wnUserId: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class RemoveUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenameKnowledgeBaseSourceRequest : Tea.TeaModel {
    public var newName: String?

    public var sourceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newName != nil {
            map["newName"] = self.newName!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["newName"] as? String {
            self.newName = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class RenameKnowledgeBaseSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var gmtModified: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var sourceId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class RenameKnowledgeBaseSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenameKnowledgeBaseSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RenameKnowledgeBaseSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenameSourceRequest : Tea.TeaModel {
    public var newName: String?

    public var sourceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newName != nil {
            map["newName"] = self.newName!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["newName"] as? String {
            self.newName = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class RenameSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var gmtModified: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var sourceId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class RenameSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenameSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RenameSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReparseSourceRequest : Tea.TeaModel {
    public var forceSync: Bool?

    public var sourceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forceSync != nil {
            map["forceSync"] = self.forceSync!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["forceSync"] as? Bool {
            self.forceSync = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ReparseSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var sourceId: String?

    public var sourceType: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ReparseSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReparseSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReparseSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReplaceKnowledgeBaseSourceFileRequest : Tea.TeaModel {
    public var fileName: String?

    public var filePath: String?

    public var filePublicUrl: String?

    public var fileRecordId: String?

    public var forceSync: Bool?

    public var sourceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["fileName"] = self.fileName!
        }
        if self.filePath != nil {
            map["filePath"] = self.filePath!
        }
        if self.filePublicUrl != nil {
            map["filePublicUrl"] = self.filePublicUrl!
        }
        if self.fileRecordId != nil {
            map["fileRecordId"] = self.fileRecordId!
        }
        if self.forceSync != nil {
            map["forceSync"] = self.forceSync!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["filePath"] as? String {
            self.filePath = value
        }
        if let value = dict["filePublicUrl"] as? String {
            self.filePublicUrl = value
        }
        if let value = dict["fileRecordId"] as? String {
            self.fileRecordId = value
        }
        if let value = dict["forceSync"] as? Bool {
            self.forceSync = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ReplaceKnowledgeBaseSourceFileResponseBody : Tea.TeaModel {
    public var code: String?

    public var filePath: String?

    public var filePublicUrl: String?

    public var fileRecordId: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var sourceId: String?

    public var sourceType: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.filePath != nil {
            map["filePath"] = self.filePath!
        }
        if self.filePublicUrl != nil {
            map["filePublicUrl"] = self.filePublicUrl!
        }
        if self.fileRecordId != nil {
            map["fileRecordId"] = self.fileRecordId!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["filePath"] as? String {
            self.filePath = value
        }
        if let value = dict["filePublicUrl"] as? String {
            self.filePublicUrl = value
        }
        if let value = dict["fileRecordId"] as? String {
            self.fileRecordId = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ReplaceKnowledgeBaseSourceFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReplaceKnowledgeBaseSourceFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReplaceKnowledgeBaseSourceFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReplaceObjectBindingsRequest : Tea.TeaModel {
    public class ObjectBindings : Tea.TeaModel {
        public var graphName: String?

        public var objectId: String?

        public var objectType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.graphName != nil {
                map["graphName"] = self.graphName!
            }
            if self.objectId != nil {
                map["objectId"] = self.objectId!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["graphName"] as? String {
                self.graphName = value
            }
            if let value = dict["objectId"] as? String {
                self.objectId = value
            }
            if let value = dict["objectType"] as? String {
                self.objectType = value
            }
        }
    }
    public var objectBindings: [ReplaceObjectBindingsRequest.ObjectBindings]?

    public var sourceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.objectBindings != nil {
            var tmp : [Any] = []
            for k in self.objectBindings! {
                tmp.append(k.toMap())
            }
            map["objectBindings"] = tmp
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["objectBindings"] as? [Any?] {
            var tmp : [ReplaceObjectBindingsRequest.ObjectBindings] = []
            for v in value {
                if v != nil {
                    var model = ReplaceObjectBindingsRequest.ObjectBindings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.objectBindings = tmp
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ReplaceObjectBindingsShrinkRequest : Tea.TeaModel {
    public var objectBindingsShrink: String?

    public var sourceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.objectBindingsShrink != nil {
            map["objectBindings"] = self.objectBindingsShrink!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["objectBindings"] as? String {
            self.objectBindingsShrink = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ReplaceObjectBindingsResponseBody : Tea.TeaModel {
    public class ObjectBindings : Tea.TeaModel {
        public var graphName: String?

        public var objectId: String?

        public var objectType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.graphName != nil {
                map["graphName"] = self.graphName!
            }
            if self.objectId != nil {
                map["objectId"] = self.objectId!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["graphName"] as? String {
                self.graphName = value
            }
            if let value = dict["objectId"] as? String {
                self.objectId = value
            }
            if let value = dict["objectType"] as? String {
                self.objectType = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var objectBindings: [ReplaceObjectBindingsResponseBody.ObjectBindings]?

    public var requestId: String?

    public var sourceId: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.objectBindings != nil {
            var tmp : [Any] = []
            for k in self.objectBindings! {
                tmp.append(k.toMap())
            }
            map["objectBindings"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["objectBindings"] as? [Any?] {
            var tmp : [ReplaceObjectBindingsResponseBody.ObjectBindings] = []
            for v in value {
                if v != nil {
                    var model = ReplaceObjectBindingsResponseBody.ObjectBindings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.objectBindings = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
    }
}

public class ReplaceObjectBindingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReplaceObjectBindingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReplaceObjectBindingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReplaceSourceFileRequest : Tea.TeaModel {
    public var fileName: String?

    public var filePath: String?

    public var filePublicUrl: String?

    public var fileRecordId: String?

    public var forceSync: Bool?

    public var sourceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["fileName"] = self.fileName!
        }
        if self.filePath != nil {
            map["filePath"] = self.filePath!
        }
        if self.filePublicUrl != nil {
            map["filePublicUrl"] = self.filePublicUrl!
        }
        if self.fileRecordId != nil {
            map["fileRecordId"] = self.fileRecordId!
        }
        if self.forceSync != nil {
            map["forceSync"] = self.forceSync!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["filePath"] as? String {
            self.filePath = value
        }
        if let value = dict["filePublicUrl"] as? String {
            self.filePublicUrl = value
        }
        if let value = dict["fileRecordId"] as? String {
            self.fileRecordId = value
        }
        if let value = dict["forceSync"] as? Bool {
            self.forceSync = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ReplaceSourceFileResponseBody : Tea.TeaModel {
    public var code: String?

    public var filePath: String?

    public var filePublicUrl: String?

    public var fileRecordId: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var sourceId: String?

    public var sourceType: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.filePath != nil {
            map["filePath"] = self.filePath!
        }
        if self.filePublicUrl != nil {
            map["filePublicUrl"] = self.filePublicUrl!
        }
        if self.fileRecordId != nil {
            map["fileRecordId"] = self.fileRecordId!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["filePath"] as? String {
            self.filePath = value
        }
        if let value = dict["filePublicUrl"] as? String {
            self.filePublicUrl = value
        }
        if let value = dict["fileRecordId"] as? String {
            self.fileRecordId = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ReplaceSourceFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReplaceSourceFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReplaceSourceFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetPasswordRequest : Tea.TeaModel {
    public var passwordEncrypted: String?

    public var tenantId: String?

    public var wnUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passwordEncrypted != nil {
            map["passwordEncrypted"] = self.passwordEncrypted!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["passwordEncrypted"] as? String {
            self.passwordEncrypted = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class ResetPasswordResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var wnUserId: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class ResetPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResetPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetTokenRequest : Tea.TeaModel {
    public var tenantId: String?

    public var wnUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class ResetTokenResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var token: String?

    public var tokenMasked: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.tokenMasked != nil {
            map["tokenMasked"] = self.tokenMasked!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["token"] as? String {
            self.token = value
        }
        if let value = dict["tokenMasked"] as? String {
            self.tokenMasked = value
        }
    }
}

public class ResetTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResetTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RetryDirectoryFailedSourcesRequest : Tea.TeaModel {
    public var directoryId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class RetryDirectoryFailedSourcesResponseBody : Tea.TeaModel {
    public class FailedSources : Tea.TeaModel {
        public var name: String?

        public var sourceId: String?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["sourceId"] as? String {
                self.sourceId = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
        }
    }
    public var code: String?

    public var directoryId: String?

    public var enqueuedCount: Int64?

    public var enqueuedIds: [String]?

    public var failedCount: Int64?

    public var failedSources: [RetryDirectoryFailedSourcesResponseBody.FailedSources]?

    public var message: String?

    public var requestId: String?

    public var skippedCount: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.enqueuedCount != nil {
            map["enqueuedCount"] = self.enqueuedCount!
        }
        if self.enqueuedIds != nil {
            map["enqueuedIds"] = self.enqueuedIds!
        }
        if self.failedCount != nil {
            map["failedCount"] = self.failedCount!
        }
        if self.failedSources != nil {
            var tmp : [Any] = []
            for k in self.failedSources! {
                tmp.append(k.toMap())
            }
            map["failedSources"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.skippedCount != nil {
            map["skippedCount"] = self.skippedCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["enqueuedCount"] as? Int64 {
            self.enqueuedCount = value
        }
        if let value = dict["enqueuedIds"] as? [String] {
            self.enqueuedIds = value
        }
        if let value = dict["failedCount"] as? Int64 {
            self.failedCount = value
        }
        if let value = dict["failedSources"] as? [Any?] {
            var tmp : [RetryDirectoryFailedSourcesResponseBody.FailedSources] = []
            for v in value {
                if v != nil {
                    var model = RetryDirectoryFailedSourcesResponseBody.FailedSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failedSources = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["skippedCount"] as? Int64 {
            self.skippedCount = value
        }
    }
}

public class RetryDirectoryFailedSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryDirectoryFailedSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RetryDirectoryFailedSourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RetryKnowledgeBaseFailedSourcesRequest : Tea.TeaModel {
    public var directoryId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class RetryKnowledgeBaseFailedSourcesResponseBody : Tea.TeaModel {
    public class FailedSources : Tea.TeaModel {
        public var name: String?

        public var sourceId: String?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["sourceId"] as? String {
                self.sourceId = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
        }
    }
    public var code: String?

    public var directoryId: String?

    public var enqueuedCount: Int64?

    public var enqueuedIds: [String]?

    public var failedCount: Int64?

    public var failedSources: [RetryKnowledgeBaseFailedSourcesResponseBody.FailedSources]?

    public var message: String?

    public var requestId: String?

    public var skippedCount: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.enqueuedCount != nil {
            map["enqueuedCount"] = self.enqueuedCount!
        }
        if self.enqueuedIds != nil {
            map["enqueuedIds"] = self.enqueuedIds!
        }
        if self.failedCount != nil {
            map["failedCount"] = self.failedCount!
        }
        if self.failedSources != nil {
            var tmp : [Any] = []
            for k in self.failedSources! {
                tmp.append(k.toMap())
            }
            map["failedSources"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.skippedCount != nil {
            map["skippedCount"] = self.skippedCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["enqueuedCount"] as? Int64 {
            self.enqueuedCount = value
        }
        if let value = dict["enqueuedIds"] as? [String] {
            self.enqueuedIds = value
        }
        if let value = dict["failedCount"] as? Int64 {
            self.failedCount = value
        }
        if let value = dict["failedSources"] as? [Any?] {
            var tmp : [RetryKnowledgeBaseFailedSourcesResponseBody.FailedSources] = []
            for v in value {
                if v != nil {
                    var model = RetryKnowledgeBaseFailedSourcesResponseBody.FailedSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failedSources = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["skippedCount"] as? Int64 {
            self.skippedCount = value
        }
    }
}

public class RetryKnowledgeBaseFailedSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryKnowledgeBaseFailedSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RetryKnowledgeBaseFailedSourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RevokeAgentUsersRequest : Tea.TeaModel {
    public var operatingObjectName: String?

    public var tenantId: String?

    public var userGroupIds: [String]?

    public var userIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.userGroupIds != nil {
            map["userGroupIds"] = self.userGroupIds!
        }
        if self.userIds != nil {
            map["userIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["userGroupIds"] as? [String] {
            self.userGroupIds = value
        }
        if let value = dict["userIds"] as? [String] {
            self.userIds = value
        }
    }
}

public class RevokeAgentUsersShrinkRequest : Tea.TeaModel {
    public var operatingObjectName: String?

    public var tenantId: String?

    public var userGroupIdsShrink: String?

    public var userIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.userGroupIdsShrink != nil {
            map["userGroupIds"] = self.userGroupIdsShrink!
        }
        if self.userIdsShrink != nil {
            map["userIds"] = self.userIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["userGroupIds"] as? String {
            self.userGroupIdsShrink = value
        }
        if let value = dict["userIds"] as? String {
            self.userIdsShrink = value
        }
    }
}

public class RevokeAgentUsersResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var revokedCount: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.revokedCount != nil {
            map["revokedCount"] = self.revokedCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["revokedCount"] as? Int64 {
            self.revokedCount = value
        }
    }
}

public class RevokeAgentUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeAgentUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RevokeAgentUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunSkillRequest : Tea.TeaModel {
    public var arguments: [String: Any]?

    public var clientToken: String?

    public var model: String?

    public var operatingObjectName: String?

    public var skillCode: String?

    public var skillName: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arguments != nil {
            map["arguments"] = self.arguments!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.skillCode != nil {
            map["skillCode"] = self.skillCode!
        }
        if self.skillName != nil {
            map["skillName"] = self.skillName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["arguments"] as? [String: Any] {
            self.arguments = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["skillCode"] as? String {
            self.skillCode = value
        }
        if let value = dict["skillName"] as? String {
            self.skillName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class RunSkillShrinkRequest : Tea.TeaModel {
    public var argumentsShrink: String?

    public var clientToken: String?

    public var model: String?

    public var operatingObjectName: String?

    public var skillCode: String?

    public var skillName: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.argumentsShrink != nil {
            map["arguments"] = self.argumentsShrink!
        }
        if self.clientToken != nil {
            map["clientToken"] = self.clientToken!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.skillCode != nil {
            map["skillCode"] = self.skillCode!
        }
        if self.skillName != nil {
            map["skillName"] = self.skillName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["arguments"] as? String {
            self.argumentsShrink = value
        }
        if let value = dict["clientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["skillCode"] as? String {
            self.skillCode = value
        }
        if let value = dict["skillName"] as? String {
            self.skillName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class RunSkillResponseBody : Tea.TeaModel {
    public var code: String?

    public var createdAt: String?

    public var message: String?

    public var requestId: String?

    public var runId: String?

    public var skillCode: String?

    public var skillName: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.runId != nil {
            map["runId"] = self.runId!
        }
        if self.skillCode != nil {
            map["skillCode"] = self.skillCode!
        }
        if self.skillName != nil {
            map["skillName"] = self.skillName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["runId"] as? String {
            self.runId = value
        }
        if let value = dict["skillCode"] as? String {
            self.skillCode = value
        }
        if let value = dict["skillName"] as? String {
            self.skillName = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class RunSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RunSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveOutputFileToResourceRequest : Tea.TeaModel {
    public var directoryId: String?

    public var itemIds: [String]?

    public var mode: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.itemIds != nil {
            map["itemIds"] = self.itemIds!
        }
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["itemIds"] as? [String] {
            self.itemIds = value
        }
        if let value = dict["mode"] as? String {
            self.mode = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class SaveOutputFileToResourceShrinkRequest : Tea.TeaModel {
    public var directoryId: String?

    public var itemIdsShrink: String?

    public var mode: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.itemIdsShrink != nil {
            map["itemIds"] = self.itemIdsShrink!
        }
        if self.mode != nil {
            map["mode"] = self.mode!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["itemIds"] as? String {
            self.itemIdsShrink = value
        }
        if let value = dict["mode"] as? String {
            self.mode = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class SaveOutputFileToResourceResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var itemId: String?

        public var sourceId: String?

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
            if self.errorCode != nil {
                map["errorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.itemId != nil {
                map["itemId"] = self.itemId!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.success != nil {
                map["success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["itemId"] as? String {
                self.itemId = value
            }
            if let value = dict["sourceId"] as? String {
                self.sourceId = value
            }
            if let value = dict["success"] as? Bool {
                self.success = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var results: [SaveOutputFileToResourceResponseBody.Results]?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["results"] as? [Any?] {
            var tmp : [SaveOutputFileToResourceResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = SaveOutputFileToResourceResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.results = tmp
        }
    }
}

public class SaveOutputFileToResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveOutputFileToResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveOutputFileToResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendAsyncChatMessageRequest : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var fileId: String?

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
            if self.fileId != nil {
                map["fileId"] = self.fileId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fileId"] as? String {
                self.fileId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class TaskExecution : Tea.TeaModel {
        public var billingId: String?

        public var enableWebSearch: Bool?

        public var executionId: String?

        public var operatingObjectName: String?

        public var skillCodes: [String]?

        public var taskId: String?

        public var taskName: String?

        public var taskUnderstand: String?

        public var tenantId: String?

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
            if self.billingId != nil {
                map["billingId"] = self.billingId!
            }
            if self.enableWebSearch != nil {
                map["enableWebSearch"] = self.enableWebSearch!
            }
            if self.executionId != nil {
                map["executionId"] = self.executionId!
            }
            if self.operatingObjectName != nil {
                map["operatingObjectName"] = self.operatingObjectName!
            }
            if self.skillCodes != nil {
                map["skillCodes"] = self.skillCodes!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["taskName"] = self.taskName!
            }
            if self.taskUnderstand != nil {
                map["taskUnderstand"] = self.taskUnderstand!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["billingId"] as? String {
                self.billingId = value
            }
            if let value = dict["enableWebSearch"] as? Bool {
                self.enableWebSearch = value
            }
            if let value = dict["executionId"] as? String {
                self.executionId = value
            }
            if let value = dict["operatingObjectName"] as? String {
                self.operatingObjectName = value
            }
            if let value = dict["skillCodes"] as? [String] {
                self.skillCodes = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskName"] as? String {
                self.taskName = value
            }
            if let value = dict["taskUnderstand"] as? String {
                self.taskUnderstand = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
        }
    }
    public var content: String?

    public var contentType: String?

    public var digitalEmployeeName: [String]?

    public var directChat: Bool?

    public var files: [SendAsyncChatMessageRequest.Files]?

    public var model: String?

    public var reuseLastSession: Bool?

    public var sessionId: String?

    public var stream: Bool?

    public var taskExecution: SendAsyncChatMessageRequest.TaskExecution?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.taskExecution?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.digitalEmployeeName != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeName!
        }
        if self.directChat != nil {
            map["directChat"] = self.directChat!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["files"] = tmp
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.reuseLastSession != nil {
            map["reuseLastSession"] = self.reuseLastSession!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.taskExecution != nil {
            map["taskExecution"] = self.taskExecution?.toMap()
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["contentType"] as? String {
            self.contentType = value
        }
        if let value = dict["digitalEmployeeName"] as? [String] {
            self.digitalEmployeeName = value
        }
        if let value = dict["directChat"] as? Bool {
            self.directChat = value
        }
        if let value = dict["files"] as? [Any?] {
            var tmp : [SendAsyncChatMessageRequest.Files] = []
            for v in value {
                if v != nil {
                    var model = SendAsyncChatMessageRequest.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["reuseLastSession"] as? Bool {
            self.reuseLastSession = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["taskExecution"] as? [String: Any?] {
            var model = SendAsyncChatMessageRequest.TaskExecution()
            model.fromMap(value)
            self.taskExecution = model
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class SendAsyncChatMessageShrinkRequest : Tea.TeaModel {
    public var content: String?

    public var contentType: String?

    public var digitalEmployeeNameShrink: String?

    public var directChat: Bool?

    public var filesShrink: String?

    public var model: String?

    public var reuseLastSession: Bool?

    public var sessionId: String?

    public var stream: Bool?

    public var taskExecutionShrink: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["content"] = self.content!
        }
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.digitalEmployeeNameShrink != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeNameShrink!
        }
        if self.directChat != nil {
            map["directChat"] = self.directChat!
        }
        if self.filesShrink != nil {
            map["files"] = self.filesShrink!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.reuseLastSession != nil {
            map["reuseLastSession"] = self.reuseLastSession!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.taskExecutionShrink != nil {
            map["taskExecution"] = self.taskExecutionShrink!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["contentType"] as? String {
            self.contentType = value
        }
        if let value = dict["digitalEmployeeName"] as? String {
            self.digitalEmployeeNameShrink = value
        }
        if let value = dict["directChat"] as? Bool {
            self.directChat = value
        }
        if let value = dict["files"] as? String {
            self.filesShrink = value
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["reuseLastSession"] as? Bool {
            self.reuseLastSession = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["taskExecution"] as? String {
            self.taskExecutionShrink = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class SendAsyncChatMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var messageId: String?

    public var requestId: String?

    public var sessionCreated: Bool?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.messageId != nil {
            map["messageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sessionCreated != nil {
            map["sessionCreated"] = self.sessionCreated!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["messageId"] as? String {
            self.messageId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sessionCreated"] as? Bool {
            self.sessionCreated = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class SendAsyncChatMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendAsyncChatMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendAsyncChatMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendChatMessageRequest : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var fileId: String?

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
            if self.fileId != nil {
                map["fileId"] = self.fileId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fileId"] as? String {
                self.fileId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class TaskExecution : Tea.TeaModel {
        public var billingId: String?

        public var enableWebSearch: Bool?

        public var executionId: String?

        public var operatingObjectName: String?

        public var skillCodes: [String]?

        public var taskId: String?

        public var taskName: String?

        public var taskUnderstand: String?

        public var tenantId: String?

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
            if self.billingId != nil {
                map["billingId"] = self.billingId!
            }
            if self.enableWebSearch != nil {
                map["enableWebSearch"] = self.enableWebSearch!
            }
            if self.executionId != nil {
                map["executionId"] = self.executionId!
            }
            if self.operatingObjectName != nil {
                map["operatingObjectName"] = self.operatingObjectName!
            }
            if self.skillCodes != nil {
                map["skillCodes"] = self.skillCodes!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["taskName"] = self.taskName!
            }
            if self.taskUnderstand != nil {
                map["taskUnderstand"] = self.taskUnderstand!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["billingId"] as? String {
                self.billingId = value
            }
            if let value = dict["enableWebSearch"] as? Bool {
                self.enableWebSearch = value
            }
            if let value = dict["executionId"] as? String {
                self.executionId = value
            }
            if let value = dict["operatingObjectName"] as? String {
                self.operatingObjectName = value
            }
            if let value = dict["skillCodes"] as? [String] {
                self.skillCodes = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskName"] as? String {
                self.taskName = value
            }
            if let value = dict["taskUnderstand"] as? String {
                self.taskUnderstand = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
        }
    }
    public var content: String?

    public var contentType: String?

    public var digitalEmployeeName: [String]?

    public var directChat: Bool?

    public var files: [SendChatMessageRequest.Files]?

    public var model: String?

    public var reuseLastSession: Bool?

    public var sessionId: String?

    public var stream: Bool?

    public var taskExecution: SendChatMessageRequest.TaskExecution?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.taskExecution?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.digitalEmployeeName != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeName!
        }
        if self.directChat != nil {
            map["directChat"] = self.directChat!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["files"] = tmp
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.reuseLastSession != nil {
            map["reuseLastSession"] = self.reuseLastSession!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.taskExecution != nil {
            map["taskExecution"] = self.taskExecution?.toMap()
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["contentType"] as? String {
            self.contentType = value
        }
        if let value = dict["digitalEmployeeName"] as? [String] {
            self.digitalEmployeeName = value
        }
        if let value = dict["directChat"] as? Bool {
            self.directChat = value
        }
        if let value = dict["files"] as? [Any?] {
            var tmp : [SendChatMessageRequest.Files] = []
            for v in value {
                if v != nil {
                    var model = SendChatMessageRequest.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["reuseLastSession"] as? Bool {
            self.reuseLastSession = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["taskExecution"] as? [String: Any?] {
            var model = SendChatMessageRequest.TaskExecution()
            model.fromMap(value)
            self.taskExecution = model
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class SendChatMessageShrinkRequest : Tea.TeaModel {
    public var content: String?

    public var contentType: String?

    public var digitalEmployeeNameShrink: String?

    public var directChat: Bool?

    public var filesShrink: String?

    public var model: String?

    public var reuseLastSession: Bool?

    public var sessionId: String?

    public var stream: Bool?

    public var taskExecutionShrink: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["content"] = self.content!
        }
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.digitalEmployeeNameShrink != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeNameShrink!
        }
        if self.directChat != nil {
            map["directChat"] = self.directChat!
        }
        if self.filesShrink != nil {
            map["files"] = self.filesShrink!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.reuseLastSession != nil {
            map["reuseLastSession"] = self.reuseLastSession!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.taskExecutionShrink != nil {
            map["taskExecution"] = self.taskExecutionShrink!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["contentType"] as? String {
            self.contentType = value
        }
        if let value = dict["digitalEmployeeName"] as? String {
            self.digitalEmployeeNameShrink = value
        }
        if let value = dict["directChat"] as? Bool {
            self.directChat = value
        }
        if let value = dict["files"] as? String {
            self.filesShrink = value
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["reuseLastSession"] as? Bool {
            self.reuseLastSession = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["taskExecution"] as? String {
            self.taskExecutionShrink = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class SendChatMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var content: String?

    public var data: Any?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["data"] as? Any {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class SendChatMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendChatMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendChatMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopChatMessageRequest : Tea.TeaModel {
    public var sessionId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class StopChatMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var finishReason: String?

    public var message: String?

    public var messageId: String?

    public var partialContent: String?

    public var requestId: String?

    public var sessionId: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.finishReason != nil {
            map["finishReason"] = self.finishReason!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.messageId != nil {
            map["messageId"] = self.messageId!
        }
        if self.partialContent != nil {
            map["partialContent"] = self.partialContent!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["finishReason"] as? String {
            self.finishReason = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["messageId"] as? String {
            self.messageId = value
        }
        if let value = dict["partialContent"] as? String {
            self.partialContent = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class StopChatMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopChatMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopChatMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StreamChatMessageRequest : Tea.TeaModel {
    public var lastEventId: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lastEventId != nil {
            map["lastEventId"] = self.lastEventId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["lastEventId"] as? String {
            self.lastEventId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class StreamChatMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? Any {
            self.data = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class StreamChatMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StreamChatMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StreamChatMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SyncOrgStructureRequest : Tea.TeaModel {
    public class Departments : Tea.TeaModel {
        public var deptId: String?

        public var deptName: String?

        public var order: Int64?

        public var parentDeptId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deptId != nil {
                map["deptId"] = self.deptId!
            }
            if self.deptName != nil {
                map["deptName"] = self.deptName!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.parentDeptId != nil {
                map["parentDeptId"] = self.parentDeptId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deptId"] as? String {
                self.deptId = value
            }
            if let value = dict["deptName"] as? String {
                self.deptName = value
            }
            if let value = dict["order"] as? Int64 {
                self.order = value
            }
            if let value = dict["parentDeptId"] as? String {
                self.parentDeptId = value
            }
        }
    }
    public class Members : Tea.TeaModel {
        public var accountId: String?

        public var deptId: String?

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
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            if self.deptId != nil {
                map["deptId"] = self.deptId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accountId"] as? String {
                self.accountId = value
            }
            if let value = dict["deptId"] as? String {
                self.deptId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var corpId: String?

    public var departments: [SyncOrgStructureRequest.Departments]?

    public var members: [SyncOrgStructureRequest.Members]?

    public var platformType: String?

    public var ssoSettingsId: String?

    public var syncMembers: Bool?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.corpId != nil {
            map["corpId"] = self.corpId!
        }
        if self.departments != nil {
            var tmp : [Any] = []
            for k in self.departments! {
                tmp.append(k.toMap())
            }
            map["departments"] = tmp
        }
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["members"] = tmp
        }
        if self.platformType != nil {
            map["platformType"] = self.platformType!
        }
        if self.ssoSettingsId != nil {
            map["ssoSettingsId"] = self.ssoSettingsId!
        }
        if self.syncMembers != nil {
            map["syncMembers"] = self.syncMembers!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["corpId"] as? String {
            self.corpId = value
        }
        if let value = dict["departments"] as? [Any?] {
            var tmp : [SyncOrgStructureRequest.Departments] = []
            for v in value {
                if v != nil {
                    var model = SyncOrgStructureRequest.Departments()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.departments = tmp
        }
        if let value = dict["members"] as? [Any?] {
            var tmp : [SyncOrgStructureRequest.Members] = []
            for v in value {
                if v != nil {
                    var model = SyncOrgStructureRequest.Members()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.members = tmp
        }
        if let value = dict["platformType"] as? String {
            self.platformType = value
        }
        if let value = dict["ssoSettingsId"] as? String {
            self.ssoSettingsId = value
        }
        if let value = dict["syncMembers"] as? Bool {
            self.syncMembers = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class SyncOrgStructureShrinkRequest : Tea.TeaModel {
    public var corpId: String?

    public var departmentsShrink: String?

    public var membersShrink: String?

    public var platformType: String?

    public var ssoSettingsId: String?

    public var syncMembers: Bool?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.corpId != nil {
            map["corpId"] = self.corpId!
        }
        if self.departmentsShrink != nil {
            map["departments"] = self.departmentsShrink!
        }
        if self.membersShrink != nil {
            map["members"] = self.membersShrink!
        }
        if self.platformType != nil {
            map["platformType"] = self.platformType!
        }
        if self.ssoSettingsId != nil {
            map["ssoSettingsId"] = self.ssoSettingsId!
        }
        if self.syncMembers != nil {
            map["syncMembers"] = self.syncMembers!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["corpId"] as? String {
            self.corpId = value
        }
        if let value = dict["departments"] as? String {
            self.departmentsShrink = value
        }
        if let value = dict["members"] as? String {
            self.membersShrink = value
        }
        if let value = dict["platformType"] as? String {
            self.platformType = value
        }
        if let value = dict["ssoSettingsId"] as? String {
            self.ssoSettingsId = value
        }
        if let value = dict["syncMembers"] as? Bool {
            self.syncMembers = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class SyncOrgStructureResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var taskId: Int64?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class SyncOrgStructureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncOrgStructureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SyncOrgStructureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TogglePrimaryObjectFavoriteRequest : Tea.TeaModel {
    public var action: String?

    public var objectIds: [String]?

    public var objectType: String?

    public var operatingObjectName: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["action"] = self.action!
        }
        if self.objectIds != nil {
            map["objectIds"] = self.objectIds!
        }
        if self.objectType != nil {
            map["objectType"] = self.objectType!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["action"] as? String {
            self.action = value
        }
        if let value = dict["objectIds"] as? [String] {
            self.objectIds = value
        }
        if let value = dict["objectType"] as? String {
            self.objectType = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class TogglePrimaryObjectFavoriteShrinkRequest : Tea.TeaModel {
    public var action: String?

    public var objectIdsShrink: String?

    public var objectType: String?

    public var operatingObjectName: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["action"] = self.action!
        }
        if self.objectIdsShrink != nil {
            map["objectIds"] = self.objectIdsShrink!
        }
        if self.objectType != nil {
            map["objectType"] = self.objectType!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["action"] as? String {
            self.action = value
        }
        if let value = dict["objectIds"] as? String {
            self.objectIdsShrink = value
        }
        if let value = dict["objectType"] as? String {
            self.objectType = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class TogglePrimaryObjectFavoriteResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var isFavorited: Bool?

        public var message: String?

        public var objectId: String?

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
            if self.isFavorited != nil {
                map["isFavorited"] = self.isFavorited!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.objectId != nil {
                map["objectId"] = self.objectId!
            }
            if self.success != nil {
                map["success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["isFavorited"] as? Bool {
                self.isFavorited = value
            }
            if let value = dict["message"] as? String {
                self.message = value
            }
            if let value = dict["objectId"] as? String {
                self.objectId = value
            }
            if let value = dict["success"] as? Bool {
                self.success = value
            }
        }
    }
    public var code: String?

    public var favoriteCount: Int64?

    public var message: String?

    public var requestId: String?

    public var results: [TogglePrimaryObjectFavoriteResponseBody.Results]?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.favoriteCount != nil {
            map["favoriteCount"] = self.favoriteCount!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["favoriteCount"] as? Int64 {
            self.favoriteCount = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["results"] as? [Any?] {
            var tmp : [TogglePrimaryObjectFavoriteResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = TogglePrimaryObjectFavoriteResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.results = tmp
        }
    }
}

public class TogglePrimaryObjectFavoriteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TogglePrimaryObjectFavoriteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TogglePrimaryObjectFavoriteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAgentAuthModeRequest : Tea.TeaModel {
    public var authMode: String?

    public var operatingObjectName: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMode != nil {
            map["authMode"] = self.authMode!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authMode"] as? String {
            self.authMode = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class UpdateAgentAuthModeResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var updated: Bool?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.updated != nil {
            map["updated"] = self.updated!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["updated"] as? Bool {
            self.updated = value
        }
    }
}

public class UpdateAgentAuthModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAgentAuthModeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateAgentAuthModeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateChatSessionRequest : Tea.TeaModel {
    public var model: String?

    public var sessionId: String?

    public var tenantId: String?

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
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class UpdateChatSessionResponseBody : Tea.TeaModel {
    public class Session : Tea.TeaModel {
        public var createdAt: Int64?

        public var id: String?

        public var isExpired: Bool?

        public var metadata: [String: Any]?

        public var model: String?

        public var object: String?

        public var objectId: String?

        public var operatingObjectName: [String]?

        public var title: String?

        public var updatedAt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.isExpired != nil {
                map["isExpired"] = self.isExpired!
            }
            if self.metadata != nil {
                map["metadata"] = self.metadata!
            }
            if self.model != nil {
                map["model"] = self.model!
            }
            if self.object != nil {
                map["object"] = self.object!
            }
            if self.objectId != nil {
                map["objectId"] = self.objectId!
            }
            if self.operatingObjectName != nil {
                map["operatingObjectName"] = self.operatingObjectName!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createdAt"] as? Int64 {
                self.createdAt = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["isExpired"] as? Bool {
                self.isExpired = value
            }
            if let value = dict["metadata"] as? [String: Any] {
                self.metadata = value
            }
            if let value = dict["model"] as? String {
                self.model = value
            }
            if let value = dict["object"] as? String {
                self.object = value
            }
            if let value = dict["objectId"] as? String {
                self.objectId = value
            }
            if let value = dict["operatingObjectName"] as? [String] {
                self.operatingObjectName = value
            }
            if let value = dict["title"] as? String {
                self.title = value
            }
            if let value = dict["updatedAt"] as? Int64 {
                self.updatedAt = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var session: UpdateChatSessionResponseBody.Session?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.session?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.session != nil {
            map["session"] = self.session?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["session"] as? [String: Any?] {
            var model = UpdateChatSessionResponseBody.Session()
            model.fromMap(value)
            self.session = model
        }
    }
}

public class UpdateChatSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateChatSessionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateChatSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDirectoryRequest : Tea.TeaModel {
    public var description_: String?

    public var directoryId: String?

    public var name: String?

    public var parentId: Int64?

    public var path: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parentId"] as? Int64 {
            self.parentId = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class UpdateDirectoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

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
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateKnowledgeBaseDirectoryRequest : Tea.TeaModel {
    public var description_: String?

    public var directoryId: String?

    public var name: String?

    public var parentDirectoryId: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentDirectoryId != nil {
            map["parentDirectoryId"] = self.parentDirectoryId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parentDirectoryId"] as? String {
            self.parentDirectoryId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class UpdateKnowledgeBaseDirectoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

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
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateKnowledgeBaseDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateKnowledgeBaseDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateKnowledgeBaseDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateKnowledgeBaseSourceContentRequest : Tea.TeaModel {
    public var content: String?

    public var forceSync: Bool?

    public var sourceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["content"] = self.content!
        }
        if self.forceSync != nil {
            map["forceSync"] = self.forceSync!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["forceSync"] as? Bool {
            self.forceSync = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class UpdateKnowledgeBaseSourceContentResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var sourceId: String?

    public var sourceType: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class UpdateKnowledgeBaseSourceContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateKnowledgeBaseSourceContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateKnowledgeBaseSourceContentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateKnowledgeBaseSourceTagsRequest : Tea.TeaModel {
    public var sourceId: String?

    public var sourceTags: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.sourceTags != nil {
            map["sourceTags"] = self.sourceTags!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["sourceTags"] as? String {
            self.sourceTags = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class UpdateKnowledgeBaseSourceTagsResponseBody : Tea.TeaModel {
    public var code: String?

    public var gmtModified: String?

    public var message: String?

    public var requestId: String?

    public var sourceId: String?

    public var sourceTags: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.sourceTags != nil {
            map["sourceTags"] = self.sourceTags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["sourceTags"] as? String {
            self.sourceTags = value
        }
    }
}

public class UpdateKnowledgeBaseSourceTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateKnowledgeBaseSourceTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateKnowledgeBaseSourceTagsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateScheduledTaskRequest : Tea.TeaModel {
    public class Description_ : Tea.TeaModel {
        public var content: String?

        public var enabled: Bool?

        public var name: String?

        public var objectId: String?

        public var objectType: String?

        public var skillCode: String?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectId != nil {
                map["objectId"] = self.objectId!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
            }
            if self.skillCode != nil {
                map["skillCode"] = self.skillCode!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["objectId"] as? String {
                self.objectId = value
            }
            if let value = dict["objectType"] as? String {
                self.objectType = value
            }
            if let value = dict["skillCode"] as? String {
                self.skillCode = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class Segments : Tea.TeaModel {
        public var content: String?

        public var enabled: Bool?

        public var name: String?

        public var objectId: String?

        public var objectType: String?

        public var skillCode: String?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.objectId != nil {
                map["objectId"] = self.objectId!
            }
            if self.objectType != nil {
                map["objectType"] = self.objectType!
            }
            if self.skillCode != nil {
                map["skillCode"] = self.skillCode!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["objectId"] as? String {
                self.objectId = value
            }
            if let value = dict["objectType"] as? String {
                self.objectType = value
            }
            if let value = dict["skillCode"] as? String {
                self.skillCode = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
        }
    }
    public class TaskDetail : Tea.TeaModel {
        public class RelatedObjects : Tea.TeaModel {
            public var mentionType: String?

            public var name: String?

            public var objectId: String?

            public var objectType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mentionType != nil {
                    map["mentionType"] = self.mentionType!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.objectId != nil {
                    map["objectId"] = self.objectId!
                }
                if self.objectType != nil {
                    map["objectType"] = self.objectType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["mentionType"] as? String {
                    self.mentionType = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["objectId"] as? String {
                    self.objectId = value
                }
                if let value = dict["objectType"] as? String {
                    self.objectType = value
                }
            }
        }
        public class RelatedSemantics : Tea.TeaModel {
            public var attributes: String?

            public var entity: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attributes != nil {
                    map["attributes"] = self.attributes!
                }
                if self.entity != nil {
                    map["entity"] = self.entity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["attributes"] as? String {
                    self.attributes = value
                }
                if let value = dict["entity"] as? String {
                    self.entity = value
                }
            }
        }
        public class RelatedSkills : Tea.TeaModel {
            public var displayName: String?

            public var name: String?

            public var skillCode: String?

            public var sourceIds: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.skillCode != nil {
                    map["skillCode"] = self.skillCode!
                }
                if self.sourceIds != nil {
                    map["sourceIds"] = self.sourceIds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["displayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["skillCode"] as? String {
                    self.skillCode = value
                }
                if let value = dict["sourceIds"] as? [String] {
                    self.sourceIds = value
                }
            }
        }
        public var relatedObjects: [UpdateScheduledTaskRequest.TaskDetail.RelatedObjects]?

        public var relatedSemantics: [UpdateScheduledTaskRequest.TaskDetail.RelatedSemantics]?

        public var relatedSkills: [UpdateScheduledTaskRequest.TaskDetail.RelatedSkills]?

        public var taskUnderstand: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.relatedObjects != nil {
                var tmp : [Any] = []
                for k in self.relatedObjects! {
                    tmp.append(k.toMap())
                }
                map["relatedObjects"] = tmp
            }
            if self.relatedSemantics != nil {
                var tmp : [Any] = []
                for k in self.relatedSemantics! {
                    tmp.append(k.toMap())
                }
                map["relatedSemantics"] = tmp
            }
            if self.relatedSkills != nil {
                var tmp : [Any] = []
                for k in self.relatedSkills! {
                    tmp.append(k.toMap())
                }
                map["relatedSkills"] = tmp
            }
            if self.taskUnderstand != nil {
                map["taskUnderstand"] = self.taskUnderstand!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["relatedObjects"] as? [Any?] {
                var tmp : [UpdateScheduledTaskRequest.TaskDetail.RelatedObjects] = []
                for v in value {
                    if v != nil {
                        var model = UpdateScheduledTaskRequest.TaskDetail.RelatedObjects()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.relatedObjects = tmp
            }
            if let value = dict["relatedSemantics"] as? [Any?] {
                var tmp : [UpdateScheduledTaskRequest.TaskDetail.RelatedSemantics] = []
                for v in value {
                    if v != nil {
                        var model = UpdateScheduledTaskRequest.TaskDetail.RelatedSemantics()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.relatedSemantics = tmp
            }
            if let value = dict["relatedSkills"] as? [Any?] {
                var tmp : [UpdateScheduledTaskRequest.TaskDetail.RelatedSkills] = []
                for v in value {
                    if v != nil {
                        var model = UpdateScheduledTaskRequest.TaskDetail.RelatedSkills()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.relatedSkills = tmp
            }
            if let value = dict["taskUnderstand"] as? String {
                self.taskUnderstand = value
            }
        }
    }
    public class TriggerConfig : Tea.TeaModel {
        public class PushConfig : Tea.TeaModel {
            public var channelType: String?

            public var contentScope: String?

            public var deliveryMethod: String?

            public var enabled: Bool?

            public var fileFormat: String?

            public var operatingObjectName: String?

            public var receiverType: String?

            public override init() {
                super.init()
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
                    map["channelType"] = self.channelType!
                }
                if self.contentScope != nil {
                    map["contentScope"] = self.contentScope!
                }
                if self.deliveryMethod != nil {
                    map["deliveryMethod"] = self.deliveryMethod!
                }
                if self.enabled != nil {
                    map["enabled"] = self.enabled!
                }
                if self.fileFormat != nil {
                    map["fileFormat"] = self.fileFormat!
                }
                if self.operatingObjectName != nil {
                    map["operatingObjectName"] = self.operatingObjectName!
                }
                if self.receiverType != nil {
                    map["receiverType"] = self.receiverType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["channelType"] as? String {
                    self.channelType = value
                }
                if let value = dict["contentScope"] as? String {
                    self.contentScope = value
                }
                if let value = dict["deliveryMethod"] as? String {
                    self.deliveryMethod = value
                }
                if let value = dict["enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["fileFormat"] as? String {
                    self.fileFormat = value
                }
                if let value = dict["operatingObjectName"] as? String {
                    self.operatingObjectName = value
                }
                if let value = dict["receiverType"] as? String {
                    self.receiverType = value
                }
            }
        }
        public var cron: String?

        public var language: String?

        public var pushConfig: [UpdateScheduledTaskRequest.TriggerConfig.PushConfig]?

        public var timezone: String?

        public var triggerMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cron != nil {
                map["cron"] = self.cron!
            }
            if self.language != nil {
                map["language"] = self.language!
            }
            if self.pushConfig != nil {
                var tmp : [Any] = []
                for k in self.pushConfig! {
                    tmp.append(k.toMap())
                }
                map["pushConfig"] = tmp
            }
            if self.timezone != nil {
                map["timezone"] = self.timezone!
            }
            if self.triggerMode != nil {
                map["triggerMode"] = self.triggerMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cron"] as? String {
                self.cron = value
            }
            if let value = dict["language"] as? String {
                self.language = value
            }
            if let value = dict["pushConfig"] as? [Any?] {
                var tmp : [UpdateScheduledTaskRequest.TriggerConfig.PushConfig] = []
                for v in value {
                    if v != nil {
                        var model = UpdateScheduledTaskRequest.TriggerConfig.PushConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pushConfig = tmp
            }
            if let value = dict["timezone"] as? String {
                self.timezone = value
            }
            if let value = dict["triggerMode"] as? String {
                self.triggerMode = value
            }
        }
    }
    public var description_: [UpdateScheduledTaskRequest.Description_]?

    public var digitalEmployeeName: [String]?

    public var isOpen: Bool?

    public var model: String?

    public var name: String?

    public var segments: [UpdateScheduledTaskRequest.Segments]?

    public var taskDetail: UpdateScheduledTaskRequest.TaskDetail?

    public var taskId: String?

    public var tenantId: String?

    public var triggerConfig: UpdateScheduledTaskRequest.TriggerConfig?

    public var visibility: String?

    public var visibleMemberUserIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.taskDetail?.validate()
        try self.triggerConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            var tmp : [Any] = []
            for k in self.description_! {
                tmp.append(k.toMap())
            }
            map["description"] = tmp
        }
        if self.digitalEmployeeName != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeName!
        }
        if self.isOpen != nil {
            map["isOpen"] = self.isOpen!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.segments != nil {
            var tmp : [Any] = []
            for k in self.segments! {
                tmp.append(k.toMap())
            }
            map["segments"] = tmp
        }
        if self.taskDetail != nil {
            map["taskDetail"] = self.taskDetail?.toMap()
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.triggerConfig != nil {
            map["triggerConfig"] = self.triggerConfig?.toMap()
        }
        if self.visibility != nil {
            map["visibility"] = self.visibility!
        }
        if self.visibleMemberUserIds != nil {
            map["visibleMemberUserIds"] = self.visibleMemberUserIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? [Any?] {
            var tmp : [UpdateScheduledTaskRequest.Description_] = []
            for v in value {
                if v != nil {
                    var model = UpdateScheduledTaskRequest.Description_()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.description_ = tmp
        }
        if let value = dict["digitalEmployeeName"] as? [String] {
            self.digitalEmployeeName = value
        }
        if let value = dict["isOpen"] as? Bool {
            self.isOpen = value
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["segments"] as? [Any?] {
            var tmp : [UpdateScheduledTaskRequest.Segments] = []
            for v in value {
                if v != nil {
                    var model = UpdateScheduledTaskRequest.Segments()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.segments = tmp
        }
        if let value = dict["taskDetail"] as? [String: Any?] {
            var model = UpdateScheduledTaskRequest.TaskDetail()
            model.fromMap(value)
            self.taskDetail = model
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["triggerConfig"] as? [String: Any?] {
            var model = UpdateScheduledTaskRequest.TriggerConfig()
            model.fromMap(value)
            self.triggerConfig = model
        }
        if let value = dict["visibility"] as? String {
            self.visibility = value
        }
        if let value = dict["visibleMemberUserIds"] as? [String] {
            self.visibleMemberUserIds = value
        }
    }
}

public class UpdateScheduledTaskShrinkRequest : Tea.TeaModel {
    public var descriptionShrink: String?

    public var digitalEmployeeNameShrink: String?

    public var isOpen: Bool?

    public var model: String?

    public var name: String?

    public var segmentsShrink: String?

    public var taskDetailShrink: String?

    public var taskId: String?

    public var tenantId: String?

    public var triggerConfigShrink: String?

    public var visibility: String?

    public var visibleMemberUserIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.descriptionShrink != nil {
            map["description"] = self.descriptionShrink!
        }
        if self.digitalEmployeeNameShrink != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeNameShrink!
        }
        if self.isOpen != nil {
            map["isOpen"] = self.isOpen!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.segmentsShrink != nil {
            map["segments"] = self.segmentsShrink!
        }
        if self.taskDetailShrink != nil {
            map["taskDetail"] = self.taskDetailShrink!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.triggerConfigShrink != nil {
            map["triggerConfig"] = self.triggerConfigShrink!
        }
        if self.visibility != nil {
            map["visibility"] = self.visibility!
        }
        if self.visibleMemberUserIdsShrink != nil {
            map["visibleMemberUserIds"] = self.visibleMemberUserIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.descriptionShrink = value
        }
        if let value = dict["digitalEmployeeName"] as? String {
            self.digitalEmployeeNameShrink = value
        }
        if let value = dict["isOpen"] as? Bool {
            self.isOpen = value
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["segments"] as? String {
            self.segmentsShrink = value
        }
        if let value = dict["taskDetail"] as? String {
            self.taskDetailShrink = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["triggerConfig"] as? String {
            self.triggerConfigShrink = value
        }
        if let value = dict["visibility"] as? String {
            self.visibility = value
        }
        if let value = dict["visibleMemberUserIds"] as? String {
            self.visibleMemberUserIdsShrink = value
        }
    }
}

public class UpdateScheduledTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var taskId: String?

    public var updated: Bool?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.updated != nil {
            map["updated"] = self.updated!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["updated"] as? Bool {
            self.updated = value
        }
    }
}

public class UpdateScheduledTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateScheduledTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateScheduledTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSourceContentRequest : Tea.TeaModel {
    public var content: String?

    public var forceSync: Bool?

    public var sourceId: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["content"] = self.content!
        }
        if self.forceSync != nil {
            map["forceSync"] = self.forceSync!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["forceSync"] as? Bool {
            self.forceSync = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class UpdateSourceContentResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var sourceId: String?

    public var sourceType: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class UpdateSourceContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSourceContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateSourceContentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTenantDirectoryRequest : Tea.TeaModel {
    public var description_: String?

    public var directoryId: String?

    public var name: String?

    public var parentId: Int64?

    public var path: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["parentId"] as? Int64 {
            self.parentId = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class UpdateTenantDirectoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var directoryId: String?

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
            map["code"] = self.code!
        }
        if self.directoryId != nil {
            map["directoryId"] = self.directoryId!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["directoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateTenantDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTenantDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateTenantDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public var displayName: String?

    public var isActive: Bool?

    public var roleCodes: [String]?

    public var tenantId: String?

    public var userGroupIds: [String]?

    public var wnUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.isActive != nil {
            map["isActive"] = self.isActive!
        }
        if self.roleCodes != nil {
            map["roleCodes"] = self.roleCodes!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.userGroupIds != nil {
            map["userGroupIds"] = self.userGroupIds!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["isActive"] as? Bool {
            self.isActive = value
        }
        if let value = dict["roleCodes"] as? [String] {
            self.roleCodes = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["userGroupIds"] as? [String] {
            self.userGroupIds = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class UpdateUserShrinkRequest : Tea.TeaModel {
    public var displayName: String?

    public var isActive: Bool?

    public var roleCodesShrink: String?

    public var tenantId: String?

    public var userGroupIdsShrink: String?

    public var wnUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.isActive != nil {
            map["isActive"] = self.isActive!
        }
        if self.roleCodesShrink != nil {
            map["roleCodes"] = self.roleCodesShrink!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.userGroupIdsShrink != nil {
            map["userGroupIds"] = self.userGroupIdsShrink!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["isActive"] as? Bool {
            self.isActive = value
        }
        if let value = dict["roleCodes"] as? String {
            self.roleCodesShrink = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["userGroupIds"] as? String {
            self.userGroupIdsShrink = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var wnUserId: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.wnUserId != nil {
            map["wnUserId"] = self.wnUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["wnUserId"] as? String {
            self.wnUserId = value
        }
    }
}

public class UpdateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserInfoRequest : Tea.TeaModel {
    public var avatar: String?

    public var languagePreference: String?

    public var name: String?

    public var offering: String?

    public var profileRoleInfo: String?

    public var selfIntroduction: String?

    public var tenantId: String?

    public override init() {
        super.init()
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
            map["avatar"] = self.avatar!
        }
        if self.languagePreference != nil {
            map["languagePreference"] = self.languagePreference!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.offering != nil {
            map["offering"] = self.offering!
        }
        if self.profileRoleInfo != nil {
            map["profileRoleInfo"] = self.profileRoleInfo!
        }
        if self.selfIntroduction != nil {
            map["selfIntroduction"] = self.selfIntroduction!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["avatar"] as? String {
            self.avatar = value
        }
        if let value = dict["languagePreference"] as? String {
            self.languagePreference = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["offering"] as? String {
            self.offering = value
        }
        if let value = dict["profileRoleInfo"] as? String {
            self.profileRoleInfo = value
        }
        if let value = dict["selfIntroduction"] as? String {
            self.selfIntroduction = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class UpdateUserInfoResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public class TenantList : Tea.TeaModel {
            public var tenantId: Int64?

            public var tenantName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.tenantName != nil {
                    map["tenantName"] = self.tenantName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["tenantId"] as? Int64 {
                    self.tenantId = value
                }
                if let value = dict["tenantName"] as? String {
                    self.tenantName = value
                }
            }
        }
        public var avatar: String?

        public var isAdmin: Bool?

        public var isSystemTenant: Bool?

        public var languagePreference: String?

        public var name: String?

        public var offering: String?

        public var parsedOffering: String?

        public var profileRole: String?

        public var profileRoleInfo: String?

        public var selfIntroduction: String?

        public var tenantId: Int64?

        public var tenantList: [UpdateUserInfoResponseBody.User.TenantList]?

        public var tenantName: String?

        public var userCode: String?

        public var userId: Int64?

        public override init() {
            super.init()
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
                map["avatar"] = self.avatar!
            }
            if self.isAdmin != nil {
                map["isAdmin"] = self.isAdmin!
            }
            if self.isSystemTenant != nil {
                map["isSystemTenant"] = self.isSystemTenant!
            }
            if self.languagePreference != nil {
                map["languagePreference"] = self.languagePreference!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.offering != nil {
                map["offering"] = self.offering!
            }
            if self.parsedOffering != nil {
                map["parsedOffering"] = self.parsedOffering!
            }
            if self.profileRole != nil {
                map["profileRole"] = self.profileRole!
            }
            if self.profileRoleInfo != nil {
                map["profileRoleInfo"] = self.profileRoleInfo!
            }
            if self.selfIntroduction != nil {
                map["selfIntroduction"] = self.selfIntroduction!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.tenantList != nil {
                var tmp : [Any] = []
                for k in self.tenantList! {
                    tmp.append(k.toMap())
                }
                map["tenantList"] = tmp
            }
            if self.tenantName != nil {
                map["tenantName"] = self.tenantName!
            }
            if self.userCode != nil {
                map["userCode"] = self.userCode!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["avatar"] as? String {
                self.avatar = value
            }
            if let value = dict["isAdmin"] as? Bool {
                self.isAdmin = value
            }
            if let value = dict["isSystemTenant"] as? Bool {
                self.isSystemTenant = value
            }
            if let value = dict["languagePreference"] as? String {
                self.languagePreference = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["offering"] as? String {
                self.offering = value
            }
            if let value = dict["parsedOffering"] as? String {
                self.parsedOffering = value
            }
            if let value = dict["profileRole"] as? String {
                self.profileRole = value
            }
            if let value = dict["profileRoleInfo"] as? String {
                self.profileRoleInfo = value
            }
            if let value = dict["selfIntroduction"] as? String {
                self.selfIntroduction = value
            }
            if let value = dict["tenantId"] as? Int64 {
                self.tenantId = value
            }
            if let value = dict["tenantList"] as? [Any?] {
                var tmp : [UpdateUserInfoResponseBody.User.TenantList] = []
                for v in value {
                    if v != nil {
                        var model = UpdateUserInfoResponseBody.User.TenantList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tenantList = tmp
            }
            if let value = dict["tenantName"] as? String {
                self.tenantName = value
            }
            if let value = dict["userCode"] as? String {
                self.userCode = value
            }
            if let value = dict["userId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var user: UpdateUserInfoResponseBody.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.user != nil {
            map["user"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["user"] as? [String: Any?] {
            var model = UpdateUserInfoResponseBody.User()
            model.fromMap(value)
            self.user = model
        }
    }
}

public class UpdateUserInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateUserInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UploadChatFileRequest : Tea.TeaModel {
    public var contentType: String?

    public var fileName: String?

    public var fileUrl: String?

    public var operatingObjectName: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.fileUrl != nil {
            map["fileUrl"] = self.fileUrl!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["contentType"] as? String {
            self.contentType = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["fileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class UploadChatFileAdvanceRequest : Tea.TeaModel {
    public var contentType: String?

    public var fileName: String?

    public var fileUrlObject: InputStream?

    public var operatingObjectName: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.fileUrlObject != nil {
            map["fileUrl"] = self.fileUrlObject!
        }
        if self.operatingObjectName != nil {
            map["operatingObjectName"] = self.operatingObjectName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["contentType"] as? String {
            self.contentType = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["fileUrl"] as? InputStream {
            self.fileUrlObject = value
        }
        if let value = dict["operatingObjectName"] as? String {
            self.operatingObjectName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class UploadChatFileResponseBody : Tea.TeaModel {
    public var code: String?

    public var contentType: String?

    public var fileName: String?

    public var filePublicUrl: String?

    public var fileRecordId: String?

    public var fileUrl: String?

    public var message: String?

    public var objectName: String?

    public var requestId: String?

    public var uploadSignatureUrl: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.contentType != nil {
            map["contentType"] = self.contentType!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.filePublicUrl != nil {
            map["filePublicUrl"] = self.filePublicUrl!
        }
        if self.fileRecordId != nil {
            map["fileRecordId"] = self.fileRecordId!
        }
        if self.fileUrl != nil {
            map["fileUrl"] = self.fileUrl!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.objectName != nil {
            map["objectName"] = self.objectName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.uploadSignatureUrl != nil {
            map["uploadSignatureUrl"] = self.uploadSignatureUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["contentType"] as? String {
            self.contentType = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["filePublicUrl"] as? String {
            self.filePublicUrl = value
        }
        if let value = dict["fileRecordId"] as? String {
            self.fileRecordId = value
        }
        if let value = dict["fileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["objectName"] as? String {
            self.objectName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["uploadSignatureUrl"] as? String {
            self.uploadSignatureUrl = value
        }
    }
}

public class UploadChatFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadChatFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UploadChatFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
