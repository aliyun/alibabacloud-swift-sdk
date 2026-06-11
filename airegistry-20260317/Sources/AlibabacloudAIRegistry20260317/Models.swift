import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataResourceValue : Tea.TeaModel {
    public var name: String?

    public var type: String?

    public var content: String?

    public var metadata: [String: Any]?

    public override init() {
        super.init()
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.metadata != nil {
            map["Metadata"] = self.metadata!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Metadata"] as? [String: Any] {
            self.metadata = value
        }
    }
}

public class CreateNamespaceRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var scanPolicy: String?

    public var tags: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.scanPolicy != nil {
            map["ScanPolicy"] = self.scanPolicy!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ScanPolicy"] as? String {
            self.scanPolicy = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
    }
}

public class CreateNamespaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var namespaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NamespaceId"] as? String {
                self.namespaceId = value
            }
        }
    }
    public var data: CreateNamespaceResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateNamespaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePromptRequest : Tea.TeaModel {
    public var bizTags: String?

    public var commitMsg: String?

    public var description_: String?

    public var namespaceId: String?

    public var promptKey: String?

    public var targetVersion: String?

    public var template: String?

    public var variables: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTags != nil {
            map["BizTags"] = self.bizTags!
        }
        if self.commitMsg != nil {
            map["CommitMsg"] = self.commitMsg!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.promptKey != nil {
            map["PromptKey"] = self.promptKey!
        }
        if self.targetVersion != nil {
            map["TargetVersion"] = self.targetVersion!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        if self.variables != nil {
            map["Variables"] = self.variables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizTags"] as? String {
            self.bizTags = value
        }
        if let value = dict["CommitMsg"] as? String {
            self.commitMsg = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["PromptKey"] as? String {
            self.promptKey = value
        }
        if let value = dict["TargetVersion"] as? String {
            self.targetVersion = value
        }
        if let value = dict["Template"] as? String {
            self.template = value
        }
        if let value = dict["Variables"] as? String {
            self.variables = value
        }
    }
}

public class CreatePromptResponseBody : Tea.TeaModel {
    public var data: String?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePromptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePromptResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePromptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePromptVersionRequest : Tea.TeaModel {
    public var basedOnVersion: String?

    public var commitMsg: String?

    public var namespaceId: String?

    public var promptKey: String?

    public var targetVersion: String?

    public var template: String?

    public var variables: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basedOnVersion != nil {
            map["BasedOnVersion"] = self.basedOnVersion!
        }
        if self.commitMsg != nil {
            map["CommitMsg"] = self.commitMsg!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.promptKey != nil {
            map["PromptKey"] = self.promptKey!
        }
        if self.targetVersion != nil {
            map["TargetVersion"] = self.targetVersion!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        if self.variables != nil {
            map["Variables"] = self.variables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BasedOnVersion"] as? String {
            self.basedOnVersion = value
        }
        if let value = dict["CommitMsg"] as? String {
            self.commitMsg = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["PromptKey"] as? String {
            self.promptKey = value
        }
        if let value = dict["TargetVersion"] as? String {
            self.targetVersion = value
        }
        if let value = dict["Template"] as? String {
            self.template = value
        }
        if let value = dict["Variables"] as? String {
            self.variables = value
        }
    }
}

public class CreatePromptVersionResponseBody : Tea.TeaModel {
    public var data: String?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePromptVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePromptVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePromptVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSkillDraftRequest : Tea.TeaModel {
    public var basedOnVersion: String?

    public var commitMsg: String?

    public var namespaceId: String?

    public var skillCard: String?

    public var skillName: String?

    public var targetVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basedOnVersion != nil {
            map["BasedOnVersion"] = self.basedOnVersion!
        }
        if self.commitMsg != nil {
            map["CommitMsg"] = self.commitMsg!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.skillCard != nil {
            map["SkillCard"] = self.skillCard!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        if self.targetVersion != nil {
            map["TargetVersion"] = self.targetVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BasedOnVersion"] as? String {
            self.basedOnVersion = value
        }
        if let value = dict["CommitMsg"] as? String {
            self.commitMsg = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["SkillCard"] as? String {
            self.skillCard = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
        if let value = dict["TargetVersion"] as? String {
            self.targetVersion = value
        }
    }
}

public class CreateSkillDraftResponseBody : Tea.TeaModel {
    public var data: String?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateSkillDraftResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSkillDraftResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSkillDraftResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNamespaceRequest : Tea.TeaModel {
    public var namespaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
    }
}

public class DeleteNamespaceResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePromptRequest : Tea.TeaModel {
    public var namespaceId: String?

    public var promptKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.promptKey != nil {
            map["PromptKey"] = self.promptKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["PromptKey"] as? String {
            self.promptKey = value
        }
    }
}

public class DeletePromptResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeletePromptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePromptResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePromptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSkillRequest : Tea.TeaModel {
    public var namespaceId: String?

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
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
    }
}

public class DeleteSkillResponseBody : Tea.TeaModel {
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

public class DownloadSkillVersionViaOssRequest : Tea.TeaModel {
    public var namespaceId: String?

    public var skillName: String?

    public var skillVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        if self.skillVersion != nil {
            map["SkillVersion"] = self.skillVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
        if let value = dict["SkillVersion"] as? String {
            self.skillVersion = value
        }
    }
}

public class DownloadSkillVersionViaOssResponseBody : Tea.TeaModel {
    public var data: String?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DownloadSkillVersionViaOssResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DownloadSkillVersionViaOssResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DownloadSkillVersionViaOssResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ForcePublishSkillVersionRequest : Tea.TeaModel {
    public var namespaceId: String?

    public var skillName: String?

    public var skillVersion: String?

    public var updateLatestLabel: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        if self.skillVersion != nil {
            map["SkillVersion"] = self.skillVersion!
        }
        if self.updateLatestLabel != nil {
            map["UpdateLatestLabel"] = self.updateLatestLabel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
        if let value = dict["SkillVersion"] as? String {
            self.skillVersion = value
        }
        if let value = dict["UpdateLatestLabel"] as? Bool {
            self.updateLatestLabel = value
        }
    }
}

public class ForcePublishSkillVersionResponseBody : Tea.TeaModel {
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

public class ForcePublishSkillVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ForcePublishSkillVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ForcePublishSkillVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNamespaceRequest : Tea.TeaModel {
    public var namespaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
    }
}

public class GetNamespaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdTime: String?

        public var description_: String?

        public var name: String?

        public var namespaceId: String?

        public var promptCount: Int32?

        public var scanPolicy: String?

        public var skillCount: Int32?

        public var source: String?

        public var sourceIndex: Int32?

        public var tags: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.promptCount != nil {
                map["PromptCount"] = self.promptCount!
            }
            if self.scanPolicy != nil {
                map["ScanPolicy"] = self.scanPolicy!
            }
            if self.skillCount != nil {
                map["SkillCount"] = self.skillCount!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceIndex != nil {
                map["SourceIndex"] = self.sourceIndex!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NamespaceId"] as? String {
                self.namespaceId = value
            }
            if let value = dict["PromptCount"] as? Int32 {
                self.promptCount = value
            }
            if let value = dict["ScanPolicy"] as? String {
                self.scanPolicy = value
            }
            if let value = dict["SkillCount"] as? Int32 {
                self.skillCount = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceIndex"] as? Int32 {
                self.sourceIndex = value
            }
            if let value = dict["Tags"] as? String {
                self.tags = value
            }
        }
    }
    public var data: GetNamespaceResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetNamespaceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPromptRequest : Tea.TeaModel {
    public var namespaceId: String?

    public var promptKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.promptKey != nil {
            map["PromptKey"] = self.promptKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["PromptKey"] as? String {
            self.promptKey = value
        }
    }
}

public class GetPromptResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VersionDetails : Tea.TeaModel {
            public var commitMsg: String?

            public var gmtModified: Int64?

            public var promptKey: String?

            public var srcUser: String?

            public var status: String?

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
                if self.commitMsg != nil {
                    map["CommitMsg"] = self.commitMsg!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.promptKey != nil {
                    map["PromptKey"] = self.promptKey!
                }
                if self.srcUser != nil {
                    map["SrcUser"] = self.srcUser!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommitMsg"] as? String {
                    self.commitMsg = value
                }
                if let value = dict["GmtModified"] as? Int64 {
                    self.gmtModified = value
                }
                if let value = dict["PromptKey"] as? String {
                    self.promptKey = value
                }
                if let value = dict["SrcUser"] as? String {
                    self.srcUser = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var bizTags: [String]?

        public var description_: String?

        public var editingVersion: String?

        public var gmtModified: Int64?

        public var labels: [String: String]?

        public var latestVersion: String?

        public var onlineCnt: Int32?

        public var promptKey: String?

        public var reviewingVersion: String?

        public var schemaVersion: Int32?

        public var versionDetails: [GetPromptResponseBody.Data.VersionDetails]?

        public var versions: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizTags != nil {
                map["BizTags"] = self.bizTags!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.editingVersion != nil {
                map["EditingVersion"] = self.editingVersion!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.latestVersion != nil {
                map["LatestVersion"] = self.latestVersion!
            }
            if self.onlineCnt != nil {
                map["OnlineCnt"] = self.onlineCnt!
            }
            if self.promptKey != nil {
                map["PromptKey"] = self.promptKey!
            }
            if self.reviewingVersion != nil {
                map["ReviewingVersion"] = self.reviewingVersion!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.versionDetails != nil {
                var tmp : [Any] = []
                for k in self.versionDetails! {
                    tmp.append(k.toMap())
                }
                map["VersionDetails"] = tmp
            }
            if self.versions != nil {
                map["Versions"] = self.versions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizTags"] as? [String] {
                self.bizTags = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EditingVersion"] as? String {
                self.editingVersion = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["Labels"] as? [String: String] {
                self.labels = value
            }
            if let value = dict["LatestVersion"] as? String {
                self.latestVersion = value
            }
            if let value = dict["OnlineCnt"] as? Int32 {
                self.onlineCnt = value
            }
            if let value = dict["PromptKey"] as? String {
                self.promptKey = value
            }
            if let value = dict["ReviewingVersion"] as? String {
                self.reviewingVersion = value
            }
            if let value = dict["SchemaVersion"] as? Int32 {
                self.schemaVersion = value
            }
            if let value = dict["VersionDetails"] as? [Any?] {
                var tmp : [GetPromptResponseBody.Data.VersionDetails] = []
                for v in value {
                    if v != nil {
                        var model = GetPromptResponseBody.Data.VersionDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.versionDetails = tmp
            }
            if let value = dict["Versions"] as? [String] {
                self.versions = value
            }
        }
    }
    public var data: GetPromptResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetPromptResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPromptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPromptResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPromptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPromptVersionRequest : Tea.TeaModel {
    public var namespaceId: String?

    public var promptKey: String?

    public var promptVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.promptKey != nil {
            map["PromptKey"] = self.promptKey!
        }
        if self.promptVersion != nil {
            map["PromptVersion"] = self.promptVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["PromptKey"] as? String {
            self.promptKey = value
        }
        if let value = dict["PromptVersion"] as? String {
            self.promptVersion = value
        }
    }
}

public class GetPromptVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Variables : Tea.TeaModel {
            public var defaultValue: String?

            public var description_: String?

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
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var commitMsg: String?

        public var gmtModified: Int64?

        public var md5: String?

        public var promptKey: String?

        public var srcUser: String?

        public var status: String?

        public var template: String?

        public var variables: [GetPromptVersionResponseBody.Data.Variables]?

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
            if self.commitMsg != nil {
                map["CommitMsg"] = self.commitMsg!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.promptKey != nil {
                map["PromptKey"] = self.promptKey!
            }
            if self.srcUser != nil {
                map["SrcUser"] = self.srcUser!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.template != nil {
                map["Template"] = self.template!
            }
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["Variables"] = tmp
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommitMsg"] as? String {
                self.commitMsg = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["PromptKey"] as? String {
                self.promptKey = value
            }
            if let value = dict["SrcUser"] as? String {
                self.srcUser = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Template"] as? String {
                self.template = value
            }
            if let value = dict["Variables"] as? [Any?] {
                var tmp : [GetPromptVersionResponseBody.Data.Variables] = []
                for v in value {
                    if v != nil {
                        var model = GetPromptVersionResponseBody.Data.Variables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.variables = tmp
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var data: GetPromptVersionResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetPromptVersionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPromptVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPromptVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPromptVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSkillDetailRequest : Tea.TeaModel {
    public var namespaceId: String?

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
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
    }
}

public class GetSkillDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Versions : Tea.TeaModel {
            public var author: String?

            public var commitMsg: String?

            public var createTime: Int64?

            public var description_: String?

            public var downloadCount: Int64?

            public var publishPipelineInfo: String?

            public var status: String?

            public var updateTime: Int64?

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
                if self.author != nil {
                    map["Author"] = self.author!
                }
                if self.commitMsg != nil {
                    map["CommitMsg"] = self.commitMsg!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.downloadCount != nil {
                    map["DownloadCount"] = self.downloadCount!
                }
                if self.publishPipelineInfo != nil {
                    map["PublishPipelineInfo"] = self.publishPipelineInfo!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Author"] as? String {
                    self.author = value
                }
                if let value = dict["CommitMsg"] as? String {
                    self.commitMsg = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DownloadCount"] as? Int64 {
                    self.downloadCount = value
                }
                if let value = dict["PublishPipelineInfo"] as? String {
                    self.publishPipelineInfo = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var bizTags: String?

        public var description_: String?

        public var downloadCount: Int64?

        public var editingVersion: String?

        public var enable: Bool?

        public var from: String?

        public var labels: [String: String]?

        public var name: String?

        public var namespaceId: String?

        public var onlineCnt: Int32?

        public var owner: String?

        public var reviewingVersion: String?

        public var scope: String?

        public var updateTime: Int64?

        public var versions: [GetSkillDetailResponseBody.Data.Versions]?

        public var writeable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizTags != nil {
                map["BizTags"] = self.bizTags!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.downloadCount != nil {
                map["DownloadCount"] = self.downloadCount!
            }
            if self.editingVersion != nil {
                map["EditingVersion"] = self.editingVersion!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.from != nil {
                map["From"] = self.from!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.onlineCnt != nil {
                map["OnlineCnt"] = self.onlineCnt!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.reviewingVersion != nil {
                map["ReviewingVersion"] = self.reviewingVersion!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.versions != nil {
                var tmp : [Any] = []
                for k in self.versions! {
                    tmp.append(k.toMap())
                }
                map["Versions"] = tmp
            }
            if self.writeable != nil {
                map["Writeable"] = self.writeable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizTags"] as? String {
                self.bizTags = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DownloadCount"] as? Int64 {
                self.downloadCount = value
            }
            if let value = dict["EditingVersion"] as? String {
                self.editingVersion = value
            }
            if let value = dict["Enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["From"] as? String {
                self.from = value
            }
            if let value = dict["Labels"] as? [String: String] {
                self.labels = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NamespaceId"] as? String {
                self.namespaceId = value
            }
            if let value = dict["OnlineCnt"] as? Int32 {
                self.onlineCnt = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["ReviewingVersion"] as? String {
                self.reviewingVersion = value
            }
            if let value = dict["Scope"] as? String {
                self.scope = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["Versions"] as? [Any?] {
                var tmp : [GetSkillDetailResponseBody.Data.Versions] = []
                for v in value {
                    if v != nil {
                        var model = GetSkillDetailResponseBody.Data.Versions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.versions = tmp
            }
            if let value = dict["Writeable"] as? Bool {
                self.writeable = value
            }
        }
    }
    public var data: GetSkillDetailResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetSkillDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetSkillDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSkillDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSkillDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSkillImportFileUrlRequest : Tea.TeaModel {
    public var contentType: String?

    public var namespaceId: String?

    public override init() {
        super.init()
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
            map["ContentType"] = self.contentType!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContentType"] as? String {
            self.contentType = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
    }
}

public class GetSkillImportFileUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var contentType: String?

        public var maxSize: String?

        public var ossObjectName: String?

        public var uploadUrl: String?

        public override init() {
            super.init()
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
                map["ContentType"] = self.contentType!
            }
            if self.maxSize != nil {
                map["MaxSize"] = self.maxSize!
            }
            if self.ossObjectName != nil {
                map["OssObjectName"] = self.ossObjectName!
            }
            if self.uploadUrl != nil {
                map["UploadUrl"] = self.uploadUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContentType"] as? String {
                self.contentType = value
            }
            if let value = dict["MaxSize"] as? String {
                self.maxSize = value
            }
            if let value = dict["OssObjectName"] as? String {
                self.ossObjectName = value
            }
            if let value = dict["UploadUrl"] as? String {
                self.uploadUrl = value
            }
        }
    }
    public var data: GetSkillImportFileUrlResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetSkillImportFileUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetSkillImportFileUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSkillImportFileUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSkillImportFileUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSkillVersionDetailRequest : Tea.TeaModel {
    public var namespaceId: String?

    public var skillName: String?

    public var skillVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        if self.skillVersion != nil {
            map["SkillVersion"] = self.skillVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
        if let value = dict["SkillVersion"] as? String {
            self.skillVersion = value
        }
    }
}

public class GetSkillVersionDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var namespaceId: String?

        public var resource: [String: DataResourceValue]?

        public var skillMd: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.resource != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.resource! {
                    tmp[k] = v.toMap()
                }
                map["Resource"] = tmp
            }
            if self.skillMd != nil {
                map["SkillMd"] = self.skillMd!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NamespaceId"] as? String {
                self.namespaceId = value
            }
            if let value = dict["Resource"] as? [String: Any?] {
                var tmp : [String: DataResourceValue] = [:]
                for (k, v) in value {
                    if v != nil {
                        var model = DataResourceValue()
                        model.fromMap(v as? [String: Any?])
                        tmp[k] = model
                    }
                }
                self.resource = tmp
            }
            if let value = dict["SkillMd"] as? String {
                self.skillMd = value
            }
        }
    }
    public var data: GetSkillVersionDetailResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetSkillVersionDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetSkillVersionDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSkillVersionDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSkillVersionDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNamespacesRequest : Tea.TeaModel {
    public var name: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var tags: String?

    public override init() {
        super.init()
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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
    }
}

public class ListNamespacesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var createdTime: String?

            public var description_: String?

            public var name: String?

            public var namespaceId: String?

            public var promptCount: Int32?

            public var skillCount: Int32?

            public var source: String?

            public var sourceIndex: Int32?

            public var tags: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.namespaceId != nil {
                    map["NamespaceId"] = self.namespaceId!
                }
                if self.promptCount != nil {
                    map["PromptCount"] = self.promptCount!
                }
                if self.skillCount != nil {
                    map["SkillCount"] = self.skillCount!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.sourceIndex != nil {
                    map["SourceIndex"] = self.sourceIndex!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreatedTime"] as? String {
                    self.createdTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NamespaceId"] as? String {
                    self.namespaceId = value
                }
                if let value = dict["PromptCount"] as? Int32 {
                    self.promptCount = value
                }
                if let value = dict["SkillCount"] as? Int32 {
                    self.skillCount = value
                }
                if let value = dict["Source"] as? String {
                    self.source = value
                }
                if let value = dict["SourceIndex"] as? Int32 {
                    self.sourceIndex = value
                }
                if let value = dict["Tags"] as? String {
                    self.tags = value
                }
            }
        }
        public var items: [ListNamespacesResponseBody.Data.Items]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [ListNamespacesResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = ListNamespacesResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: ListNamespacesResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListNamespacesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListNamespacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNamespacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNamespacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPromptVersionsRequest : Tea.TeaModel {
    public var namespaceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var promptKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.promptKey != nil {
            map["PromptKey"] = self.promptKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PromptKey"] as? String {
            self.promptKey = value
        }
    }
}

public class ListPromptVersionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageItems : Tea.TeaModel {
            public var commitMsg: String?

            public var gmtModified: Int64?

            public var promptKey: String?

            public var srcUser: String?

            public var status: String?

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
                if self.commitMsg != nil {
                    map["CommitMsg"] = self.commitMsg!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.promptKey != nil {
                    map["PromptKey"] = self.promptKey!
                }
                if self.srcUser != nil {
                    map["SrcUser"] = self.srcUser!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommitMsg"] as? String {
                    self.commitMsg = value
                }
                if let value = dict["GmtModified"] as? Int64 {
                    self.gmtModified = value
                }
                if let value = dict["PromptKey"] as? String {
                    self.promptKey = value
                }
                if let value = dict["SrcUser"] as? String {
                    self.srcUser = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var pageItems: [ListPromptVersionsResponseBody.Data.PageItems]?

        public var pageNumber: Int32?

        public var pagesAvailable: Int32?

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
            if self.pageItems != nil {
                var tmp : [Any] = []
                for k in self.pageItems! {
                    tmp.append(k.toMap())
                }
                map["PageItems"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pagesAvailable != nil {
                map["PagesAvailable"] = self.pagesAvailable!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageItems"] as? [Any?] {
                var tmp : [ListPromptVersionsResponseBody.Data.PageItems] = []
                for v in value {
                    if v != nil {
                        var model = ListPromptVersionsResponseBody.Data.PageItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageItems = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PagesAvailable"] as? Int32 {
                self.pagesAvailable = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: ListPromptVersionsResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListPromptVersionsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPromptVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPromptVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPromptVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPromptsRequest : Tea.TeaModel {
    public var bizTags: String?

    public var namespaceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var promptKey: String?

    public var search: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTags != nil {
            map["BizTags"] = self.bizTags!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.promptKey != nil {
            map["PromptKey"] = self.promptKey!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizTags"] as? String {
            self.bizTags = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PromptKey"] as? String {
            self.promptKey = value
        }
        if let value = dict["Search"] as? String {
            self.search = value
        }
    }
}

public class ListPromptsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageItems : Tea.TeaModel {
            public var bizTags: [String]?

            public var description_: String?

            public var editingVersion: String?

            public var gmtModified: Int64?

            public var labels: [String: String]?

            public var latestVersion: String?

            public var onlineCnt: Int32?

            public var promptKey: String?

            public var reviewingVersion: String?

            public var schemaVersion: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizTags != nil {
                    map["BizTags"] = self.bizTags!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.editingVersion != nil {
                    map["EditingVersion"] = self.editingVersion!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                if self.latestVersion != nil {
                    map["LatestVersion"] = self.latestVersion!
                }
                if self.onlineCnt != nil {
                    map["OnlineCnt"] = self.onlineCnt!
                }
                if self.promptKey != nil {
                    map["PromptKey"] = self.promptKey!
                }
                if self.reviewingVersion != nil {
                    map["ReviewingVersion"] = self.reviewingVersion!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BizTags"] as? [String] {
                    self.bizTags = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EditingVersion"] as? String {
                    self.editingVersion = value
                }
                if let value = dict["GmtModified"] as? Int64 {
                    self.gmtModified = value
                }
                if let value = dict["Labels"] as? [String: String] {
                    self.labels = value
                }
                if let value = dict["LatestVersion"] as? String {
                    self.latestVersion = value
                }
                if let value = dict["OnlineCnt"] as? Int32 {
                    self.onlineCnt = value
                }
                if let value = dict["PromptKey"] as? String {
                    self.promptKey = value
                }
                if let value = dict["ReviewingVersion"] as? String {
                    self.reviewingVersion = value
                }
                if let value = dict["SchemaVersion"] as? Int32 {
                    self.schemaVersion = value
                }
            }
        }
        public var pageItems: [ListPromptsResponseBody.Data.PageItems]?

        public var pageNumber: Int32?

        public var pagesAvailable: Int32?

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
            if self.pageItems != nil {
                var tmp : [Any] = []
                for k in self.pageItems! {
                    tmp.append(k.toMap())
                }
                map["PageItems"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pagesAvailable != nil {
                map["PagesAvailable"] = self.pagesAvailable!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageItems"] as? [Any?] {
                var tmp : [ListPromptsResponseBody.Data.PageItems] = []
                for v in value {
                    if v != nil {
                        var model = ListPromptsResponseBody.Data.PageItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageItems = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PagesAvailable"] as? Int32 {
                self.pagesAvailable = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: ListPromptsResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListPromptsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPromptsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPromptsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPromptsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSkillsRequest : Tea.TeaModel {
    public var namespaceId: String?

    public var orderBy: String?

    public var owner: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var scope: String?

    public var search: String?

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
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["Search"] as? String {
            self.search = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
    }
}

public class ListSkillsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageItems : Tea.TeaModel {
            public var bizTags: String?

            public var description_: String?

            public var downloadCount: Int64?

            public var editingVersion: String?

            public var enable: Bool?

            public var from: String?

            public var labels: [String: String]?

            public var name: String?

            public var namespaceId: String?

            public var onlineCnt: Int32?

            public var owner: String?

            public var reviewingVersion: String?

            public var scope: String?

            public var updateTime: Int64?

            public var writeable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizTags != nil {
                    map["BizTags"] = self.bizTags!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.downloadCount != nil {
                    map["DownloadCount"] = self.downloadCount!
                }
                if self.editingVersion != nil {
                    map["EditingVersion"] = self.editingVersion!
                }
                if self.enable != nil {
                    map["Enable"] = self.enable!
                }
                if self.from != nil {
                    map["From"] = self.from!
                }
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.namespaceId != nil {
                    map["NamespaceId"] = self.namespaceId!
                }
                if self.onlineCnt != nil {
                    map["OnlineCnt"] = self.onlineCnt!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.reviewingVersion != nil {
                    map["ReviewingVersion"] = self.reviewingVersion!
                }
                if self.scope != nil {
                    map["Scope"] = self.scope!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.writeable != nil {
                    map["Writeable"] = self.writeable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BizTags"] as? String {
                    self.bizTags = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DownloadCount"] as? Int64 {
                    self.downloadCount = value
                }
                if let value = dict["EditingVersion"] as? String {
                    self.editingVersion = value
                }
                if let value = dict["Enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["From"] as? String {
                    self.from = value
                }
                if let value = dict["Labels"] as? [String: String] {
                    self.labels = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NamespaceId"] as? String {
                    self.namespaceId = value
                }
                if let value = dict["OnlineCnt"] as? Int32 {
                    self.onlineCnt = value
                }
                if let value = dict["Owner"] as? String {
                    self.owner = value
                }
                if let value = dict["ReviewingVersion"] as? String {
                    self.reviewingVersion = value
                }
                if let value = dict["Scope"] as? String {
                    self.scope = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
                if let value = dict["Writeable"] as? Bool {
                    self.writeable = value
                }
            }
        }
        public var pageItems: [ListSkillsResponseBody.Data.PageItems]?

        public var pageNumber: Int32?

        public var pagesAvailable: Int32?

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
            if self.pageItems != nil {
                var tmp : [Any] = []
                for k in self.pageItems! {
                    tmp.append(k.toMap())
                }
                map["PageItems"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pagesAvailable != nil {
                map["PagesAvailable"] = self.pagesAvailable!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageItems"] as? [Any?] {
                var tmp : [ListSkillsResponseBody.Data.PageItems] = []
                for v in value {
                    if v != nil {
                        var model = ListSkillsResponseBody.Data.PageItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageItems = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PagesAvailable"] as? Int32 {
                self.pagesAvailable = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: ListSkillsResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListSkillsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

public class OfflineSkillRequest : Tea.TeaModel {
    public var namespaceId: String?

    public var scope: String?

    public var skillName: String?

    public var skillVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        if self.skillVersion != nil {
            map["SkillVersion"] = self.skillVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
        if let value = dict["SkillVersion"] as? String {
            self.skillVersion = value
        }
    }
}

public class OfflineSkillResponseBody : Tea.TeaModel {
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

public class OfflineSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OfflineSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OfflineSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OnlineSkillRequest : Tea.TeaModel {
    public var namespaceId: String?

    public var scope: String?

    public var skillName: String?

    public var skillVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        if self.skillVersion != nil {
            map["SkillVersion"] = self.skillVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
        if let value = dict["SkillVersion"] as? String {
            self.skillVersion = value
        }
    }
}

public class OnlineSkillResponseBody : Tea.TeaModel {
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

public class OnlineSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnlineSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OnlineSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PublishSkillVersionRequest : Tea.TeaModel {
    public var namespaceId: String?

    public var skillName: String?

    public var skillVersion: String?

    public var updateLatestLabel: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        if self.skillVersion != nil {
            map["SkillVersion"] = self.skillVersion!
        }
        if self.updateLatestLabel != nil {
            map["UpdateLatestLabel"] = self.updateLatestLabel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
        if let value = dict["SkillVersion"] as? String {
            self.skillVersion = value
        }
        if let value = dict["UpdateLatestLabel"] as? Bool {
            self.updateLatestLabel = value
        }
    }
}

public class PublishSkillVersionResponseBody : Tea.TeaModel {
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

public class PublishSkillVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishSkillVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PublishSkillVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitPromptVersionRequest : Tea.TeaModel {
    public var namespaceId: String?

    public var promptKey: String?

    public var promptVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.promptKey != nil {
            map["PromptKey"] = self.promptKey!
        }
        if self.promptVersion != nil {
            map["PromptVersion"] = self.promptVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["PromptKey"] as? String {
            self.promptKey = value
        }
        if let value = dict["PromptVersion"] as? String {
            self.promptVersion = value
        }
    }
}

public class SubmitPromptVersionResponseBody : Tea.TeaModel {
    public var data: String?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SubmitPromptVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitPromptVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitPromptVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitSkillVersionRequest : Tea.TeaModel {
    public var namespaceId: String?

    public var skillName: String?

    public var skillVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        if self.skillVersion != nil {
            map["SkillVersion"] = self.skillVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
        if let value = dict["SkillVersion"] as? String {
            self.skillVersion = value
        }
    }
}

public class SubmitSkillVersionResponseBody : Tea.TeaModel {
    public var data: String?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SubmitSkillVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitSkillVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitSkillVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateNamespaceRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var namespaceId: String?

    public var scanPolicy: String?

    public var tags: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.scanPolicy != nil {
            map["ScanPolicy"] = self.scanPolicy!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["ScanPolicy"] as? String {
            self.scanPolicy = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
    }
}

public class UpdateNamespaceResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePromptRequest : Tea.TeaModel {
    public var bizTags: [String]?

    public var description_: String?

    public var labels: [String: Any]?

    public var namespaceId: String?

    public var promptKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTags != nil {
            map["BizTags"] = self.bizTags!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.promptKey != nil {
            map["PromptKey"] = self.promptKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizTags"] as? [String] {
            self.bizTags = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Labels"] as? [String: Any] {
            self.labels = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["PromptKey"] as? String {
            self.promptKey = value
        }
    }
}

public class UpdatePromptShrinkRequest : Tea.TeaModel {
    public var bizTagsShrink: String?

    public var description_: String?

    public var labelsShrink: String?

    public var namespaceId: String?

    public var promptKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTagsShrink != nil {
            map["BizTags"] = self.bizTagsShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.labelsShrink != nil {
            map["Labels"] = self.labelsShrink!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.promptKey != nil {
            map["PromptKey"] = self.promptKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizTags"] as? String {
            self.bizTagsShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Labels"] as? String {
            self.labelsShrink = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["PromptKey"] as? String {
            self.promptKey = value
        }
    }
}

public class UpdatePromptResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdatePromptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePromptResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePromptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePromptVersionRequest : Tea.TeaModel {
    public var commitMsg: String?

    public var namespaceId: String?

    public var promptKey: String?

    public var template: String?

    public var variables: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commitMsg != nil {
            map["CommitMsg"] = self.commitMsg!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.promptKey != nil {
            map["PromptKey"] = self.promptKey!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        if self.variables != nil {
            map["Variables"] = self.variables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommitMsg"] as? String {
            self.commitMsg = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["PromptKey"] as? String {
            self.promptKey = value
        }
        if let value = dict["Template"] as? String {
            self.template = value
        }
        if let value = dict["Variables"] as? String {
            self.variables = value
        }
    }
}

public class UpdatePromptVersionResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdatePromptVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePromptVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePromptVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSkillBizTagsRequest : Tea.TeaModel {
    public var bizTags: String?

    public var namespaceId: String?

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
        if self.bizTags != nil {
            map["BizTags"] = self.bizTags!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizTags"] as? String {
            self.bizTags = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
    }
}

public class UpdateSkillBizTagsResponseBody : Tea.TeaModel {
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

public class UpdateSkillBizTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSkillBizTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateSkillBizTagsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSkillDraftRequest : Tea.TeaModel {
    public var commitMsg: String?

    public var namespaceId: String?

    public var skillCard: String?

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
        if self.commitMsg != nil {
            map["CommitMsg"] = self.commitMsg!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.skillCard != nil {
            map["SkillCard"] = self.skillCard!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommitMsg"] as? String {
            self.commitMsg = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["SkillCard"] as? String {
            self.skillCard = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
    }
}

public class UpdateSkillDraftResponseBody : Tea.TeaModel {
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

public class UpdateSkillDraftResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSkillDraftResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateSkillDraftResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSkillLabelsRequest : Tea.TeaModel {
    public var labels: String?

    public var namespaceId: String?

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
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
    }
}

public class UpdateSkillLabelsResponseBody : Tea.TeaModel {
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

public class UpdateSkillLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSkillLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateSkillLabelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSkillScopeRequest : Tea.TeaModel {
    public var namespaceId: String?

    public var scope: String?

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
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.skillName != nil {
            map["SkillName"] = self.skillName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["SkillName"] as? String {
            self.skillName = value
        }
    }
}

public class UpdateSkillScopeResponseBody : Tea.TeaModel {
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

public class UpdateSkillScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSkillScopeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateSkillScopeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UploadSkillViaOssRequest : Tea.TeaModel {
    public var commitMsg: String?

    public var namespaceId: String?

    public var ossObjectName: String?

    public var overwrite: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commitMsg != nil {
            map["CommitMsg"] = self.commitMsg!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.ossObjectName != nil {
            map["OssObjectName"] = self.ossObjectName!
        }
        if self.overwrite != nil {
            map["Overwrite"] = self.overwrite!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommitMsg"] as? String {
            self.commitMsg = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["OssObjectName"] as? String {
            self.ossObjectName = value
        }
        if let value = dict["Overwrite"] as? Bool {
            self.overwrite = value
        }
    }
}

public class UploadSkillViaOssResponseBody : Tea.TeaModel {
    public var data: String?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UploadSkillViaOssResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadSkillViaOssResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UploadSkillViaOssResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
