import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddAgentRequest : Tea.TeaModel {
    public var account: String?

    public var agentTag: String?

    public var extensionPwd: String?

    public var name: String?

    public var ownerId: Int64?

    public var password: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.extensionPwd != nil {
            map["ExtensionPwd"] = self.extensionPwd!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["AgentTag"] as? String {
            self.agentTag = value
        }
        if let value = dict["ExtensionPwd"] as? String {
            self.extensionPwd = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class AddAgentResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var agentId: Int64?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentId"] as? Int64 {
                self.agentId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: AddAgentResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = AddAgentResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class AddAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddAgentGroupRequest : Tea.TeaModel {
    public var agentGroupName: String?

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
        if self.agentGroupName != nil {
            map["AgentGroupName"] = self.agentGroupName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentGroupName"] as? String {
            self.agentGroupName = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class AddAgentGroupResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var agentGroupId: Int64?

        public var agentGroupName: String?

        public var createTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentGroupId != nil {
                map["AgentGroupId"] = self.agentGroupId!
            }
            if self.agentGroupName != nil {
                map["AgentGroupName"] = self.agentGroupName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentGroupId"] as? Int64 {
                self.agentGroupId = value
            }
            if let value = dict["AgentGroupName"] as? String {
                self.agentGroupName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: AddAgentGroupResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = AddAgentGroupResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class AddAgentGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddAgentGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddAgentGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddBlacklistRequest : Tea.TeaModel {
    public var expiredDay: String?

    public var numbers: [String]?

    public var ownerId: Int64?

    public var remark: String?

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
        if self.expiredDay != nil {
            map["ExpiredDay"] = self.expiredDay!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpiredDay"] as? String {
            self.expiredDay = value
        }
        if let value = dict["Numbers"] as? [String] {
            self.numbers = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class AddBlacklistShrinkRequest : Tea.TeaModel {
    public var expiredDay: String?

    public var numbersShrink: String?

    public var ownerId: Int64?

    public var remark: String?

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
        if self.expiredDay != nil {
            map["ExpiredDay"] = self.expiredDay!
        }
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpiredDay"] as? String {
            self.expiredDay = value
        }
        if let value = dict["Numbers"] as? String {
            self.numbersShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class AddBlacklistResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var unHandleNumbers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.unHandleNumbers != nil {
                map["UnHandleNumbers"] = self.unHandleNumbers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UnHandleNumbers"] as? [String] {
                self.unHandleNumbers = value
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: AddBlacklistResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = AddBlacklistResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class AddBlacklistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddBlacklistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddBlacklistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddTaskRequest : Tea.TeaModel {
    public class CallTimeList : Tea.TeaModel {
        public var callTime: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callTime != nil {
                map["CallTime"] = self.callTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CallTime"] as? [String] {
                self.callTime = value
            }
        }
    }
    public class SendSmsPlan : Tea.TeaModel {
        public var intentTags: [String]?

        public var smsTemplateId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.intentTags != nil {
                map["IntentTags"] = self.intentTags!
            }
            if self.smsTemplateId != nil {
                map["SmsTemplateId"] = self.smsTemplateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IntentTags"] as? [String] {
                self.intentTags = value
            }
            if let value = dict["SmsTemplateId"] as? Int64 {
                self.smsTemplateId = value
            }
        }
    }
    public var callTimeList: [AddTaskRequest.CallTimeList]?

    public var callbackUrl: String?

    public var flashSmsTemplateId: Int64?

    public var flashSmsType: Int64?

    public var maxConcurrency: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var playSleepVal: Int64?

    public var playTimes: Int64?

    public var recallType: Int64?

    public var recordPath: String?

    public var repeatCount: Int64?

    public var repeatInterval: Int64?

    public var repeatReason: [String]?

    public var repeatTimes: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendSmsPlan: [AddTaskRequest.SendSmsPlan]?

    public var startTime: String?

    public var taskType: Int64?

    public var templateId: Int64?

    public var templateType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callTimeList != nil {
            var tmp : [Any] = []
            for k in self.callTimeList! {
                tmp.append(k.toMap())
            }
            map["CallTimeList"] = tmp
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.flashSmsTemplateId != nil {
            map["FlashSmsTemplateId"] = self.flashSmsTemplateId!
        }
        if self.flashSmsType != nil {
            map["FlashSmsType"] = self.flashSmsType!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playSleepVal != nil {
            map["PlaySleepVal"] = self.playSleepVal!
        }
        if self.playTimes != nil {
            map["PlayTimes"] = self.playTimes!
        }
        if self.recallType != nil {
            map["RecallType"] = self.recallType!
        }
        if self.recordPath != nil {
            map["RecordPath"] = self.recordPath!
        }
        if self.repeatCount != nil {
            map["RepeatCount"] = self.repeatCount!
        }
        if self.repeatInterval != nil {
            map["RepeatInterval"] = self.repeatInterval!
        }
        if self.repeatReason != nil {
            map["RepeatReason"] = self.repeatReason!
        }
        if self.repeatTimes != nil {
            map["RepeatTimes"] = self.repeatTimes!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sendSmsPlan != nil {
            var tmp : [Any] = []
            for k in self.sendSmsPlan! {
                tmp.append(k.toMap())
            }
            map["SendSmsPlan"] = tmp
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallTimeList"] as? [Any?] {
            var tmp : [AddTaskRequest.CallTimeList] = []
            for v in value {
                if v != nil {
                    var model = AddTaskRequest.CallTimeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.callTimeList = tmp
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["FlashSmsTemplateId"] as? Int64 {
            self.flashSmsTemplateId = value
        }
        if let value = dict["FlashSmsType"] as? Int64 {
            self.flashSmsType = value
        }
        if let value = dict["MaxConcurrency"] as? Int64 {
            self.maxConcurrency = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PlaySleepVal"] as? Int64 {
            self.playSleepVal = value
        }
        if let value = dict["PlayTimes"] as? Int64 {
            self.playTimes = value
        }
        if let value = dict["RecallType"] as? Int64 {
            self.recallType = value
        }
        if let value = dict["RecordPath"] as? String {
            self.recordPath = value
        }
        if let value = dict["RepeatCount"] as? Int64 {
            self.repeatCount = value
        }
        if let value = dict["RepeatInterval"] as? Int64 {
            self.repeatInterval = value
        }
        if let value = dict["RepeatReason"] as? [String] {
            self.repeatReason = value
        }
        if let value = dict["RepeatTimes"] as? [String] {
            self.repeatTimes = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SendSmsPlan"] as? [Any?] {
            var tmp : [AddTaskRequest.SendSmsPlan] = []
            for v in value {
                if v != nil {
                    var model = AddTaskRequest.SendSmsPlan()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sendSmsPlan = tmp
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TaskType"] as? Int64 {
            self.taskType = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["TemplateType"] as? Int64 {
            self.templateType = value
        }
    }
}

public class AddTaskShrinkRequest : Tea.TeaModel {
    public var callTimeListShrink: String?

    public var callbackUrl: String?

    public var flashSmsTemplateId: Int64?

    public var flashSmsType: Int64?

    public var maxConcurrency: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var playSleepVal: Int64?

    public var playTimes: Int64?

    public var recallType: Int64?

    public var recordPath: String?

    public var repeatCount: Int64?

    public var repeatInterval: Int64?

    public var repeatReasonShrink: String?

    public var repeatTimesShrink: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendSmsPlanShrink: String?

    public var startTime: String?

    public var taskType: Int64?

    public var templateId: Int64?

    public var templateType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callTimeListShrink != nil {
            map["CallTimeList"] = self.callTimeListShrink!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.flashSmsTemplateId != nil {
            map["FlashSmsTemplateId"] = self.flashSmsTemplateId!
        }
        if self.flashSmsType != nil {
            map["FlashSmsType"] = self.flashSmsType!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playSleepVal != nil {
            map["PlaySleepVal"] = self.playSleepVal!
        }
        if self.playTimes != nil {
            map["PlayTimes"] = self.playTimes!
        }
        if self.recallType != nil {
            map["RecallType"] = self.recallType!
        }
        if self.recordPath != nil {
            map["RecordPath"] = self.recordPath!
        }
        if self.repeatCount != nil {
            map["RepeatCount"] = self.repeatCount!
        }
        if self.repeatInterval != nil {
            map["RepeatInterval"] = self.repeatInterval!
        }
        if self.repeatReasonShrink != nil {
            map["RepeatReason"] = self.repeatReasonShrink!
        }
        if self.repeatTimesShrink != nil {
            map["RepeatTimes"] = self.repeatTimesShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sendSmsPlanShrink != nil {
            map["SendSmsPlan"] = self.sendSmsPlanShrink!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallTimeList"] as? String {
            self.callTimeListShrink = value
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["FlashSmsTemplateId"] as? Int64 {
            self.flashSmsTemplateId = value
        }
        if let value = dict["FlashSmsType"] as? Int64 {
            self.flashSmsType = value
        }
        if let value = dict["MaxConcurrency"] as? Int64 {
            self.maxConcurrency = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PlaySleepVal"] as? Int64 {
            self.playSleepVal = value
        }
        if let value = dict["PlayTimes"] as? Int64 {
            self.playTimes = value
        }
        if let value = dict["RecallType"] as? Int64 {
            self.recallType = value
        }
        if let value = dict["RecordPath"] as? String {
            self.recordPath = value
        }
        if let value = dict["RepeatCount"] as? Int64 {
            self.repeatCount = value
        }
        if let value = dict["RepeatInterval"] as? Int64 {
            self.repeatInterval = value
        }
        if let value = dict["RepeatReason"] as? String {
            self.repeatReasonShrink = value
        }
        if let value = dict["RepeatTimes"] as? String {
            self.repeatTimesShrink = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SendSmsPlan"] as? String {
            self.sendSmsPlanShrink = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TaskType"] as? Int64 {
            self.taskType = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["TemplateType"] as? Int64 {
            self.templateType = value
        }
    }
}

public class AddTaskResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int64?

    public var message: String?

    public var model: AddTaskResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = AddTaskResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class AddTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AgentCallListRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentTag: String?

    public var callDate: String?

    public var endCallDate: String?

    public var numberMD5s: [String]?

    public var numbers: [String]?

    public var ownerId: Int64?

    public var page: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: [String]?

    public override init() {
        super.init()
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
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.callDate != nil {
            map["CallDate"] = self.callDate!
        }
        if self.endCallDate != nil {
            map["EndCallDate"] = self.endCallDate!
        }
        if self.numberMD5s != nil {
            map["NumberMD5s"] = self.numberMD5s!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? Int64 {
            self.agentId = value
        }
        if let value = dict["AgentTag"] as? String {
            self.agentTag = value
        }
        if let value = dict["CallDate"] as? String {
            self.callDate = value
        }
        if let value = dict["EndCallDate"] as? String {
            self.endCallDate = value
        }
        if let value = dict["NumberMD5s"] as? [String] {
            self.numberMD5s = value
        }
        if let value = dict["Numbers"] as? [String] {
            self.numbers = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
    }
}

public class AgentCallListShrinkRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentTag: String?

    public var callDate: String?

    public var endCallDate: String?

    public var numberMD5sShrink: String?

    public var numbersShrink: String?

    public var ownerId: Int64?

    public var page: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagsShrink: String?

    public override init() {
        super.init()
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
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.callDate != nil {
            map["CallDate"] = self.callDate!
        }
        if self.endCallDate != nil {
            map["EndCallDate"] = self.endCallDate!
        }
        if self.numberMD5sShrink != nil {
            map["NumberMD5s"] = self.numberMD5sShrink!
        }
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? Int64 {
            self.agentId = value
        }
        if let value = dict["AgentTag"] as? String {
            self.agentTag = value
        }
        if let value = dict["CallDate"] as? String {
            self.callDate = value
        }
        if let value = dict["EndCallDate"] as? String {
            self.endCallDate = value
        }
        if let value = dict["NumberMD5s"] as? String {
            self.numberMD5sShrink = value
        }
        if let value = dict["Numbers"] as? String {
            self.numbersShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class AgentCallListResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var agentExtension: String?

            public var agentId: Int64?

            public var agentSpeakingDuration: Int64?

            public var agentSpeakingTime: String?

            public var agentTag: String?

            public var answerTime: String?

            public var batchId: String?

            public var callBeginTime: String?

            public var callId: String?

            public var callType: Int64?

            public var chatRecord: String?

            public var hangupTime: String?

            public var hangupType: Int64?

            public var importTime: String?

            public var individualTag: String?

            public var intentDescription: String?

            public var intentTag: String?

            public var interceptReason: String?

            public var keywords: String?

            public var number: String?

            public var numberMD5: String?

            public var properties: String?

            public var remark: String?

            public var ringTime: Int64?

            public var sms: String?

            public var speakingDuration: Int64?

            public var speakingTime: String?

            public var speakingTurns: String?

            public var statusCode: Int64?

            public var statusDescription: String?

            public var tag: String?

            public var taskId: Int64?

            public var templateId: Int64?

            public var transferStatus: String?

            public var transferStatusCode: Int64?

            public var transferTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentExtension != nil {
                    map["AgentExtension"] = self.agentExtension!
                }
                if self.agentId != nil {
                    map["AgentId"] = self.agentId!
                }
                if self.agentSpeakingDuration != nil {
                    map["AgentSpeakingDuration"] = self.agentSpeakingDuration!
                }
                if self.agentSpeakingTime != nil {
                    map["AgentSpeakingTime"] = self.agentSpeakingTime!
                }
                if self.agentTag != nil {
                    map["AgentTag"] = self.agentTag!
                }
                if self.answerTime != nil {
                    map["AnswerTime"] = self.answerTime!
                }
                if self.batchId != nil {
                    map["BatchId"] = self.batchId!
                }
                if self.callBeginTime != nil {
                    map["CallBeginTime"] = self.callBeginTime!
                }
                if self.callId != nil {
                    map["CallId"] = self.callId!
                }
                if self.callType != nil {
                    map["CallType"] = self.callType!
                }
                if self.chatRecord != nil {
                    map["ChatRecord"] = self.chatRecord!
                }
                if self.hangupTime != nil {
                    map["HangupTime"] = self.hangupTime!
                }
                if self.hangupType != nil {
                    map["HangupType"] = self.hangupType!
                }
                if self.importTime != nil {
                    map["ImportTime"] = self.importTime!
                }
                if self.individualTag != nil {
                    map["IndividualTag"] = self.individualTag!
                }
                if self.intentDescription != nil {
                    map["IntentDescription"] = self.intentDescription!
                }
                if self.intentTag != nil {
                    map["IntentTag"] = self.intentTag!
                }
                if self.interceptReason != nil {
                    map["InterceptReason"] = self.interceptReason!
                }
                if self.keywords != nil {
                    map["Keywords"] = self.keywords!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.numberMD5 != nil {
                    map["NumberMD5"] = self.numberMD5!
                }
                if self.properties != nil {
                    map["Properties"] = self.properties!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.ringTime != nil {
                    map["RingTime"] = self.ringTime!
                }
                if self.sms != nil {
                    map["Sms"] = self.sms!
                }
                if self.speakingDuration != nil {
                    map["SpeakingDuration"] = self.speakingDuration!
                }
                if self.speakingTime != nil {
                    map["SpeakingTime"] = self.speakingTime!
                }
                if self.speakingTurns != nil {
                    map["SpeakingTurns"] = self.speakingTurns!
                }
                if self.statusCode != nil {
                    map["StatusCode"] = self.statusCode!
                }
                if self.statusDescription != nil {
                    map["StatusDescription"] = self.statusDescription!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.transferStatus != nil {
                    map["TransferStatus"] = self.transferStatus!
                }
                if self.transferStatusCode != nil {
                    map["TransferStatusCode"] = self.transferStatusCode!
                }
                if self.transferTime != nil {
                    map["TransferTime"] = self.transferTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentExtension"] as? String {
                    self.agentExtension = value
                }
                if let value = dict["AgentId"] as? Int64 {
                    self.agentId = value
                }
                if let value = dict["AgentSpeakingDuration"] as? Int64 {
                    self.agentSpeakingDuration = value
                }
                if let value = dict["AgentSpeakingTime"] as? String {
                    self.agentSpeakingTime = value
                }
                if let value = dict["AgentTag"] as? String {
                    self.agentTag = value
                }
                if let value = dict["AnswerTime"] as? String {
                    self.answerTime = value
                }
                if let value = dict["BatchId"] as? String {
                    self.batchId = value
                }
                if let value = dict["CallBeginTime"] as? String {
                    self.callBeginTime = value
                }
                if let value = dict["CallId"] as? String {
                    self.callId = value
                }
                if let value = dict["CallType"] as? Int64 {
                    self.callType = value
                }
                if let value = dict["ChatRecord"] as? String {
                    self.chatRecord = value
                }
                if let value = dict["HangupTime"] as? String {
                    self.hangupTime = value
                }
                if let value = dict["HangupType"] as? Int64 {
                    self.hangupType = value
                }
                if let value = dict["ImportTime"] as? String {
                    self.importTime = value
                }
                if let value = dict["IndividualTag"] as? String {
                    self.individualTag = value
                }
                if let value = dict["IntentDescription"] as? String {
                    self.intentDescription = value
                }
                if let value = dict["IntentTag"] as? String {
                    self.intentTag = value
                }
                if let value = dict["InterceptReason"] as? String {
                    self.interceptReason = value
                }
                if let value = dict["Keywords"] as? String {
                    self.keywords = value
                }
                if let value = dict["Number"] as? String {
                    self.number = value
                }
                if let value = dict["NumberMD5"] as? String {
                    self.numberMD5 = value
                }
                if let value = dict["Properties"] as? String {
                    self.properties = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["RingTime"] as? Int64 {
                    self.ringTime = value
                }
                if let value = dict["Sms"] as? String {
                    self.sms = value
                }
                if let value = dict["SpeakingDuration"] as? Int64 {
                    self.speakingDuration = value
                }
                if let value = dict["SpeakingTime"] as? String {
                    self.speakingTime = value
                }
                if let value = dict["SpeakingTurns"] as? String {
                    self.speakingTurns = value
                }
                if let value = dict["StatusCode"] as? Int64 {
                    self.statusCode = value
                }
                if let value = dict["StatusDescription"] as? String {
                    self.statusDescription = value
                }
                if let value = dict["Tag"] as? String {
                    self.tag = value
                }
                if let value = dict["TaskId"] as? Int64 {
                    self.taskId = value
                }
                if let value = dict["TemplateId"] as? Int64 {
                    self.templateId = value
                }
                if let value = dict["TransferStatus"] as? String {
                    self.transferStatus = value
                }
                if let value = dict["TransferStatusCode"] as? Int64 {
                    self.transferStatusCode = value
                }
                if let value = dict["TransferTime"] as? String {
                    self.transferTime = value
                }
            }
        }
        public var list: [AgentCallListResponseBody.Model.List]?

        public var pageNo: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public var totalPage: Int64?

        public override init() {
            super.init()
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
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalPage != nil {
                map["TotalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [AgentCallListResponseBody.Model.List] = []
                for v in value {
                    if v != nil {
                        var model = AgentCallListResponseBody.Model.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["TotalPage"] as? Int64 {
                self.totalPage = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int64?

    public var message: String?

    public var model: AgentCallListResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = AgentCallListResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class AgentCallListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentCallListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AgentCallListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AgentCancelCallRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentTag: String?

    public var numbers: [String]?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: [String]?

    public override init() {
        super.init()
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
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? Int64 {
            self.agentId = value
        }
        if let value = dict["AgentTag"] as? String {
            self.agentTag = value
        }
        if let value = dict["Numbers"] as? [String] {
            self.numbers = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
    }
}

public class AgentCancelCallShrinkRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentTag: String?

    public var numbersShrink: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagsShrink: String?

    public override init() {
        super.init()
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
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
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
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? Int64 {
            self.agentId = value
        }
        if let value = dict["AgentTag"] as? String {
            self.agentTag = value
        }
        if let value = dict["Numbers"] as? String {
            self.numbersShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class AgentCancelCallResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var unHandleNumbers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.unHandleNumbers != nil {
                map["UnHandleNumbers"] = self.unHandleNumbers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UnHandleNumbers"] as? [String] {
                self.unHandleNumbers = value
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: AgentCancelCallResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = AgentCancelCallResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class AgentCancelCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentCancelCallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AgentCancelCallResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AgentGroupPageRequest : Tea.TeaModel {
    public var agentGroupId: Int64?

    public var ownerId: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

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
        if self.agentGroupId != nil {
            map["AgentGroupId"] = self.agentGroupId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentGroupId"] as? Int64 {
            self.agentGroupId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNum"] as? Int64 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class AgentGroupPageResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var agentGroupId: Int64?

            public var agentGroupName: String?

            public var agentIds: [Int64]?

            public var createTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentGroupId != nil {
                    map["AgentGroupId"] = self.agentGroupId!
                }
                if self.agentGroupName != nil {
                    map["AgentGroupName"] = self.agentGroupName!
                }
                if self.agentIds != nil {
                    map["AgentIds"] = self.agentIds!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentGroupId"] as? Int64 {
                    self.agentGroupId = value
                }
                if let value = dict["AgentGroupName"] as? String {
                    self.agentGroupName = value
                }
                if let value = dict["AgentIds"] as? [Int64] {
                    self.agentIds = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
            }
        }
        public var current: Int64?

        public var pages: Int64?

        public var records: [AgentGroupPageResponseBody.Model.Records]?

        public var size: Int64?

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
            if self.current != nil {
                map["Current"] = self.current!
            }
            if self.pages != nil {
                map["Pages"] = self.pages!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Current"] as? Int64 {
                self.current = value
            }
            if let value = dict["Pages"] as? Int64 {
                self.pages = value
            }
            if let value = dict["Records"] as? [Any?] {
                var tmp : [AgentGroupPageResponseBody.Model.Records] = []
                for v in value {
                    if v != nil {
                        var model = AgentGroupPageResponseBody.Model.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: AgentGroupPageResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = AgentGroupPageResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class AgentGroupPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentGroupPageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AgentGroupPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AgentImportNumberRequest : Tea.TeaModel {
    public class Customers : Tea.TeaModel {
        public var clientUrl: String?

        public var number: String?

        public var numberMD5: String?

        public var properties: [String: Any]?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientUrl != nil {
                map["ClientUrl"] = self.clientUrl!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.numberMD5 != nil {
                map["NumberMD5"] = self.numberMD5!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClientUrl"] as? String {
                self.clientUrl = value
            }
            if let value = dict["Number"] as? String {
                self.number = value
            }
            if let value = dict["NumberMD5"] as? String {
                self.numberMD5 = value
            }
            if let value = dict["Properties"] as? [String: Any] {
                self.properties = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
        }
    }
    public var agentId: Int64?

    public var agentTag: String?

    public var callType: Int64?

    public var customers: [AgentImportNumberRequest.Customers]?

    public var gatewayId: Int64?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.callType != nil {
            map["CallType"] = self.callType!
        }
        if self.customers != nil {
            var tmp : [Any] = []
            for k in self.customers! {
                tmp.append(k.toMap())
            }
            map["Customers"] = tmp
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? Int64 {
            self.agentId = value
        }
        if let value = dict["AgentTag"] as? String {
            self.agentTag = value
        }
        if let value = dict["CallType"] as? Int64 {
            self.callType = value
        }
        if let value = dict["Customers"] as? [Any?] {
            var tmp : [AgentImportNumberRequest.Customers] = []
            for v in value {
                if v != nil {
                    var model = AgentImportNumberRequest.Customers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.customers = tmp
        }
        if let value = dict["GatewayId"] as? Int64 {
            self.gatewayId = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class AgentImportNumberShrinkRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentTag: String?

    public var callType: Int64?

    public var customersShrink: String?

    public var gatewayId: Int64?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.callType != nil {
            map["CallType"] = self.callType!
        }
        if self.customersShrink != nil {
            map["Customers"] = self.customersShrink!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? Int64 {
            self.agentId = value
        }
        if let value = dict["AgentTag"] as? String {
            self.agentTag = value
        }
        if let value = dict["CallType"] as? Int64 {
            self.callType = value
        }
        if let value = dict["Customers"] as? String {
            self.customersShrink = value
        }
        if let value = dict["GatewayId"] as? Int64 {
            self.gatewayId = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class AgentImportNumberResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var batchId: String?

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
            if self.batchId != nil {
                map["BatchId"] = self.batchId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BatchId"] as? String {
                self.batchId = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: AgentImportNumberResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = AgentImportNumberResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class AgentImportNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentImportNumberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AgentImportNumberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AgentRecoverCallRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentTag: String?

    public var beginImportTime: String?

    public var endImportTime: String?

    public var numbers: [String]?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: [String]?

    public override init() {
        super.init()
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
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.beginImportTime != nil {
            map["BeginImportTime"] = self.beginImportTime!
        }
        if self.endImportTime != nil {
            map["EndImportTime"] = self.endImportTime!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? Int64 {
            self.agentId = value
        }
        if let value = dict["AgentTag"] as? String {
            self.agentTag = value
        }
        if let value = dict["BeginImportTime"] as? String {
            self.beginImportTime = value
        }
        if let value = dict["EndImportTime"] as? String {
            self.endImportTime = value
        }
        if let value = dict["Numbers"] as? [String] {
            self.numbers = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
    }
}

public class AgentRecoverCallShrinkRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentTag: String?

    public var beginImportTime: String?

    public var endImportTime: String?

    public var numbersShrink: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagsShrink: String?

    public override init() {
        super.init()
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
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.beginImportTime != nil {
            map["BeginImportTime"] = self.beginImportTime!
        }
        if self.endImportTime != nil {
            map["EndImportTime"] = self.endImportTime!
        }
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
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
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? Int64 {
            self.agentId = value
        }
        if let value = dict["AgentTag"] as? String {
            self.agentTag = value
        }
        if let value = dict["BeginImportTime"] as? String {
            self.beginImportTime = value
        }
        if let value = dict["EndImportTime"] as? String {
            self.endImportTime = value
        }
        if let value = dict["Numbers"] as? String {
            self.numbersShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class AgentRecoverCallResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var unHandleNumbers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.unHandleNumbers != nil {
                map["UnHandleNumbers"] = self.unHandleNumbers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UnHandleNumbers"] as? [String] {
                self.unHandleNumbers = value
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: AgentRecoverCallResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = AgentRecoverCallResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class AgentRecoverCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AgentRecoverCallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AgentRecoverCallResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CallChatListRequest : Tea.TeaModel {
    public var callId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.callId != nil {
            map["CallId"] = self.callId!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class CallChatListResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var chatId: Int64?

        public var content: String?

        public var createTime: String?

        public var fromType: Int64?

        public override init() {
            super.init()
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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.fromType != nil {
                map["FromType"] = self.fromType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChatId"] as? Int64 {
                self.chatId = value
            }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FromType"] as? Int64 {
                self.fromType = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int64?

    public var message: String?

    public var model: [CallChatListResponseBody.Model]?

    public var requestId: String?

    public var success: Bool?

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
            var tmp : [Any] = []
            for k in self.model! {
                tmp.append(k.toMap())
            }
            map["Model"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [Any?] {
            var tmp : [CallChatListResponseBody.Model] = []
            for v in value {
                if v != nil {
                    var model = CallChatListResponseBody.Model()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.model = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class CallChatListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CallChatListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CallChatListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CallNumberDetailRequest : Tea.TeaModel {
    public var id: Int64?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class CallNumberDetailResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var batchId: String?

        public var bill: Int64?

        public var callId: String?

        public var callType: Int64?

        public var id: Int64?

        public var intentTag: String?

        public var keywords: String?

        public var number: String?

        public var numberMd5: String?

        public var personalityTag: String?

        public var statusCode: Int64?

        public var tag: String?

        public var taskId: Int64?

        public var templateId: Int64?

        public var transferStatus: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchId != nil {
                map["BatchId"] = self.batchId!
            }
            if self.bill != nil {
                map["Bill"] = self.bill!
            }
            if self.callId != nil {
                map["CallId"] = self.callId!
            }
            if self.callType != nil {
                map["CallType"] = self.callType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intentTag != nil {
                map["IntentTag"] = self.intentTag!
            }
            if self.keywords != nil {
                map["Keywords"] = self.keywords!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.numberMd5 != nil {
                map["NumberMd5"] = self.numberMd5!
            }
            if self.personalityTag != nil {
                map["PersonalityTag"] = self.personalityTag!
            }
            if self.statusCode != nil {
                map["StatusCode"] = self.statusCode!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.transferStatus != nil {
                map["TransferStatus"] = self.transferStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BatchId"] as? String {
                self.batchId = value
            }
            if let value = dict["Bill"] as? Int64 {
                self.bill = value
            }
            if let value = dict["CallId"] as? String {
                self.callId = value
            }
            if let value = dict["CallType"] as? Int64 {
                self.callType = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["IntentTag"] as? String {
                self.intentTag = value
            }
            if let value = dict["Keywords"] as? String {
                self.keywords = value
            }
            if let value = dict["Number"] as? String {
                self.number = value
            }
            if let value = dict["NumberMd5"] as? String {
                self.numberMd5 = value
            }
            if let value = dict["PersonalityTag"] as? String {
                self.personalityTag = value
            }
            if let value = dict["StatusCode"] as? Int64 {
                self.statusCode = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
            if let value = dict["TemplateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["TransferStatus"] as? Int64 {
                self.transferStatus = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int64?

    public var message: String?

    public var model: CallNumberDetailResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = CallNumberDetailResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class CallNumberDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CallNumberDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CallNumberDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetailsRequest : Tea.TeaModel {
    public var batchId: Int64?

    public var endTime: String?

    public var numberStatus: Int64?

    public var numbers: [String]?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

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
        if self.batchId != nil {
            map["BatchId"] = self.batchId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.numberStatus != nil {
            map["NumberStatus"] = self.numberStatus!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BatchId"] as? Int64 {
            self.batchId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["NumberStatus"] as? Int64 {
            self.numberStatus = value
        }
        if let value = dict["Numbers"] as? [String] {
            self.numbers = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class DetailsShrinkRequest : Tea.TeaModel {
    public var batchId: Int64?

    public var endTime: String?

    public var numberStatus: Int64?

    public var numbersShrink: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

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
        if self.batchId != nil {
            map["BatchId"] = self.batchId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.numberStatus != nil {
            map["NumberStatus"] = self.numberStatus!
        }
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BatchId"] as? Int64 {
            self.batchId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["NumberStatus"] as? Int64 {
            self.numberStatus = value
        }
        if let value = dict["Numbers"] as? String {
            self.numbersShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class DetailsResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var batchId: Int64?

            public var callDesc: String?

            public var callId: String?

            public var callStatus: Int64?

            public var callType: Int64?

            public var importTime: String?

            public var interceptReason: String?

            public var number: String?

            public var numberDesc: String?

            public var numberMD5: String?

            public var numberStatus: Int64?

            public var tag: String?

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
                if self.batchId != nil {
                    map["BatchId"] = self.batchId!
                }
                if self.callDesc != nil {
                    map["CallDesc"] = self.callDesc!
                }
                if self.callId != nil {
                    map["CallId"] = self.callId!
                }
                if self.callStatus != nil {
                    map["CallStatus"] = self.callStatus!
                }
                if self.callType != nil {
                    map["CallType"] = self.callType!
                }
                if self.importTime != nil {
                    map["ImportTime"] = self.importTime!
                }
                if self.interceptReason != nil {
                    map["InterceptReason"] = self.interceptReason!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.numberDesc != nil {
                    map["NumberDesc"] = self.numberDesc!
                }
                if self.numberMD5 != nil {
                    map["NumberMD5"] = self.numberMD5!
                }
                if self.numberStatus != nil {
                    map["NumberStatus"] = self.numberStatus!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BatchId"] as? Int64 {
                    self.batchId = value
                }
                if let value = dict["CallDesc"] as? String {
                    self.callDesc = value
                }
                if let value = dict["CallId"] as? String {
                    self.callId = value
                }
                if let value = dict["CallStatus"] as? Int64 {
                    self.callStatus = value
                }
                if let value = dict["CallType"] as? Int64 {
                    self.callType = value
                }
                if let value = dict["ImportTime"] as? String {
                    self.importTime = value
                }
                if let value = dict["InterceptReason"] as? String {
                    self.interceptReason = value
                }
                if let value = dict["Number"] as? String {
                    self.number = value
                }
                if let value = dict["NumberDesc"] as? String {
                    self.numberDesc = value
                }
                if let value = dict["NumberMD5"] as? String {
                    self.numberMD5 = value
                }
                if let value = dict["NumberStatus"] as? Int64 {
                    self.numberStatus = value
                }
                if let value = dict["Tag"] as? String {
                    self.tag = value
                }
                if let value = dict["TaskId"] as? Int64 {
                    self.taskId = value
                }
            }
        }
        public var list: [DetailsResponseBody.Model.List]?

        public var pageNo: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public var totalPage: Double?

        public override init() {
            super.init()
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
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalPage != nil {
                map["TotalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [DetailsResponseBody.Model.List] = []
                for v in value {
                    if v != nil {
                        var model = DetailsResponseBody.Model.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["TotalPage"] as? Double {
                self.totalPage = value
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: DetailsResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = DetailsResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class DetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EditTaskRequest : Tea.TeaModel {
    public class CallTimeList : Tea.TeaModel {
        public var callTime: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callTime != nil {
                map["CallTime"] = self.callTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CallTime"] as? [String] {
                self.callTime = value
            }
        }
    }
    public class SendSmsPlan : Tea.TeaModel {
        public var intentTags: [String]?

        public var smsTemplateId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.intentTags != nil {
                map["IntentTags"] = self.intentTags!
            }
            if self.smsTemplateId != nil {
                map["SmsTemplateId"] = self.smsTemplateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IntentTags"] as? [String] {
                self.intentTags = value
            }
            if let value = dict["SmsTemplateId"] as? Int64 {
                self.smsTemplateId = value
            }
        }
    }
    public var callTimeList: [EditTaskRequest.CallTimeList]?

    public var callbackUrl: String?

    public var flashSmsTemplateId: Int64?

    public var flashSmsType: Int64?

    public var maxConcurrency: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var playSleepVal: Int64?

    public var playTimes: Int64?

    public var recallType: Int64?

    public var recordPath: String?

    public var repeatCount: Int64?

    public var repeatInterval: Int64?

    public var repeatReason: [Int64]?

    public var repeatTimes: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendSmsPlan: [EditTaskRequest.SendSmsPlan]?

    public var status: Int64?

    public var taskId: Int64?

    public var templateId: Int64?

    public var templateType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callTimeList != nil {
            var tmp : [Any] = []
            for k in self.callTimeList! {
                tmp.append(k.toMap())
            }
            map["CallTimeList"] = tmp
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.flashSmsTemplateId != nil {
            map["FlashSmsTemplateId"] = self.flashSmsTemplateId!
        }
        if self.flashSmsType != nil {
            map["FlashSmsType"] = self.flashSmsType!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playSleepVal != nil {
            map["PlaySleepVal"] = self.playSleepVal!
        }
        if self.playTimes != nil {
            map["PlayTimes"] = self.playTimes!
        }
        if self.recallType != nil {
            map["RecallType"] = self.recallType!
        }
        if self.recordPath != nil {
            map["RecordPath"] = self.recordPath!
        }
        if self.repeatCount != nil {
            map["RepeatCount"] = self.repeatCount!
        }
        if self.repeatInterval != nil {
            map["RepeatInterval"] = self.repeatInterval!
        }
        if self.repeatReason != nil {
            map["RepeatReason"] = self.repeatReason!
        }
        if self.repeatTimes != nil {
            map["RepeatTimes"] = self.repeatTimes!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sendSmsPlan != nil {
            var tmp : [Any] = []
            for k in self.sendSmsPlan! {
                tmp.append(k.toMap())
            }
            map["SendSmsPlan"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallTimeList"] as? [Any?] {
            var tmp : [EditTaskRequest.CallTimeList] = []
            for v in value {
                if v != nil {
                    var model = EditTaskRequest.CallTimeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.callTimeList = tmp
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["FlashSmsTemplateId"] as? Int64 {
            self.flashSmsTemplateId = value
        }
        if let value = dict["FlashSmsType"] as? Int64 {
            self.flashSmsType = value
        }
        if let value = dict["MaxConcurrency"] as? Int64 {
            self.maxConcurrency = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PlaySleepVal"] as? Int64 {
            self.playSleepVal = value
        }
        if let value = dict["PlayTimes"] as? Int64 {
            self.playTimes = value
        }
        if let value = dict["RecallType"] as? Int64 {
            self.recallType = value
        }
        if let value = dict["RecordPath"] as? String {
            self.recordPath = value
        }
        if let value = dict["RepeatCount"] as? Int64 {
            self.repeatCount = value
        }
        if let value = dict["RepeatInterval"] as? Int64 {
            self.repeatInterval = value
        }
        if let value = dict["RepeatReason"] as? [Int64] {
            self.repeatReason = value
        }
        if let value = dict["RepeatTimes"] as? [String] {
            self.repeatTimes = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SendSmsPlan"] as? [Any?] {
            var tmp : [EditTaskRequest.SendSmsPlan] = []
            for v in value {
                if v != nil {
                    var model = EditTaskRequest.SendSmsPlan()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sendSmsPlan = tmp
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["TemplateType"] as? Int64 {
            self.templateType = value
        }
    }
}

public class EditTaskShrinkRequest : Tea.TeaModel {
    public var callTimeListShrink: String?

    public var callbackUrl: String?

    public var flashSmsTemplateId: Int64?

    public var flashSmsType: Int64?

    public var maxConcurrency: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var playSleepVal: Int64?

    public var playTimes: Int64?

    public var recallType: Int64?

    public var recordPath: String?

    public var repeatCount: Int64?

    public var repeatInterval: Int64?

    public var repeatReasonShrink: String?

    public var repeatTimesShrink: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendSmsPlanShrink: String?

    public var status: Int64?

    public var taskId: Int64?

    public var templateId: Int64?

    public var templateType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callTimeListShrink != nil {
            map["CallTimeList"] = self.callTimeListShrink!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.flashSmsTemplateId != nil {
            map["FlashSmsTemplateId"] = self.flashSmsTemplateId!
        }
        if self.flashSmsType != nil {
            map["FlashSmsType"] = self.flashSmsType!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playSleepVal != nil {
            map["PlaySleepVal"] = self.playSleepVal!
        }
        if self.playTimes != nil {
            map["PlayTimes"] = self.playTimes!
        }
        if self.recallType != nil {
            map["RecallType"] = self.recallType!
        }
        if self.recordPath != nil {
            map["RecordPath"] = self.recordPath!
        }
        if self.repeatCount != nil {
            map["RepeatCount"] = self.repeatCount!
        }
        if self.repeatInterval != nil {
            map["RepeatInterval"] = self.repeatInterval!
        }
        if self.repeatReasonShrink != nil {
            map["RepeatReason"] = self.repeatReasonShrink!
        }
        if self.repeatTimesShrink != nil {
            map["RepeatTimes"] = self.repeatTimesShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sendSmsPlanShrink != nil {
            map["SendSmsPlan"] = self.sendSmsPlanShrink!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallTimeList"] as? String {
            self.callTimeListShrink = value
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["FlashSmsTemplateId"] as? Int64 {
            self.flashSmsTemplateId = value
        }
        if let value = dict["FlashSmsType"] as? Int64 {
            self.flashSmsType = value
        }
        if let value = dict["MaxConcurrency"] as? Int64 {
            self.maxConcurrency = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PlaySleepVal"] as? Int64 {
            self.playSleepVal = value
        }
        if let value = dict["PlayTimes"] as? Int64 {
            self.playTimes = value
        }
        if let value = dict["RecallType"] as? Int64 {
            self.recallType = value
        }
        if let value = dict["RecordPath"] as? String {
            self.recordPath = value
        }
        if let value = dict["RepeatCount"] as? Int64 {
            self.repeatCount = value
        }
        if let value = dict["RepeatInterval"] as? Int64 {
            self.repeatInterval = value
        }
        if let value = dict["RepeatReason"] as? String {
            self.repeatReasonShrink = value
        }
        if let value = dict["RepeatTimes"] as? String {
            self.repeatTimesShrink = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SendSmsPlan"] as? String {
            self.sendSmsPlanShrink = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["TemplateType"] as? Int64 {
            self.templateType = value
        }
    }
}

public class EditTaskResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int64?

    public var message: String?

    public var model: EditTaskResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = EditTaskResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class EditTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EditTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImportNumberRequest : Tea.TeaModel {
    public class Customers : Tea.TeaModel {
        public var clientUrl: String?

        public var number: String?

        public var numberMD5: String?

        public var properties: [String: Any]?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientUrl != nil {
                map["ClientUrl"] = self.clientUrl!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.numberMD5 != nil {
                map["NumberMD5"] = self.numberMD5!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClientUrl"] as? String {
                self.clientUrl = value
            }
            if let value = dict["Number"] as? String {
                self.number = value
            }
            if let value = dict["NumberMD5"] as? String {
                self.numberMD5 = value
            }
            if let value = dict["Properties"] as? [String: Any] {
                self.properties = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
        }
    }
    public var customers: [ImportNumberRequest.Customers]?

    public var failReturn: Int64?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.customers != nil {
            var tmp : [Any] = []
            for k in self.customers! {
                tmp.append(k.toMap())
            }
            map["Customers"] = tmp
        }
        if self.failReturn != nil {
            map["FailReturn"] = self.failReturn!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Customers"] as? [Any?] {
            var tmp : [ImportNumberRequest.Customers] = []
            for v in value {
                if v != nil {
                    var model = ImportNumberRequest.Customers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.customers = tmp
        }
        if let value = dict["FailReturn"] as? Int64 {
            self.failReturn = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class ImportNumberShrinkRequest : Tea.TeaModel {
    public var customersShrink: String?

    public var failReturn: Int64?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.customersShrink != nil {
            map["Customers"] = self.customersShrink!
        }
        if self.failReturn != nil {
            map["FailReturn"] = self.failReturn!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Customers"] as? String {
            self.customersShrink = value
        }
        if let value = dict["FailReturn"] as? Int64 {
            self.failReturn = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class ImportNumberResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var batchId: Int64?

        public var code: Int64?

        public var data: String?

        public var importNum: Int64?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchId != nil {
                map["BatchId"] = self.batchId!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.importNum != nil {
                map["ImportNum"] = self.importNum!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BatchId"] as? Int64 {
                self.batchId = value
            }
            if let value = dict["Code"] as? Int64 {
                self.code = value
            }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ImportNum"] as? Int64 {
                self.importNum = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int64?

    public var message: String?

    public var model: ImportNumberResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = ImportNumberResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class ImportNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportNumberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImportNumberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImportNumberV2Request : Tea.TeaModel {
    public class Customers : Tea.TeaModel {
        public var clientUrl: String?

        public var number: String?

        public var numberMD5: String?

        public var properties: [String: Any]?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientUrl != nil {
                map["ClientUrl"] = self.clientUrl!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.numberMD5 != nil {
                map["NumberMD5"] = self.numberMD5!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClientUrl"] as? String {
                self.clientUrl = value
            }
            if let value = dict["Number"] as? String {
                self.number = value
            }
            if let value = dict["NumberMD5"] as? String {
                self.numberMD5 = value
            }
            if let value = dict["Properties"] as? [String: Any] {
                self.properties = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
        }
    }
    public var customers: [ImportNumberV2Request.Customers]?

    public var failReturn: Int64?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.customers != nil {
            var tmp : [Any] = []
            for k in self.customers! {
                tmp.append(k.toMap())
            }
            map["Customers"] = tmp
        }
        if self.failReturn != nil {
            map["FailReturn"] = self.failReturn!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Customers"] as? [Any?] {
            var tmp : [ImportNumberV2Request.Customers] = []
            for v in value {
                if v != nil {
                    var model = ImportNumberV2Request.Customers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.customers = tmp
        }
        if let value = dict["FailReturn"] as? Int64 {
            self.failReturn = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class ImportNumberV2ShrinkRequest : Tea.TeaModel {
    public var customersShrink: String?

    public var failReturn: Int64?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.customersShrink != nil {
            map["Customers"] = self.customersShrink!
        }
        if self.failReturn != nil {
            map["FailReturn"] = self.failReturn!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Customers"] as? String {
            self.customersShrink = value
        }
        if let value = dict["FailReturn"] as? Int64 {
            self.failReturn = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class ImportNumberV2ResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var batchId: Int64?

        public var code: Int64?

        public var data: String?

        public var importNum: Int64?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchId != nil {
                map["BatchId"] = self.batchId!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.importNum != nil {
                map["ImportNum"] = self.importNum!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BatchId"] as? Int64 {
                self.batchId = value
            }
            if let value = dict["Code"] as? Int64 {
                self.code = value
            }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["ImportNum"] as? Int64 {
                self.importNum = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int64?

    public var message: String?

    public var model: ImportNumberV2ResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = ImportNumberV2ResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class ImportNumberV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportNumberV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImportNumberV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class JoinAgentGroupRequest : Tea.TeaModel {
    public var agentGroupId: Int64?

    public var agentIds: [Int64]?

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
        if self.agentGroupId != nil {
            map["AgentGroupId"] = self.agentGroupId!
        }
        if self.agentIds != nil {
            map["AgentIds"] = self.agentIds!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentGroupId"] as? Int64 {
            self.agentGroupId = value
        }
        if let value = dict["AgentIds"] as? [Int64] {
            self.agentIds = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class JoinAgentGroupShrinkRequest : Tea.TeaModel {
    public var agentGroupId: Int64?

    public var agentIdsShrink: String?

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
        if self.agentGroupId != nil {
            map["AgentGroupId"] = self.agentGroupId!
        }
        if self.agentIdsShrink != nil {
            map["AgentIds"] = self.agentIdsShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentGroupId"] as? Int64 {
            self.agentGroupId = value
        }
        if let value = dict["AgentIds"] as? String {
            self.agentIdsShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class JoinAgentGroupResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: [String: Any]?

    public var requestId: String?

    public var success: Bool?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any] {
            self.model = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class JoinAgentGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: JoinAgentGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = JoinAgentGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PageRequest : Tea.TeaModel {
    public var numbers: [String]?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

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
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Numbers"] as? [String] {
            self.numbers = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class PageShrinkRequest : Tea.TeaModel {
    public var numbersShrink: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

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
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Numbers"] as? String {
            self.numbersShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class PageResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var createTime: String?

            public var expirationTime: String?

            public var number: String?

            public var numberMD5: String?

            public var remark: String?

            public override init() {
                super.init()
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
                if self.expirationTime != nil {
                    map["ExpirationTime"] = self.expirationTime!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.numberMD5 != nil {
                    map["NumberMD5"] = self.numberMD5!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["ExpirationTime"] as? String {
                    self.expirationTime = value
                }
                if let value = dict["Number"] as? String {
                    self.number = value
                }
                if let value = dict["NumberMD5"] as? String {
                    self.numberMD5 = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
            }
        }
        public var list: [PageResponseBody.Model.List]?

        public var pageNo: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public var totalPage: Int64?

        public override init() {
            super.init()
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
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalPage != nil {
                map["TotalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [PageResponseBody.Model.List] = []
                for v in value {
                    if v != nil {
                        var model = PageResponseBody.Model.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["TotalPage"] as? Int64 {
                self.totalPage = value
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: PageResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = PageResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class PageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAgentInfoRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentTag: String?

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
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? Int64 {
            self.agentId = value
        }
        if let value = dict["AgentTag"] as? String {
            self.agentTag = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QueryAgentInfoResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class AgentGroupList : Tea.TeaModel {
            public var groupId: Int64?

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
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GroupId"] as? Int64 {
                    self.groupId = value
                }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
                }
            }
        }
        public var account: String?

        public var active: Int64?

        public var agentExtension: Int64?

        public var agentGroupIds: [Int64]?

        public var agentGroupList: [QueryAgentInfoResponseBody.Model.AgentGroupList]?

        public var agentId: Int64?

        public var agentStatus: Int64?

        public var agentTag: String?

        public var createTime: String?

        public var extensionPwd: String?

        public var extensionServer: String?

        public var name: String?

        public var wsProtocol: String?

        public var wsRegisterAddress: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.agentExtension != nil {
                map["AgentExtension"] = self.agentExtension!
            }
            if self.agentGroupIds != nil {
                map["AgentGroupIds"] = self.agentGroupIds!
            }
            if self.agentGroupList != nil {
                var tmp : [Any] = []
                for k in self.agentGroupList! {
                    tmp.append(k.toMap())
                }
                map["AgentGroupList"] = tmp
            }
            if self.agentId != nil {
                map["AgentId"] = self.agentId!
            }
            if self.agentStatus != nil {
                map["AgentStatus"] = self.agentStatus!
            }
            if self.agentTag != nil {
                map["AgentTag"] = self.agentTag!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.extensionPwd != nil {
                map["ExtensionPwd"] = self.extensionPwd!
            }
            if self.extensionServer != nil {
                map["ExtensionServer"] = self.extensionServer!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.wsProtocol != nil {
                map["WsProtocol"] = self.wsProtocol!
            }
            if self.wsRegisterAddress != nil {
                map["WsRegisterAddress"] = self.wsRegisterAddress!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? String {
                self.account = value
            }
            if let value = dict["Active"] as? Int64 {
                self.active = value
            }
            if let value = dict["AgentExtension"] as? Int64 {
                self.agentExtension = value
            }
            if let value = dict["AgentGroupIds"] as? [Int64] {
                self.agentGroupIds = value
            }
            if let value = dict["AgentGroupList"] as? [Any?] {
                var tmp : [QueryAgentInfoResponseBody.Model.AgentGroupList] = []
                for v in value {
                    if v != nil {
                        var model = QueryAgentInfoResponseBody.Model.AgentGroupList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agentGroupList = tmp
            }
            if let value = dict["AgentId"] as? Int64 {
                self.agentId = value
            }
            if let value = dict["AgentStatus"] as? Int64 {
                self.agentStatus = value
            }
            if let value = dict["AgentTag"] as? String {
                self.agentTag = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExtensionPwd"] as? String {
                self.extensionPwd = value
            }
            if let value = dict["ExtensionServer"] as? String {
                self.extensionServer = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["WsProtocol"] as? String {
                self.wsProtocol = value
            }
            if let value = dict["WsRegisterAddress"] as? String {
                self.wsRegisterAddress = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int64?

    public var message: String?

    public var model: QueryAgentInfoResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = QueryAgentInfoResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class QueryAgentInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAgentInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryAgentInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuickAddTaskRequest : Tea.TeaModel {
    public class CallTimeList : Tea.TeaModel {
        public var callTime: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callTime != nil {
                map["CallTime"] = self.callTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CallTime"] as? [String] {
                self.callTime = value
            }
        }
    }
    public var agentGroupId: Int64?

    public var callTimeList: [QuickAddTaskRequest.CallTimeList]?

    public var name: String?

    public var ownerId: Int64?

    public var referenceTaskId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var smsTemplateId: Int64?

    public var startTime: String?

    public var templateId: Int64?

    public var templateType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentGroupId != nil {
            map["AgentGroupId"] = self.agentGroupId!
        }
        if self.callTimeList != nil {
            var tmp : [Any] = []
            for k in self.callTimeList! {
                tmp.append(k.toMap())
            }
            map["CallTimeList"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.referenceTaskId != nil {
            map["ReferenceTaskId"] = self.referenceTaskId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.smsTemplateId != nil {
            map["SmsTemplateId"] = self.smsTemplateId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentGroupId"] as? Int64 {
            self.agentGroupId = value
        }
        if let value = dict["CallTimeList"] as? [Any?] {
            var tmp : [QuickAddTaskRequest.CallTimeList] = []
            for v in value {
                if v != nil {
                    var model = QuickAddTaskRequest.CallTimeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.callTimeList = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReferenceTaskId"] as? Int64 {
            self.referenceTaskId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SmsTemplateId"] as? Int64 {
            self.smsTemplateId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["TemplateType"] as? Int64 {
            self.templateType = value
        }
    }
}

public class QuickAddTaskShrinkRequest : Tea.TeaModel {
    public var agentGroupId: Int64?

    public var callTimeListShrink: String?

    public var name: String?

    public var ownerId: Int64?

    public var referenceTaskId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var smsTemplateId: Int64?

    public var startTime: String?

    public var templateId: Int64?

    public var templateType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentGroupId != nil {
            map["AgentGroupId"] = self.agentGroupId!
        }
        if self.callTimeListShrink != nil {
            map["CallTimeList"] = self.callTimeListShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.referenceTaskId != nil {
            map["ReferenceTaskId"] = self.referenceTaskId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.smsTemplateId != nil {
            map["SmsTemplateId"] = self.smsTemplateId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentGroupId"] as? Int64 {
            self.agentGroupId = value
        }
        if let value = dict["CallTimeList"] as? String {
            self.callTimeListShrink = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReferenceTaskId"] as? Int64 {
            self.referenceTaskId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SmsTemplateId"] as? Int64 {
            self.smsTemplateId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["TemplateType"] as? Int64 {
            self.templateType = value
        }
    }
}

public class QuickAddTaskResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: QuickAddTaskResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = QuickAddTaskResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class QuickAddTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuickAddTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QuickAddTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuitAgentGroupRequest : Tea.TeaModel {
    public var agentGroupId: Int64?

    public var agentIds: [Int64]?

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
        if self.agentGroupId != nil {
            map["AgentGroupId"] = self.agentGroupId!
        }
        if self.agentIds != nil {
            map["AgentIds"] = self.agentIds!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentGroupId"] as? Int64 {
            self.agentGroupId = value
        }
        if let value = dict["AgentIds"] as? [Int64] {
            self.agentIds = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QuitAgentGroupShrinkRequest : Tea.TeaModel {
    public var agentGroupId: Int64?

    public var agentIdsShrink: String?

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
        if self.agentGroupId != nil {
            map["AgentGroupId"] = self.agentGroupId!
        }
        if self.agentIdsShrink != nil {
            map["AgentIds"] = self.agentIdsShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentGroupId"] as? Int64 {
            self.agentGroupId = value
        }
        if let value = dict["AgentIds"] as? String {
            self.agentIdsShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QuitAgentGroupResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: [String: Any]?

    public var requestId: String?

    public var success: Bool?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any] {
            self.model = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class QuitAgentGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuitAgentGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QuitAgentGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SmsTemplateCreateRequest : Tea.TeaModel {
    public var content: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sign: String?

    public var smsType: Int64?

    public var templateName: String?

    public var templateType: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sign != nil {
            map["Sign"] = self.sign!
        }
        if self.smsType != nil {
            map["SmsType"] = self.smsType!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Sign"] as? String {
            self.sign = value
        }
        if let value = dict["SmsType"] as? Int64 {
            self.smsType = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateType"] as? Int64 {
            self.templateType = value
        }
    }
}

public class SmsTemplateCreateResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var model: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class SmsTemplateCreateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SmsTemplateCreateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SmsTemplateCreateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SmsTemplatePageListRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sign: String?

    public var smsType: Int64?

    public var status: Int64?

    public var templateId: Int64?

    public var templateType: Int64?

    public override init() {
        super.init()
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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sign != nil {
            map["Sign"] = self.sign!
        }
        if self.smsType != nil {
            map["SmsType"] = self.smsType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Sign"] as? String {
            self.sign = value
        }
        if let value = dict["SmsType"] as? Int64 {
            self.smsType = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["TemplateType"] as? Int64 {
            self.templateType = value
        }
    }
}

public class SmsTemplatePageListResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var content: String?

            public var createTime: String?

            public var properties: String?

            public var shortUrlTaskId: Int64?

            public var sign: String?

            public var smsType: String?

            public var status: Int64?

            public var templateId: Int64?

            public var templateName: String?

            public var templateType: Int64?

            public override init() {
                super.init()
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
                if self.properties != nil {
                    map["Properties"] = self.properties!
                }
                if self.shortUrlTaskId != nil {
                    map["ShortUrlTaskId"] = self.shortUrlTaskId!
                }
                if self.sign != nil {
                    map["Sign"] = self.sign!
                }
                if self.smsType != nil {
                    map["SmsType"] = self.smsType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                if self.templateType != nil {
                    map["TemplateType"] = self.templateType!
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
                if let value = dict["Properties"] as? String {
                    self.properties = value
                }
                if let value = dict["ShortUrlTaskId"] as? Int64 {
                    self.shortUrlTaskId = value
                }
                if let value = dict["Sign"] as? String {
                    self.sign = value
                }
                if let value = dict["SmsType"] as? String {
                    self.smsType = value
                }
                if let value = dict["Status"] as? Int64 {
                    self.status = value
                }
                if let value = dict["TemplateId"] as? Int64 {
                    self.templateId = value
                }
                if let value = dict["TemplateName"] as? String {
                    self.templateName = value
                }
                if let value = dict["TemplateType"] as? Int64 {
                    self.templateType = value
                }
            }
        }
        public var list: [SmsTemplatePageListResponseBody.Model.List]?

        public var pageNo: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public var totalPage: Int64?

        public override init() {
            super.init()
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
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalPage != nil {
                map["TotalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [SmsTemplatePageListResponseBody.Model.List] = []
                for v in value {
                    if v != nil {
                        var model = SmsTemplatePageListResponseBody.Model.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["TotalPage"] as? Int64 {
                self.totalPage = value
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: SmsTemplatePageListResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = SmsTemplatePageListResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class SmsTemplatePageListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SmsTemplatePageListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SmsTemplatePageListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TaskCallChatsRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentTag: String?

    public var callId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
        }
        if self.callId != nil {
            map["CallId"] = self.callId!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? Int64 {
            self.agentId = value
        }
        if let value = dict["AgentTag"] as? String {
            self.agentTag = value
        }
        if let value = dict["CallId"] as? String {
            self.callId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class TaskCallChatsResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var content: String?

        public var createTime: String?

        public var fromNumber: String?

        public override init() {
            super.init()
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
            if self.fromNumber != nil {
                map["FromNumber"] = self.fromNumber!
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
            if let value = dict["FromNumber"] as? String {
                self.fromNumber = value
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: [TaskCallChatsResponseBody.Model]?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            var tmp : [Any] = []
            for k in self.model! {
                tmp.append(k.toMap())
            }
            map["Model"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [Any?] {
            var tmp : [TaskCallChatsResponseBody.Model] = []
            for v in value {
                if v != nil {
                    var model = TaskCallChatsResponseBody.Model()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.model = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class TaskCallChatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TaskCallChatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TaskCallChatsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TaskCallInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class TaskCallInfoResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var finishTotal: Int64?

        public var total: Int64?

        public var unCallTotal: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.finishTotal != nil {
                map["FinishTotal"] = self.finishTotal!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            if self.unCallTotal != nil {
                map["UnCallTotal"] = self.unCallTotal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FinishTotal"] as? Int64 {
                self.finishTotal = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
            if let value = dict["UnCallTotal"] as? Int64 {
                self.unCallTotal = value
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: TaskCallInfoResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = TaskCallInfoResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class TaskCallInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TaskCallInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TaskCallInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TaskCallListRequest : Tea.TeaModel {
    public var batchId: String?

    public var callDate: String?

    public var endCallDate: String?

    public var intentTags: [String]?

    public var numbers: [String]?

    public var ownerId: Int64?

    public var page: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.batchId != nil {
            map["BatchId"] = self.batchId!
        }
        if self.callDate != nil {
            map["CallDate"] = self.callDate!
        }
        if self.endCallDate != nil {
            map["EndCallDate"] = self.endCallDate!
        }
        if self.intentTags != nil {
            map["IntentTags"] = self.intentTags!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BatchId"] as? String {
            self.batchId = value
        }
        if let value = dict["CallDate"] as? String {
            self.callDate = value
        }
        if let value = dict["EndCallDate"] as? String {
            self.endCallDate = value
        }
        if let value = dict["IntentTags"] as? [String] {
            self.intentTags = value
        }
        if let value = dict["Numbers"] as? [String] {
            self.numbers = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class TaskCallListShrinkRequest : Tea.TeaModel {
    public var batchId: String?

    public var callDate: String?

    public var endCallDate: String?

    public var intentTagsShrink: String?

    public var numbersShrink: String?

    public var ownerId: Int64?

    public var page: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.batchId != nil {
            map["BatchId"] = self.batchId!
        }
        if self.callDate != nil {
            map["CallDate"] = self.callDate!
        }
        if self.endCallDate != nil {
            map["EndCallDate"] = self.endCallDate!
        }
        if self.intentTagsShrink != nil {
            map["IntentTags"] = self.intentTagsShrink!
        }
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BatchId"] as? String {
            self.batchId = value
        }
        if let value = dict["CallDate"] as? String {
            self.callDate = value
        }
        if let value = dict["EndCallDate"] as? String {
            self.endCallDate = value
        }
        if let value = dict["IntentTags"] as? String {
            self.intentTagsShrink = value
        }
        if let value = dict["Numbers"] as? String {
            self.numbersShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class TaskCallListResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var addWx: Int64?

            public var addWxStatus: String?

            public var agentExtension: String?

            public var agentId: Int64?

            public var agentSpeakingDuration: Int64?

            public var agentSpeakingTime: String?

            public var agentTag: String?

            public var answerRecall: Int64?

            public var answerTime: String?

            public var batchId: String?

            public var callBeginTime: String?

            public var callId: String?

            public var callTimes: String?

            public var callType: Int64?

            public var chatRecord: String?

            public var gateway: String?

            public var hangupTime: String?

            public var hangupType: Int64?

            public var importTime: String?

            public var individualTag: String?

            public var intentDescription: String?

            public var intentTag: String?

            public var interceptReason: String?

            public var keywords: String?

            public var number: String?

            public var numberMD5: String?

            public var properties: String?

            public var remark: String?

            public var ringTime: Int64?

            public var sms: String?

            public var speakingDuration: Int64?

            public var speakingTime: String?

            public var speakingTurns: String?

            public var status: String?

            public var statusCode: Int64?

            public var statusDescription: String?

            public var tag: String?

            public var taskId: Int64?

            public var templateId: Int64?

            public var transferStatus: String?

            public var transferStatusCode: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addWx != nil {
                    map["AddWx"] = self.addWx!
                }
                if self.addWxStatus != nil {
                    map["AddWxStatus"] = self.addWxStatus!
                }
                if self.agentExtension != nil {
                    map["AgentExtension"] = self.agentExtension!
                }
                if self.agentId != nil {
                    map["AgentId"] = self.agentId!
                }
                if self.agentSpeakingDuration != nil {
                    map["AgentSpeakingDuration"] = self.agentSpeakingDuration!
                }
                if self.agentSpeakingTime != nil {
                    map["AgentSpeakingTime"] = self.agentSpeakingTime!
                }
                if self.agentTag != nil {
                    map["AgentTag"] = self.agentTag!
                }
                if self.answerRecall != nil {
                    map["AnswerRecall"] = self.answerRecall!
                }
                if self.answerTime != nil {
                    map["AnswerTime"] = self.answerTime!
                }
                if self.batchId != nil {
                    map["BatchId"] = self.batchId!
                }
                if self.callBeginTime != nil {
                    map["CallBeginTime"] = self.callBeginTime!
                }
                if self.callId != nil {
                    map["CallId"] = self.callId!
                }
                if self.callTimes != nil {
                    map["CallTimes"] = self.callTimes!
                }
                if self.callType != nil {
                    map["CallType"] = self.callType!
                }
                if self.chatRecord != nil {
                    map["ChatRecord"] = self.chatRecord!
                }
                if self.gateway != nil {
                    map["Gateway"] = self.gateway!
                }
                if self.hangupTime != nil {
                    map["HangupTime"] = self.hangupTime!
                }
                if self.hangupType != nil {
                    map["HangupType"] = self.hangupType!
                }
                if self.importTime != nil {
                    map["ImportTime"] = self.importTime!
                }
                if self.individualTag != nil {
                    map["IndividualTag"] = self.individualTag!
                }
                if self.intentDescription != nil {
                    map["IntentDescription"] = self.intentDescription!
                }
                if self.intentTag != nil {
                    map["IntentTag"] = self.intentTag!
                }
                if self.interceptReason != nil {
                    map["InterceptReason"] = self.interceptReason!
                }
                if self.keywords != nil {
                    map["Keywords"] = self.keywords!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.numberMD5 != nil {
                    map["NumberMD5"] = self.numberMD5!
                }
                if self.properties != nil {
                    map["Properties"] = self.properties!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.ringTime != nil {
                    map["RingTime"] = self.ringTime!
                }
                if self.sms != nil {
                    map["Sms"] = self.sms!
                }
                if self.speakingDuration != nil {
                    map["SpeakingDuration"] = self.speakingDuration!
                }
                if self.speakingTime != nil {
                    map["SpeakingTime"] = self.speakingTime!
                }
                if self.speakingTurns != nil {
                    map["SpeakingTurns"] = self.speakingTurns!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusCode != nil {
                    map["StatusCode"] = self.statusCode!
                }
                if self.statusDescription != nil {
                    map["StatusDescription"] = self.statusDescription!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.transferStatus != nil {
                    map["TransferStatus"] = self.transferStatus!
                }
                if self.transferStatusCode != nil {
                    map["TransferStatusCode"] = self.transferStatusCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AddWx"] as? Int64 {
                    self.addWx = value
                }
                if let value = dict["AddWxStatus"] as? String {
                    self.addWxStatus = value
                }
                if let value = dict["AgentExtension"] as? String {
                    self.agentExtension = value
                }
                if let value = dict["AgentId"] as? Int64 {
                    self.agentId = value
                }
                if let value = dict["AgentSpeakingDuration"] as? Int64 {
                    self.agentSpeakingDuration = value
                }
                if let value = dict["AgentSpeakingTime"] as? String {
                    self.agentSpeakingTime = value
                }
                if let value = dict["AgentTag"] as? String {
                    self.agentTag = value
                }
                if let value = dict["AnswerRecall"] as? Int64 {
                    self.answerRecall = value
                }
                if let value = dict["AnswerTime"] as? String {
                    self.answerTime = value
                }
                if let value = dict["BatchId"] as? String {
                    self.batchId = value
                }
                if let value = dict["CallBeginTime"] as? String {
                    self.callBeginTime = value
                }
                if let value = dict["CallId"] as? String {
                    self.callId = value
                }
                if let value = dict["CallTimes"] as? String {
                    self.callTimes = value
                }
                if let value = dict["CallType"] as? Int64 {
                    self.callType = value
                }
                if let value = dict["ChatRecord"] as? String {
                    self.chatRecord = value
                }
                if let value = dict["Gateway"] as? String {
                    self.gateway = value
                }
                if let value = dict["HangupTime"] as? String {
                    self.hangupTime = value
                }
                if let value = dict["HangupType"] as? Int64 {
                    self.hangupType = value
                }
                if let value = dict["ImportTime"] as? String {
                    self.importTime = value
                }
                if let value = dict["IndividualTag"] as? String {
                    self.individualTag = value
                }
                if let value = dict["IntentDescription"] as? String {
                    self.intentDescription = value
                }
                if let value = dict["IntentTag"] as? String {
                    self.intentTag = value
                }
                if let value = dict["InterceptReason"] as? String {
                    self.interceptReason = value
                }
                if let value = dict["Keywords"] as? String {
                    self.keywords = value
                }
                if let value = dict["Number"] as? String {
                    self.number = value
                }
                if let value = dict["NumberMD5"] as? String {
                    self.numberMD5 = value
                }
                if let value = dict["Properties"] as? String {
                    self.properties = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["RingTime"] as? Int64 {
                    self.ringTime = value
                }
                if let value = dict["Sms"] as? String {
                    self.sms = value
                }
                if let value = dict["SpeakingDuration"] as? Int64 {
                    self.speakingDuration = value
                }
                if let value = dict["SpeakingTime"] as? String {
                    self.speakingTime = value
                }
                if let value = dict["SpeakingTurns"] as? String {
                    self.speakingTurns = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StatusCode"] as? Int64 {
                    self.statusCode = value
                }
                if let value = dict["StatusDescription"] as? String {
                    self.statusDescription = value
                }
                if let value = dict["Tag"] as? String {
                    self.tag = value
                }
                if let value = dict["TaskId"] as? Int64 {
                    self.taskId = value
                }
                if let value = dict["TemplateId"] as? Int64 {
                    self.templateId = value
                }
                if let value = dict["TransferStatus"] as? String {
                    self.transferStatus = value
                }
                if let value = dict["TransferStatusCode"] as? Int64 {
                    self.transferStatusCode = value
                }
            }
        }
        public var list: [TaskCallListResponseBody.Model.List]?

        public var pageNo: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public var totalPage: Int64?

        public override init() {
            super.init()
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
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalPage != nil {
                map["TotalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [TaskCallListResponseBody.Model.List] = []
                for v in value {
                    if v != nil {
                        var model = TaskCallListResponseBody.Model.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["TotalPage"] as? Int64 {
                self.totalPage = value
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: TaskCallListResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = TaskCallListResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class TaskCallListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TaskCallListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TaskCallListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TaskCancelCallRequest : Tea.TeaModel {
    public var numbers: [String]?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: [String]?

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
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Numbers"] as? [String] {
            self.numbers = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class TaskCancelCallShrinkRequest : Tea.TeaModel {
    public var numbersShrink: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagsShrink: String?

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
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
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
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Numbers"] as? String {
            self.numbersShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class TaskCancelCallResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var unHandleNumbers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.unHandleNumbers != nil {
                map["UnHandleNumbers"] = self.unHandleNumbers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UnHandleNumbers"] as? [String] {
                self.unHandleNumbers = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var model: TaskCancelCallResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = TaskCancelCallResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class TaskCancelCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TaskCancelCallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TaskCancelCallResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TaskListRequest : Tea.TeaModel {
    public var createTime: String?

    public var lastCallTime: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var status: Int64?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.lastCallTime != nil {
            map["LastCallTime"] = self.lastCallTime!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["LastCallTime"] as? String {
            self.lastCallTime = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class TaskListResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class IntentTags : Tea.TeaModel {
            public var intentDescription: String?

            public var intentTag: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.intentDescription != nil {
                    map["IntentDescription"] = self.intentDescription!
                }
                if self.intentTag != nil {
                    map["IntentTag"] = self.intentTag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IntentDescription"] as? String {
                    self.intentDescription = value
                }
                if let value = dict["IntentTag"] as? String {
                    self.intentTag = value
                }
            }
        }
        public var allowCallTime: String?

        public var allowCallTimeFormat: String?

        public var allowDayOfWeek: String?

        public var callType: Int64?

        public var createTime: String?

        public var flashSmsTemplateId: Int64?

        public var flashSmsTemplateName: String?

        public var flashSmsType: Int64?

        public var importTime: String?

        public var intentTags: [TaskListResponseBody.Model.IntentTags]?

        public var invalidReCall: Int64?

        public var lastCallTime: String?

        public var maxConcurrency: Int64?

        public var personalityTags: [String]?

        public var priority: Int64?

        public var properties: String?

        public var recallType: Int64?

        public var sendSms: Int64?

        public var smsName: String?

        public var status: Int64?

        public var taskId: Int64?

        public var taskName: String?

        public var templateId: String?

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
            if self.allowCallTime != nil {
                map["AllowCallTime"] = self.allowCallTime!
            }
            if self.allowCallTimeFormat != nil {
                map["AllowCallTimeFormat"] = self.allowCallTimeFormat!
            }
            if self.allowDayOfWeek != nil {
                map["AllowDayOfWeek"] = self.allowDayOfWeek!
            }
            if self.callType != nil {
                map["CallType"] = self.callType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.flashSmsTemplateId != nil {
                map["FlashSmsTemplateId"] = self.flashSmsTemplateId!
            }
            if self.flashSmsTemplateName != nil {
                map["FlashSmsTemplateName"] = self.flashSmsTemplateName!
            }
            if self.flashSmsType != nil {
                map["FlashSmsType"] = self.flashSmsType!
            }
            if self.importTime != nil {
                map["ImportTime"] = self.importTime!
            }
            if self.intentTags != nil {
                var tmp : [Any] = []
                for k in self.intentTags! {
                    tmp.append(k.toMap())
                }
                map["IntentTags"] = tmp
            }
            if self.invalidReCall != nil {
                map["InvalidReCall"] = self.invalidReCall!
            }
            if self.lastCallTime != nil {
                map["LastCallTime"] = self.lastCallTime!
            }
            if self.maxConcurrency != nil {
                map["MaxConcurrency"] = self.maxConcurrency!
            }
            if self.personalityTags != nil {
                map["PersonalityTags"] = self.personalityTags!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.recallType != nil {
                map["RecallType"] = self.recallType!
            }
            if self.sendSms != nil {
                map["SendSms"] = self.sendSms!
            }
            if self.smsName != nil {
                map["SmsName"] = self.smsName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowCallTime"] as? String {
                self.allowCallTime = value
            }
            if let value = dict["AllowCallTimeFormat"] as? String {
                self.allowCallTimeFormat = value
            }
            if let value = dict["AllowDayOfWeek"] as? String {
                self.allowDayOfWeek = value
            }
            if let value = dict["CallType"] as? Int64 {
                self.callType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FlashSmsTemplateId"] as? Int64 {
                self.flashSmsTemplateId = value
            }
            if let value = dict["FlashSmsTemplateName"] as? String {
                self.flashSmsTemplateName = value
            }
            if let value = dict["FlashSmsType"] as? Int64 {
                self.flashSmsType = value
            }
            if let value = dict["ImportTime"] as? String {
                self.importTime = value
            }
            if let value = dict["IntentTags"] as? [Any?] {
                var tmp : [TaskListResponseBody.Model.IntentTags] = []
                for v in value {
                    if v != nil {
                        var model = TaskListResponseBody.Model.IntentTags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.intentTags = tmp
            }
            if let value = dict["InvalidReCall"] as? Int64 {
                self.invalidReCall = value
            }
            if let value = dict["LastCallTime"] as? String {
                self.lastCallTime = value
            }
            if let value = dict["MaxConcurrency"] as? Int64 {
                self.maxConcurrency = value
            }
            if let value = dict["PersonalityTags"] as? [String] {
                self.personalityTags = value
            }
            if let value = dict["Priority"] as? Int64 {
                self.priority = value
            }
            if let value = dict["Properties"] as? String {
                self.properties = value
            }
            if let value = dict["RecallType"] as? Int64 {
                self.recallType = value
            }
            if let value = dict["SendSms"] as? Int64 {
                self.sendSms = value
            }
            if let value = dict["SmsName"] as? String {
                self.smsName = value
            }
            if let value = dict["Status"] as? Int64 {
                self.status = value
            }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int64?

    public var message: String?

    public var model: [TaskListResponseBody.Model]?

    public var requestId: String?

    public var success: Bool?

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
            var tmp : [Any] = []
            for k in self.model! {
                tmp.append(k.toMap())
            }
            map["Model"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [Any?] {
            var tmp : [TaskListResponseBody.Model] = []
            for v in value {
                if v != nil {
                    var model = TaskListResponseBody.Model()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.model = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class TaskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TaskListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TaskListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TaskRecoverCallRequest : Tea.TeaModel {
    public var beginImportTime: String?

    public var endImportTime: String?

    public var numbers: [String]?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: [String]?

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
        if self.beginImportTime != nil {
            map["BeginImportTime"] = self.beginImportTime!
        }
        if self.endImportTime != nil {
            map["EndImportTime"] = self.endImportTime!
        }
        if self.numbers != nil {
            map["Numbers"] = self.numbers!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginImportTime"] as? String {
            self.beginImportTime = value
        }
        if let value = dict["EndImportTime"] as? String {
            self.endImportTime = value
        }
        if let value = dict["Numbers"] as? [String] {
            self.numbers = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? [String] {
            self.tags = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class TaskRecoverCallShrinkRequest : Tea.TeaModel {
    public var beginImportTime: String?

    public var endImportTime: String?

    public var numbersShrink: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagsShrink: String?

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
        if self.beginImportTime != nil {
            map["BeginImportTime"] = self.beginImportTime!
        }
        if self.endImportTime != nil {
            map["EndImportTime"] = self.endImportTime!
        }
        if self.numbersShrink != nil {
            map["Numbers"] = self.numbersShrink!
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
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginImportTime"] as? String {
            self.beginImportTime = value
        }
        if let value = dict["EndImportTime"] as? String {
            self.endImportTime = value
        }
        if let value = dict["Numbers"] as? String {
            self.numbersShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class TaskRecoverCallResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var model: [String: Any]?

    public var requestId: String?

    public var success: String?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any] {
            self.model = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class TaskRecoverCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TaskRecoverCallResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TaskRecoverCallResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TemplateListRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class TemplateListResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var intentTags: [[String: Any]]?

        public var personalityTags: [String]?

        public var properties: String?

        public var templateId: Int64?

        public var templateName: String?

        public var templateType: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.intentTags != nil {
                map["IntentTags"] = self.intentTags!
            }
            if self.personalityTags != nil {
                map["PersonalityTags"] = self.personalityTags!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IntentTags"] as? [[String: Any]] {
                self.intentTags = value
            }
            if let value = dict["PersonalityTags"] as? [String] {
                self.personalityTags = value
            }
            if let value = dict["Properties"] as? String {
                self.properties = value
            }
            if let value = dict["TemplateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateType"] as? Int64 {
                self.templateType = value
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: [TemplateListResponseBody.Model]?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            var tmp : [Any] = []
            for k in self.model! {
                tmp.append(k.toMap())
            }
            map["Model"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [Any?] {
            var tmp : [TemplateListResponseBody.Model] = []
            for v in value {
                if v != nil {
                    var model = TemplateListResponseBody.Model()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.model = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class TemplateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TemplateListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TemplateListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAgentStatusRequest : Tea.TeaModel {
    public var agentId: Int64?

    public var agentStatus: Int64?

    public var agentTag: String?

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
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.agentStatus != nil {
            map["AgentStatus"] = self.agentStatus!
        }
        if self.agentTag != nil {
            map["AgentTag"] = self.agentTag!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? Int64 {
            self.agentId = value
        }
        if let value = dict["AgentStatus"] as? Int64 {
            self.agentStatus = value
        }
        if let value = dict["AgentTag"] as? String {
            self.agentTag = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class UpdateAgentStatusResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var message: String?

    public var model: [String: Any]?

    public var requestId: String?

    public var success: String?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any] {
            self.model = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class UpdateAgentStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAgentStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateAgentStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTaskCustomerRequest : Tea.TeaModel {
    public class Customers : Tea.TeaModel {
        public var cancel: Int64?

        public var number: String?

        public var properties: [String: Any]?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cancel != nil {
                map["Cancel"] = self.cancel!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cancel"] as? Int64 {
                self.cancel = value
            }
            if let value = dict["Number"] as? String {
                self.number = value
            }
            if let value = dict["Properties"] as? [String: Any] {
                self.properties = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
        }
    }
    public var customers: [UpdateTaskCustomerRequest.Customers]?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.customers != nil {
            var tmp : [Any] = []
            for k in self.customers! {
                tmp.append(k.toMap())
            }
            map["Customers"] = tmp
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Customers"] as? [Any?] {
            var tmp : [UpdateTaskCustomerRequest.Customers] = []
            for v in value {
                if v != nil {
                    var model = UpdateTaskCustomerRequest.Customers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.customers = tmp
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class UpdateTaskCustomerShrinkRequest : Tea.TeaModel {
    public var customersShrink: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.customersShrink != nil {
            map["Customers"] = self.customersShrink!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Customers"] as? String {
            self.customersShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class UpdateTaskCustomerResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var unHandleNumbers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.unHandleNumbers != nil {
                map["UnHandleNumbers"] = self.unHandleNumbers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UnHandleNumbers"] as? [String] {
                self.unHandleNumbers = value
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var model: UpdateTaskCustomerResponseBody.Model?

    public var requestId: String?

    public var success: String?

    public var timestamp: Int64?

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
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = UpdateTaskCustomerResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
    }
}

public class UpdateTaskCustomerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTaskCustomerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateTaskCustomerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
