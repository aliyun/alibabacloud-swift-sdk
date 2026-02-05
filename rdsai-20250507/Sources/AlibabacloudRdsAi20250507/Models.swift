import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChatMessagesRequest : Tea.TeaModel {
    public class Inputs : Tea.TeaModel {
        public var customAgentId: String?

        public var language: String?

        public var regionId: String?

        public var timezone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customAgentId != nil {
                map["CustomAgentId"] = self.customAgentId!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.timezone != nil {
                map["Timezone"] = self.timezone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomAgentId"] as? String {
                self.customAgentId = value
            }
            if let value = dict["Language"] as? String {
                self.language = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Timezone"] as? String {
                self.timezone = value
            }
        }
    }
    public var conversationId: String?

    public var eventMode: String?

    public var inputs: ChatMessagesRequest.Inputs?

    public var parentMessageId: String?

    public var query: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.inputs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.eventMode != nil {
            map["EventMode"] = self.eventMode!
        }
        if self.inputs != nil {
            map["Inputs"] = self.inputs?.toMap()
        }
        if self.parentMessageId != nil {
            map["ParentMessageId"] = self.parentMessageId!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["EventMode"] as? String {
            self.eventMode = value
        }
        if let value = dict["Inputs"] as? [String: Any?] {
            var model = ChatMessagesRequest.Inputs()
            model.fromMap(value)
            self.inputs = model
        }
        if let value = dict["ParentMessageId"] as? String {
            self.parentMessageId = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
    }
}

public class ChatMessagesShrinkRequest : Tea.TeaModel {
    public var conversationId: String?

    public var eventMode: String?

    public var inputsShrink: String?

    public var parentMessageId: String?

    public var query: String?

    public override init() {
        super.init()
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
            map["ConversationId"] = self.conversationId!
        }
        if self.eventMode != nil {
            map["EventMode"] = self.eventMode!
        }
        if self.inputsShrink != nil {
            map["Inputs"] = self.inputsShrink!
        }
        if self.parentMessageId != nil {
            map["ParentMessageId"] = self.parentMessageId!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["EventMode"] as? String {
            self.eventMode = value
        }
        if let value = dict["Inputs"] as? String {
            self.inputsShrink = value
        }
        if let value = dict["ParentMessageId"] as? String {
            self.parentMessageId = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
    }
}

public class ChatMessagesResponseBody : Tea.TeaModel {
    public var answer: String?

    public var conversationId: String?

    public var createdAt: Int64?

    public var event: String?

    public var id: String?

    public var messageId: String?

    public var mode: String?

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
        if self.answer != nil {
            map["Answer"] = self.answer!
        }
        if self.conversationId != nil {
            map["ConversationId"] = self.conversationId!
        }
        if self.createdAt != nil {
            map["CreatedAt"] = self.createdAt!
        }
        if self.event != nil {
            map["Event"] = self.event!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Answer"] as? String {
            self.answer = value
        }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["CreatedAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["Event"] as? String {
            self.event = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class ChatMessagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatMessagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatMessagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatMessagesTaskStopRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class ChatMessagesTaskStopResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if let value = dict["Result"] as? String {
            self.result = value
        }
    }
}

public class ChatMessagesTaskStopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatMessagesTaskStopResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatMessagesTaskStopResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppInstanceRequest : Tea.TeaModel {
    public class DBInstanceConfig : Tea.TeaModel {
        public var DBInstanceClass: String?

        public var DBInstanceStorage: Int32?

        public var payType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceClass != nil {
                map["DBInstanceClass"] = self.DBInstanceClass!
            }
            if self.DBInstanceStorage != nil {
                map["DBInstanceStorage"] = self.DBInstanceStorage!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceClass"] as? String {
                self.DBInstanceClass = value
            }
            if let value = dict["DBInstanceStorage"] as? Int32 {
                self.DBInstanceStorage = value
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
        }
    }
    public var appName: String?

    public var appType: String?

    public var clientToken: String?

    public var DBInstanceConfig: CreateAppInstanceRequest.DBInstanceConfig?

    public var DBInstanceName: String?

    public var dashboardPassword: String?

    public var dashboardUsername: String?

    public var databasePassword: String?

    public var initializeWithExistingData: Bool?

    public var instanceClass: String?

    public var publicEndpointEnabled: Bool?

    public var publicNetworkAccessEnabled: Bool?

    public var RAGEnabled: Bool?

    public var regionId: String?

    public var vSwitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.DBInstanceConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DBInstanceConfig != nil {
            map["DBInstanceConfig"] = self.DBInstanceConfig?.toMap()
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.dashboardPassword != nil {
            map["DashboardPassword"] = self.dashboardPassword!
        }
        if self.dashboardUsername != nil {
            map["DashboardUsername"] = self.dashboardUsername!
        }
        if self.databasePassword != nil {
            map["DatabasePassword"] = self.databasePassword!
        }
        if self.initializeWithExistingData != nil {
            map["InitializeWithExistingData"] = self.initializeWithExistingData!
        }
        if self.instanceClass != nil {
            map["InstanceClass"] = self.instanceClass!
        }
        if self.publicEndpointEnabled != nil {
            map["PublicEndpointEnabled"] = self.publicEndpointEnabled!
        }
        if self.publicNetworkAccessEnabled != nil {
            map["PublicNetworkAccessEnabled"] = self.publicNetworkAccessEnabled!
        }
        if self.RAGEnabled != nil {
            map["RAGEnabled"] = self.RAGEnabled!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DBInstanceConfig"] as? [String: Any?] {
            var model = CreateAppInstanceRequest.DBInstanceConfig()
            model.fromMap(value)
            self.DBInstanceConfig = model
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DashboardPassword"] as? String {
            self.dashboardPassword = value
        }
        if let value = dict["DashboardUsername"] as? String {
            self.dashboardUsername = value
        }
        if let value = dict["DatabasePassword"] as? String {
            self.databasePassword = value
        }
        if let value = dict["InitializeWithExistingData"] as? Bool {
            self.initializeWithExistingData = value
        }
        if let value = dict["InstanceClass"] as? String {
            self.instanceClass = value
        }
        if let value = dict["PublicEndpointEnabled"] as? Bool {
            self.publicEndpointEnabled = value
        }
        if let value = dict["PublicNetworkAccessEnabled"] as? Bool {
            self.publicNetworkAccessEnabled = value
        }
        if let value = dict["RAGEnabled"] as? Bool {
            self.RAGEnabled = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
    }
}

public class CreateAppInstanceShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var appType: String?

    public var clientToken: String?

    public var DBInstanceConfigShrink: String?

    public var DBInstanceName: String?

    public var dashboardPassword: String?

    public var dashboardUsername: String?

    public var databasePassword: String?

    public var initializeWithExistingData: Bool?

    public var instanceClass: String?

    public var publicEndpointEnabled: Bool?

    public var publicNetworkAccessEnabled: Bool?

    public var RAGEnabled: Bool?

    public var regionId: String?

    public var vSwitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DBInstanceConfigShrink != nil {
            map["DBInstanceConfig"] = self.DBInstanceConfigShrink!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.dashboardPassword != nil {
            map["DashboardPassword"] = self.dashboardPassword!
        }
        if self.dashboardUsername != nil {
            map["DashboardUsername"] = self.dashboardUsername!
        }
        if self.databasePassword != nil {
            map["DatabasePassword"] = self.databasePassword!
        }
        if self.initializeWithExistingData != nil {
            map["InitializeWithExistingData"] = self.initializeWithExistingData!
        }
        if self.instanceClass != nil {
            map["InstanceClass"] = self.instanceClass!
        }
        if self.publicEndpointEnabled != nil {
            map["PublicEndpointEnabled"] = self.publicEndpointEnabled!
        }
        if self.publicNetworkAccessEnabled != nil {
            map["PublicNetworkAccessEnabled"] = self.publicNetworkAccessEnabled!
        }
        if self.RAGEnabled != nil {
            map["RAGEnabled"] = self.RAGEnabled!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DBInstanceConfig"] as? String {
            self.DBInstanceConfigShrink = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DashboardPassword"] as? String {
            self.dashboardPassword = value
        }
        if let value = dict["DashboardUsername"] as? String {
            self.dashboardUsername = value
        }
        if let value = dict["DatabasePassword"] as? String {
            self.databasePassword = value
        }
        if let value = dict["InitializeWithExistingData"] as? Bool {
            self.initializeWithExistingData = value
        }
        if let value = dict["InstanceClass"] as? String {
            self.instanceClass = value
        }
        if let value = dict["PublicEndpointEnabled"] as? Bool {
            self.publicEndpointEnabled = value
        }
        if let value = dict["PublicNetworkAccessEnabled"] as? Bool {
            self.publicNetworkAccessEnabled = value
        }
        if let value = dict["RAGEnabled"] as? Bool {
            self.RAGEnabled = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
    }
}

public class CreateAppInstanceResponseBody : Tea.TeaModel {
    public var instanceName: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAppInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAppInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCustomAgentRequest : Tea.TeaModel {
    public var enableTools: Bool?

    public var name: String?

    public var skillIds: [String]?

    public var systemPrompt: String?

    public var tools: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableTools != nil {
            map["EnableTools"] = self.enableTools!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.skillIds != nil {
            map["SkillIds"] = self.skillIds!
        }
        if self.systemPrompt != nil {
            map["SystemPrompt"] = self.systemPrompt!
        }
        if self.tools != nil {
            map["Tools"] = self.tools!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableTools"] as? Bool {
            self.enableTools = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["SkillIds"] as? [String] {
            self.skillIds = value
        }
        if let value = dict["SystemPrompt"] as? String {
            self.systemPrompt = value
        }
        if let value = dict["Tools"] as? [String] {
            self.tools = value
        }
    }
}

public class CreateCustomAgentShrinkRequest : Tea.TeaModel {
    public var enableTools: Bool?

    public var name: String?

    public var skillIdsShrink: String?

    public var systemPrompt: String?

    public var toolsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableTools != nil {
            map["EnableTools"] = self.enableTools!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.skillIdsShrink != nil {
            map["SkillIds"] = self.skillIdsShrink!
        }
        if self.systemPrompt != nil {
            map["SystemPrompt"] = self.systemPrompt!
        }
        if self.toolsShrink != nil {
            map["Tools"] = self.toolsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableTools"] as? Bool {
            self.enableTools = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["SkillIds"] as? String {
            self.skillIdsShrink = value
        }
        if let value = dict["SystemPrompt"] as? String {
            self.systemPrompt = value
        }
        if let value = dict["Tools"] as? String {
            self.toolsShrink = value
        }
    }
}

public class CreateCustomAgentResponseBody : Tea.TeaModel {
    public class Skills : Tea.TeaModel {
        public var description_: String?

        public var id: String?

        public var name: String?

        public var skillType: String?

        public override init() {
            super.init()
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
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.skillType != nil {
                map["SkillType"] = self.skillType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SkillType"] as? String {
                self.skillType = value
            }
        }
    }
    public var createdAt: String?

    public var enableTools: Bool?

    public var id: String?

    public var name: String?

    public var requestId: String?

    public var skills: [CreateCustomAgentResponseBody.Skills]?

    public var systemPrompt: String?

    public var tools: [String]?

    public override init() {
        super.init()
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
            map["CreatedAt"] = self.createdAt!
        }
        if self.enableTools != nil {
            map["EnableTools"] = self.enableTools!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.skills != nil {
            var tmp : [Any] = []
            for k in self.skills! {
                tmp.append(k.toMap())
            }
            map["Skills"] = tmp
        }
        if self.systemPrompt != nil {
            map["SystemPrompt"] = self.systemPrompt!
        }
        if self.tools != nil {
            map["Tools"] = self.tools!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["EnableTools"] as? Bool {
            self.enableTools = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Skills"] as? [Any?] {
            var tmp : [CreateCustomAgentResponseBody.Skills] = []
            for v in value {
                if v != nil {
                    var model = CreateCustomAgentResponseBody.Skills()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.skills = tmp
        }
        if let value = dict["SystemPrompt"] as? String {
            self.systemPrompt = value
        }
        if let value = dict["Tools"] as? [String] {
            self.tools = value
        }
    }
}

public class CreateCustomAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCustomAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInspectionTaskRequest : Tea.TeaModel {
    public var endTime: String?

    public var inspectionItems: String?

    public var instanceIds: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.inspectionItems != nil {
            map["InspectionItems"] = self.inspectionItems!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InspectionItems"] as? String {
            self.inspectionItems = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class CreateInspectionTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var data: CreateInspectionTaskResponseBody.Data?

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
            var model = CreateInspectionTaskResponseBody.Data()
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

public class CreateInspectionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInspectionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateInspectionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateScheduledTaskRequest : Tea.TeaModel {
    public var description_: String?

    public var frequency: String?

    public var instanceIds: String?

    public var name: String?

    public var startTime: String?

    public var timeRange: String?

    public override init() {
        super.init()
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
            map["Description"] = self.description_!
        }
        if self.frequency != nil {
            map["Frequency"] = self.frequency!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Frequency"] as? String {
            self.frequency = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TimeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class CreateScheduledTaskResponseBody : Tea.TeaModel {
    public var message: String?

    public var requestId: String?

    public var scheduledId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduledId != nil {
            map["ScheduledId"] = self.scheduledId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScheduledId"] as? String {
            self.scheduledId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

public class DeleteAppInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteAppInstanceResponseBody : Tea.TeaModel {
    public var instanceName: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteAppInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAppInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCustomAgentRequest : Tea.TeaModel {
    public var customAgentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customAgentId != nil {
            map["CustomAgentId"] = self.customAgentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomAgentId"] as? String {
            self.customAgentId = value
        }
    }
}

public class DeleteCustomAgentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if let value = dict["Result"] as? String {
            self.result = value
        }
    }
}

public class DeleteCustomAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteCustomAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteScheduledTaskRequest : Tea.TeaModel {
    public var scheduledId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scheduledId != nil {
            map["ScheduledId"] = self.scheduledId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ScheduledId"] as? String {
            self.scheduledId = value
        }
    }
}

public class DeleteScheduledTaskResponseBody : Tea.TeaModel {
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

public class DeleteScheduledTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScheduledTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteScheduledTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAppInstanceAttributeRequest : Tea.TeaModel {
    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeAppInstanceAttributeResponseBody : Tea.TeaModel {
    public var appName: String?

    public var appType: String?

    public var DBInstanceName: String?

    public var eipId: String?

    public var eipStatus: String?

    public var instanceClass: String?

    public var instanceMinorVersion: String?

    public var instanceName: String?

    public var natCreatedBy: String?

    public var natGatewayId: String?

    public var natStatus: String?

    public var publicConnectionString: String?

    public var regionId: String?

    public var requestId: String?

    public var status: String?

    public var vSwitchId: String?

    public var vpcConnectionString: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.eipId != nil {
            map["EipId"] = self.eipId!
        }
        if self.eipStatus != nil {
            map["EipStatus"] = self.eipStatus!
        }
        if self.instanceClass != nil {
            map["InstanceClass"] = self.instanceClass!
        }
        if self.instanceMinorVersion != nil {
            map["InstanceMinorVersion"] = self.instanceMinorVersion!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.natCreatedBy != nil {
            map["NatCreatedBy"] = self.natCreatedBy!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        if self.natStatus != nil {
            map["NatStatus"] = self.natStatus!
        }
        if self.publicConnectionString != nil {
            map["PublicConnectionString"] = self.publicConnectionString!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcConnectionString != nil {
            map["VpcConnectionString"] = self.vpcConnectionString!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["EipId"] as? String {
            self.eipId = value
        }
        if let value = dict["EipStatus"] as? String {
            self.eipStatus = value
        }
        if let value = dict["InstanceClass"] as? String {
            self.instanceClass = value
        }
        if let value = dict["InstanceMinorVersion"] as? String {
            self.instanceMinorVersion = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["NatCreatedBy"] as? String {
            self.natCreatedBy = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
        if let value = dict["NatStatus"] as? String {
            self.natStatus = value
        }
        if let value = dict["PublicConnectionString"] as? String {
            self.publicConnectionString = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcConnectionString"] as? String {
            self.vpcConnectionString = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeAppInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppInstanceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAppInstanceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAppInstancesRequest : Tea.TeaModel {
    public var appType: String?

    public var DBInstanceName: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeAppInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var appName: String?

        public var appType: String?

        public var DBInstanceName: String?

        public var instanceClass: String?

        public var instanceMinorVersion: String?

        public var instanceName: String?

        public var publicConnectionString: String?

        public var regionId: String?

        public var status: String?

        public var vSwitchId: String?

        public var vpcConnectionString: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.instanceClass != nil {
                map["InstanceClass"] = self.instanceClass!
            }
            if self.instanceMinorVersion != nil {
                map["InstanceMinorVersion"] = self.instanceMinorVersion!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.publicConnectionString != nil {
                map["PublicConnectionString"] = self.publicConnectionString!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcConnectionString != nil {
                map["VpcConnectionString"] = self.vpcConnectionString!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["AppType"] as? String {
                self.appType = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["InstanceClass"] as? String {
                self.instanceClass = value
            }
            if let value = dict["InstanceMinorVersion"] as? String {
                self.instanceMinorVersion = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["PublicConnectionString"] as? String {
                self.publicConnectionString = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcConnectionString"] as? String {
                self.vpcConnectionString = value
            }
        }
    }
    public var instances: [DescribeAppInstancesResponseBody.Instances]?

    public var maxResults: Int64?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
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
            var tmp : [DescribeAppInstancesResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = DescribeAppInstancesResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
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

public class DescribeAppInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAppInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeEventsListRequest : Tea.TeaModel {
    public var endTime: String?

    public var instanceIdList: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceIdList != nil {
            map["InstanceIdList"] = self.instanceIdList!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceIdList"] as? String {
            self.instanceIdList = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeEventsListResponseBody : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public var eventCode: String?

        public var eventStatus: String?

        public var eventTimeList: [String]?

        public var instanceDescription: String?

        public var instanceId: String?

        public var recoveryTime: String?

        public var regionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eventCode != nil {
                map["EventCode"] = self.eventCode!
            }
            if self.eventStatus != nil {
                map["EventStatus"] = self.eventStatus!
            }
            if self.eventTimeList != nil {
                map["EventTimeList"] = self.eventTimeList!
            }
            if self.instanceDescription != nil {
                map["InstanceDescription"] = self.instanceDescription!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.recoveryTime != nil {
                map["RecoveryTime"] = self.recoveryTime!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EventCode"] as? String {
                self.eventCode = value
            }
            if let value = dict["EventStatus"] as? String {
                self.eventStatus = value
            }
            if let value = dict["EventTimeList"] as? [String] {
                self.eventTimeList = value
            }
            if let value = dict["InstanceDescription"] as? String {
                self.instanceDescription = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["RecoveryTime"] as? String {
                self.recoveryTime = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var eventCodeCounts: String?

    public var events: [DescribeEventsListResponseBody.Events]?

    public var pageCount: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalCount: Int64?

    public var totalPages: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventCodeCounts != nil {
            map["EventCodeCounts"] = self.eventCodeCounts!
        }
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["Events"] = tmp
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
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
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventCodeCounts"] as? String {
            self.eventCodeCounts = value
        }
        if let value = dict["Events"] as? [Any?] {
            var tmp : [DescribeEventsListResponseBody.Events] = []
            for v in value {
                if v != nil {
                    var model = DescribeEventsListResponseBody.Events()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.events = tmp
        }
        if let value = dict["PageCount"] as? Int64 {
            self.pageCount = value
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
        if let value = dict["TotalPages"] as? Int64 {
            self.totalPages = value
        }
    }
}

public class DescribeEventsListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventsListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeEventsListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceAuthInfoRequest : Tea.TeaModel {
    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeInstanceAuthInfoResponseBody : Tea.TeaModel {
    public class ApiKeys : Tea.TeaModel {
        public var anonKey: String?

        public var serviceKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.anonKey != nil {
                map["AnonKey"] = self.anonKey!
            }
            if self.serviceKey != nil {
                map["ServiceKey"] = self.serviceKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnonKey"] as? String {
                self.anonKey = value
            }
            if let value = dict["ServiceKey"] as? String {
                self.serviceKey = value
            }
        }
    }
    public class ConfigList : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var apiKeys: DescribeInstanceAuthInfoResponseBody.ApiKeys?

    public var configList: [DescribeInstanceAuthInfoResponseBody.ConfigList]?

    public var instanceName: String?

    public var jwtSecret: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apiKeys?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiKeys != nil {
            map["ApiKeys"] = self.apiKeys?.toMap()
        }
        if self.configList != nil {
            var tmp : [Any] = []
            for k in self.configList! {
                tmp.append(k.toMap())
            }
            map["ConfigList"] = tmp
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.jwtSecret != nil {
            map["JwtSecret"] = self.jwtSecret!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKeys"] as? [String: Any?] {
            var model = DescribeInstanceAuthInfoResponseBody.ApiKeys()
            model.fromMap(value)
            self.apiKeys = model
        }
        if let value = dict["ConfigList"] as? [Any?] {
            var tmp : [DescribeInstanceAuthInfoResponseBody.ConfigList] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceAuthInfoResponseBody.ConfigList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configList = tmp
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["JwtSecret"] as? String {
            self.jwtSecret = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceAuthInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceAuthInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceAuthInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceEndpointsRequest : Tea.TeaModel {
    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeInstanceEndpointsResponseBody : Tea.TeaModel {
    public class DBInstanceEndpoints : Tea.TeaModel {
        public var connectionString: String?

        public var ipType: String?

        public var port: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionString != nil {
                map["ConnectionString"] = self.connectionString!
            }
            if self.ipType != nil {
                map["IpType"] = self.ipType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionString"] as? String {
                self.connectionString = value
            }
            if let value = dict["IpType"] as? String {
                self.ipType = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
        }
    }
    public class InstanceEndpoints : Tea.TeaModel {
        public var connectionString: String?

        public var IP: String?

        public var ipType: String?

        public var port: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionString != nil {
                map["ConnectionString"] = self.connectionString!
            }
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            if self.ipType != nil {
                map["IpType"] = self.ipType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionString"] as? String {
                self.connectionString = value
            }
            if let value = dict["IP"] as? String {
                self.IP = value
            }
            if let value = dict["IpType"] as? String {
                self.ipType = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
        }
    }
    public var DBInstanceEndpoints: [DescribeInstanceEndpointsResponseBody.DBInstanceEndpoints]?

    public var instanceEndpoints: [DescribeInstanceEndpointsResponseBody.InstanceEndpoints]?

    public var instanceName: String?

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
        if self.DBInstanceEndpoints != nil {
            var tmp : [Any] = []
            for k in self.DBInstanceEndpoints! {
                tmp.append(k.toMap())
            }
            map["DBInstanceEndpoints"] = tmp
        }
        if self.instanceEndpoints != nil {
            var tmp : [Any] = []
            for k in self.instanceEndpoints! {
                tmp.append(k.toMap())
            }
            map["InstanceEndpoints"] = tmp
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceEndpoints"] as? [Any?] {
            var tmp : [DescribeInstanceEndpointsResponseBody.DBInstanceEndpoints] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceEndpointsResponseBody.DBInstanceEndpoints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.DBInstanceEndpoints = tmp
        }
        if let value = dict["InstanceEndpoints"] as? [Any?] {
            var tmp : [DescribeInstanceEndpointsResponseBody.InstanceEndpoints] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceEndpointsResponseBody.InstanceEndpoints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceEndpoints = tmp
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceEndpointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceEndpointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceIpWhitelistRequest : Tea.TeaModel {
    public var groupName: String?

    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeInstanceIpWhitelistResponseBody : Tea.TeaModel {
    public class IpWhiteListGroups : Tea.TeaModel {
        public var groupName: String?

        public var ipWhitelist: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.ipWhitelist != nil {
                map["IpWhitelist"] = self.ipWhitelist!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["IpWhitelist"] as? String {
                self.ipWhitelist = value
            }
        }
    }
    public var instanceName: String?

    public var ipWhiteListGroups: [DescribeInstanceIpWhitelistResponseBody.IpWhiteListGroups]?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.ipWhiteListGroups != nil {
            var tmp : [Any] = []
            for k in self.ipWhiteListGroups! {
                tmp.append(k.toMap())
            }
            map["IpWhiteListGroups"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["IpWhiteListGroups"] as? [Any?] {
            var tmp : [DescribeInstanceIpWhitelistResponseBody.IpWhiteListGroups] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceIpWhitelistResponseBody.IpWhiteListGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipWhiteListGroups = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceIpWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceIpWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceIpWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceRAGConfigRequest : Tea.TeaModel {
    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeInstanceRAGConfigResponseBody : Tea.TeaModel {
    public class ConfigList : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var configList: [DescribeInstanceRAGConfigResponseBody.ConfigList]?

    public var instanceName: String?

    public var requestId: String?

    public var status: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configList != nil {
            var tmp : [Any] = []
            for k in self.configList! {
                tmp.append(k.toMap())
            }
            map["ConfigList"] = tmp
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
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
        if let value = dict["ConfigList"] as? [Any?] {
            var tmp : [DescribeInstanceRAGConfigResponseBody.ConfigList] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceRAGConfigResponseBody.ConfigList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configList = tmp
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
    }
}

public class DescribeInstanceRAGConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceRAGConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceRAGConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceSSLRequest : Tea.TeaModel {
    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeInstanceSSLResponseBody : Tea.TeaModel {
    public var CAType: String?

    public var instanceName: String?

    public var requestId: String?

    public var SSLEnabled: String?

    public var serverCert: String?

    public var serverKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CAType != nil {
            map["CAType"] = self.CAType!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SSLEnabled != nil {
            map["SSLEnabled"] = self.SSLEnabled!
        }
        if self.serverCert != nil {
            map["ServerCert"] = self.serverCert!
        }
        if self.serverKey != nil {
            map["ServerKey"] = self.serverKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CAType"] as? String {
            self.CAType = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SSLEnabled"] as? String {
            self.SSLEnabled = value
        }
        if let value = dict["ServerCert"] as? String {
            self.serverCert = value
        }
        if let value = dict["ServerKey"] as? String {
            self.serverKey = value
        }
    }
}

public class DescribeInstanceSSLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceSSLResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceSSLResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceStorageConfigRequest : Tea.TeaModel {
    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeInstanceStorageConfigResponseBody : Tea.TeaModel {
    public class ConfigList : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var configList: [DescribeInstanceStorageConfigResponseBody.ConfigList]?

    public var instanceName: String?

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
        if self.configList != nil {
            var tmp : [Any] = []
            for k in self.configList! {
                tmp.append(k.toMap())
            }
            map["ConfigList"] = tmp
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigList"] as? [Any?] {
            var tmp : [DescribeInstanceStorageConfigResponseBody.ConfigList] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceStorageConfigResponseBody.ConfigList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configList = tmp
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceStorageConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceStorageConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceStorageConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConversationsRequest : Tea.TeaModel {
    public var lastId: String?

    public var limit: String?

    public var pinned: String?

    public var sortBy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lastId != nil {
            map["LastId"] = self.lastId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.pinned != nil {
            map["Pinned"] = self.pinned!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LastId"] as? String {
            self.lastId = value
        }
        if let value = dict["Limit"] as? String {
            self.limit = value
        }
        if let value = dict["Pinned"] as? String {
            self.pinned = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
    }
}

public class GetConversationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var id: String?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
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
            if let value = dict["CreatedAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Introduction"] as? String {
                self.introduction = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var data: [GetConversationsResponseBody.Data]?

    public var hasMore: String?

    public var limit: Int64?

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
        if self.hasMore != nil {
            map["HasMore"] = self.hasMore!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetConversationsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetConversationsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HasMore"] as? String {
            self.hasMore = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetConversationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConversationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConversationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCustomAgentRequest : Tea.TeaModel {
    public var customAgentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customAgentId != nil {
            map["CustomAgentId"] = self.customAgentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomAgentId"] as? String {
            self.customAgentId = value
        }
    }
}

public class GetCustomAgentResponseBody : Tea.TeaModel {
    public class Skills : Tea.TeaModel {
        public var description_: String?

        public var id: String?

        public var name: String?

        public var skillType: String?

        public override init() {
            super.init()
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
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.skillType != nil {
                map["SkillType"] = self.skillType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SkillType"] as? String {
                self.skillType = value
            }
        }
    }
    public var createdAt: String?

    public var enableTools: Bool?

    public var id: String?

    public var name: String?

    public var requestId: String?

    public var skills: [GetCustomAgentResponseBody.Skills]?

    public var systemPrompt: String?

    public var tools: [String]?

    public var updatedAt: String?

    public override init() {
        super.init()
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
            map["CreatedAt"] = self.createdAt!
        }
        if self.enableTools != nil {
            map["EnableTools"] = self.enableTools!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.skills != nil {
            var tmp : [Any] = []
            for k in self.skills! {
                tmp.append(k.toMap())
            }
            map["Skills"] = tmp
        }
        if self.systemPrompt != nil {
            map["SystemPrompt"] = self.systemPrompt!
        }
        if self.tools != nil {
            map["Tools"] = self.tools!
        }
        if self.updatedAt != nil {
            map["UpdatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["EnableTools"] as? Bool {
            self.enableTools = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Skills"] as? [Any?] {
            var tmp : [GetCustomAgentResponseBody.Skills] = []
            for v in value {
                if v != nil {
                    var model = GetCustomAgentResponseBody.Skills()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.skills = tmp
        }
        if let value = dict["SystemPrompt"] as? String {
            self.systemPrompt = value
        }
        if let value = dict["Tools"] as? [String] {
            self.tools = value
        }
        if let value = dict["UpdatedAt"] as? String {
            self.updatedAt = value
        }
    }
}

public class GetCustomAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCustomAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInspectionReportRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetInspectionReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Items : Tea.TeaModel {
                public class Data : Tea.TeaModel {
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
                public var data: [GetInspectionReportResponseBody.Data.Data.Items.Data]?

                public var level: String?

                public var message: String?

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
                    if self.data != nil {
                        var tmp : [Any] = []
                        for k in self.data! {
                            tmp.append(k.toMap())
                        }
                        map["Data"] = tmp
                    }
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Data"] as? [Any?] {
                        var tmp : [GetInspectionReportResponseBody.Data.Data.Items.Data] = []
                        for v in value {
                            if v != nil {
                                var model = GetInspectionReportResponseBody.Data.Data.Items.Data()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.data = tmp
                    }
                    if let value = dict["Level"] as? String {
                        self.level = value
                    }
                    if let value = dict["Message"] as? String {
                        self.message = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                }
            }
            public var group: String?

            public var items: [GetInspectionReportResponseBody.Data.Data.Items]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.group != nil {
                    map["Group"] = self.group!
                }
                if self.items != nil {
                    var tmp : [Any] = []
                    for k in self.items! {
                        tmp.append(k.toMap())
                    }
                    map["Items"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Group"] as? String {
                    self.group = value
                }
                if let value = dict["Items"] as? [Any?] {
                    var tmp : [GetInspectionReportResponseBody.Data.Data.Items] = []
                    for v in value {
                        if v != nil {
                            var model = GetInspectionReportResponseBody.Data.Data.Items()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.items = tmp
                }
            }
        }
        public class LevelSummary : Tea.TeaModel {
            public var error: Int64?

            public var failed: Int64?

            public var normal: Int64?

            public var warning: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.error != nil {
                    map["Error"] = self.error!
                }
                if self.failed != nil {
                    map["Failed"] = self.failed!
                }
                if self.normal != nil {
                    map["Normal"] = self.normal!
                }
                if self.warning != nil {
                    map["Warning"] = self.warning!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Error"] as? Int64 {
                    self.error = value
                }
                if let value = dict["Failed"] as? Int64 {
                    self.failed = value
                }
                if let value = dict["Normal"] as? Int64 {
                    self.normal = value
                }
                if let value = dict["Warning"] as? Int64 {
                    self.warning = value
                }
            }
        }
        public var data: [GetInspectionReportResponseBody.Data.Data]?

        public var endTime: String?

        public var engineType: String?

        public var instanceDesc: String?

        public var instanceId: String?

        public var levelSummary: GetInspectionReportResponseBody.Data.LevelSummary?

        public var markdownText: String?

        public var region: String?

        public var startTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.levelSummary?.validate()
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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.instanceDesc != nil {
                map["InstanceDesc"] = self.instanceDesc!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.levelSummary != nil {
                map["LevelSummary"] = self.levelSummary?.toMap()
            }
            if self.markdownText != nil {
                map["MarkdownText"] = self.markdownText!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [GetInspectionReportResponseBody.Data.Data] = []
                for v in value {
                    if v != nil {
                        var model = GetInspectionReportResponseBody.Data.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["InstanceDesc"] as? String {
                self.instanceDesc = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LevelSummary"] as? [String: Any?] {
                var model = GetInspectionReportResponseBody.Data.LevelSummary()
                model.fromMap(value)
                self.levelSummary = model
            }
            if let value = dict["MarkdownText"] as? String {
                self.markdownText = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var data: [GetInspectionReportResponseBody.Data]?

    public var markdownText: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.markdownText != nil {
            map["MarkdownText"] = self.markdownText!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetInspectionReportResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetInspectionReportResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["MarkdownText"] as? String {
            self.markdownText = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetInspectionReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInspectionReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInspectionReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMessagesRequest : Tea.TeaModel {
    public var conversationId: String?

    public var eventMode: String?

    public var firstId: String?

    public var limit: Int64?

    public override init() {
        super.init()
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
            map["ConversationId"] = self.conversationId!
        }
        if self.eventMode != nil {
            map["EventMode"] = self.eventMode!
        }
        if self.firstId != nil {
            map["FirstId"] = self.firstId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversationId"] as? String {
            self.conversationId = value
        }
        if let value = dict["EventMode"] as? String {
            self.eventMode = value
        }
        if let value = dict["FirstId"] as? String {
            self.firstId = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
    }
}

public class GetMessagesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Events : Tea.TeaModel {
            public var answer: String?

            public var event: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answer != nil {
                    map["answer"] = self.answer!
                }
                if self.event != nil {
                    map["event"] = self.event!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["answer"] as? String {
                    self.answer = value
                }
                if let value = dict["event"] as? String {
                    self.event = value
                }
            }
        }
        public var answer: String?

        public var conversationId: String?

        public var createdAt: String?

        public var events: [GetMessagesResponseBody.Data.Events]?

        public var feedback: String?

        public var id: String?

        public var query: String?

        public var retrieverResources: [Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answer != nil {
                map["Answer"] = self.answer!
            }
            if self.conversationId != nil {
                map["ConversationId"] = self.conversationId!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.events != nil {
                var tmp : [Any] = []
                for k in self.events! {
                    tmp.append(k.toMap())
                }
                map["Events"] = tmp
            }
            if self.feedback != nil {
                map["Feedback"] = self.feedback!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.query != nil {
                map["Query"] = self.query!
            }
            if self.retrieverResources != nil {
                map["RetrieverResources"] = self.retrieverResources!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Answer"] as? String {
                self.answer = value
            }
            if let value = dict["ConversationId"] as? String {
                self.conversationId = value
            }
            if let value = dict["CreatedAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["Events"] as? [Any?] {
                var tmp : [GetMessagesResponseBody.Data.Events] = []
                for v in value {
                    if v != nil {
                        var model = GetMessagesResponseBody.Data.Events()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.events = tmp
            }
            if let value = dict["Feedback"] as? String {
                self.feedback = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Query"] as? String {
                self.query = value
            }
            if let value = dict["RetrieverResources"] as? [Any] {
                self.retrieverResources = value
            }
        }
    }
    public var data: [GetMessagesResponseBody.Data]?

    public var hasMore: Bool?

    public var limit: Int64?

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
        if self.hasMore != nil {
            map["HasMore"] = self.hasMore!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetMessagesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetMessagesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HasMore"] as? Bool {
            self.hasMore = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMessagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMessagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMessagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetScheduledInstancesRequest : Tea.TeaModel {
    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var scheduledId: String?

    public override init() {
        super.init()
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
        if self.scheduledId != nil {
            map["ScheduledId"] = self.scheduledId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ScheduledId"] as? String {
            self.scheduledId = value
        }
    }
}

public class GetScheduledInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var engineType: String?

        public var instanceDesc: String?

        public var instanceId: String?

        public var region: String?

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
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.instanceDesc != nil {
                map["InstanceDesc"] = self.instanceDesc!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["InstanceDesc"] as? String {
                self.instanceDesc = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var instances: [GetScheduledInstancesResponseBody.Instances]?

    public var message: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [GetScheduledInstancesResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = GetScheduledInstancesResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
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
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class GetScheduledInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScheduledInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetScheduledInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetScheduledReportsRequest : Tea.TeaModel {
    public var endTime: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var scheduledId: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.scheduledId != nil {
            map["ScheduledId"] = self.scheduledId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ScheduledId"] as? String {
            self.scheduledId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetScheduledReportsResponseBody : Tea.TeaModel {
    public class Reports : Tea.TeaModel {
        public var createdTime: String?

        public var endTime: String?

        public var startTime: String?

        public var status: String?

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
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
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
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var message: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var reports: [GetScheduledReportsResponseBody.Reports]?

    public var requestId: String?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reports != nil {
            var tmp : [Any] = []
            for k in self.reports! {
                tmp.append(k.toMap())
            }
            map["Reports"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["Reports"] as? [Any?] {
            var tmp : [GetScheduledReportsResponseBody.Reports] = []
            for v in value {
                if v != nil {
                    var model = GetScheduledReportsResponseBody.Reports()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.reports = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class GetScheduledReportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScheduledReportsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetScheduledReportsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetStandAloneReportsRequest : Tea.TeaModel {
    public var endTime: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetStandAloneReportsResponseBody : Tea.TeaModel {
    public class Reports : Tea.TeaModel {
        public var createdTime: String?

        public var endTime: String?

        public var startTime: String?

        public var status: String?

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
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
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
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var message: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var reports: [GetStandAloneReportsResponseBody.Reports]?

    public var requestId: String?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reports != nil {
            var tmp : [Any] = []
            for k in self.reports! {
                tmp.append(k.toMap())
            }
            map["Reports"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["Reports"] as? [Any?] {
            var tmp : [GetStandAloneReportsResponseBody.Reports] = []
            for v in value {
                if v != nil {
                    var model = GetStandAloneReportsResponseBody.Reports()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.reports = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class GetStandAloneReportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStandAloneReportsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetStandAloneReportsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCustomAgentRequest : Tea.TeaModel {
    public var pageNumber: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListCustomAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var enableTools: Bool?

        public var id: String?

        public var name: String?

        public var systemPrompt: String?

        public var tools: [String]?

        public var updatedAt: String?

        public override init() {
            super.init()
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
                map["CreatedAt"] = self.createdAt!
            }
            if self.enableTools != nil {
                map["EnableTools"] = self.enableTools!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.systemPrompt != nil {
                map["SystemPrompt"] = self.systemPrompt!
            }
            if self.tools != nil {
                map["Tools"] = self.tools!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["EnableTools"] as? Bool {
                self.enableTools = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SystemPrompt"] as? String {
                self.systemPrompt = value
            }
            if let value = dict["Tools"] as? [String] {
                self.tools = value
            }
            if let value = dict["UpdatedAt"] as? String {
                self.updatedAt = value
            }
        }
    }
    public class Skills : Tea.TeaModel {
        public var description_: String?

        public var id: String?

        public var name: String?

        public var skillType: String?

        public override init() {
            super.init()
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
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.skillType != nil {
                map["SkillType"] = self.skillType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SkillType"] as? String {
                self.skillType = value
            }
        }
    }
    public var data: [ListCustomAgentResponseBody.Data]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var skills: [ListCustomAgentResponseBody.Skills]?

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
        if self.skills != nil {
            var tmp : [Any] = []
            for k in self.skills! {
                tmp.append(k.toMap())
            }
            map["Skills"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListCustomAgentResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListCustomAgentResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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
        if let value = dict["Skills"] as? [Any?] {
            var tmp : [ListCustomAgentResponseBody.Skills] = []
            for v in value {
                if v != nil {
                    var model = ListCustomAgentResponseBody.Skills()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.skills = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListCustomAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListCustomAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCustomAgentToolsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var en: String?

        public var ja: String?

        public var name: String?

        public var tc: String?

        public var type: String?

        public var zh: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.en != nil {
                map["En"] = self.en!
            }
            if self.ja != nil {
                map["Ja"] = self.ja!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.tc != nil {
                map["Tc"] = self.tc!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.zh != nil {
                map["Zh"] = self.zh!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["En"] as? String {
                self.en = value
            }
            if let value = dict["Ja"] as? String {
                self.ja = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Tc"] as? String {
                self.tc = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Zh"] as? String {
                self.zh = value
            }
        }
    }
    public var data: [ListCustomAgentToolsResponseBody.Data]?

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
            var tmp : [ListCustomAgentToolsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListCustomAgentToolsResponseBody.Data()
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

public class ListCustomAgentToolsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomAgentToolsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListCustomAgentToolsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScheduledTasksRequest : Tea.TeaModel {
    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var scheduledId: String?

    public override init() {
        super.init()
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
        if self.scheduledId != nil {
            map["ScheduledId"] = self.scheduledId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ScheduledId"] as? String {
            self.scheduledId = value
        }
    }
}

public class ListScheduledTasksResponseBody : Tea.TeaModel {
    public class Schedules : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var frequency: String?

        public var instanceCount: Int64?

        public var name: String?

        public var scheduledId: String?

        public var taskStartTime: String?

        public var timeRange: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.frequency != nil {
                map["Frequency"] = self.frequency!
            }
            if self.instanceCount != nil {
                map["InstanceCount"] = self.instanceCount!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.scheduledId != nil {
                map["ScheduledId"] = self.scheduledId!
            }
            if self.taskStartTime != nil {
                map["TaskStartTime"] = self.taskStartTime!
            }
            if self.timeRange != nil {
                map["TimeRange"] = self.timeRange!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Frequency"] as? String {
                self.frequency = value
            }
            if let value = dict["InstanceCount"] as? Int64 {
                self.instanceCount = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ScheduledId"] as? String {
                self.scheduledId = value
            }
            if let value = dict["TaskStartTime"] as? String {
                self.taskStartTime = value
            }
            if let value = dict["TimeRange"] as? String {
                self.timeRange = value
            }
        }
    }
    public var message: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var schedules: [ListScheduledTasksResponseBody.Schedules]?

    public var success: Bool?

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
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.schedules != nil {
            var tmp : [Any] = []
            for k in self.schedules! {
                tmp.append(k.toMap())
            }
            map["Schedules"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
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
        if let value = dict["Schedules"] as? [Any?] {
            var tmp : [ListScheduledTasksResponseBody.Schedules] = []
            for v in value {
                if v != nil {
                    var model = ListScheduledTasksResponseBody.Schedules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.schedules = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

public class ModifyInstanceAuthConfigRequest : Tea.TeaModel {
    public class ConfigList : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var configList: [ModifyInstanceAuthConfigRequest.ConfigList]?

    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configList != nil {
            var tmp : [Any] = []
            for k in self.configList! {
                tmp.append(k.toMap())
            }
            map["ConfigList"] = tmp
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigList"] as? [Any?] {
            var tmp : [ModifyInstanceAuthConfigRequest.ConfigList] = []
            for v in value {
                if v != nil {
                    var model = ModifyInstanceAuthConfigRequest.ConfigList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configList = tmp
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyInstanceAuthConfigShrinkRequest : Tea.TeaModel {
    public var configListShrink: String?

    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configListShrink != nil {
            map["ConfigList"] = self.configListShrink!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigList"] as? String {
            self.configListShrink = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyInstanceAuthConfigResponseBody : Tea.TeaModel {
    public var instanceName: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyInstanceAuthConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceAuthConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyInstanceAuthConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceConfigRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configName: String?

    public var configValue: String?

    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configName != nil {
            map["ConfigName"] = self.configName!
        }
        if self.configValue != nil {
            map["ConfigValue"] = self.configValue!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConfigName"] as? String {
            self.configName = value
        }
        if let value = dict["ConfigValue"] as? String {
            self.configValue = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyInstanceConfigResponseBody : Tea.TeaModel {
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

public class ModifyInstanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyInstanceConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceIpWhitelistRequest : Tea.TeaModel {
    public var clientToken: String?

    public var groupName: String?

    public var instanceName: String?

    public var ipWhitelist: String?

    public var modifyMode: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.ipWhitelist != nil {
            map["IpWhitelist"] = self.ipWhitelist!
        }
        if self.modifyMode != nil {
            map["ModifyMode"] = self.modifyMode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["IpWhitelist"] as? String {
            self.ipWhitelist = value
        }
        if let value = dict["ModifyMode"] as? String {
            self.modifyMode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyInstanceIpWhitelistResponseBody : Tea.TeaModel {
    public var instanceName: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyInstanceIpWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceIpWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyInstanceIpWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceRAGConfigRequest : Tea.TeaModel {
    public class ConfigList : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var clientToken: String?

    public var configList: [ModifyInstanceRAGConfigRequest.ConfigList]?

    public var instanceName: String?

    public var regionId: String?

    public var status: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configList != nil {
            var tmp : [Any] = []
            for k in self.configList! {
                tmp.append(k.toMap())
            }
            map["ConfigList"] = tmp
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConfigList"] as? [Any?] {
            var tmp : [ModifyInstanceRAGConfigRequest.ConfigList] = []
            for v in value {
                if v != nil {
                    var model = ModifyInstanceRAGConfigRequest.ConfigList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configList = tmp
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
    }
}

public class ModifyInstanceRAGConfigShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configListShrink: String?

    public var instanceName: String?

    public var regionId: String?

    public var status: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configListShrink != nil {
            map["ConfigList"] = self.configListShrink!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConfigList"] as? String {
            self.configListShrink = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
    }
}

public class ModifyInstanceRAGConfigResponseBody : Tea.TeaModel {
    public var instanceName: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
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
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ModifyInstanceRAGConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceRAGConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyInstanceRAGConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceSSLRequest : Tea.TeaModel {
    public var CAType: String?

    public var instanceName: String?

    public var regionId: String?

    public var SSLEnabled: Int32?

    public var serverCert: String?

    public var serverKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CAType != nil {
            map["CAType"] = self.CAType!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.SSLEnabled != nil {
            map["SSLEnabled"] = self.SSLEnabled!
        }
        if self.serverCert != nil {
            map["ServerCert"] = self.serverCert!
        }
        if self.serverKey != nil {
            map["ServerKey"] = self.serverKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CAType"] as? String {
            self.CAType = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SSLEnabled"] as? Int32 {
            self.SSLEnabled = value
        }
        if let value = dict["ServerCert"] as? String {
            self.serverCert = value
        }
        if let value = dict["ServerKey"] as? String {
            self.serverKey = value
        }
    }
}

public class ModifyInstanceSSLResponseBody : Tea.TeaModel {
    public var instanceName: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyInstanceSSLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceSSLResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyInstanceSSLResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceStorageConfigRequest : Tea.TeaModel {
    public class ConfigList : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var clientToken: String?

    public var configList: [ModifyInstanceStorageConfigRequest.ConfigList]?

    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configList != nil {
            var tmp : [Any] = []
            for k in self.configList! {
                tmp.append(k.toMap())
            }
            map["ConfigList"] = tmp
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConfigList"] as? [Any?] {
            var tmp : [ModifyInstanceStorageConfigRequest.ConfigList] = []
            for v in value {
                if v != nil {
                    var model = ModifyInstanceStorageConfigRequest.ConfigList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configList = tmp
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyInstanceStorageConfigShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configListShrink: String?

    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.configListShrink != nil {
            map["ConfigList"] = self.configListShrink!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConfigList"] as? String {
            self.configListShrink = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyInstanceStorageConfigResponseBody : Tea.TeaModel {
    public var instanceName: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyInstanceStorageConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceStorageConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyInstanceStorageConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstancesSSLRequest : Tea.TeaModel {
    public var CAType: String?

    public var instanceNames: [String]?

    public var regionId: String?

    public var SSLEnabled: Int32?

    public var serverCert: String?

    public var serverKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CAType != nil {
            map["CAType"] = self.CAType!
        }
        if self.instanceNames != nil {
            map["InstanceNames"] = self.instanceNames!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.SSLEnabled != nil {
            map["SSLEnabled"] = self.SSLEnabled!
        }
        if self.serverCert != nil {
            map["ServerCert"] = self.serverCert!
        }
        if self.serverKey != nil {
            map["ServerKey"] = self.serverKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CAType"] as? String {
            self.CAType = value
        }
        if let value = dict["InstanceNames"] as? [String] {
            self.instanceNames = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SSLEnabled"] as? Int32 {
            self.SSLEnabled = value
        }
        if let value = dict["ServerCert"] as? String {
            self.serverCert = value
        }
        if let value = dict["ServerKey"] as? String {
            self.serverKey = value
        }
    }
}

public class ModifyInstancesSSLShrinkRequest : Tea.TeaModel {
    public var CAType: String?

    public var instanceNamesShrink: String?

    public var regionId: String?

    public var SSLEnabled: Int32?

    public var serverCert: String?

    public var serverKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CAType != nil {
            map["CAType"] = self.CAType!
        }
        if self.instanceNamesShrink != nil {
            map["InstanceNames"] = self.instanceNamesShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.SSLEnabled != nil {
            map["SSLEnabled"] = self.SSLEnabled!
        }
        if self.serverCert != nil {
            map["ServerCert"] = self.serverCert!
        }
        if self.serverKey != nil {
            map["ServerKey"] = self.serverKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CAType"] as? String {
            self.CAType = value
        }
        if let value = dict["InstanceNames"] as? String {
            self.instanceNamesShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SSLEnabled"] as? Int32 {
            self.SSLEnabled = value
        }
        if let value = dict["ServerCert"] as? String {
            self.serverCert = value
        }
        if let value = dict["ServerKey"] as? String {
            self.serverKey = value
        }
    }
}

public class ModifyInstancesSSLResponseBody : Tea.TeaModel {
    public var instanceNames: [String]?

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
        if self.instanceNames != nil {
            map["InstanceNames"] = self.instanceNames!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceNames"] as? [String] {
            self.instanceNames = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyInstancesSSLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstancesSSLResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyInstancesSSLResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyMessagesFeedbacksRequest : Tea.TeaModel {
    public var content: String?

    public var messageId: String?

    public var rating: String?

    public override init() {
        super.init()
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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.rating != nil {
            map["Rating"] = self.rating!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["Rating"] as? String {
            self.rating = value
        }
    }
}

public class ModifyMessagesFeedbacksResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if let value = dict["Result"] as? String {
            self.result = value
        }
    }
}

public class ModifyMessagesFeedbacksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMessagesFeedbacksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyMessagesFeedbacksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyScheduledTaskRequest : Tea.TeaModel {
    public var description_: String?

    public var frequency: String?

    public var instanceIds: String?

    public var name: String?

    public var scheduledId: String?

    public var startTime: String?

    public var timeRange: String?

    public override init() {
        super.init()
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
            map["Description"] = self.description_!
        }
        if self.frequency != nil {
            map["Frequency"] = self.frequency!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.scheduledId != nil {
            map["ScheduledId"] = self.scheduledId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Frequency"] as? String {
            self.frequency = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ScheduledId"] as? String {
            self.scheduledId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TimeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class ModifyScheduledTaskResponseBody : Tea.TeaModel {
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

public class ModifyScheduledTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyScheduledTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyScheduledTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetInstancePasswordRequest : Tea.TeaModel {
    public var dashboardPassword: String?

    public var databasePassword: String?

    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dashboardPassword != nil {
            map["DashboardPassword"] = self.dashboardPassword!
        }
        if self.databasePassword != nil {
            map["DatabasePassword"] = self.databasePassword!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DashboardPassword"] as? String {
            self.dashboardPassword = value
        }
        if let value = dict["DatabasePassword"] as? String {
            self.databasePassword = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ResetInstancePasswordResponseBody : Tea.TeaModel {
    public var instanceName: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ResetInstancePasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetInstancePasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResetInstancePasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartInstanceRequest : Tea.TeaModel {
    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class RestartInstanceResponseBody : Tea.TeaModel {
    public var instanceName: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RestartInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RestartInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartInstanceRequest : Tea.TeaModel {
    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class StartInstanceResponseBody : Tea.TeaModel {
    public var instanceName: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopInstanceRequest : Tea.TeaModel {
    public var instanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class StopInstanceResponseBody : Tea.TeaModel {
    public var instanceName: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StopInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCustomAgentRequest : Tea.TeaModel {
    public var customAgentId: String?

    public var enableTools: Bool?

    public var name: String?

    public var skillIds: [String]?

    public var systemPrompt: String?

    public var tools: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customAgentId != nil {
            map["CustomAgentId"] = self.customAgentId!
        }
        if self.enableTools != nil {
            map["EnableTools"] = self.enableTools!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.skillIds != nil {
            map["SkillIds"] = self.skillIds!
        }
        if self.systemPrompt != nil {
            map["SystemPrompt"] = self.systemPrompt!
        }
        if self.tools != nil {
            map["Tools"] = self.tools!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomAgentId"] as? String {
            self.customAgentId = value
        }
        if let value = dict["EnableTools"] as? Bool {
            self.enableTools = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["SkillIds"] as? [String] {
            self.skillIds = value
        }
        if let value = dict["SystemPrompt"] as? String {
            self.systemPrompt = value
        }
        if let value = dict["Tools"] as? [String] {
            self.tools = value
        }
    }
}

public class UpdateCustomAgentShrinkRequest : Tea.TeaModel {
    public var customAgentId: String?

    public var enableTools: Bool?

    public var name: String?

    public var skillIdsShrink: String?

    public var systemPrompt: String?

    public var toolsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customAgentId != nil {
            map["CustomAgentId"] = self.customAgentId!
        }
        if self.enableTools != nil {
            map["EnableTools"] = self.enableTools!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.skillIdsShrink != nil {
            map["SkillIds"] = self.skillIdsShrink!
        }
        if self.systemPrompt != nil {
            map["SystemPrompt"] = self.systemPrompt!
        }
        if self.toolsShrink != nil {
            map["Tools"] = self.toolsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomAgentId"] as? String {
            self.customAgentId = value
        }
        if let value = dict["EnableTools"] as? Bool {
            self.enableTools = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["SkillIds"] as? String {
            self.skillIdsShrink = value
        }
        if let value = dict["SystemPrompt"] as? String {
            self.systemPrompt = value
        }
        if let value = dict["Tools"] as? String {
            self.toolsShrink = value
        }
    }
}

public class UpdateCustomAgentResponseBody : Tea.TeaModel {
    public class Skills : Tea.TeaModel {
        public var description_: String?

        public var id: String?

        public var name: String?

        public var skillType: String?

        public override init() {
            super.init()
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
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.skillType != nil {
                map["SkillType"] = self.skillType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SkillType"] as? String {
                self.skillType = value
            }
        }
    }
    public var enableTools: String?

    public var id: String?

    public var name: String?

    public var requestId: String?

    public var skills: [UpdateCustomAgentResponseBody.Skills]?

    public var systemPrompt: String?

    public var tools: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableTools != nil {
            map["EnableTools"] = self.enableTools!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.skills != nil {
            var tmp : [Any] = []
            for k in self.skills! {
                tmp.append(k.toMap())
            }
            map["Skills"] = tmp
        }
        if self.systemPrompt != nil {
            map["SystemPrompt"] = self.systemPrompt!
        }
        if self.tools != nil {
            map["Tools"] = self.tools!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableTools"] as? String {
            self.enableTools = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Skills"] as? [Any?] {
            var tmp : [UpdateCustomAgentResponseBody.Skills] = []
            for v in value {
                if v != nil {
                    var model = UpdateCustomAgentResponseBody.Skills()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.skills = tmp
        }
        if let value = dict["SystemPrompt"] as? String {
            self.systemPrompt = value
        }
        if let value = dict["Tools"] as? [String] {
            self.tools = value
        }
    }
}

public class UpdateCustomAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateCustomAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
