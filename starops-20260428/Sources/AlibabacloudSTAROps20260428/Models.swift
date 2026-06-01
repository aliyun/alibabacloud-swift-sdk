import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Tag : Tea.TeaModel {
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
            map["key"] = self.key!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
    }
}

public class CreateChatRequest : Tea.TeaModel {
    public class Messages : Tea.TeaModel {
        public class Contents : Tea.TeaModel {
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
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
                }
            }
        }
        public var contents: [CreateChatRequest.Messages.Contents]?

        public var messageId: String?

        public var role: String?

        public var tools: [[String: Any]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contents != nil {
                var tmp : [Any] = []
                for k in self.contents! {
                    tmp.append(k.toMap())
                }
                map["contents"] = tmp
            }
            if self.messageId != nil {
                map["messageId"] = self.messageId!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            if self.tools != nil {
                map["tools"] = self.tools!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["contents"] as? [Any?] {
                var tmp : [CreateChatRequest.Messages.Contents] = []
                for v in value {
                    if v != nil {
                        var model = CreateChatRequest.Messages.Contents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.contents = tmp
            }
            if let value = dict["messageId"] as? String {
                self.messageId = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
            if let value = dict["tools"] as? [[String: Any]] {
                self.tools = value
            }
        }
    }
    public var action: String?

    public var digitalEmployeeName: String?

    public var messages: [CreateChatRequest.Messages]?

    public var threadId: String?

    public var variables: [String: Any]?

    public override init() {
        super.init()
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
        if self.digitalEmployeeName != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeName!
        }
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["messages"] = tmp
        }
        if self.threadId != nil {
            map["threadId"] = self.threadId!
        }
        if self.variables != nil {
            map["variables"] = self.variables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["action"] as? String {
            self.action = value
        }
        if let value = dict["digitalEmployeeName"] as? String {
            self.digitalEmployeeName = value
        }
        if let value = dict["messages"] as? [Any?] {
            var tmp : [CreateChatRequest.Messages] = []
            for v in value {
                if v != nil {
                    var model = CreateChatRequest.Messages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messages = tmp
        }
        if let value = dict["threadId"] as? String {
            self.threadId = value
        }
        if let value = dict["variables"] as? [String: Any] {
            self.variables = value
        }
    }
}

public class CreateChatResponseBody : Tea.TeaModel {
    public class Messages : Tea.TeaModel {
        public var agents: [[String: Any]]?

        public var artifacts: [[String: Any]]?

        public var callId: String?

        public var contents: [[String: Any]]?

        public var detail: String?

        public var events: [[String: Any]]?

        public var parentCallId: String?

        public var role: String?

        public var seq: Int32?

        public var timestamp: String?

        public var tools: [[String: Any]]?

        public var type: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agents != nil {
                map["agents"] = self.agents!
            }
            if self.artifacts != nil {
                map["artifacts"] = self.artifacts!
            }
            if self.callId != nil {
                map["callId"] = self.callId!
            }
            if self.contents != nil {
                map["contents"] = self.contents!
            }
            if self.detail != nil {
                map["detail"] = self.detail!
            }
            if self.events != nil {
                map["events"] = self.events!
            }
            if self.parentCallId != nil {
                map["parentCallId"] = self.parentCallId!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            if self.seq != nil {
                map["seq"] = self.seq!
            }
            if self.timestamp != nil {
                map["timestamp"] = self.timestamp!
            }
            if self.tools != nil {
                map["tools"] = self.tools!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agents"] as? [[String: Any]] {
                self.agents = value
            }
            if let value = dict["artifacts"] as? [[String: Any]] {
                self.artifacts = value
            }
            if let value = dict["callId"] as? String {
                self.callId = value
            }
            if let value = dict["contents"] as? [[String: Any]] {
                self.contents = value
            }
            if let value = dict["detail"] as? String {
                self.detail = value
            }
            if let value = dict["events"] as? [[String: Any]] {
                self.events = value
            }
            if let value = dict["parentCallId"] as? String {
                self.parentCallId = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
            if let value = dict["seq"] as? Int32 {
                self.seq = value
            }
            if let value = dict["timestamp"] as? String {
                self.timestamp = value
            }
            if let value = dict["tools"] as? [[String: Any]] {
                self.tools = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public var messages: [CreateChatResponseBody.Messages]?

    public var requestId: String?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["messages"] as? [Any?] {
            var tmp : [CreateChatResponseBody.Messages] = []
            for v in value {
                if v != nil {
                    var model = CreateChatResponseBody.Messages()
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
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
    }
}

public class CreateChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDigitalEmployeeRequest : Tea.TeaModel {
    public class Knowledges : Tea.TeaModel {
        public class Bailian : Tea.TeaModel {
            public var attributes: String?

            public var indexId: String?

            public var region: String?

            public var workspaceId: String?

            public override init() {
                super.init()
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
                if self.indexId != nil {
                    map["indexId"] = self.indexId!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.workspaceId != nil {
                    map["workspaceId"] = self.workspaceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["attributes"] as? String {
                    self.attributes = value
                }
                if let value = dict["indexId"] as? String {
                    self.indexId = value
                }
                if let value = dict["region"] as? String {
                    self.region = value
                }
                if let value = dict["workspaceId"] as? String {
                    self.workspaceId = value
                }
            }
        }
        public var bailian: [CreateDigitalEmployeeRequest.Knowledges.Bailian]?

        public var sop: [[String: Any]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bailian != nil {
                var tmp : [Any] = []
                for k in self.bailian! {
                    tmp.append(k.toMap())
                }
                map["bailian"] = tmp
            }
            if self.sop != nil {
                map["sop"] = self.sop!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bailian"] as? [Any?] {
                var tmp : [CreateDigitalEmployeeRequest.Knowledges.Bailian] = []
                for v in value {
                    if v != nil {
                        var model = CreateDigitalEmployeeRequest.Knowledges.Bailian()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bailian = tmp
            }
            if let value = dict["sop"] as? [[String: Any]] {
                self.sop = value
            }
        }
    }
    public class ToolPolicy : Tea.TeaModel {
        public class Aliyun : Tea.TeaModel {
            public class Statements : Tea.TeaModel {
                public var actions: [String]?

                public var apiVersion: String?

                public var decision: String?

                public var product: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.actions != nil {
                        map["actions"] = self.actions!
                    }
                    if self.apiVersion != nil {
                        map["apiVersion"] = self.apiVersion!
                    }
                    if self.decision != nil {
                        map["decision"] = self.decision!
                    }
                    if self.product != nil {
                        map["product"] = self.product!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["actions"] as? [String] {
                        self.actions = value
                    }
                    if let value = dict["apiVersion"] as? String {
                        self.apiVersion = value
                    }
                    if let value = dict["decision"] as? String {
                        self.decision = value
                    }
                    if let value = dict["product"] as? String {
                        self.product = value
                    }
                }
            }
            public var enable: Bool?

            public var statements: [CreateDigitalEmployeeRequest.ToolPolicy.Aliyun.Statements]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.statements != nil {
                    var tmp : [Any] = []
                    for k in self.statements! {
                        tmp.append(k.toMap())
                    }
                    map["statements"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["statements"] as? [Any?] {
                    var tmp : [CreateDigitalEmployeeRequest.ToolPolicy.Aliyun.Statements] = []
                    for v in value {
                        if v != nil {
                            var model = CreateDigitalEmployeeRequest.ToolPolicy.Aliyun.Statements()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.statements = tmp
                }
            }
        }
        public var aliyun: CreateDigitalEmployeeRequest.ToolPolicy.Aliyun?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.aliyun?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyun != nil {
                map["aliyun"] = self.aliyun?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["aliyun"] as? [String: Any?] {
                var model = CreateDigitalEmployeeRequest.ToolPolicy.Aliyun()
                model.fromMap(value)
                self.aliyun = model
            }
        }
    }
    public var attributes: [String: String]?

    public var defaultRule: String?

    public var description_: String?

    public var displayName: String?

    public var knowledges: CreateDigitalEmployeeRequest.Knowledges?

    public var name: String?

    public var resourceGroupId: String?

    public var roleArn: String?

    public var tags: [Tag]?

    public var toolPolicy: CreateDigitalEmployeeRequest.ToolPolicy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.knowledges?.validate()
        try self.toolPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributes != nil {
            map["attributes"] = self.attributes!
        }
        if self.defaultRule != nil {
            map["defaultRule"] = self.defaultRule!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.knowledges != nil {
            map["knowledges"] = self.knowledges?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.toolPolicy != nil {
            map["toolPolicy"] = self.toolPolicy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? [String: String] {
            self.attributes = value
        }
        if let value = dict["defaultRule"] as? String {
            self.defaultRule = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["knowledges"] as? [String: Any?] {
            var model = CreateDigitalEmployeeRequest.Knowledges()
            model.fromMap(value)
            self.knowledges = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["roleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [Tag] = []
            for v in value {
                if v != nil {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["toolPolicy"] as? [String: Any?] {
            var model = CreateDigitalEmployeeRequest.ToolPolicy()
            model.fromMap(value)
            self.toolPolicy = model
        }
    }
}

public class CreateDigitalEmployeeResponseBody : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDigitalEmployeeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDigitalEmployeeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDigitalEmployeeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDigitalEmployeeSkillRequest : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var content: String?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var description_: String?

    public var displayName: String?

    public var enable: Bool?

    public var files: [CreateDigitalEmployeeSkillRequest.Files]?

    public var remark: String?

    public var skillName: String?

    public override init() {
        super.init()
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
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["files"] = tmp
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        if self.skillName != nil {
            map["skillName"] = self.skillName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["files"] as? [Any?] {
            var tmp : [CreateDigitalEmployeeSkillRequest.Files] = []
            for v in value {
                if v != nil {
                    var model = CreateDigitalEmployeeSkillRequest.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
        if let value = dict["skillName"] as? String {
            self.skillName = value
        }
    }
}

public class CreateDigitalEmployeeSkillResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var skillName: String?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.skillName != nil {
            map["skillName"] = self.skillName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["skillName"] as? String {
            self.skillName = value
        }
    }
}

public class CreateDigitalEmployeeSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDigitalEmployeeSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDigitalEmployeeSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMcpServiceRequest : Tea.TeaModel {
    public class Connection : Tea.TeaModel {
        public class Auth : Tea.TeaModel {
            public var keyInfo: [String: String]?

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
                if self.keyInfo != nil {
                    map["keyInfo"] = self.keyInfo!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["keyInfo"] as? [String: String] {
                    self.keyInfo = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var auth: CreateMcpServiceRequest.Connection.Auth?

        public var endpoint: String?

        public var platform: String?

        public var timeout: Int64?

        public var transport: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.auth?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auth != nil {
                map["auth"] = self.auth?.toMap()
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.platform != nil {
                map["platform"] = self.platform!
            }
            if self.timeout != nil {
                map["timeout"] = self.timeout!
            }
            if self.transport != nil {
                map["transport"] = self.transport!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["auth"] as? [String: Any?] {
                var model = CreateMcpServiceRequest.Connection.Auth()
                model.fromMap(value)
                self.auth = model
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["platform"] as? String {
                self.platform = value
            }
            if let value = dict["timeout"] as? Int64 {
                self.timeout = value
            }
            if let value = dict["transport"] as? String {
                self.transport = value
            }
        }
    }
    public class Network : Tea.TeaModel {
        public var accessIp: String?

        public var accessPort: Int64?

        public var gatewayId: String?

        public var mcpServerId: String?

        public var mode: String?

        public var region: String?

        public var securityGroupId: String?

        public var vpcId: String?

        public var vswId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessIp != nil {
                map["accessIp"] = self.accessIp!
            }
            if self.accessPort != nil {
                map["accessPort"] = self.accessPort!
            }
            if self.gatewayId != nil {
                map["gatewayId"] = self.gatewayId!
            }
            if self.mcpServerId != nil {
                map["mcpServerId"] = self.mcpServerId!
            }
            if self.mode != nil {
                map["mode"] = self.mode!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            if self.vswId != nil {
                map["vswId"] = self.vswId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accessIp"] as? String {
                self.accessIp = value
            }
            if let value = dict["accessPort"] as? Int64 {
                self.accessPort = value
            }
            if let value = dict["gatewayId"] as? String {
                self.gatewayId = value
            }
            if let value = dict["mcpServerId"] as? String {
                self.mcpServerId = value
            }
            if let value = dict["mode"] as? String {
                self.mode = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["securityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["vpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["vswId"] as? String {
                self.vswId = value
            }
        }
    }
    public class Tools : Tea.TeaModel {
        public var annotations: [String: Any]?

        public var confirm: Bool?

        public var description_: String?

        public var displayName: String?

        public var enable: Bool?

        public var execution: [String: Any]?

        public var icons: [[String: Any]]?

        public var inputSchema: [String: Any]?

        public var name: String?

        public var outputSchema: [String: Any]?

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
            if self.annotations != nil {
                map["annotations"] = self.annotations!
            }
            if self.confirm != nil {
                map["confirm"] = self.confirm!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.execution != nil {
                map["execution"] = self.execution!
            }
            if self.icons != nil {
                map["icons"] = self.icons!
            }
            if self.inputSchema != nil {
                map["inputSchema"] = self.inputSchema!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.outputSchema != nil {
                map["outputSchema"] = self.outputSchema!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["annotations"] as? [String: Any] {
                self.annotations = value
            }
            if let value = dict["confirm"] as? Bool {
                self.confirm = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["execution"] as? [String: Any] {
                self.execution = value
            }
            if let value = dict["icons"] as? [[String: Any]] {
                self.icons = value
            }
            if let value = dict["inputSchema"] as? [String: Any] {
                self.inputSchema = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["outputSchema"] as? [String: Any] {
                self.outputSchema = value
            }
            if let value = dict["title"] as? String {
                self.title = value
            }
        }
    }
    public var connection: CreateMcpServiceRequest.Connection?

    public var description_: String?

    public var displayName: String?

    public var enable: Bool?

    public var mcpServiceName: String?

    public var network: CreateMcpServiceRequest.Network?

    public var tools: [CreateMcpServiceRequest.Tools]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.connection?.validate()
        try self.network?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connection != nil {
            map["connection"] = self.connection?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.mcpServiceName != nil {
            map["mcpServiceName"] = self.mcpServiceName!
        }
        if self.network != nil {
            map["network"] = self.network?.toMap()
        }
        if self.tools != nil {
            var tmp : [Any] = []
            for k in self.tools! {
                tmp.append(k.toMap())
            }
            map["tools"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["connection"] as? [String: Any?] {
            var model = CreateMcpServiceRequest.Connection()
            model.fromMap(value)
            self.connection = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["mcpServiceName"] as? String {
            self.mcpServiceName = value
        }
        if let value = dict["network"] as? [String: Any?] {
            var model = CreateMcpServiceRequest.Network()
            model.fromMap(value)
            self.network = model
        }
        if let value = dict["tools"] as? [Any?] {
            var tmp : [CreateMcpServiceRequest.Tools] = []
            for v in value {
                if v != nil {
                    var model = CreateMcpServiceRequest.Tools()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tools = tmp
        }
    }
}

public class CreateMcpServiceResponseBody : Tea.TeaModel {
    public var mcpServiceName: String?

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
        if self.mcpServiceName != nil {
            map["mcpServiceName"] = self.mcpServiceName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["mcpServiceName"] as? String {
            self.mcpServiceName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateMcpServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMcpServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMcpServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateThreadRequest : Tea.TeaModel {
    public class Variables : Tea.TeaModel {
        public var project: String?

        public var workspace: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.project != nil {
                map["project"] = self.project!
            }
            if self.workspace != nil {
                map["workspace"] = self.workspace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["project"] as? String {
                self.project = value
            }
            if let value = dict["workspace"] as? String {
                self.workspace = value
            }
        }
    }
    public var attributes: [String: String]?

    public var title: String?

    public var variables: CreateThreadRequest.Variables?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.variables?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributes != nil {
            map["attributes"] = self.attributes!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.variables != nil {
            map["variables"] = self.variables?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? [String: String] {
            self.attributes = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
        if let value = dict["variables"] as? [String: Any?] {
            var model = CreateThreadRequest.Variables()
            model.fromMap(value)
            self.variables = model
        }
    }
}

public class CreateThreadResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var threadId: String?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.threadId != nil {
            map["threadId"] = self.threadId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["threadId"] as? String {
            self.threadId = value
        }
    }
}

public class CreateThreadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateThreadResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateThreadResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTicketRequest : Tea.TeaModel {
    public var accessTokenExpirationTime: Int64?

    public var expirationTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessTokenExpirationTime != nil {
            map["accessTokenExpirationTime"] = self.accessTokenExpirationTime!
        }
        if self.expirationTime != nil {
            map["expirationTime"] = self.expirationTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessTokenExpirationTime"] as? Int64 {
            self.accessTokenExpirationTime = value
        }
        if let value = dict["expirationTime"] as? Int64 {
            self.expirationTime = value
        }
    }
}

public class CreateTicketResponseBody : Tea.TeaModel {
    public var ticket: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ticket != nil {
            map["ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ticket"] as? String {
            self.ticket = value
        }
    }
}

public class CreateTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTicketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDigitalEmployeeRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteDigitalEmployeeResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDigitalEmployeeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDigitalEmployeeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDigitalEmployeeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDigitalEmployeeSkillRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteDigitalEmployeeSkillResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDigitalEmployeeSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDigitalEmployeeSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDigitalEmployeeSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMcpServiceRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteMcpServiceResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteMcpServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMcpServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMcpServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteThreadRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteThreadResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteThreadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteThreadResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteThreadResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FetchRemoteMcpToolsRequest : Tea.TeaModel {
    public class Connection : Tea.TeaModel {
        public class Auth : Tea.TeaModel {
            public var keyInfo: [String: String]?

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
                if self.keyInfo != nil {
                    map["keyInfo"] = self.keyInfo!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["keyInfo"] as? [String: String] {
                    self.keyInfo = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var auth: FetchRemoteMcpToolsRequest.Connection.Auth?

        public var endpoint: String?

        public var platform: String?

        public var timeout: Int64?

        public var transport: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.auth?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auth != nil {
                map["auth"] = self.auth?.toMap()
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.platform != nil {
                map["platform"] = self.platform!
            }
            if self.timeout != nil {
                map["timeout"] = self.timeout!
            }
            if self.transport != nil {
                map["transport"] = self.transport!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["auth"] as? [String: Any?] {
                var model = FetchRemoteMcpToolsRequest.Connection.Auth()
                model.fromMap(value)
                self.auth = model
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["platform"] as? String {
                self.platform = value
            }
            if let value = dict["timeout"] as? Int64 {
                self.timeout = value
            }
            if let value = dict["transport"] as? String {
                self.transport = value
            }
        }
    }
    public class Network : Tea.TeaModel {
        public var accessIp: String?

        public var accessPort: Int64?

        public var gatewayId: String?

        public var mcpServerId: String?

        public var mode: String?

        public var region: String?

        public var securityGroupId: String?

        public var vpcId: String?

        public var vswId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessIp != nil {
                map["accessIp"] = self.accessIp!
            }
            if self.accessPort != nil {
                map["accessPort"] = self.accessPort!
            }
            if self.gatewayId != nil {
                map["gatewayId"] = self.gatewayId!
            }
            if self.mcpServerId != nil {
                map["mcpServerId"] = self.mcpServerId!
            }
            if self.mode != nil {
                map["mode"] = self.mode!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            if self.vswId != nil {
                map["vswId"] = self.vswId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accessIp"] as? String {
                self.accessIp = value
            }
            if let value = dict["accessPort"] as? Int64 {
                self.accessPort = value
            }
            if let value = dict["gatewayId"] as? String {
                self.gatewayId = value
            }
            if let value = dict["mcpServerId"] as? String {
                self.mcpServerId = value
            }
            if let value = dict["mode"] as? String {
                self.mode = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["securityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["vpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["vswId"] as? String {
                self.vswId = value
            }
        }
    }
    public var connection: FetchRemoteMcpToolsRequest.Connection?

    public var network: FetchRemoteMcpToolsRequest.Network?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.connection?.validate()
        try self.network?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connection != nil {
            map["connection"] = self.connection?.toMap()
        }
        if self.network != nil {
            map["network"] = self.network?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["connection"] as? [String: Any?] {
            var model = FetchRemoteMcpToolsRequest.Connection()
            model.fromMap(value)
            self.connection = model
        }
        if let value = dict["network"] as? [String: Any?] {
            var model = FetchRemoteMcpToolsRequest.Network()
            model.fromMap(value)
            self.network = model
        }
    }
}

public class FetchRemoteMcpToolsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tools: String?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.tools != nil {
            map["tools"] = self.tools!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["tools"] as? String {
            self.tools = value
        }
    }
}

public class FetchRemoteMcpToolsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FetchRemoteMcpToolsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = FetchRemoteMcpToolsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetArtifactRequest : Tea.TeaModel {
    public var artifactPath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactPath != nil {
            map["artifactPath"] = self.artifactPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["artifactPath"] as? String {
            self.artifactPath = value
        }
    }
}

public class GetArtifactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InputStream?

    public override init() {
        super.init()
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
        if let value = dict["body"] as? InputStream {
            self.body = value
        }
    }
}

public class GetDigitalEmployeeRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetDigitalEmployeeResponseBody : Tea.TeaModel {
    public class Knowledges : Tea.TeaModel {
        public class Bailian : Tea.TeaModel {
            public var attributes: String?

            public var indexId: String?

            public var region: String?

            public var workspaceId: String?

            public override init() {
                super.init()
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
                if self.indexId != nil {
                    map["indexId"] = self.indexId!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.workspaceId != nil {
                    map["workspaceId"] = self.workspaceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["attributes"] as? String {
                    self.attributes = value
                }
                if let value = dict["indexId"] as? String {
                    self.indexId = value
                }
                if let value = dict["region"] as? String {
                    self.region = value
                }
                if let value = dict["workspaceId"] as? String {
                    self.workspaceId = value
                }
            }
        }
        public var bailian: [GetDigitalEmployeeResponseBody.Knowledges.Bailian]?

        public var sop: [[String: Any]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bailian != nil {
                var tmp : [Any] = []
                for k in self.bailian! {
                    tmp.append(k.toMap())
                }
                map["bailian"] = tmp
            }
            if self.sop != nil {
                map["sop"] = self.sop!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bailian"] as? [Any?] {
                var tmp : [GetDigitalEmployeeResponseBody.Knowledges.Bailian] = []
                for v in value {
                    if v != nil {
                        var model = GetDigitalEmployeeResponseBody.Knowledges.Bailian()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bailian = tmp
            }
            if let value = dict["sop"] as? [[String: Any]] {
                self.sop = value
            }
        }
    }
    public class ToolPolicy : Tea.TeaModel {
        public class Aliyun : Tea.TeaModel {
            public class Statements : Tea.TeaModel {
                public var actions: [String]?

                public var apiVersion: String?

                public var decision: String?

                public var product: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.actions != nil {
                        map["actions"] = self.actions!
                    }
                    if self.apiVersion != nil {
                        map["apiVersion"] = self.apiVersion!
                    }
                    if self.decision != nil {
                        map["decision"] = self.decision!
                    }
                    if self.product != nil {
                        map["product"] = self.product!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["actions"] as? [String] {
                        self.actions = value
                    }
                    if let value = dict["apiVersion"] as? String {
                        self.apiVersion = value
                    }
                    if let value = dict["decision"] as? String {
                        self.decision = value
                    }
                    if let value = dict["product"] as? String {
                        self.product = value
                    }
                }
            }
            public var enable: Bool?

            public var statements: [GetDigitalEmployeeResponseBody.ToolPolicy.Aliyun.Statements]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.statements != nil {
                    var tmp : [Any] = []
                    for k in self.statements! {
                        tmp.append(k.toMap())
                    }
                    map["statements"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["statements"] as? [Any?] {
                    var tmp : [GetDigitalEmployeeResponseBody.ToolPolicy.Aliyun.Statements] = []
                    for v in value {
                        if v != nil {
                            var model = GetDigitalEmployeeResponseBody.ToolPolicy.Aliyun.Statements()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.statements = tmp
                }
            }
        }
        public var aliyun: GetDigitalEmployeeResponseBody.ToolPolicy.Aliyun?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.aliyun?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyun != nil {
                map["aliyun"] = self.aliyun?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["aliyun"] as? [String: Any?] {
                var model = GetDigitalEmployeeResponseBody.ToolPolicy.Aliyun()
                model.fromMap(value)
                self.aliyun = model
            }
        }
    }
    public var attributes: [String: String]?

    public var createTime: String?

    public var defaultRule: String?

    public var description_: String?

    public var displayName: String?

    public var employeeType: String?

    public var knowledges: GetDigitalEmployeeResponseBody.Knowledges?

    public var name: String?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var roleArn: String?

    public var tags: [Tag]?

    public var toolPolicy: GetDigitalEmployeeResponseBody.ToolPolicy?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.knowledges?.validate()
        try self.toolPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributes != nil {
            map["attributes"] = self.attributes!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.defaultRule != nil {
            map["defaultRule"] = self.defaultRule!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.employeeType != nil {
            map["employeeType"] = self.employeeType!
        }
        if self.knowledges != nil {
            map["knowledges"] = self.knowledges?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.toolPolicy != nil {
            map["toolPolicy"] = self.toolPolicy?.toMap()
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? [String: String] {
            self.attributes = value
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["defaultRule"] as? String {
            self.defaultRule = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["employeeType"] as? String {
            self.employeeType = value
        }
        if let value = dict["knowledges"] as? [String: Any?] {
            var model = GetDigitalEmployeeResponseBody.Knowledges()
            model.fromMap(value)
            self.knowledges = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["roleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [Tag] = []
            for v in value {
                if v != nil {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["toolPolicy"] as? [String: Any?] {
            var model = GetDigitalEmployeeResponseBody.ToolPolicy()
            model.fromMap(value)
            self.toolPolicy = model
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class GetDigitalEmployeeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDigitalEmployeeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDigitalEmployeeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDigitalEmployeeSkillRequest : Tea.TeaModel {
    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class GetDigitalEmployeeSkillResponseBody : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var content: String?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var createTime: String?

    public var description_: String?

    public var displayName: String?

    public var enable: Bool?

    public var files: [GetDigitalEmployeeSkillResponseBody.Files]?

    public var remark: String?

    public var requestId: String?

    public var skillName: String?

    public var updateTime: String?

    public var version: String?

    public override init() {
        super.init()
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
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["files"] = tmp
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.skillName != nil {
            map["skillName"] = self.skillName!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["files"] as? [Any?] {
            var tmp : [GetDigitalEmployeeSkillResponseBody.Files] = []
            for v in value {
                if v != nil {
                    var model = GetDigitalEmployeeSkillResponseBody.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["skillName"] as? String {
            self.skillName = value
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class GetDigitalEmployeeSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDigitalEmployeeSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDigitalEmployeeSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMcpServiceRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetMcpServiceResponseBody : Tea.TeaModel {
    public class McpService : Tea.TeaModel {
        public class Connection : Tea.TeaModel {
            public class Auth : Tea.TeaModel {
                public var keyInfo: [String: String]?

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
                    if self.keyInfo != nil {
                        map["keyInfo"] = self.keyInfo!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["keyInfo"] as? [String: String] {
                        self.keyInfo = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public var auth: GetMcpServiceResponseBody.McpService.Connection.Auth?

            public var endpoint: String?

            public var platform: String?

            public var timeout: Int64?

            public var transport: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.auth?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.auth != nil {
                    map["auth"] = self.auth?.toMap()
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.platform != nil {
                    map["platform"] = self.platform!
                }
                if self.timeout != nil {
                    map["timeout"] = self.timeout!
                }
                if self.transport != nil {
                    map["transport"] = self.transport!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["auth"] as? [String: Any?] {
                    var model = GetMcpServiceResponseBody.McpService.Connection.Auth()
                    model.fromMap(value)
                    self.auth = model
                }
                if let value = dict["endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["platform"] as? String {
                    self.platform = value
                }
                if let value = dict["timeout"] as? Int64 {
                    self.timeout = value
                }
                if let value = dict["transport"] as? String {
                    self.transport = value
                }
            }
        }
        public class Network : Tea.TeaModel {
            public var accessIp: String?

            public var accessPort: Int64?

            public var gatewayId: String?

            public var mcpServerId: String?

            public var mode: String?

            public var region: String?

            public var securityGroupId: String?

            public var vpcId: String?

            public var vswId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessIp != nil {
                    map["accessIp"] = self.accessIp!
                }
                if self.accessPort != nil {
                    map["accessPort"] = self.accessPort!
                }
                if self.gatewayId != nil {
                    map["gatewayId"] = self.gatewayId!
                }
                if self.mcpServerId != nil {
                    map["mcpServerId"] = self.mcpServerId!
                }
                if self.mode != nil {
                    map["mode"] = self.mode!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.securityGroupId != nil {
                    map["securityGroupId"] = self.securityGroupId!
                }
                if self.vpcId != nil {
                    map["vpcId"] = self.vpcId!
                }
                if self.vswId != nil {
                    map["vswId"] = self.vswId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessIp"] as? String {
                    self.accessIp = value
                }
                if let value = dict["accessPort"] as? Int64 {
                    self.accessPort = value
                }
                if let value = dict["gatewayId"] as? String {
                    self.gatewayId = value
                }
                if let value = dict["mcpServerId"] as? String {
                    self.mcpServerId = value
                }
                if let value = dict["mode"] as? String {
                    self.mode = value
                }
                if let value = dict["region"] as? String {
                    self.region = value
                }
                if let value = dict["securityGroupId"] as? String {
                    self.securityGroupId = value
                }
                if let value = dict["vpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["vswId"] as? String {
                    self.vswId = value
                }
            }
        }
        public class Tools : Tea.TeaModel {
            public var annotations: [String: Any]?

            public var confirm: Bool?

            public var description_: String?

            public var displayName: String?

            public var enable: Bool?

            public var execution: [String: Any]?

            public var icons: [[String: Any]]?

            public var inputSchema: [String: Any]?

            public var name: String?

            public var outputSchema: [String: Any]?

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
                if self.annotations != nil {
                    map["annotations"] = self.annotations!
                }
                if self.confirm != nil {
                    map["confirm"] = self.confirm!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.execution != nil {
                    map["execution"] = self.execution!
                }
                if self.icons != nil {
                    map["icons"] = self.icons!
                }
                if self.inputSchema != nil {
                    map["inputSchema"] = self.inputSchema!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.outputSchema != nil {
                    map["outputSchema"] = self.outputSchema!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["annotations"] as? [String: Any] {
                    self.annotations = value
                }
                if let value = dict["confirm"] as? Bool {
                    self.confirm = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["displayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["execution"] as? [String: Any] {
                    self.execution = value
                }
                if let value = dict["icons"] as? [[String: Any]] {
                    self.icons = value
                }
                if let value = dict["inputSchema"] as? [String: Any] {
                    self.inputSchema = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["outputSchema"] as? [String: Any] {
                    self.outputSchema = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
                }
            }
        }
        public var connection: GetMcpServiceResponseBody.McpService.Connection?

        public var description_: String?

        public var displayName: String?

        public var enable: Bool?

        public var mcpServiceName: String?

        public var network: GetMcpServiceResponseBody.McpService.Network?

        public var tools: [GetMcpServiceResponseBody.McpService.Tools]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.connection?.validate()
            try self.network?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connection != nil {
                map["connection"] = self.connection?.toMap()
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.mcpServiceName != nil {
                map["mcpServiceName"] = self.mcpServiceName!
            }
            if self.network != nil {
                map["network"] = self.network?.toMap()
            }
            if self.tools != nil {
                var tmp : [Any] = []
                for k in self.tools! {
                    tmp.append(k.toMap())
                }
                map["tools"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["connection"] as? [String: Any?] {
                var model = GetMcpServiceResponseBody.McpService.Connection()
                model.fromMap(value)
                self.connection = model
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["mcpServiceName"] as? String {
                self.mcpServiceName = value
            }
            if let value = dict["network"] as? [String: Any?] {
                var model = GetMcpServiceResponseBody.McpService.Network()
                model.fromMap(value)
                self.network = model
            }
            if let value = dict["tools"] as? [Any?] {
                var tmp : [GetMcpServiceResponseBody.McpService.Tools] = []
                for v in value {
                    if v != nil {
                        var model = GetMcpServiceResponseBody.McpService.Tools()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tools = tmp
            }
        }
    }
    public var mcpService: GetMcpServiceResponseBody.McpService?

    public var regionId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.mcpService?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mcpService != nil {
            map["mcpService"] = self.mcpService?.toMap()
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["mcpService"] as? [String: Any?] {
            var model = GetMcpServiceResponseBody.McpService()
            model.fromMap(value)
            self.mcpService = model
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMcpServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMcpServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMcpServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetThreadRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetThreadResponseBody : Tea.TeaModel {
    public class Variables : Tea.TeaModel {
        public var project: String?

        public var workspace: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.project != nil {
                map["project"] = self.project!
            }
            if self.workspace != nil {
                map["workspace"] = self.workspace!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["project"] as? String {
                self.project = value
            }
            if let value = dict["workspace"] as? String {
                self.workspace = value
            }
        }
    }
    public var attributes: [String: String]?

    public var createTime: String?

    public var digitalEmployeeName: String?

    public var requestId: String?

    public var status: String?

    public var threadId: String?

    public var title: String?

    public var updateTime: String?

    public var variables: GetThreadResponseBody.Variables?

    public var version: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.variables?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributes != nil {
            map["attributes"] = self.attributes!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.digitalEmployeeName != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.threadId != nil {
            map["threadId"] = self.threadId!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.variables != nil {
            map["variables"] = self.variables?.toMap()
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? [String: String] {
            self.attributes = value
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["digitalEmployeeName"] as? String {
            self.digitalEmployeeName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["threadId"] as? String {
            self.threadId = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["variables"] as? [String: Any?] {
            var model = GetThreadResponseBody.Variables()
            model.fromMap(value)
            self.variables = model
        }
        if let value = dict["version"] as? Int64 {
            self.version = value
        }
    }
}

public class GetThreadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetThreadResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetThreadResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetThreadDataRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class GetThreadDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Messages : Tea.TeaModel {
            public var agents: [[String: Any]]?

            public var artifacts: [[String: Any]]?

            public var callId: String?

            public var contents: [[String: Any]]?

            public var detail: String?

            public var events: [[String: Any]]?

            public var parentCallId: String?

            public var role: String?

            public var seq: Int32?

            public var timestamp: String?

            public var tools: [[String: Any]]?

            public var type: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agents != nil {
                    map["agents"] = self.agents!
                }
                if self.artifacts != nil {
                    map["artifacts"] = self.artifacts!
                }
                if self.callId != nil {
                    map["callId"] = self.callId!
                }
                if self.contents != nil {
                    map["contents"] = self.contents!
                }
                if self.detail != nil {
                    map["detail"] = self.detail!
                }
                if self.events != nil {
                    map["events"] = self.events!
                }
                if self.parentCallId != nil {
                    map["parentCallId"] = self.parentCallId!
                }
                if self.role != nil {
                    map["role"] = self.role!
                }
                if self.seq != nil {
                    map["seq"] = self.seq!
                }
                if self.timestamp != nil {
                    map["timestamp"] = self.timestamp!
                }
                if self.tools != nil {
                    map["tools"] = self.tools!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["agents"] as? [[String: Any]] {
                    self.agents = value
                }
                if let value = dict["artifacts"] as? [[String: Any]] {
                    self.artifacts = value
                }
                if let value = dict["callId"] as? String {
                    self.callId = value
                }
                if let value = dict["contents"] as? [[String: Any]] {
                    self.contents = value
                }
                if let value = dict["detail"] as? String {
                    self.detail = value
                }
                if let value = dict["events"] as? [[String: Any]] {
                    self.events = value
                }
                if let value = dict["parentCallId"] as? String {
                    self.parentCallId = value
                }
                if let value = dict["role"] as? String {
                    self.role = value
                }
                if let value = dict["seq"] as? Int32 {
                    self.seq = value
                }
                if let value = dict["timestamp"] as? String {
                    self.timestamp = value
                }
                if let value = dict["tools"] as? [[String: Any]] {
                    self.tools = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public var messages: [GetThreadDataResponseBody.Data.Messages]?

        public var requestId: String?

        public var traceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
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
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["messages"] as? [Any?] {
                var tmp : [GetThreadDataResponseBody.Data.Messages] = []
                for v in value {
                    if v != nil {
                        var model = GetThreadDataResponseBody.Data.Messages()
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
            if let value = dict["traceId"] as? String {
                self.traceId = value
            }
        }
    }
    public var data: [GetThreadDataResponseBody.Data]?

    public var digitalEmployeeName: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var requestId: String?

    public var threadId: String?

    public override init() {
        super.init()
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
            map["data"] = tmp
        }
        if self.digitalEmployeeName != nil {
            map["digitalEmployeeName"] = self.digitalEmployeeName!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.threadId != nil {
            map["threadId"] = self.threadId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetThreadDataResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetThreadDataResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["digitalEmployeeName"] as? String {
            self.digitalEmployeeName = value
        }
        if let value = dict["maxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["threadId"] as? String {
            self.threadId = value
        }
    }
}

public class GetThreadDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetThreadDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetThreadDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListArtifactsRequest : Tea.TeaModel {
    public var artifactPath: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactPath != nil {
            map["artifactPath"] = self.artifactPath!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["artifactPath"] as? String {
            self.artifactPath = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListArtifactsResponseBody : Tea.TeaModel {
    public class Artifacts : Tea.TeaModel {
        public var isDirectory: Bool?

        public var lastModified: String?

        public var path: String?

        public var size: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isDirectory != nil {
                map["isDirectory"] = self.isDirectory!
            }
            if self.lastModified != nil {
                map["lastModified"] = self.lastModified!
            }
            if self.path != nil {
                map["path"] = self.path!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["isDirectory"] as? Bool {
                self.isDirectory = value
            }
            if let value = dict["lastModified"] as? String {
                self.lastModified = value
            }
            if let value = dict["path"] as? String {
                self.path = value
            }
            if let value = dict["size"] as? Int64 {
                self.size = value
            }
        }
    }
    public var artifacts: [ListArtifactsResponseBody.Artifacts]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.artifacts != nil {
            var tmp : [Any] = []
            for k in self.artifacts! {
                tmp.append(k.toMap())
            }
            map["artifacts"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["artifacts"] as? [Any?] {
            var tmp : [ListArtifactsResponseBody.Artifacts] = []
            for v in value {
                if v != nil {
                    var model = ListArtifactsResponseBody.Artifacts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.artifacts = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListArtifactsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListArtifactsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListArtifactsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDigitalEmployeeSkillVersionsRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class ListDigitalEmployeeSkillVersionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var enable: Bool?

        public var remark: String?

        public var skillName: String?

        public var updateTime: String?

        public var version: String?

        public override init() {
            super.init()
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
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.remark != nil {
                map["remark"] = self.remark!
            }
            if self.skillName != nil {
                map["skillName"] = self.skillName!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["remark"] as? String {
                self.remark = value
            }
            if let value = dict["skillName"] as? String {
                self.skillName = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["version"] as? String {
                self.version = value
            }
        }
    }
    public var data: [ListDigitalEmployeeSkillVersionsResponseBody.Data]?

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
            map["data"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListDigitalEmployeeSkillVersionsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDigitalEmployeeSkillVersionsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDigitalEmployeeSkillVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDigitalEmployeeSkillVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDigitalEmployeeSkillVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDigitalEmployeeSkillsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var skillName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.skillName != nil {
            map["skillName"] = self.skillName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["skillName"] as? String {
            self.skillName = value
        }
    }
}

public class ListDigitalEmployeeSkillsResponseBody : Tea.TeaModel {
    public class Skills : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var enable: Bool?

        public var skillName: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.skillName != nil {
                map["skillName"] = self.skillName!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["skillName"] as? String {
                self.skillName = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var skills: [ListDigitalEmployeeSkillsResponseBody.Skills]?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.skills != nil {
            var tmp : [Any] = []
            for k in self.skills! {
                tmp.append(k.toMap())
            }
            map["skills"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["skills"] as? [Any?] {
            var tmp : [ListDigitalEmployeeSkillsResponseBody.Skills] = []
            for v in value {
                if v != nil {
                    var model = ListDigitalEmployeeSkillsResponseBody.Skills()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.skills = tmp
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListDigitalEmployeeSkillsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDigitalEmployeeSkillsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDigitalEmployeeSkillsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDigitalEmployeesRequest : Tea.TeaModel {
    public var displayName: String?

    public var employeeType: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var resourceGroupId: String?

    public var tags: [Tag]?

    public override init() {
        super.init()
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
        if self.employeeType != nil {
            map["employeeType"] = self.employeeType!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["employeeType"] as? String {
            self.employeeType = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [Tag] = []
            for v in value {
                if v != nil {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
    }
}

public class ListDigitalEmployeesShrinkRequest : Tea.TeaModel {
    public var displayName: String?

    public var employeeType: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var resourceGroupId: String?

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
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.employeeType != nil {
            map["employeeType"] = self.employeeType!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["employeeType"] as? String {
            self.employeeType = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class ListDigitalEmployeesResponseBody : Tea.TeaModel {
    public class DigitalEmployees : Tea.TeaModel {
        public class Knowledges : Tea.TeaModel {
            public class Bailian : Tea.TeaModel {
                public var attributes: String?

                public var indexId: String?

                public var region: String?

                public var workspaceId: String?

                public override init() {
                    super.init()
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
                    if self.indexId != nil {
                        map["indexId"] = self.indexId!
                    }
                    if self.region != nil {
                        map["region"] = self.region!
                    }
                    if self.workspaceId != nil {
                        map["workspaceId"] = self.workspaceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["attributes"] as? String {
                        self.attributes = value
                    }
                    if let value = dict["indexId"] as? String {
                        self.indexId = value
                    }
                    if let value = dict["region"] as? String {
                        self.region = value
                    }
                    if let value = dict["workspaceId"] as? String {
                        self.workspaceId = value
                    }
                }
            }
            public var bailian: [ListDigitalEmployeesResponseBody.DigitalEmployees.Knowledges.Bailian]?

            public var sop: [[String: Any]]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bailian != nil {
                    var tmp : [Any] = []
                    for k in self.bailian! {
                        tmp.append(k.toMap())
                    }
                    map["bailian"] = tmp
                }
                if self.sop != nil {
                    map["sop"] = self.sop!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bailian"] as? [Any?] {
                    var tmp : [ListDigitalEmployeesResponseBody.DigitalEmployees.Knowledges.Bailian] = []
                    for v in value {
                        if v != nil {
                            var model = ListDigitalEmployeesResponseBody.DigitalEmployees.Knowledges.Bailian()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.bailian = tmp
                }
                if let value = dict["sop"] as? [[String: Any]] {
                    self.sop = value
                }
            }
        }
        public var attributes: [String: String]?

        public var createTime: String?

        public var defaultRule: String?

        public var description_: String?

        public var displayName: String?

        public var employeeType: String?

        public var knowledges: ListDigitalEmployeesResponseBody.DigitalEmployees.Knowledges?

        public var name: String?

        public var resourceGroupId: String?

        public var roleArn: String?

        public var tags: [Tag]?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.knowledges?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributes != nil {
                map["attributes"] = self.attributes!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.defaultRule != nil {
                map["defaultRule"] = self.defaultRule!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.employeeType != nil {
                map["employeeType"] = self.employeeType!
            }
            if self.knowledges != nil {
                map["knowledges"] = self.knowledges?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            if self.roleArn != nil {
                map["roleArn"] = self.roleArn!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["attributes"] as? [String: String] {
                self.attributes = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["defaultRule"] as? String {
                self.defaultRule = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["employeeType"] as? String {
                self.employeeType = value
            }
            if let value = dict["knowledges"] as? [String: Any?] {
                var model = ListDigitalEmployeesResponseBody.DigitalEmployees.Knowledges()
                model.fromMap(value)
                self.knowledges = model
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["roleArn"] as? String {
                self.roleArn = value
            }
            if let value = dict["tags"] as? [Any?] {
                var tmp : [Tag] = []
                for v in value {
                    if v != nil {
                        var model = Tag()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var digitalEmployees: [ListDigitalEmployeesResponseBody.DigitalEmployees]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.digitalEmployees != nil {
            var tmp : [Any] = []
            for k in self.digitalEmployees! {
                tmp.append(k.toMap())
            }
            map["digitalEmployees"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
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
        if let value = dict["digitalEmployees"] as? [Any?] {
            var tmp : [ListDigitalEmployeesResponseBody.DigitalEmployees] = []
            for v in value {
                if v != nil {
                    var model = ListDigitalEmployeesResponseBody.DigitalEmployees()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.digitalEmployees = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListDigitalEmployeesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDigitalEmployeesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDigitalEmployeesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMcpServicesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListMcpServicesResponseBody : Tea.TeaModel {
    public class McpServices : Tea.TeaModel {
        public class McpServiceList : Tea.TeaModel {
            public class Connection : Tea.TeaModel {
                public class Auth : Tea.TeaModel {
                    public var keyInfo: [String: String]?

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
                        if self.keyInfo != nil {
                            map["keyInfo"] = self.keyInfo!
                        }
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["keyInfo"] as? [String: String] {
                            self.keyInfo = value
                        }
                        if let value = dict["type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var auth: ListMcpServicesResponseBody.McpServices.McpServiceList.Connection.Auth?

                public var endpoint: String?

                public var platform: String?

                public var timeout: Int64?

                public var transport: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.auth?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.auth != nil {
                        map["auth"] = self.auth?.toMap()
                    }
                    if self.endpoint != nil {
                        map["endpoint"] = self.endpoint!
                    }
                    if self.platform != nil {
                        map["platform"] = self.platform!
                    }
                    if self.timeout != nil {
                        map["timeout"] = self.timeout!
                    }
                    if self.transport != nil {
                        map["transport"] = self.transport!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["auth"] as? [String: Any?] {
                        var model = ListMcpServicesResponseBody.McpServices.McpServiceList.Connection.Auth()
                        model.fromMap(value)
                        self.auth = model
                    }
                    if let value = dict["endpoint"] as? String {
                        self.endpoint = value
                    }
                    if let value = dict["platform"] as? String {
                        self.platform = value
                    }
                    if let value = dict["timeout"] as? Int64 {
                        self.timeout = value
                    }
                    if let value = dict["transport"] as? String {
                        self.transport = value
                    }
                }
            }
            public class Network : Tea.TeaModel {
                public var accessIp: String?

                public var accessPort: Int64?

                public var gatewayId: String?

                public var mcpServerId: String?

                public var mode: String?

                public var region: String?

                public var securityGroupId: String?

                public var vpcId: String?

                public var vswId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessIp != nil {
                        map["accessIp"] = self.accessIp!
                    }
                    if self.accessPort != nil {
                        map["accessPort"] = self.accessPort!
                    }
                    if self.gatewayId != nil {
                        map["gatewayId"] = self.gatewayId!
                    }
                    if self.mcpServerId != nil {
                        map["mcpServerId"] = self.mcpServerId!
                    }
                    if self.mode != nil {
                        map["mode"] = self.mode!
                    }
                    if self.region != nil {
                        map["region"] = self.region!
                    }
                    if self.securityGroupId != nil {
                        map["securityGroupId"] = self.securityGroupId!
                    }
                    if self.vpcId != nil {
                        map["vpcId"] = self.vpcId!
                    }
                    if self.vswId != nil {
                        map["vswId"] = self.vswId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["accessIp"] as? String {
                        self.accessIp = value
                    }
                    if let value = dict["accessPort"] as? Int64 {
                        self.accessPort = value
                    }
                    if let value = dict["gatewayId"] as? String {
                        self.gatewayId = value
                    }
                    if let value = dict["mcpServerId"] as? String {
                        self.mcpServerId = value
                    }
                    if let value = dict["mode"] as? String {
                        self.mode = value
                    }
                    if let value = dict["region"] as? String {
                        self.region = value
                    }
                    if let value = dict["securityGroupId"] as? String {
                        self.securityGroupId = value
                    }
                    if let value = dict["vpcId"] as? String {
                        self.vpcId = value
                    }
                    if let value = dict["vswId"] as? String {
                        self.vswId = value
                    }
                }
            }
            public class Tools : Tea.TeaModel {
                public var annotations: [String: Any]?

                public var confirm: Bool?

                public var description_: String?

                public var displayName: String?

                public var enable: Bool?

                public var execution: [String: Any]?

                public var icons: [[String: Any]]?

                public var inputSchema: [String: Any]?

                public var name: String?

                public var outputSchema: [String: Any]?

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
                    if self.annotations != nil {
                        map["annotations"] = self.annotations!
                    }
                    if self.confirm != nil {
                        map["confirm"] = self.confirm!
                    }
                    if self.description_ != nil {
                        map["description"] = self.description_!
                    }
                    if self.displayName != nil {
                        map["displayName"] = self.displayName!
                    }
                    if self.enable != nil {
                        map["enable"] = self.enable!
                    }
                    if self.execution != nil {
                        map["execution"] = self.execution!
                    }
                    if self.icons != nil {
                        map["icons"] = self.icons!
                    }
                    if self.inputSchema != nil {
                        map["inputSchema"] = self.inputSchema!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.outputSchema != nil {
                        map["outputSchema"] = self.outputSchema!
                    }
                    if self.title != nil {
                        map["title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["annotations"] as? [String: Any] {
                        self.annotations = value
                    }
                    if let value = dict["confirm"] as? Bool {
                        self.confirm = value
                    }
                    if let value = dict["description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["displayName"] as? String {
                        self.displayName = value
                    }
                    if let value = dict["enable"] as? Bool {
                        self.enable = value
                    }
                    if let value = dict["execution"] as? [String: Any] {
                        self.execution = value
                    }
                    if let value = dict["icons"] as? [[String: Any]] {
                        self.icons = value
                    }
                    if let value = dict["inputSchema"] as? [String: Any] {
                        self.inputSchema = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["outputSchema"] as? [String: Any] {
                        self.outputSchema = value
                    }
                    if let value = dict["title"] as? String {
                        self.title = value
                    }
                }
            }
            public var connection: ListMcpServicesResponseBody.McpServices.McpServiceList.Connection?

            public var description_: String?

            public var displayName: String?

            public var enable: Bool?

            public var mcpServiceName: String?

            public var network: ListMcpServicesResponseBody.McpServices.McpServiceList.Network?

            public var tools: [ListMcpServicesResponseBody.McpServices.McpServiceList.Tools]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.connection?.validate()
                try self.network?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connection != nil {
                    map["connection"] = self.connection?.toMap()
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.mcpServiceName != nil {
                    map["mcpServiceName"] = self.mcpServiceName!
                }
                if self.network != nil {
                    map["network"] = self.network?.toMap()
                }
                if self.tools != nil {
                    var tmp : [Any] = []
                    for k in self.tools! {
                        tmp.append(k.toMap())
                    }
                    map["tools"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["connection"] as? [String: Any?] {
                    var model = ListMcpServicesResponseBody.McpServices.McpServiceList.Connection()
                    model.fromMap(value)
                    self.connection = model
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["displayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["mcpServiceName"] as? String {
                    self.mcpServiceName = value
                }
                if let value = dict["network"] as? [String: Any?] {
                    var model = ListMcpServicesResponseBody.McpServices.McpServiceList.Network()
                    model.fromMap(value)
                    self.network = model
                }
                if let value = dict["tools"] as? [Any?] {
                    var tmp : [ListMcpServicesResponseBody.McpServices.McpServiceList.Tools] = []
                    for v in value {
                        if v != nil {
                            var model = ListMcpServicesResponseBody.McpServices.McpServiceList.Tools()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tools = tmp
                }
            }
        }
        public var mcpServiceList: [ListMcpServicesResponseBody.McpServices.McpServiceList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mcpServiceList != nil {
                var tmp : [Any] = []
                for k in self.mcpServiceList! {
                    tmp.append(k.toMap())
                }
                map["mcpServiceList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mcpServiceList"] as? [Any?] {
                var tmp : [ListMcpServicesResponseBody.McpServices.McpServiceList] = []
                for v in value {
                    if v != nil {
                        var model = ListMcpServicesResponseBody.McpServices.McpServiceList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mcpServiceList = tmp
            }
        }
    }
    public var maxResults: Int32?

    public var mcpServices: ListMcpServicesResponseBody.McpServices?

    public var nextToken: String?

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
        try self.mcpServices?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.mcpServices != nil {
            map["mcpServices"] = self.mcpServices?.toMap()
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
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
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["mcpServices"] as? [String: Any?] {
            var model = ListMcpServicesResponseBody.McpServices()
            model.fromMap(value)
            self.mcpServices = model
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListMcpServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMcpServicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMcpServicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListThreadsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var filter: [ListThreadsRequest.Filter]?

    public var includeMission: Bool?

    public var maxResults: Int64?

    public var nextToken: String?

    public var status: String?

    public var threadId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["filter"] = tmp
        }
        if self.includeMission != nil {
            map["includeMission"] = self.includeMission!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.threadId != nil {
            map["threadId"] = self.threadId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filter"] as? [Any?] {
            var tmp : [ListThreadsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListThreadsRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["includeMission"] as? Bool {
            self.includeMission = value
        }
        if let value = dict["maxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["threadId"] as? String {
            self.threadId = value
        }
    }
}

public class ListThreadsShrinkRequest : Tea.TeaModel {
    public var filterShrink: String?

    public var includeMission: Bool?

    public var maxResults: Int64?

    public var nextToken: String?

    public var status: String?

    public var threadId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterShrink != nil {
            map["filter"] = self.filterShrink!
        }
        if self.includeMission != nil {
            map["includeMission"] = self.includeMission!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.threadId != nil {
            map["threadId"] = self.threadId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filter"] as? String {
            self.filterShrink = value
        }
        if let value = dict["includeMission"] as? Bool {
            self.includeMission = value
        }
        if let value = dict["maxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["threadId"] as? String {
            self.threadId = value
        }
    }
}

public class ListThreadsResponseBody : Tea.TeaModel {
    public class Threads : Tea.TeaModel {
        public class Variables : Tea.TeaModel {
            public var project: String?

            public var workspace: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.project != nil {
                    map["project"] = self.project!
                }
                if self.workspace != nil {
                    map["workspace"] = self.workspace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["project"] as? String {
                    self.project = value
                }
                if let value = dict["workspace"] as? String {
                    self.workspace = value
                }
            }
        }
        public var attributes: [String: String]?

        public var createTime: String?

        public var digitalEmployeeName: String?

        public var status: String?

        public var threadId: String?

        public var title: String?

        public var updateTime: String?

        public var variables: ListThreadsResponseBody.Threads.Variables?

        public var version: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.variables?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributes != nil {
                map["attributes"] = self.attributes!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.digitalEmployeeName != nil {
                map["digitalEmployeeName"] = self.digitalEmployeeName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.threadId != nil {
                map["threadId"] = self.threadId!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.variables != nil {
                map["variables"] = self.variables?.toMap()
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["attributes"] as? [String: String] {
                self.attributes = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["digitalEmployeeName"] as? String {
                self.digitalEmployeeName = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["threadId"] as? String {
                self.threadId = value
            }
            if let value = dict["title"] as? String {
                self.title = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["variables"] as? [String: Any?] {
                var model = ListThreadsResponseBody.Threads.Variables()
                model.fromMap(value)
                self.variables = model
            }
            if let value = dict["version"] as? Int64 {
                self.version = value
            }
        }
    }
    public var maxResults: Int64?

    public var nextToken: String?

    public var requestId: String?

    public var threadId: String?

    public var threads: [ListThreadsResponseBody.Threads]?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.threadId != nil {
            map["threadId"] = self.threadId!
        }
        if self.threads != nil {
            var tmp : [Any] = []
            for k in self.threads! {
                tmp.append(k.toMap())
            }
            map["threads"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["threadId"] as? String {
            self.threadId = value
        }
        if let value = dict["threads"] as? [Any?] {
            var tmp : [ListThreadsResponseBody.Threads] = []
            for v in value {
                if v != nil {
                    var model = ListThreadsResponseBody.Threads()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.threads = tmp
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListThreadsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListThreadsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListThreadsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDigitalEmployeeRequest : Tea.TeaModel {
    public class Knowledges : Tea.TeaModel {
        public class Bailian : Tea.TeaModel {
            public var attributes: String?

            public var indexId: String?

            public var region: String?

            public var workspaceId: String?

            public override init() {
                super.init()
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
                if self.indexId != nil {
                    map["indexId"] = self.indexId!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.workspaceId != nil {
                    map["workspaceId"] = self.workspaceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["attributes"] as? String {
                    self.attributes = value
                }
                if let value = dict["indexId"] as? String {
                    self.indexId = value
                }
                if let value = dict["region"] as? String {
                    self.region = value
                }
                if let value = dict["workspaceId"] as? String {
                    self.workspaceId = value
                }
            }
        }
        public var bailian: [UpdateDigitalEmployeeRequest.Knowledges.Bailian]?

        public var sop: [[String: Any]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bailian != nil {
                var tmp : [Any] = []
                for k in self.bailian! {
                    tmp.append(k.toMap())
                }
                map["bailian"] = tmp
            }
            if self.sop != nil {
                map["sop"] = self.sop!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bailian"] as? [Any?] {
                var tmp : [UpdateDigitalEmployeeRequest.Knowledges.Bailian] = []
                for v in value {
                    if v != nil {
                        var model = UpdateDigitalEmployeeRequest.Knowledges.Bailian()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bailian = tmp
            }
            if let value = dict["sop"] as? [[String: Any]] {
                self.sop = value
            }
        }
    }
    public class ToolPolicy : Tea.TeaModel {
        public class Aliyun : Tea.TeaModel {
            public class Statements : Tea.TeaModel {
                public var actions: [String]?

                public var apiVersion: String?

                public var decision: String?

                public var product: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.actions != nil {
                        map["actions"] = self.actions!
                    }
                    if self.apiVersion != nil {
                        map["apiVersion"] = self.apiVersion!
                    }
                    if self.decision != nil {
                        map["decision"] = self.decision!
                    }
                    if self.product != nil {
                        map["product"] = self.product!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["actions"] as? [String] {
                        self.actions = value
                    }
                    if let value = dict["apiVersion"] as? String {
                        self.apiVersion = value
                    }
                    if let value = dict["decision"] as? String {
                        self.decision = value
                    }
                    if let value = dict["product"] as? String {
                        self.product = value
                    }
                }
            }
            public var enable: Bool?

            public var statements: [UpdateDigitalEmployeeRequest.ToolPolicy.Aliyun.Statements]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.statements != nil {
                    var tmp : [Any] = []
                    for k in self.statements! {
                        tmp.append(k.toMap())
                    }
                    map["statements"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["statements"] as? [Any?] {
                    var tmp : [UpdateDigitalEmployeeRequest.ToolPolicy.Aliyun.Statements] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateDigitalEmployeeRequest.ToolPolicy.Aliyun.Statements()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.statements = tmp
                }
            }
        }
        public var aliyun: UpdateDigitalEmployeeRequest.ToolPolicy.Aliyun?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.aliyun?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyun != nil {
                map["aliyun"] = self.aliyun?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["aliyun"] as? [String: Any?] {
                var model = UpdateDigitalEmployeeRequest.ToolPolicy.Aliyun()
                model.fromMap(value)
                self.aliyun = model
            }
        }
    }
    public var attributes: [String: String]?

    public var defaultRule: String?

    public var description_: String?

    public var displayName: String?

    public var knowledges: UpdateDigitalEmployeeRequest.Knowledges?

    public var roleArn: String?

    public var toolPolicy: UpdateDigitalEmployeeRequest.ToolPolicy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.knowledges?.validate()
        try self.toolPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributes != nil {
            map["attributes"] = self.attributes!
        }
        if self.defaultRule != nil {
            map["defaultRule"] = self.defaultRule!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.knowledges != nil {
            map["knowledges"] = self.knowledges?.toMap()
        }
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        if self.toolPolicy != nil {
            map["toolPolicy"] = self.toolPolicy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? [String: String] {
            self.attributes = value
        }
        if let value = dict["defaultRule"] as? String {
            self.defaultRule = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["knowledges"] as? [String: Any?] {
            var model = UpdateDigitalEmployeeRequest.Knowledges()
            model.fromMap(value)
            self.knowledges = model
        }
        if let value = dict["roleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["toolPolicy"] as? [String: Any?] {
            var model = UpdateDigitalEmployeeRequest.ToolPolicy()
            model.fromMap(value)
            self.toolPolicy = model
        }
    }
}

public class UpdateDigitalEmployeeResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDigitalEmployeeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDigitalEmployeeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDigitalEmployeeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDigitalEmployeeSkillRequest : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var content: String?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
        }
    }
    public var description_: String?

    public var displayName: String?

    public var enable: Bool?

    public var files: [UpdateDigitalEmployeeSkillRequest.Files]?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["files"] = tmp
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["files"] as? [Any?] {
            var tmp : [UpdateDigitalEmployeeSkillRequest.Files] = []
            for v in value {
                if v != nil {
                    var model = UpdateDigitalEmployeeSkillRequest.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["remark"] as? String {
            self.remark = value
        }
    }
}

public class UpdateDigitalEmployeeSkillResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDigitalEmployeeSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDigitalEmployeeSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDigitalEmployeeSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMcpServiceRequest : Tea.TeaModel {
    public class Connection : Tea.TeaModel {
        public class Auth : Tea.TeaModel {
            public var keyInfo: [String: String]?

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
                if self.keyInfo != nil {
                    map["keyInfo"] = self.keyInfo!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["keyInfo"] as? [String: String] {
                    self.keyInfo = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var auth: UpdateMcpServiceRequest.Connection.Auth?

        public var endpoint: String?

        public var platform: String?

        public var timeout: Int64?

        public var transport: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.auth?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auth != nil {
                map["auth"] = self.auth?.toMap()
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.platform != nil {
                map["platform"] = self.platform!
            }
            if self.timeout != nil {
                map["timeout"] = self.timeout!
            }
            if self.transport != nil {
                map["transport"] = self.transport!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["auth"] as? [String: Any?] {
                var model = UpdateMcpServiceRequest.Connection.Auth()
                model.fromMap(value)
                self.auth = model
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["platform"] as? String {
                self.platform = value
            }
            if let value = dict["timeout"] as? Int64 {
                self.timeout = value
            }
            if let value = dict["transport"] as? String {
                self.transport = value
            }
        }
    }
    public class Network : Tea.TeaModel {
        public var accessIp: String?

        public var accessPort: Int64?

        public var gatewayId: String?

        public var mcpServerId: String?

        public var mode: String?

        public var region: String?

        public var securityGroupId: String?

        public var vpcId: String?

        public var vswId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessIp != nil {
                map["accessIp"] = self.accessIp!
            }
            if self.accessPort != nil {
                map["accessPort"] = self.accessPort!
            }
            if self.gatewayId != nil {
                map["gatewayId"] = self.gatewayId!
            }
            if self.mcpServerId != nil {
                map["mcpServerId"] = self.mcpServerId!
            }
            if self.mode != nil {
                map["mode"] = self.mode!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            if self.vswId != nil {
                map["vswId"] = self.vswId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accessIp"] as? String {
                self.accessIp = value
            }
            if let value = dict["accessPort"] as? Int64 {
                self.accessPort = value
            }
            if let value = dict["gatewayId"] as? String {
                self.gatewayId = value
            }
            if let value = dict["mcpServerId"] as? String {
                self.mcpServerId = value
            }
            if let value = dict["mode"] as? String {
                self.mode = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["securityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["vpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["vswId"] as? String {
                self.vswId = value
            }
        }
    }
    public class Tools : Tea.TeaModel {
        public var annotations: [String: Any]?

        public var confirm: Bool?

        public var description_: String?

        public var displayName: String?

        public var enable: Bool?

        public var execution: [String: Any]?

        public var icons: [[String: Any]]?

        public var inputSchema: [String: Any]?

        public var name: String?

        public var outputSchema: [String: Any]?

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
            if self.annotations != nil {
                map["annotations"] = self.annotations!
            }
            if self.confirm != nil {
                map["confirm"] = self.confirm!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.execution != nil {
                map["execution"] = self.execution!
            }
            if self.icons != nil {
                map["icons"] = self.icons!
            }
            if self.inputSchema != nil {
                map["inputSchema"] = self.inputSchema!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.outputSchema != nil {
                map["outputSchema"] = self.outputSchema!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["annotations"] as? [String: Any] {
                self.annotations = value
            }
            if let value = dict["confirm"] as? Bool {
                self.confirm = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["displayName"] as? String {
                self.displayName = value
            }
            if let value = dict["enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["execution"] as? [String: Any] {
                self.execution = value
            }
            if let value = dict["icons"] as? [[String: Any]] {
                self.icons = value
            }
            if let value = dict["inputSchema"] as? [String: Any] {
                self.inputSchema = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["outputSchema"] as? [String: Any] {
                self.outputSchema = value
            }
            if let value = dict["title"] as? String {
                self.title = value
            }
        }
    }
    public var connection: UpdateMcpServiceRequest.Connection?

    public var description_: String?

    public var displayName: String?

    public var enable: Bool?

    public var network: UpdateMcpServiceRequest.Network?

    public var tools: [UpdateMcpServiceRequest.Tools]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.connection?.validate()
        try self.network?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connection != nil {
            map["connection"] = self.connection?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.network != nil {
            map["network"] = self.network?.toMap()
        }
        if self.tools != nil {
            var tmp : [Any] = []
            for k in self.tools! {
                tmp.append(k.toMap())
            }
            map["tools"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["connection"] as? [String: Any?] {
            var model = UpdateMcpServiceRequest.Connection()
            model.fromMap(value)
            self.connection = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["network"] as? [String: Any?] {
            var model = UpdateMcpServiceRequest.Network()
            model.fromMap(value)
            self.network = model
        }
        if let value = dict["tools"] as? [Any?] {
            var tmp : [UpdateMcpServiceRequest.Tools] = []
            for v in value {
                if v != nil {
                    var model = UpdateMcpServiceRequest.Tools()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tools = tmp
        }
    }
}

public class UpdateMcpServiceResponseBody : Tea.TeaModel {
    public var mcpServiceName: String?

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
        if self.mcpServiceName != nil {
            map["mcpServiceName"] = self.mcpServiceName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["mcpServiceName"] as? String {
            self.mcpServiceName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateMcpServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMcpServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateMcpServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateThreadRequest : Tea.TeaModel {
    public var attributes: [String: String]?

    public var status: String?

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
        if self.attributes != nil {
            map["attributes"] = self.attributes!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["attributes"] as? [String: String] {
            self.attributes = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class UpdateThreadResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var threadId: String?

    public var version: Int64?

    public override init() {
        super.init()
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
            map["requestId"] = self.requestId!
        }
        if self.threadId != nil {
            map["threadId"] = self.threadId!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["threadId"] as? String {
            self.threadId = value
        }
        if let value = dict["version"] as? Int64 {
            self.version = value
        }
    }
}

public class UpdateThreadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateThreadResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateThreadResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
