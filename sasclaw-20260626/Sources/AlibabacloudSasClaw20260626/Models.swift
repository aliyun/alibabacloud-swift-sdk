import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChatUserSecAgentRequest : Tea.TeaModel {
    public var agent: String?

    public var attachmentStagingId: String?

    public var attachments: String?

    public var channel: String?

    public var executionMode: String?

    public var extraParams: String?

    public var memory: Bool?

    public var model: String?

    public var prompt: String?

    public var responseLanguage: String?

    public var sessionId: String?

    public var skill: String?

    public var stream: Bool?

    public var talkId: String?

    public var target: String?

    public var timeZone: String?

    public var userInputInfo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agent != nil {
            map["Agent"] = self.agent!
        }
        if self.attachmentStagingId != nil {
            map["AttachmentStagingId"] = self.attachmentStagingId!
        }
        if self.attachments != nil {
            map["Attachments"] = self.attachments!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.executionMode != nil {
            map["ExecutionMode"] = self.executionMode!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.responseLanguage != nil {
            map["ResponseLanguage"] = self.responseLanguage!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.skill != nil {
            map["Skill"] = self.skill!
        }
        if self.stream != nil {
            map["Stream"] = self.stream!
        }
        if self.talkId != nil {
            map["TalkId"] = self.talkId!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        if self.userInputInfo != nil {
            map["UserInputInfo"] = self.userInputInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Agent"] as? String {
            self.agent = value
        }
        if let value = dict["AttachmentStagingId"] as? String {
            self.attachmentStagingId = value
        }
        if let value = dict["Attachments"] as? String {
            self.attachments = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["ExecutionMode"] as? String {
            self.executionMode = value
        }
        if let value = dict["ExtraParams"] as? String {
            self.extraParams = value
        }
        if let value = dict["Memory"] as? Bool {
            self.memory = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["ResponseLanguage"] as? String {
            self.responseLanguage = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Skill"] as? String {
            self.skill = value
        }
        if let value = dict["Stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["TalkId"] as? String {
            self.talkId = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
        }
        if let value = dict["UserInputInfo"] as? String {
            self.userInputInfo = value
        }
    }
}

public class ChatUserSecAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
        if let value = dict["body"] as? String {
            self.body = value
        }
    }
}
