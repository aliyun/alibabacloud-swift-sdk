import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateAgentRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var knowledgeBases: Any?

    public var name: String?

    public var skills: Any?

    public var systemPrompt: String?

    public var tools: Any?

    public var visibility: String?

    public override init() {
        super.init()
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
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.knowledgeBases != nil {
            map["KnowledgeBases"] = self.knowledgeBases!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.skills != nil {
            map["Skills"] = self.skills!
        }
        if self.systemPrompt != nil {
            map["SystemPrompt"] = self.systemPrompt!
        }
        if self.tools != nil {
            map["Tools"] = self.tools!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["KnowledgeBases"] as? Any {
            self.knowledgeBases = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Skills"] as? Any {
            self.skills = value
        }
        if let value = dict["SystemPrompt"] as? String {
            self.systemPrompt = value
        }
        if let value = dict["Tools"] as? Any {
            self.tools = value
        }
        if let value = dict["Visibility"] as? String {
            self.visibility = value
        }
    }
}

public class CreateAgentResponseBody : Tea.TeaModel {
    public var agentId: String?

    public var name: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.updatedAt != nil {
            map["UpdatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? String {
            self.agentId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["UpdatedAt"] as? Int64 {
            self.updatedAt = value
        }
    }
}

public class CreateAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSkillRequest : Tea.TeaModel {
    public var description_: String?

    public var metadata: Any?

    public var name: String?

    public var visibility: String?

    public override init() {
        super.init()
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
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Visibility"] as? String {
            self.visibility = value
        }
    }
}

public class CreateSkillResponseBody : Tea.TeaModel {
    public var name: String?

    public var requestId: String?

    public var skillId: String?

    public var success: Bool?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.skillId != nil {
            map["SkillId"] = self.skillId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.updatedAt != nil {
            map["UpdatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SkillId"] as? String {
            self.skillId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["UpdatedAt"] as? Int64 {
            self.updatedAt = value
        }
    }
}

public class CreateSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTransitUploadPolicyRequest : Tea.TeaModel {
    public var expireMs: Int64?

    public var fileShowName: String?

    public var network: String?

    public var pathPrefix: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expireMs != nil {
            map["ExpireMs"] = self.expireMs!
        }
        if self.fileShowName != nil {
            map["FileShowName"] = self.fileShowName!
        }
        if self.network != nil {
            map["Network"] = self.network!
        }
        if self.pathPrefix != nil {
            map["PathPrefix"] = self.pathPrefix!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpireMs"] as? Int64 {
            self.expireMs = value
        }
        if let value = dict["FileShowName"] as? String {
            self.fileShowName = value
        }
        if let value = dict["Network"] as? String {
            self.network = value
        }
        if let value = dict["PathPrefix"] as? String {
            self.pathPrefix = value
        }
    }
}

public class CreateTransitUploadPolicyResponseBody : Tea.TeaModel {
    public class PolicyInfo : Tea.TeaModel {
        public var accessId: String?

        public var dir: String?

        public var host: String?

        public var policy: String?

        public var securityToken: String?

        public var signature: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.dir != nil {
                map["Dir"] = self.dir!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessId"] as? String {
                self.accessId = value
            }
            if let value = dict["Dir"] as? String {
                self.dir = value
            }
            if let value = dict["Host"] as? String {
                self.host = value
            }
            if let value = dict["Policy"] as? String {
                self.policy = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
            }
            if let value = dict["Signature"] as? String {
                self.signature = value
            }
        }
    }
    public var filePath: String?

    public var policyInfo: CreateTransitUploadPolicyResponseBody.PolicyInfo?

    public var requestId: String?

    public var success: Bool?

    public var transitId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policyInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.policyInfo != nil {
            map["PolicyInfo"] = self.policyInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.transitId != nil {
            map["TransitId"] = self.transitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["PolicyInfo"] as? [String: Any?] {
            var model = CreateTransitUploadPolicyResponseBody.PolicyInfo()
            model.fromMap(value)
            self.policyInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TransitId"] as? String {
            self.transitId = value
        }
    }
}

public class CreateTransitUploadPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTransitUploadPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTransitUploadPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAgentRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DeleteAgentResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSkillRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DeleteSkillResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAgentRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class GetAgentResponseBody : Tea.TeaModel {
    public var agentId: String?

    public var agentVersion: Int64?

    public var canDelete: Bool?

    public var canModify: Bool?

    public var createdAt: Int64?

    public var description_: String?

    public var displayName: String?

    public var knowledgeBases: Any?

    public var metadata: Any?

    public var model: Any?

    public var name: String?

    public var official: Bool?

    public var requestId: String?

    public var skills: Any?

    public var status: String?

    public var systemPrompt: String?

    public var tools: Any?

    public var updatedAt: Int64?

    public var visibility: String?

    public override init() {
        super.init()
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
        if self.agentVersion != nil {
            map["AgentVersion"] = self.agentVersion!
        }
        if self.canDelete != nil {
            map["CanDelete"] = self.canDelete!
        }
        if self.canModify != nil {
            map["CanModify"] = self.canModify!
        }
        if self.createdAt != nil {
            map["CreatedAt"] = self.createdAt!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.knowledgeBases != nil {
            map["KnowledgeBases"] = self.knowledgeBases!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.official != nil {
            map["Official"] = self.official!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.skills != nil {
            map["Skills"] = self.skills!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? String {
            self.agentId = value
        }
        if let value = dict["AgentVersion"] as? Int64 {
            self.agentVersion = value
        }
        if let value = dict["CanDelete"] as? Bool {
            self.canDelete = value
        }
        if let value = dict["CanModify"] as? Bool {
            self.canModify = value
        }
        if let value = dict["CreatedAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["KnowledgeBases"] as? Any {
            self.knowledgeBases = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["Model"] as? Any {
            self.model = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Official"] as? Bool {
            self.official = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Skills"] as? Any {
            self.skills = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SystemPrompt"] as? String {
            self.systemPrompt = value
        }
        if let value = dict["Tools"] as? Any {
            self.tools = value
        }
        if let value = dict["UpdatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["Visibility"] as? String {
            self.visibility = value
        }
    }
}

public class GetAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSkillRequest : Tea.TeaModel {
    public var name: String?

    public var network: String?

    public var skillVersion: Int64?

    public override init() {
        super.init()
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
        if self.network != nil {
            map["Network"] = self.network!
        }
        if self.skillVersion != nil {
            map["SkillVersion"] = self.skillVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Network"] as? String {
            self.network = value
        }
        if let value = dict["SkillVersion"] as? Int64 {
            self.skillVersion = value
        }
    }
}

public class GetSkillResponseBody : Tea.TeaModel {
    public var canDelete: Bool?

    public var canModify: Bool?

    public var createdAt: Int64?

    public var description_: String?

    public var downloadUrl: String?

    public var downloadUrlNetwork: String?

    public var iconUrl: String?

    public var metadata: Any?

    public var name: String?

    public var official: Bool?

    public var requestId: String?

    public var skillId: String?

    public var status: String?

    public var updatedAt: Int64?

    public var visibility: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.canDelete != nil {
            map["CanDelete"] = self.canDelete!
        }
        if self.canModify != nil {
            map["CanModify"] = self.canModify!
        }
        if self.createdAt != nil {
            map["CreatedAt"] = self.createdAt!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.downloadUrl != nil {
            map["DownloadUrl"] = self.downloadUrl!
        }
        if self.downloadUrlNetwork != nil {
            map["DownloadUrlNetwork"] = self.downloadUrlNetwork!
        }
        if self.iconUrl != nil {
            map["IconUrl"] = self.iconUrl!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.official != nil {
            map["Official"] = self.official!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.skillId != nil {
            map["SkillId"] = self.skillId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updatedAt != nil {
            map["UpdatedAt"] = self.updatedAt!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CanDelete"] as? Bool {
            self.canDelete = value
        }
        if let value = dict["CanModify"] as? Bool {
            self.canModify = value
        }
        if let value = dict["CreatedAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DownloadUrl"] as? String {
            self.downloadUrl = value
        }
        if let value = dict["DownloadUrlNetwork"] as? String {
            self.downloadUrlNetwork = value
        }
        if let value = dict["IconUrl"] as? String {
            self.iconUrl = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Official"] as? Bool {
            self.official = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SkillId"] as? String {
            self.skillId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UpdatedAt"] as? Int64 {
            self.updatedAt = value
        }
        if let value = dict["Visibility"] as? String {
            self.visibility = value
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

public class GetTransitMetaRequest : Tea.TeaModel {
    public var expireMs: Int64?

    public var filePath: String?

    public var network: String?

    public var transitId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expireMs != nil {
            map["ExpireMs"] = self.expireMs!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.network != nil {
            map["Network"] = self.network!
        }
        if self.transitId != nil {
            map["TransitId"] = self.transitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpireMs"] as? Int64 {
            self.expireMs = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["Network"] as? String {
            self.network = value
        }
        if let value = dict["TransitId"] as? String {
            self.transitId = value
        }
    }
}

public class GetTransitMetaResponseBody : Tea.TeaModel {
    public var downloadUrl: String?

    public var expireAt: Int64?

    public var filePath: String?

    public var requestId: String?

    public var size: Int64?

    public var status: String?

    public var transitId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.downloadUrl != nil {
            map["DownloadUrl"] = self.downloadUrl!
        }
        if self.expireAt != nil {
            map["ExpireAt"] = self.expireAt!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.transitId != nil {
            map["TransitId"] = self.transitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DownloadUrl"] as? String {
            self.downloadUrl = value
        }
        if let value = dict["ExpireAt"] as? Int64 {
            self.expireAt = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Size"] as? Int64 {
            self.size = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TransitId"] as? String {
            self.transitId = value
        }
    }
}

public class GetTransitMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTransitMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTransitMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAgentsRequest : Tea.TeaModel {
    public var creatorId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var q: String?

    public var requiredRuntime: String?

    public var scope: String?

    public var visibility: String?

    public override init() {
        super.init()
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
            map["CreatorId"] = self.creatorId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.q != nil {
            map["Q"] = self.q!
        }
        if self.requiredRuntime != nil {
            map["RequiredRuntime"] = self.requiredRuntime!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatorId"] as? String {
            self.creatorId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["Q"] as? String {
            self.q = value
        }
        if let value = dict["RequiredRuntime"] as? String {
            self.requiredRuntime = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["Visibility"] as? String {
            self.visibility = value
        }
    }
}

public class ListAgentsResponseBody : Tea.TeaModel {
    public var agents: [Any]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int64?

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
        if self.agents != nil {
            map["Agents"] = self.agents!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Agents"] as? [Any] {
            self.agents = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
        if let value = dict["Total"] as? Int64 {
            self.total = value
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

public class ListSkillsRequest : Tea.TeaModel {
    public var creatorId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var q: String?

    public var scope: String?

    public var visibility: String?

    public override init() {
        super.init()
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
            map["CreatorId"] = self.creatorId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.q != nil {
            map["Q"] = self.q!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatorId"] as? String {
            self.creatorId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["Q"] as? String {
            self.q = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["Visibility"] as? String {
            self.visibility = value
        }
    }
}

public class ListSkillsResponseBody : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var skills: [Any]?

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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
            map["Skills"] = self.skills!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
        if let value = dict["Skills"] as? [Any] {
            self.skills = value
        }
        if let value = dict["Total"] as? Int64 {
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

public class UpdateAgentRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var expectedVersion: Int64?

    public var knowledgeBases: Any?

    public var name: String?

    public var skills: Any?

    public var systemPrompt: String?

    public var tools: Any?

    public var visibility: String?

    public override init() {
        super.init()
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
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.expectedVersion != nil {
            map["ExpectedVersion"] = self.expectedVersion!
        }
        if self.knowledgeBases != nil {
            map["KnowledgeBases"] = self.knowledgeBases!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.skills != nil {
            map["Skills"] = self.skills!
        }
        if self.systemPrompt != nil {
            map["SystemPrompt"] = self.systemPrompt!
        }
        if self.tools != nil {
            map["Tools"] = self.tools!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["ExpectedVersion"] as? Int64 {
            self.expectedVersion = value
        }
        if let value = dict["KnowledgeBases"] as? Any {
            self.knowledgeBases = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Skills"] as? Any {
            self.skills = value
        }
        if let value = dict["SystemPrompt"] as? String {
            self.systemPrompt = value
        }
        if let value = dict["Tools"] as? Any {
            self.tools = value
        }
        if let value = dict["Visibility"] as? String {
            self.visibility = value
        }
    }
}

public class UpdateAgentResponseBody : Tea.TeaModel {
    public var agentId: String?

    public var name: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.agentId != nil {
            map["AgentId"] = self.agentId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.updatedAt != nil {
            map["UpdatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentId"] as? String {
            self.agentId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["UpdatedAt"] as? Int64 {
            self.updatedAt = value
        }
    }
}

public class UpdateAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSkillRequest : Tea.TeaModel {
    public var description_: String?

    public var expectedVersion: Int64?

    public var metadata: Any?

    public var name: String?

    public var visibility: String?

    public override init() {
        super.init()
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
        if self.expectedVersion != nil {
            map["ExpectedVersion"] = self.expectedVersion!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExpectedVersion"] as? Int64 {
            self.expectedVersion = value
        }
        if let value = dict["Metadata"] as? Any {
            self.metadata = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Visibility"] as? String {
            self.visibility = value
        }
    }
}

public class UpdateSkillResponseBody : Tea.TeaModel {
    public var name: String?

    public var requestId: String?

    public var skillId: String?

    public var success: Bool?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.skillId != nil {
            map["SkillId"] = self.skillId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.updatedAt != nil {
            map["UpdatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SkillId"] as? String {
            self.skillId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["UpdatedAt"] as? Int64 {
            self.updatedAt = value
        }
    }
}

public class UpdateSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
