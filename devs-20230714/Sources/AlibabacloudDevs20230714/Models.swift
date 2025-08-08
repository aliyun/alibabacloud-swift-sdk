import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class APIKeyAuthParameter : Tea.TeaModel {
    public var encrypted: Bool?

    public var in_: String?

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
        if self.encrypted != nil {
            map["encrypted"] = self.encrypted!
        }
        if self.in_ != nil {
            map["in"] = self.in_!
        }
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
        if let value = dict["encrypted"] as? Bool {
            self.encrypted = value
        }
        if let value = dict["in"] as? String {
            self.in_ = value
        }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
    }
}

public class Artifact : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var generation: Int32?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var resourceVersion: Int32?

    public var spec: ArtifactSpec?

    public var status: ArtifactStatus?

    public var uid: String?

    public var updatedTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceVersion != nil {
            map["resourceVersion"] = self.resourceVersion!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        if self.updatedTime != nil {
            map["updatedTime"] = self.updatedTime!
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
        if let value = dict["generation"] as? Int32 {
            self.generation = value
        }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["resourceVersion"] as? Int32 {
            self.resourceVersion = value
        }
        if let value = dict["spec"] as? [String: Any?] {
            var model = ArtifactSpec()
            model.fromMap(value)
            self.spec = model
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = ArtifactStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
        if let value = dict["updatedTime"] as? String {
            self.updatedTime = value
        }
    }
}

public class ArtifactCode : Tea.TeaModel {
    public var checksum: String?

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
        if self.checksum != nil {
            map["checksum"] = self.checksum!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checksum"] as? String {
            self.checksum = value
        }
        if let value = dict["url"] as? String {
            self.url = value
        }
    }
}

public class ArtifactMeta : Tea.TeaModel {
    public var checksum: String?

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
        if self.checksum != nil {
            map["checksum"] = self.checksum!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checksum"] as? String {
            self.checksum = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class ArtifactSpec : Tea.TeaModel {
    public var runtime: String?

    public var type: String?

    public var uri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.runtime != nil {
            map["runtime"] = self.runtime!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.uri != nil {
            map["uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["runtime"] as? String {
            self.runtime = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["uri"] as? String {
            self.uri = value
        }
    }
}

public class ArtifactStatus : Tea.TeaModel {
    public var arn: String?

    public var checksum: String?

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
        if self.arn != nil {
            map["arn"] = self.arn!
        }
        if self.checksum != nil {
            map["checksum"] = self.checksum!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["arn"] as? String {
            self.arn = value
        }
        if let value = dict["checksum"] as? String {
            self.checksum = value
        }
        if let value = dict["size"] as? Int64 {
            self.size = value
        }
    }
}

public class ArtifactTempBucketToken : Tea.TeaModel {
    public class Credentials : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

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
                map["accessKeyId"] = self.accessKeyId!
            }
            if self.accessKeySecret != nil {
                map["accessKeySecret"] = self.accessKeySecret!
            }
            if self.securityToken != nil {
                map["securityToken"] = self.securityToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["accessKeySecret"] as? String {
                self.accessKeySecret = value
            }
            if let value = dict["securityToken"] as? String {
                self.securityToken = value
            }
        }
    }
    public var credentials: ArtifactTempBucketToken.Credentials?

    public var ossBucketName: String?

    public var ossObjectName: String?

    public var ossRegion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentials?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentials != nil {
            map["credentials"] = self.credentials?.toMap()
        }
        if self.ossBucketName != nil {
            map["ossBucketName"] = self.ossBucketName!
        }
        if self.ossObjectName != nil {
            map["ossObjectName"] = self.ossObjectName!
        }
        if self.ossRegion != nil {
            map["ossRegion"] = self.ossRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["credentials"] as? [String: Any?] {
            var model = ArtifactTempBucketToken.Credentials()
            model.fromMap(value)
            self.credentials = model
        }
        if let value = dict["ossBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["ossObjectName"] as? String {
            self.ossObjectName = value
        }
        if let value = dict["ossRegion"] as? String {
            self.ossRegion = value
        }
    }
}

public class Authorization : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var apiKeyParameter: APIKeyAuthParameter?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.apiKeyParameter?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiKeyParameter != nil {
                map["apiKeyParameter"] = self.apiKeyParameter?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["apiKeyParameter"] as? [String: Any?] {
                var model = APIKeyAuthParameter()
                model.fromMap(value)
                self.apiKeyParameter = model
            }
        }
    }
    public var parameters: Authorization.Parameters?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameters != nil {
            map["parameters"] = self.parameters?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["parameters"] as? [String: Any?] {
            var model = Authorization.Parameters()
            model.fromMap(value)
            self.parameters = model
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class BranchFilter : Tea.TeaModel {
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
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class BuildCacheConfig : Tea.TeaModel {
    public var keyPath: [String: Any]?

    public var paths: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyPath != nil {
            map["keyPath"] = self.keyPath!
        }
        if self.paths != nil {
            map["paths"] = self.paths!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyPath"] as? [String: Any] {
            self.keyPath = value
        }
        if let value = dict["paths"] as? [String] {
            self.paths = value
        }
    }
}

public class BuildConfig : Tea.TeaModel {
    public var default_: DefaultBuilderConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.default_?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.default_ != nil {
            map["default"] = self.default_?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["default"] as? [String: Any?] {
            var model = DefaultBuilderConfig()
            model.fromMap(value)
            self.default_ = model
        }
    }
}

public class Checkout : Tea.TeaModel {
    public var ref: String?

    public var remote: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ref != nil {
            map["ref"] = self.ref!
        }
        if self.remote != nil {
            map["remote"] = self.remote!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ref"] as? String {
            self.ref = value
        }
        if let value = dict["remote"] as? String {
            self.remote = value
        }
    }
}

public class CodeVersionReference : Tea.TeaModel {
    public var branch: String?

    public var commitID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.branch != nil {
            map["branch"] = self.branch!
        }
        if self.commitID != nil {
            map["commitID"] = self.commitID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["branch"] as? String {
            self.branch = value
        }
        if let value = dict["commitID"] as? String {
            self.commitID = value
        }
    }
}

public class Condition : Tea.TeaModel {
    public var expression: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expression != nil {
            map["expression"] = self.expression!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["expression"] as? String {
            self.expression = value
        }
    }
}

public class Connection : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var spec: ConnectionSpec?

    public var status: ConnectionStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
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
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["spec"] as? [String: Any?] {
            var model = ConnectionSpec()
            model.fromMap(value)
            self.spec = model
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = ConnectionStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class ConnectionSpec : Tea.TeaModel {
    public var account: GitAccount?

    public var gitlabConfig: GitLabConfig?

    public var platform: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.account?.validate()
        try self.gitlabConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["account"] = self.account?.toMap()
        }
        if self.gitlabConfig != nil {
            map["gitlabConfig"] = self.gitlabConfig?.toMap()
        }
        if self.platform != nil {
            map["platform"] = self.platform!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["account"] as? [String: Any?] {
            var model = GitAccount()
            model.fromMap(value)
            self.account = model
        }
        if let value = dict["gitlabConfig"] as? [String: Any?] {
            var model = GitLabConfig()
            model.fromMap(value)
            self.gitlabConfig = model
        }
        if let value = dict["platform"] as? String {
            self.platform = value
        }
    }
}

public class ConnectionStatus : Tea.TeaModel {
    public var installation: Installation?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.installation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.installation != nil {
            map["installation"] = self.installation?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["installation"] as? [String: Any?] {
            var model = Installation()
            model.fromMap(value)
            self.installation = model
        }
    }
}

public class Context : Tea.TeaModel {
    public var data: [String: Any]?

    public override init() {
        super.init()
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
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any] {
            self.data = value
        }
    }
}

public class ContextSchema : Tea.TeaModel {
    public var description_: String?

    public var hint: String?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.hint != nil {
            map["hint"] = self.hint!
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
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["hint"] as? String {
            self.hint = value
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

public class DefaultBuilderConfig : Tea.TeaModel {
    public var cache: BuildCacheConfig?

    public var languages: [String]?

    public var rootPath: String?

    public var steps: [Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cache?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cache != nil {
            map["cache"] = self.cache?.toMap()
        }
        if self.languages != nil {
            map["languages"] = self.languages!
        }
        if self.rootPath != nil {
            map["rootPath"] = self.rootPath!
        }
        if self.steps != nil {
            map["steps"] = self.steps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cache"] as? [String: Any?] {
            var model = BuildCacheConfig()
            model.fromMap(value)
            self.cache = model
        }
        if let value = dict["languages"] as? [String] {
            self.languages = value
        }
        if let value = dict["rootPath"] as? String {
            self.rootPath = value
        }
        if let value = dict["steps"] as? [Any] {
            self.steps = value
        }
    }
}

public class DeleteModelOutput : Tea.TeaModel {
    public var errCode: String?

    public var errMsg: String?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeployCustomContainerAsyncOutput : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMsg: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeployCustomContainerInput : Tea.TeaModel {
    public class AsyncInvokeConfig : Tea.TeaModel {
        public class DestinationConfig : Tea.TeaModel {
            public class OnFailure : Tea.TeaModel {
                public var destination: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.destination != nil {
                        map["destination"] = self.destination!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["destination"] as? String {
                        self.destination = value
                    }
                }
            }
            public class OnSuccess : Tea.TeaModel {
                public var destination: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.destination != nil {
                        map["destination"] = self.destination!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["destination"] as? String {
                        self.destination = value
                    }
                }
            }
            public var onFailure: DeployCustomContainerInput.AsyncInvokeConfig.DestinationConfig.OnFailure?

            public var onSuccess: DeployCustomContainerInput.AsyncInvokeConfig.DestinationConfig.OnSuccess?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.onFailure?.validate()
                try self.onSuccess?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.onFailure != nil {
                    map["onFailure"] = self.onFailure?.toMap()
                }
                if self.onSuccess != nil {
                    map["onSuccess"] = self.onSuccess?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["onFailure"] as? [String: Any?] {
                    var model = DeployCustomContainerInput.AsyncInvokeConfig.DestinationConfig.OnFailure()
                    model.fromMap(value)
                    self.onFailure = model
                }
                if let value = dict["onSuccess"] as? [String: Any?] {
                    var model = DeployCustomContainerInput.AsyncInvokeConfig.DestinationConfig.OnSuccess()
                    model.fromMap(value)
                    self.onSuccess = model
                }
            }
        }
        public var asyncTask: Bool?

        public var destinationConfig: DeployCustomContainerInput.AsyncInvokeConfig.DestinationConfig?

        public var maxAsyncEventAgeInSeconds: Int64?

        public var maxAsyncRetryAttempts: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.destinationConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asyncTask != nil {
                map["asyncTask"] = self.asyncTask!
            }
            if self.destinationConfig != nil {
                map["destinationConfig"] = self.destinationConfig?.toMap()
            }
            if self.maxAsyncEventAgeInSeconds != nil {
                map["maxAsyncEventAgeInSeconds"] = self.maxAsyncEventAgeInSeconds!
            }
            if self.maxAsyncRetryAttempts != nil {
                map["maxAsyncRetryAttempts"] = self.maxAsyncRetryAttempts!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["asyncTask"] as? Bool {
                self.asyncTask = value
            }
            if let value = dict["destinationConfig"] as? [String: Any?] {
                var model = DeployCustomContainerInput.AsyncInvokeConfig.DestinationConfig()
                model.fromMap(value)
                self.destinationConfig = model
            }
            if let value = dict["maxAsyncEventAgeInSeconds"] as? Int64 {
                self.maxAsyncEventAgeInSeconds = value
            }
            if let value = dict["maxAsyncRetryAttempts"] as? Int64 {
                self.maxAsyncRetryAttempts = value
            }
        }
    }
    public class ConcurrencyConfig : Tea.TeaModel {
        public var reservedConcurrency: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.reservedConcurrency != nil {
                map["reservedConcurrency"] = self.reservedConcurrency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["reservedConcurrency"] as? Int32 {
                self.reservedConcurrency = value
            }
        }
    }
    public class CustomContainerConfig : Tea.TeaModel {
        public class HealthCheckConfig : Tea.TeaModel {
            public var failureThreshold: Int32?

            public var httpGetUrl: String?

            public var initialDelaySeconds: Int32?

            public var periodSeconds: Int32?

            public var successThreshold: Int32?

            public var timeoutSeconds: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.failureThreshold != nil {
                    map["failureThreshold"] = self.failureThreshold!
                }
                if self.httpGetUrl != nil {
                    map["httpGetUrl"] = self.httpGetUrl!
                }
                if self.initialDelaySeconds != nil {
                    map["initialDelaySeconds"] = self.initialDelaySeconds!
                }
                if self.periodSeconds != nil {
                    map["periodSeconds"] = self.periodSeconds!
                }
                if self.successThreshold != nil {
                    map["successThreshold"] = self.successThreshold!
                }
                if self.timeoutSeconds != nil {
                    map["timeoutSeconds"] = self.timeoutSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["failureThreshold"] as? Int32 {
                    self.failureThreshold = value
                }
                if let value = dict["httpGetUrl"] as? String {
                    self.httpGetUrl = value
                }
                if let value = dict["initialDelaySeconds"] as? Int32 {
                    self.initialDelaySeconds = value
                }
                if let value = dict["periodSeconds"] as? Int32 {
                    self.periodSeconds = value
                }
                if let value = dict["successThreshold"] as? Int32 {
                    self.successThreshold = value
                }
                if let value = dict["timeoutSeconds"] as? Int64 {
                    self.timeoutSeconds = value
                }
            }
        }
        public class InstanceLifecycleConfig : Tea.TeaModel {
            public class Initializer : Tea.TeaModel {
                public var handler: String?

                public var timeout: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.handler != nil {
                        map["handler"] = self.handler!
                    }
                    if self.timeout != nil {
                        map["timeout"] = self.timeout!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["handler"] as? String {
                        self.handler = value
                    }
                    if let value = dict["timeout"] as? Int32 {
                        self.timeout = value
                    }
                }
            }
            public class PreStop : Tea.TeaModel {
                public var handler: String?

                public var timeout: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.handler != nil {
                        map["handler"] = self.handler!
                    }
                    if self.timeout != nil {
                        map["timeout"] = self.timeout!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["handler"] as? String {
                        self.handler = value
                    }
                    if let value = dict["timeout"] as? Int32 {
                        self.timeout = value
                    }
                }
            }
            public var initializer: DeployCustomContainerInput.CustomContainerConfig.InstanceLifecycleConfig.Initializer?

            public var preStop: DeployCustomContainerInput.CustomContainerConfig.InstanceLifecycleConfig.PreStop?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.initializer?.validate()
                try self.preStop?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.initializer != nil {
                    map["initializer"] = self.initializer?.toMap()
                }
                if self.preStop != nil {
                    map["preStop"] = self.preStop?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["initializer"] as? [String: Any?] {
                    var model = DeployCustomContainerInput.CustomContainerConfig.InstanceLifecycleConfig.Initializer()
                    model.fromMap(value)
                    self.initializer = model
                }
                if let value = dict["preStop"] as? [String: Any?] {
                    var model = DeployCustomContainerInput.CustomContainerConfig.InstanceLifecycleConfig.PreStop()
                    model.fromMap(value)
                    self.preStop = model
                }
            }
        }
        public var command: [String]?

        public var entrypoint: [String]?

        public var healthCheckConfig: DeployCustomContainerInput.CustomContainerConfig.HealthCheckConfig?

        public var image: String?

        public var instanceConcurrency: Int32?

        public var instanceLifecycleConfig: DeployCustomContainerInput.CustomContainerConfig.InstanceLifecycleConfig?

        public var port: Int32?

        public var role: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.healthCheckConfig?.validate()
            try self.instanceLifecycleConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.command != nil {
                map["command"] = self.command!
            }
            if self.entrypoint != nil {
                map["entrypoint"] = self.entrypoint!
            }
            if self.healthCheckConfig != nil {
                map["healthCheckConfig"] = self.healthCheckConfig?.toMap()
            }
            if self.image != nil {
                map["image"] = self.image!
            }
            if self.instanceConcurrency != nil {
                map["instanceConcurrency"] = self.instanceConcurrency!
            }
            if self.instanceLifecycleConfig != nil {
                map["instanceLifecycleConfig"] = self.instanceLifecycleConfig?.toMap()
            }
            if self.port != nil {
                map["port"] = self.port!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["command"] as? [String] {
                self.command = value
            }
            if let value = dict["entrypoint"] as? [String] {
                self.entrypoint = value
            }
            if let value = dict["healthCheckConfig"] as? [String: Any?] {
                var model = DeployCustomContainerInput.CustomContainerConfig.HealthCheckConfig()
                model.fromMap(value)
                self.healthCheckConfig = model
            }
            if let value = dict["image"] as? String {
                self.image = value
            }
            if let value = dict["instanceConcurrency"] as? Int32 {
                self.instanceConcurrency = value
            }
            if let value = dict["instanceLifecycleConfig"] as? [String: Any?] {
                var model = DeployCustomContainerInput.CustomContainerConfig.InstanceLifecycleConfig()
                model.fromMap(value)
                self.instanceLifecycleConfig = model
            }
            if let value = dict["port"] as? Int32 {
                self.port = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public class FeatureGates : Tea.TeaModel {
        public var asyncProvisionCheck: Bool?

        public var disableRollbackOnProvisionFailure: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asyncProvisionCheck != nil {
                map["asyncProvisionCheck"] = self.asyncProvisionCheck!
            }
            if self.disableRollbackOnProvisionFailure != nil {
                map["disableRollbackOnProvisionFailure"] = self.disableRollbackOnProvisionFailure!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["asyncProvisionCheck"] as? Bool {
                self.asyncProvisionCheck = value
            }
            if let value = dict["disableRollbackOnProvisionFailure"] as? Bool {
                self.disableRollbackOnProvisionFailure = value
            }
        }
    }
    public class GpuConfig : Tea.TeaModel {
        public var gpuMemorySize: Int64?

        public var gpuType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gpuMemorySize != nil {
                map["gpuMemorySize"] = self.gpuMemorySize!
            }
            if self.gpuType != nil {
                map["gpuType"] = self.gpuType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gpuMemorySize"] as? Int64 {
                self.gpuMemorySize = value
            }
            if let value = dict["gpuType"] as? String {
                self.gpuType = value
            }
        }
    }
    public class HttpTrigger : Tea.TeaModel {
        public class TriggerConfig : Tea.TeaModel {
            public var authConfig: String?

            public var authType: String?

            public var disableURLInternet: Bool?

            public var dsableURLInternet: Bool?

            public var methods: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authConfig != nil {
                    map["authConfig"] = self.authConfig!
                }
                if self.authType != nil {
                    map["authType"] = self.authType!
                }
                if self.disableURLInternet != nil {
                    map["disableURLInternet"] = self.disableURLInternet!
                }
                if self.dsableURLInternet != nil {
                    map["dsableURLInternet"] = self.dsableURLInternet!
                }
                if self.methods != nil {
                    map["methods"] = self.methods!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["authConfig"] as? String {
                    self.authConfig = value
                }
                if let value = dict["authType"] as? String {
                    self.authType = value
                }
                if let value = dict["disableURLInternet"] as? Bool {
                    self.disableURLInternet = value
                }
                if let value = dict["dsableURLInternet"] as? Bool {
                    self.dsableURLInternet = value
                }
                if let value = dict["methods"] as? [String] {
                    self.methods = value
                }
            }
        }
        public var qualifier: String?

        public var triggerConfig: DeployCustomContainerInput.HttpTrigger.TriggerConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.triggerConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.qualifier != nil {
                map["qualifier"] = self.qualifier!
            }
            if self.triggerConfig != nil {
                map["triggerConfig"] = self.triggerConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["qualifier"] as? String {
                self.qualifier = value
            }
            if let value = dict["triggerConfig"] as? [String: Any?] {
                var model = DeployCustomContainerInput.HttpTrigger.TriggerConfig()
                model.fromMap(value)
                self.triggerConfig = model
            }
        }
    }
    public class LogConfig : Tea.TeaModel {
        public var enableInstanceMetrics: Bool?

        public var enableRequestMetrics: Bool?

        public var logBeginRule: String?

        public var logstore: String?

        public var project: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableInstanceMetrics != nil {
                map["enableInstanceMetrics"] = self.enableInstanceMetrics!
            }
            if self.enableRequestMetrics != nil {
                map["enableRequestMetrics"] = self.enableRequestMetrics!
            }
            if self.logBeginRule != nil {
                map["logBeginRule"] = self.logBeginRule!
            }
            if self.logstore != nil {
                map["logstore"] = self.logstore!
            }
            if self.project != nil {
                map["project"] = self.project!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enableInstanceMetrics"] as? Bool {
                self.enableInstanceMetrics = value
            }
            if let value = dict["enableRequestMetrics"] as? Bool {
                self.enableRequestMetrics = value
            }
            if let value = dict["logBeginRule"] as? String {
                self.logBeginRule = value
            }
            if let value = dict["logstore"] as? String {
                self.logstore = value
            }
            if let value = dict["project"] as? String {
                self.project = value
            }
        }
    }
    public class ModelConfig : Tea.TeaModel {
        public var framework: String?

        public var multiModelConfig: [ModelConfig]?

        public var prefix_: String?

        public var skipDownload: Bool?

        public var sourceType: String?

        public var srcModelScopeModelID: String?

        public var srcModelScopeModelRevision: String?

        public var srcModelScopeToken: String?

        public var srcOssBucket: String?

        public var srcOssPath: String?

        public var srcOssRegion: String?

        public var syncStrategy: String?

        public var withPPU: Bool?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.framework != nil {
                map["framework"] = self.framework!
            }
            if self.multiModelConfig != nil {
                var tmp : [Any] = []
                for k in self.multiModelConfig! {
                    tmp.append(k.toMap())
                }
                map["multiModelConfig"] = tmp
            }
            if self.prefix_ != nil {
                map["prefix"] = self.prefix_!
            }
            if self.skipDownload != nil {
                map["skipDownload"] = self.skipDownload!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            if self.srcModelScopeModelID != nil {
                map["srcModelScopeModelID"] = self.srcModelScopeModelID!
            }
            if self.srcModelScopeModelRevision != nil {
                map["srcModelScopeModelRevision"] = self.srcModelScopeModelRevision!
            }
            if self.srcModelScopeToken != nil {
                map["srcModelScopeToken"] = self.srcModelScopeToken!
            }
            if self.srcOssBucket != nil {
                map["srcOssBucket"] = self.srcOssBucket!
            }
            if self.srcOssPath != nil {
                map["srcOssPath"] = self.srcOssPath!
            }
            if self.srcOssRegion != nil {
                map["srcOssRegion"] = self.srcOssRegion!
            }
            if self.syncStrategy != nil {
                map["syncStrategy"] = self.syncStrategy!
            }
            if self.withPPU != nil {
                map["withPPU"] = self.withPPU!
            }
            if self.workingDir != nil {
                map["workingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["framework"] as? String {
                self.framework = value
            }
            if let value = dict["multiModelConfig"] as? [Any?] {
                var tmp : [ModelConfig] = []
                for v in value {
                    if v != nil {
                        var model = ModelConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.multiModelConfig = tmp
            }
            if let value = dict["prefix"] as? String {
                self.prefix_ = value
            }
            if let value = dict["skipDownload"] as? Bool {
                self.skipDownload = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["srcModelScopeModelID"] as? String {
                self.srcModelScopeModelID = value
            }
            if let value = dict["srcModelScopeModelRevision"] as? String {
                self.srcModelScopeModelRevision = value
            }
            if let value = dict["srcModelScopeToken"] as? String {
                self.srcModelScopeToken = value
            }
            if let value = dict["srcOssBucket"] as? String {
                self.srcOssBucket = value
            }
            if let value = dict["srcOssPath"] as? String {
                self.srcOssPath = value
            }
            if let value = dict["srcOssRegion"] as? String {
                self.srcOssRegion = value
            }
            if let value = dict["syncStrategy"] as? String {
                self.syncStrategy = value
            }
            if let value = dict["withPPU"] as? Bool {
                self.withPPU = value
            }
            if let value = dict["workingDir"] as? String {
                self.workingDir = value
            }
        }
    }
    public class NasConfig : Tea.TeaModel {
        public var groupId: Int64?

        public var mountPoints: [String]?

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
            if self.groupId != nil {
                map["groupId"] = self.groupId!
            }
            if self.mountPoints != nil {
                map["mountPoints"] = self.mountPoints!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["groupId"] as? Int64 {
                self.groupId = value
            }
            if let value = dict["mountPoints"] as? [String] {
                self.mountPoints = value
            }
            if let value = dict["userId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public class OssMountConfig : Tea.TeaModel {
        public class MountPoints : Tea.TeaModel {
            public var bucketName: String?

            public var bucketPath: String?

            public var endpoint: String?

            public var mountDir: String?

            public var readOnly: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bucketName != nil {
                    map["bucketName"] = self.bucketName!
                }
                if self.bucketPath != nil {
                    map["bucketPath"] = self.bucketPath!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.mountDir != nil {
                    map["mountDir"] = self.mountDir!
                }
                if self.readOnly != nil {
                    map["readOnly"] = self.readOnly!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bucketName"] as? String {
                    self.bucketName = value
                }
                if let value = dict["bucketPath"] as? String {
                    self.bucketPath = value
                }
                if let value = dict["endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["mountDir"] as? String {
                    self.mountDir = value
                }
                if let value = dict["readOnly"] as? Bool {
                    self.readOnly = value
                }
            }
        }
        public var mountPoints: [DeployCustomContainerInput.OssMountConfig.MountPoints]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mountPoints != nil {
                var tmp : [Any] = []
                for k in self.mountPoints! {
                    tmp.append(k.toMap())
                }
                map["mountPoints"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mountPoints"] as? [Any?] {
                var tmp : [DeployCustomContainerInput.OssMountConfig.MountPoints] = []
                for v in value {
                    if v != nil {
                        var model = DeployCustomContainerInput.OssMountConfig.MountPoints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mountPoints = tmp
            }
        }
    }
    public class ProvisionConfig : Tea.TeaModel {
        public class ScheduledActions : Tea.TeaModel {
            public var endTime: String?

            public var name: String?

            public var scheduleExpression: String?

            public var startTime: String?

            public var target: Int32?

            public var timeZone: String?

            public override init() {
                super.init()
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
                    map["endTime"] = self.endTime!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.scheduleExpression != nil {
                    map["scheduleExpression"] = self.scheduleExpression!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                if self.target != nil {
                    map["target"] = self.target!
                }
                if self.timeZone != nil {
                    map["timeZone"] = self.timeZone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["endTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["scheduleExpression"] as? String {
                    self.scheduleExpression = value
                }
                if let value = dict["startTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["target"] as? Int32 {
                    self.target = value
                }
                if let value = dict["timeZone"] as? String {
                    self.timeZone = value
                }
            }
        }
        public var alwaysAllocateGPU: Bool?

        public var scheduledActions: [DeployCustomContainerInput.ProvisionConfig.ScheduledActions]?

        public var target: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alwaysAllocateGPU != nil {
                map["alwaysAllocateGPU"] = self.alwaysAllocateGPU!
            }
            if self.scheduledActions != nil {
                var tmp : [Any] = []
                for k in self.scheduledActions! {
                    tmp.append(k.toMap())
                }
                map["scheduledActions"] = tmp
            }
            if self.target != nil {
                map["target"] = self.target!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alwaysAllocateGPU"] as? Bool {
                self.alwaysAllocateGPU = value
            }
            if let value = dict["scheduledActions"] as? [Any?] {
                var tmp : [DeployCustomContainerInput.ProvisionConfig.ScheduledActions] = []
                for v in value {
                    if v != nil {
                        var model = DeployCustomContainerInput.ProvisionConfig.ScheduledActions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scheduledActions = tmp
            }
            if let value = dict["target"] as? Int64 {
                self.target = value
            }
        }
    }
    public class VpcConfig : Tea.TeaModel {
        public var securityGroupId: String?

        public var vSwitchIds: [String]?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchIds != nil {
                map["vSwitchIds"] = self.vSwitchIds!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["securityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["vSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["vpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accountID: String?

    public var asyncInvokeConfig: DeployCustomContainerInput.AsyncInvokeConfig?

    public var concurrencyConfig: DeployCustomContainerInput.ConcurrencyConfig?

    public var cpu: Double?

    public var customContainerConfig: DeployCustomContainerInput.CustomContainerConfig?

    public var description_: String?

    public var diskSize: Int32?

    public var envName: String?

    public var environmentVariables: [String: Any]?

    public var featureGates: DeployCustomContainerInput.FeatureGates?

    public var gpuConfig: DeployCustomContainerInput.GpuConfig?

    public var httpTrigger: DeployCustomContainerInput.HttpTrigger?

    public var logConfig: DeployCustomContainerInput.LogConfig?

    public var memorySize: Int32?

    public var modelConfig: DeployCustomContainerInput.ModelConfig?

    public var name: String?

    public var nasConfig: DeployCustomContainerInput.NasConfig?

    public var originalName: String?

    public var ossMountConfig: DeployCustomContainerInput.OssMountConfig?

    public var projectName: String?

    public var provisionConfig: DeployCustomContainerInput.ProvisionConfig?

    public var region: String?

    public var reportStatusURL: String?

    public var role: String?

    public var timeout: Int32?

    public var traceId: String?

    public var vpcConfig: DeployCustomContainerInput.VpcConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.asyncInvokeConfig?.validate()
        try self.concurrencyConfig?.validate()
        try self.customContainerConfig?.validate()
        try self.featureGates?.validate()
        try self.gpuConfig?.validate()
        try self.httpTrigger?.validate()
        try self.logConfig?.validate()
        try self.modelConfig?.validate()
        try self.nasConfig?.validate()
        try self.ossMountConfig?.validate()
        try self.provisionConfig?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountID != nil {
            map["accountID"] = self.accountID!
        }
        if self.asyncInvokeConfig != nil {
            map["asyncInvokeConfig"] = self.asyncInvokeConfig?.toMap()
        }
        if self.concurrencyConfig != nil {
            map["concurrencyConfig"] = self.concurrencyConfig?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.customContainerConfig != nil {
            map["customContainerConfig"] = self.customContainerConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.diskSize != nil {
            map["diskSize"] = self.diskSize!
        }
        if self.envName != nil {
            map["envName"] = self.envName!
        }
        if self.environmentVariables != nil {
            map["environmentVariables"] = self.environmentVariables!
        }
        if self.featureGates != nil {
            map["featureGates"] = self.featureGates?.toMap()
        }
        if self.gpuConfig != nil {
            map["gpuConfig"] = self.gpuConfig?.toMap()
        }
        if self.httpTrigger != nil {
            map["httpTrigger"] = self.httpTrigger?.toMap()
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.modelConfig != nil {
            map["modelConfig"] = self.modelConfig?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nasConfig != nil {
            map["nasConfig"] = self.nasConfig?.toMap()
        }
        if self.originalName != nil {
            map["originalName"] = self.originalName!
        }
        if self.ossMountConfig != nil {
            map["ossMountConfig"] = self.ossMountConfig?.toMap()
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.provisionConfig != nil {
            map["provisionConfig"] = self.provisionConfig?.toMap()
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.reportStatusURL != nil {
            map["reportStatusURL"] = self.reportStatusURL!
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountID"] as? String {
            self.accountID = value
        }
        if let value = dict["asyncInvokeConfig"] as? [String: Any?] {
            var model = DeployCustomContainerInput.AsyncInvokeConfig()
            model.fromMap(value)
            self.asyncInvokeConfig = model
        }
        if let value = dict["concurrencyConfig"] as? [String: Any?] {
            var model = DeployCustomContainerInput.ConcurrencyConfig()
            model.fromMap(value)
            self.concurrencyConfig = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["customContainerConfig"] as? [String: Any?] {
            var model = DeployCustomContainerInput.CustomContainerConfig()
            model.fromMap(value)
            self.customContainerConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["diskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["envName"] as? String {
            self.envName = value
        }
        if let value = dict["environmentVariables"] as? [String: Any] {
            self.environmentVariables = value
        }
        if let value = dict["featureGates"] as? [String: Any?] {
            var model = DeployCustomContainerInput.FeatureGates()
            model.fromMap(value)
            self.featureGates = model
        }
        if let value = dict["gpuConfig"] as? [String: Any?] {
            var model = DeployCustomContainerInput.GpuConfig()
            model.fromMap(value)
            self.gpuConfig = model
        }
        if let value = dict["httpTrigger"] as? [String: Any?] {
            var model = DeployCustomContainerInput.HttpTrigger()
            model.fromMap(value)
            self.httpTrigger = model
        }
        if let value = dict["logConfig"] as? [String: Any?] {
            var model = DeployCustomContainerInput.LogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["memorySize"] as? Int32 {
            self.memorySize = value
        }
        if let value = dict["modelConfig"] as? [String: Any?] {
            var model = DeployCustomContainerInput.ModelConfig()
            model.fromMap(value)
            self.modelConfig = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nasConfig"] as? [String: Any?] {
            var model = DeployCustomContainerInput.NasConfig()
            model.fromMap(value)
            self.nasConfig = model
        }
        if let value = dict["originalName"] as? String {
            self.originalName = value
        }
        if let value = dict["ossMountConfig"] as? [String: Any?] {
            var model = DeployCustomContainerInput.OssMountConfig()
            model.fromMap(value)
            self.ossMountConfig = model
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["provisionConfig"] as? [String: Any?] {
            var model = DeployCustomContainerInput.ProvisionConfig()
            model.fromMap(value)
            self.provisionConfig = model
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["reportStatusURL"] as? String {
            self.reportStatusURL = value
        }
        if let value = dict["role"] as? String {
            self.role = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
        if let value = dict["vpcConfig"] as? [String: Any?] {
            var model = DeployCustomContainerInput.VpcConfig()
            model.fromMap(value)
            self.vpcConfig = model
        }
    }
}

public class DeployCustomContainerOutput : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deploymentTaskID: String?

        public var errorMessage: String?

        public var finished: Bool?

        public var nasConfigStr: String?

        public var serviceName: String?

        public var traceID: String?

        public var urlInternet: String?

        public var urlIntranet: String?

        public var vpcConfigStr: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deploymentTaskID != nil {
                map["deploymentTaskID"] = self.deploymentTaskID!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.finished != nil {
                map["finished"] = self.finished!
            }
            if self.nasConfigStr != nil {
                map["nasConfigStr"] = self.nasConfigStr!
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
            }
            if self.traceID != nil {
                map["traceID"] = self.traceID!
            }
            if self.urlInternet != nil {
                map["urlInternet"] = self.urlInternet!
            }
            if self.urlIntranet != nil {
                map["urlIntranet"] = self.urlIntranet!
            }
            if self.vpcConfigStr != nil {
                map["vpcConfigStr"] = self.vpcConfigStr!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deploymentTaskID"] as? String {
                self.deploymentTaskID = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["finished"] as? Bool {
                self.finished = value
            }
            if let value = dict["nasConfigStr"] as? String {
                self.nasConfigStr = value
            }
            if let value = dict["serviceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["traceID"] as? String {
                self.traceID = value
            }
            if let value = dict["urlInternet"] as? String {
                self.urlInternet = value
            }
            if let value = dict["urlIntranet"] as? String {
                self.urlIntranet = value
            }
            if let value = dict["vpcConfigStr"] as? String {
                self.vpcConfigStr = value
            }
        }
    }
    public var data: DeployCustomContainerOutput.Data?

    public var errCode: String?

    public var errMsg: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeployCustomContainerOutput.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeployEnvironmentOptions : Tea.TeaModel {
    public var services: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.services != nil {
            map["services"] = self.services!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["services"] as? [String] {
            self.services = value
        }
    }
}

public class DeployHuggingFaceModelAsyncOutput : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMsg: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeployHuggingFaceModelInput : Tea.TeaModel {
    public class ConcurrencyConfig : Tea.TeaModel {
        public var reservedConcurrency: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.reservedConcurrency != nil {
                map["reservedConcurrency"] = self.reservedConcurrency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["reservedConcurrency"] as? Int32 {
                self.reservedConcurrency = value
            }
        }
    }
    public class FeatureGates : Tea.TeaModel {
        public var asyncProvisionCheck: Bool?

        public var disableRollbackOnProvisionFailure: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asyncProvisionCheck != nil {
                map["asyncProvisionCheck"] = self.asyncProvisionCheck!
            }
            if self.disableRollbackOnProvisionFailure != nil {
                map["disableRollbackOnProvisionFailure"] = self.disableRollbackOnProvisionFailure!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["asyncProvisionCheck"] as? Bool {
                self.asyncProvisionCheck = value
            }
            if let value = dict["disableRollbackOnProvisionFailure"] as? Bool {
                self.disableRollbackOnProvisionFailure = value
            }
        }
    }
    public class GpuConfig : Tea.TeaModel {
        public var gpuMemorySize: Int32?

        public var gpuType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gpuMemorySize != nil {
                map["gpuMemorySize"] = self.gpuMemorySize!
            }
            if self.gpuType != nil {
                map["gpuType"] = self.gpuType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gpuMemorySize"] as? Int32 {
                self.gpuMemorySize = value
            }
            if let value = dict["gpuType"] as? String {
                self.gpuType = value
            }
        }
    }
    public class HttpTrigger : Tea.TeaModel {
        public class TriggerConfig : Tea.TeaModel {
            public var authConfig: String?

            public var authType: String?

            public var disableURLInternet: Bool?

            public var dsableURLInternet: Bool?

            public var methods: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authConfig != nil {
                    map["authConfig"] = self.authConfig!
                }
                if self.authType != nil {
                    map["authType"] = self.authType!
                }
                if self.disableURLInternet != nil {
                    map["disableURLInternet"] = self.disableURLInternet!
                }
                if self.dsableURLInternet != nil {
                    map["dsableURLInternet"] = self.dsableURLInternet!
                }
                if self.methods != nil {
                    map["methods"] = self.methods!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["authConfig"] as? String {
                    self.authConfig = value
                }
                if let value = dict["authType"] as? String {
                    self.authType = value
                }
                if let value = dict["disableURLInternet"] as? Bool {
                    self.disableURLInternet = value
                }
                if let value = dict["dsableURLInternet"] as? Bool {
                    self.dsableURLInternet = value
                }
                if let value = dict["methods"] as? [String] {
                    self.methods = value
                }
            }
        }
        public var qualifier: String?

        public var triggerConfig: DeployHuggingFaceModelInput.HttpTrigger.TriggerConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.triggerConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.qualifier != nil {
                map["qualifier"] = self.qualifier!
            }
            if self.triggerConfig != nil {
                map["triggerConfig"] = self.triggerConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["qualifier"] as? String {
                self.qualifier = value
            }
            if let value = dict["triggerConfig"] as? [String: Any?] {
                var model = DeployHuggingFaceModelInput.HttpTrigger.TriggerConfig()
                model.fromMap(value)
                self.triggerConfig = model
            }
        }
    }
    public class LogConfig : Tea.TeaModel {
        public var enableInstanceMetrics: Bool?

        public var enableRequestMetrics: Bool?

        public var logBeginRule: String?

        public var logstore: String?

        public var project: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableInstanceMetrics != nil {
                map["enableInstanceMetrics"] = self.enableInstanceMetrics!
            }
            if self.enableRequestMetrics != nil {
                map["enableRequestMetrics"] = self.enableRequestMetrics!
            }
            if self.logBeginRule != nil {
                map["logBeginRule"] = self.logBeginRule!
            }
            if self.logstore != nil {
                map["logstore"] = self.logstore!
            }
            if self.project != nil {
                map["project"] = self.project!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enableInstanceMetrics"] as? Bool {
                self.enableInstanceMetrics = value
            }
            if let value = dict["enableRequestMetrics"] as? Bool {
                self.enableRequestMetrics = value
            }
            if let value = dict["logBeginRule"] as? String {
                self.logBeginRule = value
            }
            if let value = dict["logstore"] as? String {
                self.logstore = value
            }
            if let value = dict["project"] as? String {
                self.project = value
            }
        }
    }
    public class ModelConfig : Tea.TeaModel {
        public class FmkHuggingFaceConfig : Tea.TeaModel {
            public var framework: String?

            public var task: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.framework != nil {
                    map["framework"] = self.framework!
                }
                if self.task != nil {
                    map["task"] = self.task!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["framework"] as? String {
                    self.framework = value
                }
                if let value = dict["task"] as? String {
                    self.task = value
                }
            }
        }
        public var fmkHuggingFaceConfig: DeployHuggingFaceModelInput.ModelConfig.FmkHuggingFaceConfig?

        public var framework: String?

        public var multiModelConfig: [ModelConfig]?

        public var prefix_: String?

        public var skipDownload: Bool?

        public var sourceType: String?

        public var srcModelScopeModelID: String?

        public var srcModelScopeModelRevision: String?

        public var srcModelScopeToken: String?

        public var srcOssBucket: String?

        public var srcOssPath: String?

        public var srcOssRegion: String?

        public var syncStrategy: String?

        public var withPPU: Bool?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.fmkHuggingFaceConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fmkHuggingFaceConfig != nil {
                map["fmkHuggingFaceConfig"] = self.fmkHuggingFaceConfig?.toMap()
            }
            if self.framework != nil {
                map["framework"] = self.framework!
            }
            if self.multiModelConfig != nil {
                var tmp : [Any] = []
                for k in self.multiModelConfig! {
                    tmp.append(k.toMap())
                }
                map["multiModelConfig"] = tmp
            }
            if self.prefix_ != nil {
                map["prefix"] = self.prefix_!
            }
            if self.skipDownload != nil {
                map["skipDownload"] = self.skipDownload!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            if self.srcModelScopeModelID != nil {
                map["srcModelScopeModelID"] = self.srcModelScopeModelID!
            }
            if self.srcModelScopeModelRevision != nil {
                map["srcModelScopeModelRevision"] = self.srcModelScopeModelRevision!
            }
            if self.srcModelScopeToken != nil {
                map["srcModelScopeToken"] = self.srcModelScopeToken!
            }
            if self.srcOssBucket != nil {
                map["srcOssBucket"] = self.srcOssBucket!
            }
            if self.srcOssPath != nil {
                map["srcOssPath"] = self.srcOssPath!
            }
            if self.srcOssRegion != nil {
                map["srcOssRegion"] = self.srcOssRegion!
            }
            if self.syncStrategy != nil {
                map["syncStrategy"] = self.syncStrategy!
            }
            if self.withPPU != nil {
                map["withPPU"] = self.withPPU!
            }
            if self.workingDir != nil {
                map["workingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fmkHuggingFaceConfig"] as? [String: Any?] {
                var model = DeployHuggingFaceModelInput.ModelConfig.FmkHuggingFaceConfig()
                model.fromMap(value)
                self.fmkHuggingFaceConfig = model
            }
            if let value = dict["framework"] as? String {
                self.framework = value
            }
            if let value = dict["multiModelConfig"] as? [Any?] {
                var tmp : [ModelConfig] = []
                for v in value {
                    if v != nil {
                        var model = ModelConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.multiModelConfig = tmp
            }
            if let value = dict["prefix"] as? String {
                self.prefix_ = value
            }
            if let value = dict["skipDownload"] as? Bool {
                self.skipDownload = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["srcModelScopeModelID"] as? String {
                self.srcModelScopeModelID = value
            }
            if let value = dict["srcModelScopeModelRevision"] as? String {
                self.srcModelScopeModelRevision = value
            }
            if let value = dict["srcModelScopeToken"] as? String {
                self.srcModelScopeToken = value
            }
            if let value = dict["srcOssBucket"] as? String {
                self.srcOssBucket = value
            }
            if let value = dict["srcOssPath"] as? String {
                self.srcOssPath = value
            }
            if let value = dict["srcOssRegion"] as? String {
                self.srcOssRegion = value
            }
            if let value = dict["syncStrategy"] as? String {
                self.syncStrategy = value
            }
            if let value = dict["withPPU"] as? Bool {
                self.withPPU = value
            }
            if let value = dict["workingDir"] as? String {
                self.workingDir = value
            }
        }
    }
    public class NasConfig : Tea.TeaModel {
        public var groupId: Int32?

        public var mountPoints: [String]?

        public var userId: Int32?

        public override init() {
            super.init()
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
                map["groupId"] = self.groupId!
            }
            if self.mountPoints != nil {
                map["mountPoints"] = self.mountPoints!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["groupId"] as? Int32 {
                self.groupId = value
            }
            if let value = dict["mountPoints"] as? [String] {
                self.mountPoints = value
            }
            if let value = dict["userId"] as? Int32 {
                self.userId = value
            }
        }
    }
    public class ProvisionConfig : Tea.TeaModel {
        public class ScheduledActions : Tea.TeaModel {
            public var endTime: String?

            public var name: String?

            public var scheduleExpression: String?

            public var startTime: String?

            public var target: Int32?

            public var timeZone: String?

            public override init() {
                super.init()
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
                    map["endTime"] = self.endTime!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.scheduleExpression != nil {
                    map["scheduleExpression"] = self.scheduleExpression!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                if self.target != nil {
                    map["target"] = self.target!
                }
                if self.timeZone != nil {
                    map["timeZone"] = self.timeZone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["endTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["scheduleExpression"] as? String {
                    self.scheduleExpression = value
                }
                if let value = dict["startTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["target"] as? Int32 {
                    self.target = value
                }
                if let value = dict["timeZone"] as? String {
                    self.timeZone = value
                }
            }
        }
        public var alwaysAllocateGPU: Bool?

        public var scheduledActions: [DeployHuggingFaceModelInput.ProvisionConfig.ScheduledActions]?

        public var target: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alwaysAllocateGPU != nil {
                map["alwaysAllocateGPU"] = self.alwaysAllocateGPU!
            }
            if self.scheduledActions != nil {
                var tmp : [Any] = []
                for k in self.scheduledActions! {
                    tmp.append(k.toMap())
                }
                map["scheduledActions"] = tmp
            }
            if self.target != nil {
                map["target"] = self.target!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alwaysAllocateGPU"] as? Bool {
                self.alwaysAllocateGPU = value
            }
            if let value = dict["scheduledActions"] as? [Any?] {
                var tmp : [DeployHuggingFaceModelInput.ProvisionConfig.ScheduledActions] = []
                for v in value {
                    if v != nil {
                        var model = DeployHuggingFaceModelInput.ProvisionConfig.ScheduledActions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scheduledActions = tmp
            }
            if let value = dict["target"] as? Int32 {
                self.target = value
            }
        }
    }
    public class VpcConfig : Tea.TeaModel {
        public var securityGroupId: String?

        public var vSwitchIds: [String]?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchIds != nil {
                map["vSwitchIds"] = self.vSwitchIds!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["securityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["vSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["vpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accountID: String?

    public var concurrencyConfig: DeployHuggingFaceModelInput.ConcurrencyConfig?

    public var cpu: Double?

    public var description_: String?

    public var diskSize: Int32?

    public var envName: String?

    public var environmentVariables: [String: Any]?

    public var featureGates: DeployHuggingFaceModelInput.FeatureGates?

    public var gpuConfig: DeployHuggingFaceModelInput.GpuConfig?

    public var httpTrigger: DeployHuggingFaceModelInput.HttpTrigger?

    public var imageName: String?

    public var instanceConcurrency: Int32?

    public var logConfig: DeployHuggingFaceModelInput.LogConfig?

    public var memorySize: Int32?

    public var modelConfig: DeployHuggingFaceModelInput.ModelConfig?

    public var name: String?

    public var nasConfig: DeployHuggingFaceModelInput.NasConfig?

    public var originalName: String?

    public var projectName: String?

    public var provisionConfig: DeployHuggingFaceModelInput.ProvisionConfig?

    public var region: String?

    public var reportStatusURL: String?

    public var role: String?

    public var timeout: Int32?

    public var traceId: String?

    public var vpcConfig: DeployHuggingFaceModelInput.VpcConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.concurrencyConfig?.validate()
        try self.featureGates?.validate()
        try self.gpuConfig?.validate()
        try self.httpTrigger?.validate()
        try self.logConfig?.validate()
        try self.modelConfig?.validate()
        try self.nasConfig?.validate()
        try self.provisionConfig?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountID != nil {
            map["accountID"] = self.accountID!
        }
        if self.concurrencyConfig != nil {
            map["concurrencyConfig"] = self.concurrencyConfig?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.diskSize != nil {
            map["diskSize"] = self.diskSize!
        }
        if self.envName != nil {
            map["envName"] = self.envName!
        }
        if self.environmentVariables != nil {
            map["environmentVariables"] = self.environmentVariables!
        }
        if self.featureGates != nil {
            map["featureGates"] = self.featureGates?.toMap()
        }
        if self.gpuConfig != nil {
            map["gpuConfig"] = self.gpuConfig?.toMap()
        }
        if self.httpTrigger != nil {
            map["httpTrigger"] = self.httpTrigger?.toMap()
        }
        if self.imageName != nil {
            map["imageName"] = self.imageName!
        }
        if self.instanceConcurrency != nil {
            map["instanceConcurrency"] = self.instanceConcurrency!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.modelConfig != nil {
            map["modelConfig"] = self.modelConfig?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nasConfig != nil {
            map["nasConfig"] = self.nasConfig?.toMap()
        }
        if self.originalName != nil {
            map["originalName"] = self.originalName!
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.provisionConfig != nil {
            map["provisionConfig"] = self.provisionConfig?.toMap()
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.reportStatusURL != nil {
            map["reportStatusURL"] = self.reportStatusURL!
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountID"] as? String {
            self.accountID = value
        }
        if let value = dict["concurrencyConfig"] as? [String: Any?] {
            var model = DeployHuggingFaceModelInput.ConcurrencyConfig()
            model.fromMap(value)
            self.concurrencyConfig = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["diskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["envName"] as? String {
            self.envName = value
        }
        if let value = dict["environmentVariables"] as? [String: Any] {
            self.environmentVariables = value
        }
        if let value = dict["featureGates"] as? [String: Any?] {
            var model = DeployHuggingFaceModelInput.FeatureGates()
            model.fromMap(value)
            self.featureGates = model
        }
        if let value = dict["gpuConfig"] as? [String: Any?] {
            var model = DeployHuggingFaceModelInput.GpuConfig()
            model.fromMap(value)
            self.gpuConfig = model
        }
        if let value = dict["httpTrigger"] as? [String: Any?] {
            var model = DeployHuggingFaceModelInput.HttpTrigger()
            model.fromMap(value)
            self.httpTrigger = model
        }
        if let value = dict["imageName"] as? String {
            self.imageName = value
        }
        if let value = dict["instanceConcurrency"] as? Int32 {
            self.instanceConcurrency = value
        }
        if let value = dict["logConfig"] as? [String: Any?] {
            var model = DeployHuggingFaceModelInput.LogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["memorySize"] as? Int32 {
            self.memorySize = value
        }
        if let value = dict["modelConfig"] as? [String: Any?] {
            var model = DeployHuggingFaceModelInput.ModelConfig()
            model.fromMap(value)
            self.modelConfig = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nasConfig"] as? [String: Any?] {
            var model = DeployHuggingFaceModelInput.NasConfig()
            model.fromMap(value)
            self.nasConfig = model
        }
        if let value = dict["originalName"] as? String {
            self.originalName = value
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["provisionConfig"] as? [String: Any?] {
            var model = DeployHuggingFaceModelInput.ProvisionConfig()
            model.fromMap(value)
            self.provisionConfig = model
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["reportStatusURL"] as? String {
            self.reportStatusURL = value
        }
        if let value = dict["role"] as? String {
            self.role = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
        if let value = dict["vpcConfig"] as? [String: Any?] {
            var model = DeployHuggingFaceModelInput.VpcConfig()
            model.fromMap(value)
            self.vpcConfig = model
        }
    }
}

public class DeployHuggingFaceModelOutput : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deploymentTaskID: String?

        public var errorMessage: String?

        public var finished: Bool?

        public var serviceName: String?

        public var taskType: String?

        public var traceID: String?

        public var urlInternet: String?

        public var urlIntranet: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deploymentTaskID != nil {
                map["deploymentTaskID"] = self.deploymentTaskID!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.finished != nil {
                map["finished"] = self.finished!
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
            }
            if self.taskType != nil {
                map["taskType"] = self.taskType!
            }
            if self.traceID != nil {
                map["traceID"] = self.traceID!
            }
            if self.urlInternet != nil {
                map["urlInternet"] = self.urlInternet!
            }
            if self.urlIntranet != nil {
                map["urlIntranet"] = self.urlIntranet!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deploymentTaskID"] as? String {
                self.deploymentTaskID = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["finished"] as? Bool {
                self.finished = value
            }
            if let value = dict["serviceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["taskType"] as? String {
                self.taskType = value
            }
            if let value = dict["traceID"] as? String {
                self.traceID = value
            }
            if let value = dict["urlInternet"] as? String {
                self.urlInternet = value
            }
            if let value = dict["urlIntranet"] as? String {
                self.urlIntranet = value
            }
        }
    }
    public var data: DeployHuggingFaceModelOutput.Data?

    public var errCode: String?

    public var errMsg: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeployHuggingFaceModelOutput.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeployModelScopeModelAsyncOutput : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMsg: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeployModelScopeModelInput : Tea.TeaModel {
    public class ConcurrencyConfig : Tea.TeaModel {
        public var reservedConcurrency: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.reservedConcurrency != nil {
                map["reservedConcurrency"] = self.reservedConcurrency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["reservedConcurrency"] as? Int32 {
                self.reservedConcurrency = value
            }
        }
    }
    public class GpuConfig : Tea.TeaModel {
        public var gpuMemorySize: Int32?

        public var gpuType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gpuMemorySize != nil {
                map["gpuMemorySize"] = self.gpuMemorySize!
            }
            if self.gpuType != nil {
                map["gpuType"] = self.gpuType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gpuMemorySize"] as? Int32 {
                self.gpuMemorySize = value
            }
            if let value = dict["gpuType"] as? String {
                self.gpuType = value
            }
        }
    }
    public class HttpTrigger : Tea.TeaModel {
        public class TriggerConfig : Tea.TeaModel {
            public var authConfig: String?

            public var authType: String?

            public var disableURLInternet: Bool?

            public var dsableURLInternet: Bool?

            public var methods: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authConfig != nil {
                    map["authConfig"] = self.authConfig!
                }
                if self.authType != nil {
                    map["authType"] = self.authType!
                }
                if self.disableURLInternet != nil {
                    map["disableURLInternet"] = self.disableURLInternet!
                }
                if self.dsableURLInternet != nil {
                    map["dsableURLInternet"] = self.dsableURLInternet!
                }
                if self.methods != nil {
                    map["methods"] = self.methods!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["authConfig"] as? String {
                    self.authConfig = value
                }
                if let value = dict["authType"] as? String {
                    self.authType = value
                }
                if let value = dict["disableURLInternet"] as? Bool {
                    self.disableURLInternet = value
                }
                if let value = dict["dsableURLInternet"] as? Bool {
                    self.dsableURLInternet = value
                }
                if let value = dict["methods"] as? [String] {
                    self.methods = value
                }
            }
        }
        public var qualifier: String?

        public var triggerConfig: DeployModelScopeModelInput.HttpTrigger.TriggerConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.triggerConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.qualifier != nil {
                map["qualifier"] = self.qualifier!
            }
            if self.triggerConfig != nil {
                map["triggerConfig"] = self.triggerConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["qualifier"] as? String {
                self.qualifier = value
            }
            if let value = dict["triggerConfig"] as? [String: Any?] {
                var model = DeployModelScopeModelInput.HttpTrigger.TriggerConfig()
                model.fromMap(value)
                self.triggerConfig = model
            }
        }
    }
    public class LogConfig : Tea.TeaModel {
        public var enableInstanceMetrics: Bool?

        public var enableRequestMetrics: Bool?

        public var logBeginRule: String?

        public var logstore: String?

        public var project: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableInstanceMetrics != nil {
                map["enableInstanceMetrics"] = self.enableInstanceMetrics!
            }
            if self.enableRequestMetrics != nil {
                map["enableRequestMetrics"] = self.enableRequestMetrics!
            }
            if self.logBeginRule != nil {
                map["logBeginRule"] = self.logBeginRule!
            }
            if self.logstore != nil {
                map["logstore"] = self.logstore!
            }
            if self.project != nil {
                map["project"] = self.project!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enableInstanceMetrics"] as? Bool {
                self.enableInstanceMetrics = value
            }
            if let value = dict["enableRequestMetrics"] as? Bool {
                self.enableRequestMetrics = value
            }
            if let value = dict["logBeginRule"] as? String {
                self.logBeginRule = value
            }
            if let value = dict["logstore"] as? String {
                self.logstore = value
            }
            if let value = dict["project"] as? String {
                self.project = value
            }
        }
    }
    public class ModelConfig : Tea.TeaModel {
        public var framework: String?

        public var multiModelConfig: [ModelConfig]?

        public var prefix_: String?

        public var sourceType: String?

        public var srcModelScopeModelID: String?

        public var srcModelScopeModelRevision: String?

        public var srcModelScopeToken: String?

        public var srcOssBucket: String?

        public var srcOssPath: String?

        public var srcOssRegion: String?

        public var syncStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.framework != nil {
                map["framework"] = self.framework!
            }
            if self.multiModelConfig != nil {
                var tmp : [Any] = []
                for k in self.multiModelConfig! {
                    tmp.append(k.toMap())
                }
                map["multiModelConfig"] = tmp
            }
            if self.prefix_ != nil {
                map["prefix"] = self.prefix_!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            if self.srcModelScopeModelID != nil {
                map["srcModelScopeModelID"] = self.srcModelScopeModelID!
            }
            if self.srcModelScopeModelRevision != nil {
                map["srcModelScopeModelRevision"] = self.srcModelScopeModelRevision!
            }
            if self.srcModelScopeToken != nil {
                map["srcModelScopeToken"] = self.srcModelScopeToken!
            }
            if self.srcOssBucket != nil {
                map["srcOssBucket"] = self.srcOssBucket!
            }
            if self.srcOssPath != nil {
                map["srcOssPath"] = self.srcOssPath!
            }
            if self.srcOssRegion != nil {
                map["srcOssRegion"] = self.srcOssRegion!
            }
            if self.syncStrategy != nil {
                map["syncStrategy"] = self.syncStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["framework"] as? String {
                self.framework = value
            }
            if let value = dict["multiModelConfig"] as? [Any?] {
                var tmp : [ModelConfig] = []
                for v in value {
                    if v != nil {
                        var model = ModelConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.multiModelConfig = tmp
            }
            if let value = dict["prefix"] as? String {
                self.prefix_ = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["srcModelScopeModelID"] as? String {
                self.srcModelScopeModelID = value
            }
            if let value = dict["srcModelScopeModelRevision"] as? String {
                self.srcModelScopeModelRevision = value
            }
            if let value = dict["srcModelScopeToken"] as? String {
                self.srcModelScopeToken = value
            }
            if let value = dict["srcOssBucket"] as? String {
                self.srcOssBucket = value
            }
            if let value = dict["srcOssPath"] as? String {
                self.srcOssPath = value
            }
            if let value = dict["srcOssRegion"] as? String {
                self.srcOssRegion = value
            }
            if let value = dict["syncStrategy"] as? String {
                self.syncStrategy = value
            }
        }
    }
    public class NasConfig : Tea.TeaModel {
        public var groupId: Int32?

        public var mountPoints: [String]?

        public var userId: Int32?

        public override init() {
            super.init()
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
                map["groupId"] = self.groupId!
            }
            if self.mountPoints != nil {
                map["mountPoints"] = self.mountPoints!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["groupId"] as? Int32 {
                self.groupId = value
            }
            if let value = dict["mountPoints"] as? [String] {
                self.mountPoints = value
            }
            if let value = dict["userId"] as? Int32 {
                self.userId = value
            }
        }
    }
    public class ProvisionConfig : Tea.TeaModel {
        public class ScheduledActions : Tea.TeaModel {
            public var endTime: String?

            public var name: String?

            public var scheduleExpression: String?

            public var startTime: String?

            public var target: Int32?

            public var timeZone: String?

            public override init() {
                super.init()
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
                    map["endTime"] = self.endTime!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.scheduleExpression != nil {
                    map["scheduleExpression"] = self.scheduleExpression!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                if self.target != nil {
                    map["target"] = self.target!
                }
                if self.timeZone != nil {
                    map["timeZone"] = self.timeZone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["endTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["scheduleExpression"] as? String {
                    self.scheduleExpression = value
                }
                if let value = dict["startTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["target"] as? Int32 {
                    self.target = value
                }
                if let value = dict["timeZone"] as? String {
                    self.timeZone = value
                }
            }
        }
        public var alwaysAllocateGPU: Bool?

        public var scheduledActions: [DeployModelScopeModelInput.ProvisionConfig.ScheduledActions]?

        public var target: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alwaysAllocateGPU != nil {
                map["alwaysAllocateGPU"] = self.alwaysAllocateGPU!
            }
            if self.scheduledActions != nil {
                var tmp : [Any] = []
                for k in self.scheduledActions! {
                    tmp.append(k.toMap())
                }
                map["scheduledActions"] = tmp
            }
            if self.target != nil {
                map["target"] = self.target!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alwaysAllocateGPU"] as? Bool {
                self.alwaysAllocateGPU = value
            }
            if let value = dict["scheduledActions"] as? [Any?] {
                var tmp : [DeployModelScopeModelInput.ProvisionConfig.ScheduledActions] = []
                for v in value {
                    if v != nil {
                        var model = DeployModelScopeModelInput.ProvisionConfig.ScheduledActions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scheduledActions = tmp
            }
            if let value = dict["target"] as? Int32 {
                self.target = value
            }
        }
    }
    public class VpcConfig : Tea.TeaModel {
        public var securityGroupId: String?

        public var vSwitchIds: [String]?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchIds != nil {
                map["vSwitchIds"] = self.vSwitchIds!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["securityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["vSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["vpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accountID: String?

    public var concurrencyConfig: DeployModelScopeModelInput.ConcurrencyConfig?

    public var cpu: Double?

    public var description_: String?

    public var diskSize: Int32?

    public var envName: String?

    public var environmentVariables: [String: Any]?

    public var gpuConfig: DeployModelScopeModelInput.GpuConfig?

    public var httpTrigger: DeployModelScopeModelInput.HttpTrigger?

    public var imageName: String?

    public var instanceConcurrency: Int32?

    public var logConfig: DeployModelScopeModelInput.LogConfig?

    public var memorySize: Int32?

    public var modelConfig: DeployModelScopeModelInput.ModelConfig?

    public var name: String?

    public var nasConfig: DeployModelScopeModelInput.NasConfig?

    public var originalName: String?

    public var projectName: String?

    public var provisionConfig: DeployModelScopeModelInput.ProvisionConfig?

    public var region: String?

    public var reportStatusURL: String?

    public var role: String?

    public var timeout: Int32?

    public var traceId: String?

    public var vpcConfig: DeployModelScopeModelInput.VpcConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.concurrencyConfig?.validate()
        try self.gpuConfig?.validate()
        try self.httpTrigger?.validate()
        try self.logConfig?.validate()
        try self.modelConfig?.validate()
        try self.nasConfig?.validate()
        try self.provisionConfig?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountID != nil {
            map["accountID"] = self.accountID!
        }
        if self.concurrencyConfig != nil {
            map["concurrencyConfig"] = self.concurrencyConfig?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.diskSize != nil {
            map["diskSize"] = self.diskSize!
        }
        if self.envName != nil {
            map["envName"] = self.envName!
        }
        if self.environmentVariables != nil {
            map["environmentVariables"] = self.environmentVariables!
        }
        if self.gpuConfig != nil {
            map["gpuConfig"] = self.gpuConfig?.toMap()
        }
        if self.httpTrigger != nil {
            map["httpTrigger"] = self.httpTrigger?.toMap()
        }
        if self.imageName != nil {
            map["imageName"] = self.imageName!
        }
        if self.instanceConcurrency != nil {
            map["instanceConcurrency"] = self.instanceConcurrency!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.modelConfig != nil {
            map["modelConfig"] = self.modelConfig?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nasConfig != nil {
            map["nasConfig"] = self.nasConfig?.toMap()
        }
        if self.originalName != nil {
            map["originalName"] = self.originalName!
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.provisionConfig != nil {
            map["provisionConfig"] = self.provisionConfig?.toMap()
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.reportStatusURL != nil {
            map["reportStatusURL"] = self.reportStatusURL!
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountID"] as? String {
            self.accountID = value
        }
        if let value = dict["concurrencyConfig"] as? [String: Any?] {
            var model = DeployModelScopeModelInput.ConcurrencyConfig()
            model.fromMap(value)
            self.concurrencyConfig = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["diskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["envName"] as? String {
            self.envName = value
        }
        if let value = dict["environmentVariables"] as? [String: Any] {
            self.environmentVariables = value
        }
        if let value = dict["gpuConfig"] as? [String: Any?] {
            var model = DeployModelScopeModelInput.GpuConfig()
            model.fromMap(value)
            self.gpuConfig = model
        }
        if let value = dict["httpTrigger"] as? [String: Any?] {
            var model = DeployModelScopeModelInput.HttpTrigger()
            model.fromMap(value)
            self.httpTrigger = model
        }
        if let value = dict["imageName"] as? String {
            self.imageName = value
        }
        if let value = dict["instanceConcurrency"] as? Int32 {
            self.instanceConcurrency = value
        }
        if let value = dict["logConfig"] as? [String: Any?] {
            var model = DeployModelScopeModelInput.LogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["memorySize"] as? Int32 {
            self.memorySize = value
        }
        if let value = dict["modelConfig"] as? [String: Any?] {
            var model = DeployModelScopeModelInput.ModelConfig()
            model.fromMap(value)
            self.modelConfig = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nasConfig"] as? [String: Any?] {
            var model = DeployModelScopeModelInput.NasConfig()
            model.fromMap(value)
            self.nasConfig = model
        }
        if let value = dict["originalName"] as? String {
            self.originalName = value
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["provisionConfig"] as? [String: Any?] {
            var model = DeployModelScopeModelInput.ProvisionConfig()
            model.fromMap(value)
            self.provisionConfig = model
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["reportStatusURL"] as? String {
            self.reportStatusURL = value
        }
        if let value = dict["role"] as? String {
            self.role = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
        if let value = dict["vpcConfig"] as? [String: Any?] {
            var model = DeployModelScopeModelInput.VpcConfig()
            model.fromMap(value)
            self.vpcConfig = model
        }
    }
}

public class DeployModelScopeModelOutput : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deploymentTaskID: String?

        public var errorMessage: String?

        public var finished: Bool?

        public var serviceName: String?

        public var taskType: String?

        public var traceID: String?

        public var urlInternet: String?

        public var urlIntranet: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deploymentTaskID != nil {
                map["deploymentTaskID"] = self.deploymentTaskID!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.finished != nil {
                map["finished"] = self.finished!
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
            }
            if self.taskType != nil {
                map["taskType"] = self.taskType!
            }
            if self.traceID != nil {
                map["traceID"] = self.traceID!
            }
            if self.urlInternet != nil {
                map["urlInternet"] = self.urlInternet!
            }
            if self.urlIntranet != nil {
                map["urlIntranet"] = self.urlIntranet!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deploymentTaskID"] as? String {
                self.deploymentTaskID = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["finished"] as? Bool {
                self.finished = value
            }
            if let value = dict["serviceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["taskType"] as? String {
                self.taskType = value
            }
            if let value = dict["traceID"] as? String {
                self.traceID = value
            }
            if let value = dict["urlInternet"] as? String {
                self.urlInternet = value
            }
            if let value = dict["urlIntranet"] as? String {
                self.urlIntranet = value
            }
        }
    }
    public var data: DeployModelScopeModelOutput.Data?

    public var errCode: String?

    public var errMsg: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeployModelScopeModelOutput.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeployOllamaModelAsyncOutput : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMsg: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeployOllamaModelInput : Tea.TeaModel {
    public class ConcurrencyConfig : Tea.TeaModel {
        public var reservedConcurrency: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.reservedConcurrency != nil {
                map["reservedConcurrency"] = self.reservedConcurrency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["reservedConcurrency"] as? Int32 {
                self.reservedConcurrency = value
            }
        }
    }
    public class FeatureGates : Tea.TeaModel {
        public var asyncProvisionCheck: Bool?

        public var disableRollbackOnProvisionFailure: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asyncProvisionCheck != nil {
                map["asyncProvisionCheck"] = self.asyncProvisionCheck!
            }
            if self.disableRollbackOnProvisionFailure != nil {
                map["disableRollbackOnProvisionFailure"] = self.disableRollbackOnProvisionFailure!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["asyncProvisionCheck"] as? Bool {
                self.asyncProvisionCheck = value
            }
            if let value = dict["disableRollbackOnProvisionFailure"] as? Bool {
                self.disableRollbackOnProvisionFailure = value
            }
        }
    }
    public class GpuConfig : Tea.TeaModel {
        public var gpuMemorySize: Int32?

        public var gpuType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gpuMemorySize != nil {
                map["gpuMemorySize"] = self.gpuMemorySize!
            }
            if self.gpuType != nil {
                map["gpuType"] = self.gpuType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gpuMemorySize"] as? Int32 {
                self.gpuMemorySize = value
            }
            if let value = dict["gpuType"] as? String {
                self.gpuType = value
            }
        }
    }
    public class HttpTrigger : Tea.TeaModel {
        public class TriggerConfig : Tea.TeaModel {
            public var authConfig: String?

            public var authType: String?

            public var disableURLInternet: Bool?

            public var dsableURLInternet: Bool?

            public var methods: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authConfig != nil {
                    map["authConfig"] = self.authConfig!
                }
                if self.authType != nil {
                    map["authType"] = self.authType!
                }
                if self.disableURLInternet != nil {
                    map["disableURLInternet"] = self.disableURLInternet!
                }
                if self.dsableURLInternet != nil {
                    map["dsableURLInternet"] = self.dsableURLInternet!
                }
                if self.methods != nil {
                    map["methods"] = self.methods!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["authConfig"] as? String {
                    self.authConfig = value
                }
                if let value = dict["authType"] as? String {
                    self.authType = value
                }
                if let value = dict["disableURLInternet"] as? Bool {
                    self.disableURLInternet = value
                }
                if let value = dict["dsableURLInternet"] as? Bool {
                    self.dsableURLInternet = value
                }
                if let value = dict["methods"] as? [String] {
                    self.methods = value
                }
            }
        }
        public var qualifier: String?

        public var triggerConfig: DeployOllamaModelInput.HttpTrigger.TriggerConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.triggerConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.qualifier != nil {
                map["qualifier"] = self.qualifier!
            }
            if self.triggerConfig != nil {
                map["triggerConfig"] = self.triggerConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["qualifier"] as? String {
                self.qualifier = value
            }
            if let value = dict["triggerConfig"] as? [String: Any?] {
                var model = DeployOllamaModelInput.HttpTrigger.TriggerConfig()
                model.fromMap(value)
                self.triggerConfig = model
            }
        }
    }
    public class LogConfig : Tea.TeaModel {
        public var enableInstanceMetrics: Bool?

        public var enableRequestMetrics: Bool?

        public var logBeginRule: String?

        public var logstore: String?

        public var project: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableInstanceMetrics != nil {
                map["enableInstanceMetrics"] = self.enableInstanceMetrics!
            }
            if self.enableRequestMetrics != nil {
                map["enableRequestMetrics"] = self.enableRequestMetrics!
            }
            if self.logBeginRule != nil {
                map["logBeginRule"] = self.logBeginRule!
            }
            if self.logstore != nil {
                map["logstore"] = self.logstore!
            }
            if self.project != nil {
                map["project"] = self.project!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enableInstanceMetrics"] as? Bool {
                self.enableInstanceMetrics = value
            }
            if let value = dict["enableRequestMetrics"] as? Bool {
                self.enableRequestMetrics = value
            }
            if let value = dict["logBeginRule"] as? String {
                self.logBeginRule = value
            }
            if let value = dict["logstore"] as? String {
                self.logstore = value
            }
            if let value = dict["project"] as? String {
                self.project = value
            }
        }
    }
    public class ModelConfig : Tea.TeaModel {
        public class FmkOllamaConfig : Tea.TeaModel {
            public var minP: Double?

            public var mirostat: Int32?

            public var mirostatEta: Double?

            public var mirostatTau: Double?

            public var modelName: String?

            public var modelfileAdapter: String?

            public var modelfileAdditionalFromsString: String?

            public var modelfileFullTextPostfix: String?

            public var modelfileParams: String?

            public var modelfileSystem: String?

            public var modelfileTemplate: String?

            public var numCtx: Int32?

            public var numPredict: Int32?

            public var quantize: String?

            public var repeatLastN: Int32?

            public var repeatPenalty: Double?

            public var seed: Int32?

            public var singleModelFile: String?

            public var splitedModelStartFile: String?

            public var stop: String?

            public var stream: Bool?

            public var temperature: Double?

            public var tfsZ: Double?

            public var topK: Int32?

            public var topP: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.minP != nil {
                    map["minP"] = self.minP!
                }
                if self.mirostat != nil {
                    map["mirostat"] = self.mirostat!
                }
                if self.mirostatEta != nil {
                    map["mirostatEta"] = self.mirostatEta!
                }
                if self.mirostatTau != nil {
                    map["mirostatTau"] = self.mirostatTau!
                }
                if self.modelName != nil {
                    map["modelName"] = self.modelName!
                }
                if self.modelfileAdapter != nil {
                    map["modelfileAdapter"] = self.modelfileAdapter!
                }
                if self.modelfileAdditionalFromsString != nil {
                    map["modelfileAdditionalFromsString"] = self.modelfileAdditionalFromsString!
                }
                if self.modelfileFullTextPostfix != nil {
                    map["modelfileFullTextPostfix"] = self.modelfileFullTextPostfix!
                }
                if self.modelfileParams != nil {
                    map["modelfileParams"] = self.modelfileParams!
                }
                if self.modelfileSystem != nil {
                    map["modelfileSystem"] = self.modelfileSystem!
                }
                if self.modelfileTemplate != nil {
                    map["modelfileTemplate"] = self.modelfileTemplate!
                }
                if self.numCtx != nil {
                    map["numCtx"] = self.numCtx!
                }
                if self.numPredict != nil {
                    map["numPredict"] = self.numPredict!
                }
                if self.quantize != nil {
                    map["quantize"] = self.quantize!
                }
                if self.repeatLastN != nil {
                    map["repeatLastN"] = self.repeatLastN!
                }
                if self.repeatPenalty != nil {
                    map["repeatPenalty"] = self.repeatPenalty!
                }
                if self.seed != nil {
                    map["seed"] = self.seed!
                }
                if self.singleModelFile != nil {
                    map["singleModelFile"] = self.singleModelFile!
                }
                if self.splitedModelStartFile != nil {
                    map["splitedModelStartFile"] = self.splitedModelStartFile!
                }
                if self.stop != nil {
                    map["stop"] = self.stop!
                }
                if self.stream != nil {
                    map["stream"] = self.stream!
                }
                if self.temperature != nil {
                    map["temperature"] = self.temperature!
                }
                if self.tfsZ != nil {
                    map["tfsZ"] = self.tfsZ!
                }
                if self.topK != nil {
                    map["topK"] = self.topK!
                }
                if self.topP != nil {
                    map["topP"] = self.topP!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["minP"] as? Double {
                    self.minP = value
                }
                if let value = dict["mirostat"] as? Int32 {
                    self.mirostat = value
                }
                if let value = dict["mirostatEta"] as? Double {
                    self.mirostatEta = value
                }
                if let value = dict["mirostatTau"] as? Double {
                    self.mirostatTau = value
                }
                if let value = dict["modelName"] as? String {
                    self.modelName = value
                }
                if let value = dict["modelfileAdapter"] as? String {
                    self.modelfileAdapter = value
                }
                if let value = dict["modelfileAdditionalFromsString"] as? String {
                    self.modelfileAdditionalFromsString = value
                }
                if let value = dict["modelfileFullTextPostfix"] as? String {
                    self.modelfileFullTextPostfix = value
                }
                if let value = dict["modelfileParams"] as? String {
                    self.modelfileParams = value
                }
                if let value = dict["modelfileSystem"] as? String {
                    self.modelfileSystem = value
                }
                if let value = dict["modelfileTemplate"] as? String {
                    self.modelfileTemplate = value
                }
                if let value = dict["numCtx"] as? Int32 {
                    self.numCtx = value
                }
                if let value = dict["numPredict"] as? Int32 {
                    self.numPredict = value
                }
                if let value = dict["quantize"] as? String {
                    self.quantize = value
                }
                if let value = dict["repeatLastN"] as? Int32 {
                    self.repeatLastN = value
                }
                if let value = dict["repeatPenalty"] as? Double {
                    self.repeatPenalty = value
                }
                if let value = dict["seed"] as? Int32 {
                    self.seed = value
                }
                if let value = dict["singleModelFile"] as? String {
                    self.singleModelFile = value
                }
                if let value = dict["splitedModelStartFile"] as? String {
                    self.splitedModelStartFile = value
                }
                if let value = dict["stop"] as? String {
                    self.stop = value
                }
                if let value = dict["stream"] as? Bool {
                    self.stream = value
                }
                if let value = dict["temperature"] as? Double {
                    self.temperature = value
                }
                if let value = dict["tfsZ"] as? Double {
                    self.tfsZ = value
                }
                if let value = dict["topK"] as? Int32 {
                    self.topK = value
                }
                if let value = dict["topP"] as? Double {
                    self.topP = value
                }
            }
        }
        public var fmkOllamaConfig: DeployOllamaModelInput.ModelConfig.FmkOllamaConfig?

        public var framework: String?

        public var multiModelConfig: [ModelConfig]?

        public var prefix_: String?

        public var skipDownload: Bool?

        public var sourceType: String?

        public var srcModelScopeModelID: String?

        public var srcModelScopeModelRevision: String?

        public var srcModelScopeToken: String?

        public var srcOssBucket: String?

        public var srcOssPath: String?

        public var srcOssRegion: String?

        public var syncStrategy: String?

        public var withPPU: Bool?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.fmkOllamaConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fmkOllamaConfig != nil {
                map["fmkOllamaConfig"] = self.fmkOllamaConfig?.toMap()
            }
            if self.framework != nil {
                map["framework"] = self.framework!
            }
            if self.multiModelConfig != nil {
                var tmp : [Any] = []
                for k in self.multiModelConfig! {
                    tmp.append(k.toMap())
                }
                map["multiModelConfig"] = tmp
            }
            if self.prefix_ != nil {
                map["prefix"] = self.prefix_!
            }
            if self.skipDownload != nil {
                map["skipDownload"] = self.skipDownload!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            if self.srcModelScopeModelID != nil {
                map["srcModelScopeModelID"] = self.srcModelScopeModelID!
            }
            if self.srcModelScopeModelRevision != nil {
                map["srcModelScopeModelRevision"] = self.srcModelScopeModelRevision!
            }
            if self.srcModelScopeToken != nil {
                map["srcModelScopeToken"] = self.srcModelScopeToken!
            }
            if self.srcOssBucket != nil {
                map["srcOssBucket"] = self.srcOssBucket!
            }
            if self.srcOssPath != nil {
                map["srcOssPath"] = self.srcOssPath!
            }
            if self.srcOssRegion != nil {
                map["srcOssRegion"] = self.srcOssRegion!
            }
            if self.syncStrategy != nil {
                map["syncStrategy"] = self.syncStrategy!
            }
            if self.withPPU != nil {
                map["withPPU"] = self.withPPU!
            }
            if self.workingDir != nil {
                map["workingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fmkOllamaConfig"] as? [String: Any?] {
                var model = DeployOllamaModelInput.ModelConfig.FmkOllamaConfig()
                model.fromMap(value)
                self.fmkOllamaConfig = model
            }
            if let value = dict["framework"] as? String {
                self.framework = value
            }
            if let value = dict["multiModelConfig"] as? [Any?] {
                var tmp : [ModelConfig] = []
                for v in value {
                    if v != nil {
                        var model = ModelConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.multiModelConfig = tmp
            }
            if let value = dict["prefix"] as? String {
                self.prefix_ = value
            }
            if let value = dict["skipDownload"] as? Bool {
                self.skipDownload = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["srcModelScopeModelID"] as? String {
                self.srcModelScopeModelID = value
            }
            if let value = dict["srcModelScopeModelRevision"] as? String {
                self.srcModelScopeModelRevision = value
            }
            if let value = dict["srcModelScopeToken"] as? String {
                self.srcModelScopeToken = value
            }
            if let value = dict["srcOssBucket"] as? String {
                self.srcOssBucket = value
            }
            if let value = dict["srcOssPath"] as? String {
                self.srcOssPath = value
            }
            if let value = dict["srcOssRegion"] as? String {
                self.srcOssRegion = value
            }
            if let value = dict["syncStrategy"] as? String {
                self.syncStrategy = value
            }
            if let value = dict["withPPU"] as? Bool {
                self.withPPU = value
            }
            if let value = dict["workingDir"] as? String {
                self.workingDir = value
            }
        }
    }
    public class NasConfig : Tea.TeaModel {
        public var groupId: Int32?

        public var mountPoints: [String]?

        public var userId: Int32?

        public override init() {
            super.init()
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
                map["groupId"] = self.groupId!
            }
            if self.mountPoints != nil {
                map["mountPoints"] = self.mountPoints!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["groupId"] as? Int32 {
                self.groupId = value
            }
            if let value = dict["mountPoints"] as? [String] {
                self.mountPoints = value
            }
            if let value = dict["userId"] as? Int32 {
                self.userId = value
            }
        }
    }
    public class ProvisionConfig : Tea.TeaModel {
        public class ScheduledActions : Tea.TeaModel {
            public var endTime: String?

            public var name: String?

            public var scheduleExpression: String?

            public var startTime: String?

            public var target: Int32?

            public var timeZone: String?

            public override init() {
                super.init()
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
                    map["endTime"] = self.endTime!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.scheduleExpression != nil {
                    map["scheduleExpression"] = self.scheduleExpression!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                if self.target != nil {
                    map["target"] = self.target!
                }
                if self.timeZone != nil {
                    map["timeZone"] = self.timeZone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["endTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["scheduleExpression"] as? String {
                    self.scheduleExpression = value
                }
                if let value = dict["startTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["target"] as? Int32 {
                    self.target = value
                }
                if let value = dict["timeZone"] as? String {
                    self.timeZone = value
                }
            }
        }
        public var alwaysAllocateGPU: Bool?

        public var scheduledActions: [DeployOllamaModelInput.ProvisionConfig.ScheduledActions]?

        public var target: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alwaysAllocateGPU != nil {
                map["alwaysAllocateGPU"] = self.alwaysAllocateGPU!
            }
            if self.scheduledActions != nil {
                var tmp : [Any] = []
                for k in self.scheduledActions! {
                    tmp.append(k.toMap())
                }
                map["scheduledActions"] = tmp
            }
            if self.target != nil {
                map["target"] = self.target!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alwaysAllocateGPU"] as? Bool {
                self.alwaysAllocateGPU = value
            }
            if let value = dict["scheduledActions"] as? [Any?] {
                var tmp : [DeployOllamaModelInput.ProvisionConfig.ScheduledActions] = []
                for v in value {
                    if v != nil {
                        var model = DeployOllamaModelInput.ProvisionConfig.ScheduledActions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scheduledActions = tmp
            }
            if let value = dict["target"] as? Int32 {
                self.target = value
            }
        }
    }
    public class VpcConfig : Tea.TeaModel {
        public var securityGroupId: String?

        public var vSwitchIds: [String]?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchIds != nil {
                map["vSwitchIds"] = self.vSwitchIds!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["securityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["vSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["vpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accountID: String?

    public var concurrencyConfig: DeployOllamaModelInput.ConcurrencyConfig?

    public var cpu: Double?

    public var description_: String?

    public var diskSize: Int32?

    public var envName: String?

    public var environmentVariables: [String: Any]?

    public var featureGates: DeployOllamaModelInput.FeatureGates?

    public var gpuConfig: DeployOllamaModelInput.GpuConfig?

    public var httpTrigger: DeployOllamaModelInput.HttpTrigger?

    public var imageName: String?

    public var instanceConcurrency: Int32?

    public var logConfig: DeployOllamaModelInput.LogConfig?

    public var memorySize: Int32?

    public var modelConfig: DeployOllamaModelInput.ModelConfig?

    public var name: String?

    public var nasConfig: DeployOllamaModelInput.NasConfig?

    public var originalName: String?

    public var projectName: String?

    public var provisionConfig: DeployOllamaModelInput.ProvisionConfig?

    public var region: String?

    public var reportStatusURL: String?

    public var role: String?

    public var timeout: Int32?

    public var traceId: String?

    public var vpcConfig: DeployOllamaModelInput.VpcConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.concurrencyConfig?.validate()
        try self.featureGates?.validate()
        try self.gpuConfig?.validate()
        try self.httpTrigger?.validate()
        try self.logConfig?.validate()
        try self.modelConfig?.validate()
        try self.nasConfig?.validate()
        try self.provisionConfig?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountID != nil {
            map["accountID"] = self.accountID!
        }
        if self.concurrencyConfig != nil {
            map["concurrencyConfig"] = self.concurrencyConfig?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.diskSize != nil {
            map["diskSize"] = self.diskSize!
        }
        if self.envName != nil {
            map["envName"] = self.envName!
        }
        if self.environmentVariables != nil {
            map["environmentVariables"] = self.environmentVariables!
        }
        if self.featureGates != nil {
            map["featureGates"] = self.featureGates?.toMap()
        }
        if self.gpuConfig != nil {
            map["gpuConfig"] = self.gpuConfig?.toMap()
        }
        if self.httpTrigger != nil {
            map["httpTrigger"] = self.httpTrigger?.toMap()
        }
        if self.imageName != nil {
            map["imageName"] = self.imageName!
        }
        if self.instanceConcurrency != nil {
            map["instanceConcurrency"] = self.instanceConcurrency!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.modelConfig != nil {
            map["modelConfig"] = self.modelConfig?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nasConfig != nil {
            map["nasConfig"] = self.nasConfig?.toMap()
        }
        if self.originalName != nil {
            map["originalName"] = self.originalName!
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.provisionConfig != nil {
            map["provisionConfig"] = self.provisionConfig?.toMap()
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.reportStatusURL != nil {
            map["reportStatusURL"] = self.reportStatusURL!
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountID"] as? String {
            self.accountID = value
        }
        if let value = dict["concurrencyConfig"] as? [String: Any?] {
            var model = DeployOllamaModelInput.ConcurrencyConfig()
            model.fromMap(value)
            self.concurrencyConfig = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["diskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["envName"] as? String {
            self.envName = value
        }
        if let value = dict["environmentVariables"] as? [String: Any] {
            self.environmentVariables = value
        }
        if let value = dict["featureGates"] as? [String: Any?] {
            var model = DeployOllamaModelInput.FeatureGates()
            model.fromMap(value)
            self.featureGates = model
        }
        if let value = dict["gpuConfig"] as? [String: Any?] {
            var model = DeployOllamaModelInput.GpuConfig()
            model.fromMap(value)
            self.gpuConfig = model
        }
        if let value = dict["httpTrigger"] as? [String: Any?] {
            var model = DeployOllamaModelInput.HttpTrigger()
            model.fromMap(value)
            self.httpTrigger = model
        }
        if let value = dict["imageName"] as? String {
            self.imageName = value
        }
        if let value = dict["instanceConcurrency"] as? Int32 {
            self.instanceConcurrency = value
        }
        if let value = dict["logConfig"] as? [String: Any?] {
            var model = DeployOllamaModelInput.LogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["memorySize"] as? Int32 {
            self.memorySize = value
        }
        if let value = dict["modelConfig"] as? [String: Any?] {
            var model = DeployOllamaModelInput.ModelConfig()
            model.fromMap(value)
            self.modelConfig = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nasConfig"] as? [String: Any?] {
            var model = DeployOllamaModelInput.NasConfig()
            model.fromMap(value)
            self.nasConfig = model
        }
        if let value = dict["originalName"] as? String {
            self.originalName = value
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["provisionConfig"] as? [String: Any?] {
            var model = DeployOllamaModelInput.ProvisionConfig()
            model.fromMap(value)
            self.provisionConfig = model
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["reportStatusURL"] as? String {
            self.reportStatusURL = value
        }
        if let value = dict["role"] as? String {
            self.role = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
        if let value = dict["vpcConfig"] as? [String: Any?] {
            var model = DeployOllamaModelInput.VpcConfig()
            model.fromMap(value)
            self.vpcConfig = model
        }
    }
}

public class DeployOllamaModelOutput : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deploymentTaskID: String?

        public var errorMessage: String?

        public var finished: Bool?

        public var modelName: String?

        public var serviceName: String?

        public var traceID: String?

        public var urlInternet: String?

        public var urlIntranet: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deploymentTaskID != nil {
                map["deploymentTaskID"] = self.deploymentTaskID!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.finished != nil {
                map["finished"] = self.finished!
            }
            if self.modelName != nil {
                map["modelName"] = self.modelName!
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
            }
            if self.traceID != nil {
                map["traceID"] = self.traceID!
            }
            if self.urlInternet != nil {
                map["urlInternet"] = self.urlInternet!
            }
            if self.urlIntranet != nil {
                map["urlIntranet"] = self.urlIntranet!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deploymentTaskID"] as? String {
                self.deploymentTaskID = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["finished"] as? Bool {
                self.finished = value
            }
            if let value = dict["modelName"] as? String {
                self.modelName = value
            }
            if let value = dict["serviceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["traceID"] as? String {
                self.traceID = value
            }
            if let value = dict["urlInternet"] as? String {
                self.urlInternet = value
            }
            if let value = dict["urlIntranet"] as? String {
                self.urlIntranet = value
            }
        }
    }
    public var data: DeployOllamaModelOutput.Data?

    public var errCode: String?

    public var errMsg: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeployOllamaModelOutput.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeploySGLangModelAsyncOutput : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMsg: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeploySGLangModelInput : Tea.TeaModel {
    public class ConcurrencyConfig : Tea.TeaModel {
        public var reservedConcurrency: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.reservedConcurrency != nil {
                map["reservedConcurrency"] = self.reservedConcurrency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["reservedConcurrency"] as? Int32 {
                self.reservedConcurrency = value
            }
        }
    }
    public class CustomContainerConfig : Tea.TeaModel {
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
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public class FeatureGates : Tea.TeaModel {
        public var asyncProvisionCheck: Bool?

        public var disableRollbackOnProvisionFailure: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asyncProvisionCheck != nil {
                map["asyncProvisionCheck"] = self.asyncProvisionCheck!
            }
            if self.disableRollbackOnProvisionFailure != nil {
                map["disableRollbackOnProvisionFailure"] = self.disableRollbackOnProvisionFailure!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["asyncProvisionCheck"] as? Bool {
                self.asyncProvisionCheck = value
            }
            if let value = dict["disableRollbackOnProvisionFailure"] as? Bool {
                self.disableRollbackOnProvisionFailure = value
            }
        }
    }
    public class GpuConfig : Tea.TeaModel {
        public var gpuMemorySize: Int32?

        public var gpuType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gpuMemorySize != nil {
                map["gpuMemorySize"] = self.gpuMemorySize!
            }
            if self.gpuType != nil {
                map["gpuType"] = self.gpuType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gpuMemorySize"] as? Int32 {
                self.gpuMemorySize = value
            }
            if let value = dict["gpuType"] as? String {
                self.gpuType = value
            }
        }
    }
    public class HttpTrigger : Tea.TeaModel {
        public class TriggerConfig : Tea.TeaModel {
            public var authConfig: String?

            public var authType: String?

            public var disableURLInternet: Bool?

            public var dsableURLInternet: Bool?

            public var methods: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authConfig != nil {
                    map["authConfig"] = self.authConfig!
                }
                if self.authType != nil {
                    map["authType"] = self.authType!
                }
                if self.disableURLInternet != nil {
                    map["disableURLInternet"] = self.disableURLInternet!
                }
                if self.dsableURLInternet != nil {
                    map["dsableURLInternet"] = self.dsableURLInternet!
                }
                if self.methods != nil {
                    map["methods"] = self.methods!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["authConfig"] as? String {
                    self.authConfig = value
                }
                if let value = dict["authType"] as? String {
                    self.authType = value
                }
                if let value = dict["disableURLInternet"] as? Bool {
                    self.disableURLInternet = value
                }
                if let value = dict["dsableURLInternet"] as? Bool {
                    self.dsableURLInternet = value
                }
                if let value = dict["methods"] as? [String] {
                    self.methods = value
                }
            }
        }
        public var qualifier: String?

        public var triggerConfig: DeploySGLangModelInput.HttpTrigger.TriggerConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.triggerConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.qualifier != nil {
                map["qualifier"] = self.qualifier!
            }
            if self.triggerConfig != nil {
                map["triggerConfig"] = self.triggerConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["qualifier"] as? String {
                self.qualifier = value
            }
            if let value = dict["triggerConfig"] as? [String: Any?] {
                var model = DeploySGLangModelInput.HttpTrigger.TriggerConfig()
                model.fromMap(value)
                self.triggerConfig = model
            }
        }
    }
    public class LogConfig : Tea.TeaModel {
        public var enableInstanceMetrics: Bool?

        public var enableRequestMetrics: Bool?

        public var logBeginRule: String?

        public var logstore: String?

        public var project: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableInstanceMetrics != nil {
                map["enableInstanceMetrics"] = self.enableInstanceMetrics!
            }
            if self.enableRequestMetrics != nil {
                map["enableRequestMetrics"] = self.enableRequestMetrics!
            }
            if self.logBeginRule != nil {
                map["logBeginRule"] = self.logBeginRule!
            }
            if self.logstore != nil {
                map["logstore"] = self.logstore!
            }
            if self.project != nil {
                map["project"] = self.project!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enableInstanceMetrics"] as? Bool {
                self.enableInstanceMetrics = value
            }
            if let value = dict["enableRequestMetrics"] as? Bool {
                self.enableRequestMetrics = value
            }
            if let value = dict["logBeginRule"] as? String {
                self.logBeginRule = value
            }
            if let value = dict["logstore"] as? String {
                self.logstore = value
            }
            if let value = dict["project"] as? String {
                self.project = value
            }
        }
    }
    public class ModelConfig : Tea.TeaModel {
        public class FmkSGLangConfig : Tea.TeaModel {
            public var apiKey: String?

            public var chatTemplate: String?

            public var dtype: String?

            public var fullTextPostfix: String?

            public var loadFormat: String?

            public var maxRunningRequests: Int32?

            public var maxTotalTokens: Int32?

            public var memFractionStatic: Double?

            public var quantization: String?

            public var servedModelName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiKey != nil {
                    map["apiKey"] = self.apiKey!
                }
                if self.chatTemplate != nil {
                    map["chatTemplate"] = self.chatTemplate!
                }
                if self.dtype != nil {
                    map["dtype"] = self.dtype!
                }
                if self.fullTextPostfix != nil {
                    map["fullTextPostfix"] = self.fullTextPostfix!
                }
                if self.loadFormat != nil {
                    map["loadFormat"] = self.loadFormat!
                }
                if self.maxRunningRequests != nil {
                    map["maxRunningRequests"] = self.maxRunningRequests!
                }
                if self.maxTotalTokens != nil {
                    map["maxTotalTokens"] = self.maxTotalTokens!
                }
                if self.memFractionStatic != nil {
                    map["memFractionStatic"] = self.memFractionStatic!
                }
                if self.quantization != nil {
                    map["quantization"] = self.quantization!
                }
                if self.servedModelName != nil {
                    map["servedModelName"] = self.servedModelName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["apiKey"] as? String {
                    self.apiKey = value
                }
                if let value = dict["chatTemplate"] as? String {
                    self.chatTemplate = value
                }
                if let value = dict["dtype"] as? String {
                    self.dtype = value
                }
                if let value = dict["fullTextPostfix"] as? String {
                    self.fullTextPostfix = value
                }
                if let value = dict["loadFormat"] as? String {
                    self.loadFormat = value
                }
                if let value = dict["maxRunningRequests"] as? Int32 {
                    self.maxRunningRequests = value
                }
                if let value = dict["maxTotalTokens"] as? Int32 {
                    self.maxTotalTokens = value
                }
                if let value = dict["memFractionStatic"] as? Double {
                    self.memFractionStatic = value
                }
                if let value = dict["quantization"] as? String {
                    self.quantization = value
                }
                if let value = dict["servedModelName"] as? String {
                    self.servedModelName = value
                }
            }
        }
        public var fmkSGLangConfig: DeploySGLangModelInput.ModelConfig.FmkSGLangConfig?

        public var framework: String?

        public var multiModelConfig: [ModelConfig]?

        public var prefix_: String?

        public var skipDownload: Bool?

        public var sourceType: String?

        public var srcModelScopeModelID: String?

        public var srcModelScopeModelRevision: String?

        public var srcModelScopeToken: String?

        public var srcOssBucket: String?

        public var srcOssPath: String?

        public var srcOssRegion: String?

        public var syncStrategy: String?

        public var withPPU: Bool?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.fmkSGLangConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fmkSGLangConfig != nil {
                map["fmkSGLangConfig"] = self.fmkSGLangConfig?.toMap()
            }
            if self.framework != nil {
                map["framework"] = self.framework!
            }
            if self.multiModelConfig != nil {
                var tmp : [Any] = []
                for k in self.multiModelConfig! {
                    tmp.append(k.toMap())
                }
                map["multiModelConfig"] = tmp
            }
            if self.prefix_ != nil {
                map["prefix"] = self.prefix_!
            }
            if self.skipDownload != nil {
                map["skipDownload"] = self.skipDownload!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            if self.srcModelScopeModelID != nil {
                map["srcModelScopeModelID"] = self.srcModelScopeModelID!
            }
            if self.srcModelScopeModelRevision != nil {
                map["srcModelScopeModelRevision"] = self.srcModelScopeModelRevision!
            }
            if self.srcModelScopeToken != nil {
                map["srcModelScopeToken"] = self.srcModelScopeToken!
            }
            if self.srcOssBucket != nil {
                map["srcOssBucket"] = self.srcOssBucket!
            }
            if self.srcOssPath != nil {
                map["srcOssPath"] = self.srcOssPath!
            }
            if self.srcOssRegion != nil {
                map["srcOssRegion"] = self.srcOssRegion!
            }
            if self.syncStrategy != nil {
                map["syncStrategy"] = self.syncStrategy!
            }
            if self.withPPU != nil {
                map["withPPU"] = self.withPPU!
            }
            if self.workingDir != nil {
                map["workingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fmkSGLangConfig"] as? [String: Any?] {
                var model = DeploySGLangModelInput.ModelConfig.FmkSGLangConfig()
                model.fromMap(value)
                self.fmkSGLangConfig = model
            }
            if let value = dict["framework"] as? String {
                self.framework = value
            }
            if let value = dict["multiModelConfig"] as? [Any?] {
                var tmp : [ModelConfig] = []
                for v in value {
                    if v != nil {
                        var model = ModelConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.multiModelConfig = tmp
            }
            if let value = dict["prefix"] as? String {
                self.prefix_ = value
            }
            if let value = dict["skipDownload"] as? Bool {
                self.skipDownload = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["srcModelScopeModelID"] as? String {
                self.srcModelScopeModelID = value
            }
            if let value = dict["srcModelScopeModelRevision"] as? String {
                self.srcModelScopeModelRevision = value
            }
            if let value = dict["srcModelScopeToken"] as? String {
                self.srcModelScopeToken = value
            }
            if let value = dict["srcOssBucket"] as? String {
                self.srcOssBucket = value
            }
            if let value = dict["srcOssPath"] as? String {
                self.srcOssPath = value
            }
            if let value = dict["srcOssRegion"] as? String {
                self.srcOssRegion = value
            }
            if let value = dict["syncStrategy"] as? String {
                self.syncStrategy = value
            }
            if let value = dict["withPPU"] as? Bool {
                self.withPPU = value
            }
            if let value = dict["workingDir"] as? String {
                self.workingDir = value
            }
        }
    }
    public class NasConfig : Tea.TeaModel {
        public class MountPoints : Tea.TeaModel {
            public var enableTLS: Bool?

            public var mountDir: String?

            public var serverAddr: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableTLS != nil {
                    map["enableTLS"] = self.enableTLS!
                }
                if self.mountDir != nil {
                    map["mountDir"] = self.mountDir!
                }
                if self.serverAddr != nil {
                    map["serverAddr"] = self.serverAddr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enableTLS"] as? Bool {
                    self.enableTLS = value
                }
                if let value = dict["mountDir"] as? String {
                    self.mountDir = value
                }
                if let value = dict["serverAddr"] as? String {
                    self.serverAddr = value
                }
            }
        }
        public var groupId: Int32?

        public var mountPoints: [DeploySGLangModelInput.NasConfig.MountPoints]?

        public var userId: Int32?

        public override init() {
            super.init()
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
                map["groupId"] = self.groupId!
            }
            if self.mountPoints != nil {
                var tmp : [Any] = []
                for k in self.mountPoints! {
                    tmp.append(k.toMap())
                }
                map["mountPoints"] = tmp
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["groupId"] as? Int32 {
                self.groupId = value
            }
            if let value = dict["mountPoints"] as? [Any?] {
                var tmp : [DeploySGLangModelInput.NasConfig.MountPoints] = []
                for v in value {
                    if v != nil {
                        var model = DeploySGLangModelInput.NasConfig.MountPoints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mountPoints = tmp
            }
            if let value = dict["userId"] as? Int32 {
                self.userId = value
            }
        }
    }
    public class OssMountConfig : Tea.TeaModel {
        public class MountPoints : Tea.TeaModel {
            public var bucketName: String?

            public var bucketPath: String?

            public var endpoint: String?

            public var mountDir: String?

            public var readOnly: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bucketName != nil {
                    map["bucketName"] = self.bucketName!
                }
                if self.bucketPath != nil {
                    map["bucketPath"] = self.bucketPath!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.mountDir != nil {
                    map["mountDir"] = self.mountDir!
                }
                if self.readOnly != nil {
                    map["readOnly"] = self.readOnly!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bucketName"] as? String {
                    self.bucketName = value
                }
                if let value = dict["bucketPath"] as? String {
                    self.bucketPath = value
                }
                if let value = dict["endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["mountDir"] as? String {
                    self.mountDir = value
                }
                if let value = dict["readOnly"] as? Bool {
                    self.readOnly = value
                }
            }
        }
        public var mountPoints: [DeploySGLangModelInput.OssMountConfig.MountPoints]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mountPoints != nil {
                var tmp : [Any] = []
                for k in self.mountPoints! {
                    tmp.append(k.toMap())
                }
                map["mountPoints"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mountPoints"] as? [Any?] {
                var tmp : [DeploySGLangModelInput.OssMountConfig.MountPoints] = []
                for v in value {
                    if v != nil {
                        var model = DeploySGLangModelInput.OssMountConfig.MountPoints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mountPoints = tmp
            }
        }
    }
    public class ProvisionConfig : Tea.TeaModel {
        public class ScheduledActions : Tea.TeaModel {
            public var endTime: String?

            public var name: String?

            public var scheduleExpression: String?

            public var startTime: String?

            public var target: Int32?

            public var timeZone: String?

            public override init() {
                super.init()
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
                    map["endTime"] = self.endTime!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.scheduleExpression != nil {
                    map["scheduleExpression"] = self.scheduleExpression!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                if self.target != nil {
                    map["target"] = self.target!
                }
                if self.timeZone != nil {
                    map["timeZone"] = self.timeZone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["endTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["scheduleExpression"] as? String {
                    self.scheduleExpression = value
                }
                if let value = dict["startTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["target"] as? Int32 {
                    self.target = value
                }
                if let value = dict["timeZone"] as? String {
                    self.timeZone = value
                }
            }
        }
        public var alwaysAllocateGPU: Bool?

        public var scheduledActions: [DeploySGLangModelInput.ProvisionConfig.ScheduledActions]?

        public var target: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alwaysAllocateGPU != nil {
                map["alwaysAllocateGPU"] = self.alwaysAllocateGPU!
            }
            if self.scheduledActions != nil {
                var tmp : [Any] = []
                for k in self.scheduledActions! {
                    tmp.append(k.toMap())
                }
                map["scheduledActions"] = tmp
            }
            if self.target != nil {
                map["target"] = self.target!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alwaysAllocateGPU"] as? Bool {
                self.alwaysAllocateGPU = value
            }
            if let value = dict["scheduledActions"] as? [Any?] {
                var tmp : [DeploySGLangModelInput.ProvisionConfig.ScheduledActions] = []
                for v in value {
                    if v != nil {
                        var model = DeploySGLangModelInput.ProvisionConfig.ScheduledActions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scheduledActions = tmp
            }
            if let value = dict["target"] as? Int32 {
                self.target = value
            }
        }
    }
    public class VpcConfig : Tea.TeaModel {
        public var securityGroupId: String?

        public var vSwitchIds: [String]?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchIds != nil {
                map["vSwitchIds"] = self.vSwitchIds!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["securityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["vSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["vpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accountID: String?

    public var concurrencyConfig: DeploySGLangModelInput.ConcurrencyConfig?

    public var cpu: Double?

    public var customContainerConfig: DeploySGLangModelInput.CustomContainerConfig?

    public var description_: String?

    public var diskSize: Int32?

    public var envName: String?

    public var environmentVariables: [String: Any]?

    public var featureGates: DeploySGLangModelInput.FeatureGates?

    public var gpuConfig: DeploySGLangModelInput.GpuConfig?

    public var httpTrigger: DeploySGLangModelInput.HttpTrigger?

    public var imageName: String?

    public var instanceConcurrency: Int32?

    public var logConfig: DeploySGLangModelInput.LogConfig?

    public var memorySize: Int32?

    public var modelConfig: DeploySGLangModelInput.ModelConfig?

    public var name: String?

    public var nasConfig: DeploySGLangModelInput.NasConfig?

    public var originalName: String?

    public var ossMountConfig: DeploySGLangModelInput.OssMountConfig?

    public var projectName: String?

    public var provisionConfig: DeploySGLangModelInput.ProvisionConfig?

    public var region: String?

    public var reportStatusURL: String?

    public var role: String?

    public var timeout: Int32?

    public var traceId: String?

    public var vpcConfig: DeploySGLangModelInput.VpcConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.concurrencyConfig?.validate()
        try self.customContainerConfig?.validate()
        try self.featureGates?.validate()
        try self.gpuConfig?.validate()
        try self.httpTrigger?.validate()
        try self.logConfig?.validate()
        try self.modelConfig?.validate()
        try self.nasConfig?.validate()
        try self.ossMountConfig?.validate()
        try self.provisionConfig?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountID != nil {
            map["accountID"] = self.accountID!
        }
        if self.concurrencyConfig != nil {
            map["concurrencyConfig"] = self.concurrencyConfig?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.customContainerConfig != nil {
            map["customContainerConfig"] = self.customContainerConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.diskSize != nil {
            map["diskSize"] = self.diskSize!
        }
        if self.envName != nil {
            map["envName"] = self.envName!
        }
        if self.environmentVariables != nil {
            map["environmentVariables"] = self.environmentVariables!
        }
        if self.featureGates != nil {
            map["featureGates"] = self.featureGates?.toMap()
        }
        if self.gpuConfig != nil {
            map["gpuConfig"] = self.gpuConfig?.toMap()
        }
        if self.httpTrigger != nil {
            map["httpTrigger"] = self.httpTrigger?.toMap()
        }
        if self.imageName != nil {
            map["imageName"] = self.imageName!
        }
        if self.instanceConcurrency != nil {
            map["instanceConcurrency"] = self.instanceConcurrency!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.modelConfig != nil {
            map["modelConfig"] = self.modelConfig?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nasConfig != nil {
            map["nasConfig"] = self.nasConfig?.toMap()
        }
        if self.originalName != nil {
            map["originalName"] = self.originalName!
        }
        if self.ossMountConfig != nil {
            map["ossMountConfig"] = self.ossMountConfig?.toMap()
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.provisionConfig != nil {
            map["provisionConfig"] = self.provisionConfig?.toMap()
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.reportStatusURL != nil {
            map["reportStatusURL"] = self.reportStatusURL!
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountID"] as? String {
            self.accountID = value
        }
        if let value = dict["concurrencyConfig"] as? [String: Any?] {
            var model = DeploySGLangModelInput.ConcurrencyConfig()
            model.fromMap(value)
            self.concurrencyConfig = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["customContainerConfig"] as? [String: Any?] {
            var model = DeploySGLangModelInput.CustomContainerConfig()
            model.fromMap(value)
            self.customContainerConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["diskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["envName"] as? String {
            self.envName = value
        }
        if let value = dict["environmentVariables"] as? [String: Any] {
            self.environmentVariables = value
        }
        if let value = dict["featureGates"] as? [String: Any?] {
            var model = DeploySGLangModelInput.FeatureGates()
            model.fromMap(value)
            self.featureGates = model
        }
        if let value = dict["gpuConfig"] as? [String: Any?] {
            var model = DeploySGLangModelInput.GpuConfig()
            model.fromMap(value)
            self.gpuConfig = model
        }
        if let value = dict["httpTrigger"] as? [String: Any?] {
            var model = DeploySGLangModelInput.HttpTrigger()
            model.fromMap(value)
            self.httpTrigger = model
        }
        if let value = dict["imageName"] as? String {
            self.imageName = value
        }
        if let value = dict["instanceConcurrency"] as? Int32 {
            self.instanceConcurrency = value
        }
        if let value = dict["logConfig"] as? [String: Any?] {
            var model = DeploySGLangModelInput.LogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["memorySize"] as? Int32 {
            self.memorySize = value
        }
        if let value = dict["modelConfig"] as? [String: Any?] {
            var model = DeploySGLangModelInput.ModelConfig()
            model.fromMap(value)
            self.modelConfig = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nasConfig"] as? [String: Any?] {
            var model = DeploySGLangModelInput.NasConfig()
            model.fromMap(value)
            self.nasConfig = model
        }
        if let value = dict["originalName"] as? String {
            self.originalName = value
        }
        if let value = dict["ossMountConfig"] as? [String: Any?] {
            var model = DeploySGLangModelInput.OssMountConfig()
            model.fromMap(value)
            self.ossMountConfig = model
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["provisionConfig"] as? [String: Any?] {
            var model = DeploySGLangModelInput.ProvisionConfig()
            model.fromMap(value)
            self.provisionConfig = model
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["reportStatusURL"] as? String {
            self.reportStatusURL = value
        }
        if let value = dict["role"] as? String {
            self.role = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
        if let value = dict["vpcConfig"] as? [String: Any?] {
            var model = DeploySGLangModelInput.VpcConfig()
            model.fromMap(value)
            self.vpcConfig = model
        }
    }
}

public class DeploySGLangModelOutput : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deploymentTaskID: String?

        public var errorMessage: String?

        public var finished: Bool?

        public var modelName: String?

        public var serviceName: String?

        public var traceID: String?

        public var urlInternet: String?

        public var urlIntranet: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deploymentTaskID != nil {
                map["deploymentTaskID"] = self.deploymentTaskID!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.finished != nil {
                map["finished"] = self.finished!
            }
            if self.modelName != nil {
                map["modelName"] = self.modelName!
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
            }
            if self.traceID != nil {
                map["traceID"] = self.traceID!
            }
            if self.urlInternet != nil {
                map["urlInternet"] = self.urlInternet!
            }
            if self.urlIntranet != nil {
                map["urlIntranet"] = self.urlIntranet!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deploymentTaskID"] as? String {
                self.deploymentTaskID = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["finished"] as? Bool {
                self.finished = value
            }
            if let value = dict["modelName"] as? String {
                self.modelName = value
            }
            if let value = dict["serviceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["traceID"] as? String {
                self.traceID = value
            }
            if let value = dict["urlInternet"] as? String {
                self.urlInternet = value
            }
            if let value = dict["urlIntranet"] as? String {
                self.urlIntranet = value
            }
        }
    }
    public var data: DeploySGLangModelOutput.Data?

    public var errCode: String?

    public var errMsg: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeploySGLangModelOutput.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeployTensorRtModelAsyncOutput : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMsg: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeployTensorRtModelInput : Tea.TeaModel {
    public class ConcurrencyConfig : Tea.TeaModel {
        public var reservedConcurrency: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.reservedConcurrency != nil {
                map["reservedConcurrency"] = self.reservedConcurrency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["reservedConcurrency"] as? Int32 {
                self.reservedConcurrency = value
            }
        }
    }
    public class GpuConfig : Tea.TeaModel {
        public var gpuMemorySize: Int32?

        public var gpuType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gpuMemorySize != nil {
                map["gpuMemorySize"] = self.gpuMemorySize!
            }
            if self.gpuType != nil {
                map["gpuType"] = self.gpuType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gpuMemorySize"] as? Int32 {
                self.gpuMemorySize = value
            }
            if let value = dict["gpuType"] as? String {
                self.gpuType = value
            }
        }
    }
    public class HttpTrigger : Tea.TeaModel {
        public class TriggerConfig : Tea.TeaModel {
            public var authConfig: String?

            public var authType: String?

            public var disableURLInternet: Bool?

            public var dsableURLInternet: Bool?

            public var methods: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authConfig != nil {
                    map["authConfig"] = self.authConfig!
                }
                if self.authType != nil {
                    map["authType"] = self.authType!
                }
                if self.disableURLInternet != nil {
                    map["disableURLInternet"] = self.disableURLInternet!
                }
                if self.dsableURLInternet != nil {
                    map["dsableURLInternet"] = self.dsableURLInternet!
                }
                if self.methods != nil {
                    map["methods"] = self.methods!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["authConfig"] as? String {
                    self.authConfig = value
                }
                if let value = dict["authType"] as? String {
                    self.authType = value
                }
                if let value = dict["disableURLInternet"] as? Bool {
                    self.disableURLInternet = value
                }
                if let value = dict["dsableURLInternet"] as? Bool {
                    self.dsableURLInternet = value
                }
                if let value = dict["methods"] as? [String] {
                    self.methods = value
                }
            }
        }
        public var qualifier: String?

        public var triggerConfig: DeployTensorRtModelInput.HttpTrigger.TriggerConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.triggerConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.qualifier != nil {
                map["qualifier"] = self.qualifier!
            }
            if self.triggerConfig != nil {
                map["triggerConfig"] = self.triggerConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["qualifier"] as? String {
                self.qualifier = value
            }
            if let value = dict["triggerConfig"] as? [String: Any?] {
                var model = DeployTensorRtModelInput.HttpTrigger.TriggerConfig()
                model.fromMap(value)
                self.triggerConfig = model
            }
        }
    }
    public class LogConfig : Tea.TeaModel {
        public var enableInstanceMetrics: Bool?

        public var enableRequestMetrics: Bool?

        public var logBeginRule: String?

        public var logstore: String?

        public var project: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableInstanceMetrics != nil {
                map["enableInstanceMetrics"] = self.enableInstanceMetrics!
            }
            if self.enableRequestMetrics != nil {
                map["enableRequestMetrics"] = self.enableRequestMetrics!
            }
            if self.logBeginRule != nil {
                map["logBeginRule"] = self.logBeginRule!
            }
            if self.logstore != nil {
                map["logstore"] = self.logstore!
            }
            if self.project != nil {
                map["project"] = self.project!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enableInstanceMetrics"] as? Bool {
                self.enableInstanceMetrics = value
            }
            if let value = dict["enableRequestMetrics"] as? Bool {
                self.enableRequestMetrics = value
            }
            if let value = dict["logBeginRule"] as? String {
                self.logBeginRule = value
            }
            if let value = dict["logstore"] as? String {
                self.logstore = value
            }
            if let value = dict["project"] as? String {
                self.project = value
            }
        }
    }
    public class ModelConfig : Tea.TeaModel {
        public var framework: String?

        public var multiModelConfig: [ModelConfig]?

        public var prefix_: String?

        public var sourceType: String?

        public var srcModelScopeModelID: String?

        public var srcModelScopeModelRevision: String?

        public var srcModelScopeToken: String?

        public var srcOssBucket: String?

        public var srcOssPath: String?

        public var srcOssRegion: String?

        public var syncStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.framework != nil {
                map["framework"] = self.framework!
            }
            if self.multiModelConfig != nil {
                var tmp : [Any] = []
                for k in self.multiModelConfig! {
                    tmp.append(k.toMap())
                }
                map["multiModelConfig"] = tmp
            }
            if self.prefix_ != nil {
                map["prefix"] = self.prefix_!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            if self.srcModelScopeModelID != nil {
                map["srcModelScopeModelID"] = self.srcModelScopeModelID!
            }
            if self.srcModelScopeModelRevision != nil {
                map["srcModelScopeModelRevision"] = self.srcModelScopeModelRevision!
            }
            if self.srcModelScopeToken != nil {
                map["srcModelScopeToken"] = self.srcModelScopeToken!
            }
            if self.srcOssBucket != nil {
                map["srcOssBucket"] = self.srcOssBucket!
            }
            if self.srcOssPath != nil {
                map["srcOssPath"] = self.srcOssPath!
            }
            if self.srcOssRegion != nil {
                map["srcOssRegion"] = self.srcOssRegion!
            }
            if self.syncStrategy != nil {
                map["syncStrategy"] = self.syncStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["framework"] as? String {
                self.framework = value
            }
            if let value = dict["multiModelConfig"] as? [Any?] {
                var tmp : [ModelConfig] = []
                for v in value {
                    if v != nil {
                        var model = ModelConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.multiModelConfig = tmp
            }
            if let value = dict["prefix"] as? String {
                self.prefix_ = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["srcModelScopeModelID"] as? String {
                self.srcModelScopeModelID = value
            }
            if let value = dict["srcModelScopeModelRevision"] as? String {
                self.srcModelScopeModelRevision = value
            }
            if let value = dict["srcModelScopeToken"] as? String {
                self.srcModelScopeToken = value
            }
            if let value = dict["srcOssBucket"] as? String {
                self.srcOssBucket = value
            }
            if let value = dict["srcOssPath"] as? String {
                self.srcOssPath = value
            }
            if let value = dict["srcOssRegion"] as? String {
                self.srcOssRegion = value
            }
            if let value = dict["syncStrategy"] as? String {
                self.syncStrategy = value
            }
        }
    }
    public class NasConfig : Tea.TeaModel {
        public class MountPoints : Tea.TeaModel {
            public var enableTLS: Bool?

            public var mountDir: String?

            public var serverAddr: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableTLS != nil {
                    map["enableTLS"] = self.enableTLS!
                }
                if self.mountDir != nil {
                    map["mountDir"] = self.mountDir!
                }
                if self.serverAddr != nil {
                    map["serverAddr"] = self.serverAddr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enableTLS"] as? Bool {
                    self.enableTLS = value
                }
                if let value = dict["mountDir"] as? String {
                    self.mountDir = value
                }
                if let value = dict["serverAddr"] as? String {
                    self.serverAddr = value
                }
            }
        }
        public var groupId: Int32?

        public var mountPoints: [DeployTensorRtModelInput.NasConfig.MountPoints]?

        public var userId: Int32?

        public override init() {
            super.init()
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
                map["groupId"] = self.groupId!
            }
            if self.mountPoints != nil {
                var tmp : [Any] = []
                for k in self.mountPoints! {
                    tmp.append(k.toMap())
                }
                map["mountPoints"] = tmp
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["groupId"] as? Int32 {
                self.groupId = value
            }
            if let value = dict["mountPoints"] as? [Any?] {
                var tmp : [DeployTensorRtModelInput.NasConfig.MountPoints] = []
                for v in value {
                    if v != nil {
                        var model = DeployTensorRtModelInput.NasConfig.MountPoints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mountPoints = tmp
            }
            if let value = dict["userId"] as? Int32 {
                self.userId = value
            }
        }
    }
    public class ProvisionConfig : Tea.TeaModel {
        public class ScheduledActions : Tea.TeaModel {
            public var endTime: String?

            public var name: String?

            public var scheduleExpression: String?

            public var startTime: String?

            public var target: Int32?

            public var timeZone: String?

            public override init() {
                super.init()
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
                    map["endTime"] = self.endTime!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.scheduleExpression != nil {
                    map["scheduleExpression"] = self.scheduleExpression!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                if self.target != nil {
                    map["target"] = self.target!
                }
                if self.timeZone != nil {
                    map["timeZone"] = self.timeZone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["endTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["scheduleExpression"] as? String {
                    self.scheduleExpression = value
                }
                if let value = dict["startTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["target"] as? Int32 {
                    self.target = value
                }
                if let value = dict["timeZone"] as? String {
                    self.timeZone = value
                }
            }
        }
        public var alwaysAllocateGPU: Bool?

        public var scheduledActions: [DeployTensorRtModelInput.ProvisionConfig.ScheduledActions]?

        public var target: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alwaysAllocateGPU != nil {
                map["alwaysAllocateGPU"] = self.alwaysAllocateGPU!
            }
            if self.scheduledActions != nil {
                var tmp : [Any] = []
                for k in self.scheduledActions! {
                    tmp.append(k.toMap())
                }
                map["scheduledActions"] = tmp
            }
            if self.target != nil {
                map["target"] = self.target!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alwaysAllocateGPU"] as? Bool {
                self.alwaysAllocateGPU = value
            }
            if let value = dict["scheduledActions"] as? [Any?] {
                var tmp : [DeployTensorRtModelInput.ProvisionConfig.ScheduledActions] = []
                for v in value {
                    if v != nil {
                        var model = DeployTensorRtModelInput.ProvisionConfig.ScheduledActions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scheduledActions = tmp
            }
            if let value = dict["target"] as? Int32 {
                self.target = value
            }
        }
    }
    public class VpcConfig : Tea.TeaModel {
        public var securityGroupId: String?

        public var vSwitchIds: [String]?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchIds != nil {
                map["vSwitchIds"] = self.vSwitchIds!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["securityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["vSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["vpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accountID: String?

    public var concurrencyConfig: DeployTensorRtModelInput.ConcurrencyConfig?

    public var cpu: Double?

    public var description_: String?

    public var diskSize: Int32?

    public var envName: String?

    public var environmentVariables: [String: Any]?

    public var gpuConfig: DeployTensorRtModelInput.GpuConfig?

    public var httpTrigger: DeployTensorRtModelInput.HttpTrigger?

    public var imageName: String?

    public var instanceConcurrency: Int32?

    public var logConfig: DeployTensorRtModelInput.LogConfig?

    public var memorySize: Int32?

    public var modelConfig: DeployTensorRtModelInput.ModelConfig?

    public var name: String?

    public var nasConfig: DeployTensorRtModelInput.NasConfig?

    public var originalName: String?

    public var projectName: String?

    public var provisionConfig: DeployTensorRtModelInput.ProvisionConfig?

    public var region: String?

    public var reportStatusURL: String?

    public var role: String?

    public var timeout: Int32?

    public var traceId: String?

    public var vpcConfig: DeployTensorRtModelInput.VpcConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.concurrencyConfig?.validate()
        try self.gpuConfig?.validate()
        try self.httpTrigger?.validate()
        try self.logConfig?.validate()
        try self.modelConfig?.validate()
        try self.nasConfig?.validate()
        try self.provisionConfig?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountID != nil {
            map["accountID"] = self.accountID!
        }
        if self.concurrencyConfig != nil {
            map["concurrencyConfig"] = self.concurrencyConfig?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.diskSize != nil {
            map["diskSize"] = self.diskSize!
        }
        if self.envName != nil {
            map["envName"] = self.envName!
        }
        if self.environmentVariables != nil {
            map["environmentVariables"] = self.environmentVariables!
        }
        if self.gpuConfig != nil {
            map["gpuConfig"] = self.gpuConfig?.toMap()
        }
        if self.httpTrigger != nil {
            map["httpTrigger"] = self.httpTrigger?.toMap()
        }
        if self.imageName != nil {
            map["imageName"] = self.imageName!
        }
        if self.instanceConcurrency != nil {
            map["instanceConcurrency"] = self.instanceConcurrency!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.modelConfig != nil {
            map["modelConfig"] = self.modelConfig?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nasConfig != nil {
            map["nasConfig"] = self.nasConfig?.toMap()
        }
        if self.originalName != nil {
            map["originalName"] = self.originalName!
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.provisionConfig != nil {
            map["provisionConfig"] = self.provisionConfig?.toMap()
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.reportStatusURL != nil {
            map["reportStatusURL"] = self.reportStatusURL!
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountID"] as? String {
            self.accountID = value
        }
        if let value = dict["concurrencyConfig"] as? [String: Any?] {
            var model = DeployTensorRtModelInput.ConcurrencyConfig()
            model.fromMap(value)
            self.concurrencyConfig = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["diskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["envName"] as? String {
            self.envName = value
        }
        if let value = dict["environmentVariables"] as? [String: Any] {
            self.environmentVariables = value
        }
        if let value = dict["gpuConfig"] as? [String: Any?] {
            var model = DeployTensorRtModelInput.GpuConfig()
            model.fromMap(value)
            self.gpuConfig = model
        }
        if let value = dict["httpTrigger"] as? [String: Any?] {
            var model = DeployTensorRtModelInput.HttpTrigger()
            model.fromMap(value)
            self.httpTrigger = model
        }
        if let value = dict["imageName"] as? String {
            self.imageName = value
        }
        if let value = dict["instanceConcurrency"] as? Int32 {
            self.instanceConcurrency = value
        }
        if let value = dict["logConfig"] as? [String: Any?] {
            var model = DeployTensorRtModelInput.LogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["memorySize"] as? Int32 {
            self.memorySize = value
        }
        if let value = dict["modelConfig"] as? [String: Any?] {
            var model = DeployTensorRtModelInput.ModelConfig()
            model.fromMap(value)
            self.modelConfig = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nasConfig"] as? [String: Any?] {
            var model = DeployTensorRtModelInput.NasConfig()
            model.fromMap(value)
            self.nasConfig = model
        }
        if let value = dict["originalName"] as? String {
            self.originalName = value
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["provisionConfig"] as? [String: Any?] {
            var model = DeployTensorRtModelInput.ProvisionConfig()
            model.fromMap(value)
            self.provisionConfig = model
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["reportStatusURL"] as? String {
            self.reportStatusURL = value
        }
        if let value = dict["role"] as? String {
            self.role = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
        if let value = dict["vpcConfig"] as? [String: Any?] {
            var model = DeployTensorRtModelInput.VpcConfig()
            model.fromMap(value)
            self.vpcConfig = model
        }
    }
}

public class DeployTensorRtModelOutput : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deploymentTaskID: String?

        public var errorMessage: String?

        public var finished: Bool?

        public var serviceName: String?

        public var traceID: String?

        public var urlInternet: String?

        public var urlIntranet: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deploymentTaskID != nil {
                map["deploymentTaskID"] = self.deploymentTaskID!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.finished != nil {
                map["finished"] = self.finished!
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
            }
            if self.traceID != nil {
                map["traceID"] = self.traceID!
            }
            if self.urlInternet != nil {
                map["urlInternet"] = self.urlInternet!
            }
            if self.urlIntranet != nil {
                map["urlIntranet"] = self.urlIntranet!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deploymentTaskID"] as? String {
                self.deploymentTaskID = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["finished"] as? Bool {
                self.finished = value
            }
            if let value = dict["serviceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["traceID"] as? String {
                self.traceID = value
            }
            if let value = dict["urlInternet"] as? String {
                self.urlInternet = value
            }
            if let value = dict["urlIntranet"] as? String {
                self.urlIntranet = value
            }
        }
    }
    public var data: DeployTensorRtModelOutput.Data?

    public var errCode: String?

    public var errMsg: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeployTensorRtModelOutput.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeployVllmModelAsyncOutput : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMsg: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeployVllmModelInput : Tea.TeaModel {
    public class ConcurrencyConfig : Tea.TeaModel {
        public var reservedConcurrency: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.reservedConcurrency != nil {
                map["reservedConcurrency"] = self.reservedConcurrency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["reservedConcurrency"] as? Int32 {
                self.reservedConcurrency = value
            }
        }
    }
    public class CustomContainerConfig : Tea.TeaModel {
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
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public class FeatureGates : Tea.TeaModel {
        public var asyncProvisionCheck: Bool?

        public var disableRollbackOnProvisionFailure: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.asyncProvisionCheck != nil {
                map["asyncProvisionCheck"] = self.asyncProvisionCheck!
            }
            if self.disableRollbackOnProvisionFailure != nil {
                map["disableRollbackOnProvisionFailure"] = self.disableRollbackOnProvisionFailure!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["asyncProvisionCheck"] as? Bool {
                self.asyncProvisionCheck = value
            }
            if let value = dict["disableRollbackOnProvisionFailure"] as? Bool {
                self.disableRollbackOnProvisionFailure = value
            }
        }
    }
    public class GpuConfig : Tea.TeaModel {
        public var gpuMemorySize: Int32?

        public var gpuType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gpuMemorySize != nil {
                map["gpuMemorySize"] = self.gpuMemorySize!
            }
            if self.gpuType != nil {
                map["gpuType"] = self.gpuType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gpuMemorySize"] as? Int32 {
                self.gpuMemorySize = value
            }
            if let value = dict["gpuType"] as? String {
                self.gpuType = value
            }
        }
    }
    public class HttpTrigger : Tea.TeaModel {
        public class TriggerConfig : Tea.TeaModel {
            public var authConfig: String?

            public var authType: String?

            public var disableURLInternet: Bool?

            public var dsableURLInternet: Bool?

            public var methods: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authConfig != nil {
                    map["authConfig"] = self.authConfig!
                }
                if self.authType != nil {
                    map["authType"] = self.authType!
                }
                if self.disableURLInternet != nil {
                    map["disableURLInternet"] = self.disableURLInternet!
                }
                if self.dsableURLInternet != nil {
                    map["dsableURLInternet"] = self.dsableURLInternet!
                }
                if self.methods != nil {
                    map["methods"] = self.methods!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["authConfig"] as? String {
                    self.authConfig = value
                }
                if let value = dict["authType"] as? String {
                    self.authType = value
                }
                if let value = dict["disableURLInternet"] as? Bool {
                    self.disableURLInternet = value
                }
                if let value = dict["dsableURLInternet"] as? Bool {
                    self.dsableURLInternet = value
                }
                if let value = dict["methods"] as? [String] {
                    self.methods = value
                }
            }
        }
        public var qualifier: String?

        public var triggerConfig: DeployVllmModelInput.HttpTrigger.TriggerConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.triggerConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.qualifier != nil {
                map["qualifier"] = self.qualifier!
            }
            if self.triggerConfig != nil {
                map["triggerConfig"] = self.triggerConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["qualifier"] as? String {
                self.qualifier = value
            }
            if let value = dict["triggerConfig"] as? [String: Any?] {
                var model = DeployVllmModelInput.HttpTrigger.TriggerConfig()
                model.fromMap(value)
                self.triggerConfig = model
            }
        }
    }
    public class LogConfig : Tea.TeaModel {
        public var enableInstanceMetrics: Bool?

        public var enableRequestMetrics: Bool?

        public var logBeginRule: String?

        public var logstore: String?

        public var project: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableInstanceMetrics != nil {
                map["enableInstanceMetrics"] = self.enableInstanceMetrics!
            }
            if self.enableRequestMetrics != nil {
                map["enableRequestMetrics"] = self.enableRequestMetrics!
            }
            if self.logBeginRule != nil {
                map["logBeginRule"] = self.logBeginRule!
            }
            if self.logstore != nil {
                map["logstore"] = self.logstore!
            }
            if self.project != nil {
                map["project"] = self.project!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enableInstanceMetrics"] as? Bool {
                self.enableInstanceMetrics = value
            }
            if let value = dict["enableRequestMetrics"] as? Bool {
                self.enableRequestMetrics = value
            }
            if let value = dict["logBeginRule"] as? String {
                self.logBeginRule = value
            }
            if let value = dict["logstore"] as? String {
                self.logstore = value
            }
            if let value = dict["project"] as? String {
                self.project = value
            }
        }
    }
    public class ModelConfig : Tea.TeaModel {
        public class FmkVllmConfig : Tea.TeaModel {
            public var apiKey: String?

            public var blockSize: Int32?

            public var chatTemplate: String?

            public var dtype: String?

            public var fullTextPostfix: String?

            public var gpuMemoryUtilization: Double?

            public var loadFormat: String?

            public var maxModelLen: Int32?

            public var maxParallelLoadingWorkers: Int32?

            public var quantization: String?

            public var servedModelName: String?

            public var swapSpace: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiKey != nil {
                    map["apiKey"] = self.apiKey!
                }
                if self.blockSize != nil {
                    map["blockSize"] = self.blockSize!
                }
                if self.chatTemplate != nil {
                    map["chatTemplate"] = self.chatTemplate!
                }
                if self.dtype != nil {
                    map["dtype"] = self.dtype!
                }
                if self.fullTextPostfix != nil {
                    map["fullTextPostfix"] = self.fullTextPostfix!
                }
                if self.gpuMemoryUtilization != nil {
                    map["gpuMemoryUtilization"] = self.gpuMemoryUtilization!
                }
                if self.loadFormat != nil {
                    map["loadFormat"] = self.loadFormat!
                }
                if self.maxModelLen != nil {
                    map["maxModelLen"] = self.maxModelLen!
                }
                if self.maxParallelLoadingWorkers != nil {
                    map["maxParallelLoadingWorkers"] = self.maxParallelLoadingWorkers!
                }
                if self.quantization != nil {
                    map["quantization"] = self.quantization!
                }
                if self.servedModelName != nil {
                    map["servedModelName"] = self.servedModelName!
                }
                if self.swapSpace != nil {
                    map["swapSpace"] = self.swapSpace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["apiKey"] as? String {
                    self.apiKey = value
                }
                if let value = dict["blockSize"] as? Int32 {
                    self.blockSize = value
                }
                if let value = dict["chatTemplate"] as? String {
                    self.chatTemplate = value
                }
                if let value = dict["dtype"] as? String {
                    self.dtype = value
                }
                if let value = dict["fullTextPostfix"] as? String {
                    self.fullTextPostfix = value
                }
                if let value = dict["gpuMemoryUtilization"] as? Double {
                    self.gpuMemoryUtilization = value
                }
                if let value = dict["loadFormat"] as? String {
                    self.loadFormat = value
                }
                if let value = dict["maxModelLen"] as? Int32 {
                    self.maxModelLen = value
                }
                if let value = dict["maxParallelLoadingWorkers"] as? Int32 {
                    self.maxParallelLoadingWorkers = value
                }
                if let value = dict["quantization"] as? String {
                    self.quantization = value
                }
                if let value = dict["servedModelName"] as? String {
                    self.servedModelName = value
                }
                if let value = dict["swapSpace"] as? Int32 {
                    self.swapSpace = value
                }
            }
        }
        public var fmkVllmConfig: DeployVllmModelInput.ModelConfig.FmkVllmConfig?

        public var framework: String?

        public var multiModelConfig: [ModelConfig]?

        public var prefix_: String?

        public var skipDownload: Bool?

        public var sourceType: String?

        public var srcModelScopeModelID: String?

        public var srcModelScopeModelRevision: String?

        public var srcModelScopeToken: String?

        public var srcOssBucket: String?

        public var srcOssPath: String?

        public var srcOssRegion: String?

        public var syncStrategy: String?

        public var withPPU: Bool?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.fmkVllmConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fmkVllmConfig != nil {
                map["fmkVllmConfig"] = self.fmkVllmConfig?.toMap()
            }
            if self.framework != nil {
                map["framework"] = self.framework!
            }
            if self.multiModelConfig != nil {
                var tmp : [Any] = []
                for k in self.multiModelConfig! {
                    tmp.append(k.toMap())
                }
                map["multiModelConfig"] = tmp
            }
            if self.prefix_ != nil {
                map["prefix"] = self.prefix_!
            }
            if self.skipDownload != nil {
                map["skipDownload"] = self.skipDownload!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            if self.srcModelScopeModelID != nil {
                map["srcModelScopeModelID"] = self.srcModelScopeModelID!
            }
            if self.srcModelScopeModelRevision != nil {
                map["srcModelScopeModelRevision"] = self.srcModelScopeModelRevision!
            }
            if self.srcModelScopeToken != nil {
                map["srcModelScopeToken"] = self.srcModelScopeToken!
            }
            if self.srcOssBucket != nil {
                map["srcOssBucket"] = self.srcOssBucket!
            }
            if self.srcOssPath != nil {
                map["srcOssPath"] = self.srcOssPath!
            }
            if self.srcOssRegion != nil {
                map["srcOssRegion"] = self.srcOssRegion!
            }
            if self.syncStrategy != nil {
                map["syncStrategy"] = self.syncStrategy!
            }
            if self.withPPU != nil {
                map["withPPU"] = self.withPPU!
            }
            if self.workingDir != nil {
                map["workingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fmkVllmConfig"] as? [String: Any?] {
                var model = DeployVllmModelInput.ModelConfig.FmkVllmConfig()
                model.fromMap(value)
                self.fmkVllmConfig = model
            }
            if let value = dict["framework"] as? String {
                self.framework = value
            }
            if let value = dict["multiModelConfig"] as? [Any?] {
                var tmp : [ModelConfig] = []
                for v in value {
                    if v != nil {
                        var model = ModelConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.multiModelConfig = tmp
            }
            if let value = dict["prefix"] as? String {
                self.prefix_ = value
            }
            if let value = dict["skipDownload"] as? Bool {
                self.skipDownload = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["srcModelScopeModelID"] as? String {
                self.srcModelScopeModelID = value
            }
            if let value = dict["srcModelScopeModelRevision"] as? String {
                self.srcModelScopeModelRevision = value
            }
            if let value = dict["srcModelScopeToken"] as? String {
                self.srcModelScopeToken = value
            }
            if let value = dict["srcOssBucket"] as? String {
                self.srcOssBucket = value
            }
            if let value = dict["srcOssPath"] as? String {
                self.srcOssPath = value
            }
            if let value = dict["srcOssRegion"] as? String {
                self.srcOssRegion = value
            }
            if let value = dict["syncStrategy"] as? String {
                self.syncStrategy = value
            }
            if let value = dict["withPPU"] as? Bool {
                self.withPPU = value
            }
            if let value = dict["workingDir"] as? String {
                self.workingDir = value
            }
        }
    }
    public class NasConfig : Tea.TeaModel {
        public class MountPoints : Tea.TeaModel {
            public var enableTLS: Bool?

            public var mountDir: String?

            public var serverAddr: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableTLS != nil {
                    map["enableTLS"] = self.enableTLS!
                }
                if self.mountDir != nil {
                    map["mountDir"] = self.mountDir!
                }
                if self.serverAddr != nil {
                    map["serverAddr"] = self.serverAddr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enableTLS"] as? Bool {
                    self.enableTLS = value
                }
                if let value = dict["mountDir"] as? String {
                    self.mountDir = value
                }
                if let value = dict["serverAddr"] as? String {
                    self.serverAddr = value
                }
            }
        }
        public var groupId: Int32?

        public var mountPoints: [DeployVllmModelInput.NasConfig.MountPoints]?

        public var userId: Int32?

        public override init() {
            super.init()
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
                map["groupId"] = self.groupId!
            }
            if self.mountPoints != nil {
                var tmp : [Any] = []
                for k in self.mountPoints! {
                    tmp.append(k.toMap())
                }
                map["mountPoints"] = tmp
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["groupId"] as? Int32 {
                self.groupId = value
            }
            if let value = dict["mountPoints"] as? [Any?] {
                var tmp : [DeployVllmModelInput.NasConfig.MountPoints] = []
                for v in value {
                    if v != nil {
                        var model = DeployVllmModelInput.NasConfig.MountPoints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mountPoints = tmp
            }
            if let value = dict["userId"] as? Int32 {
                self.userId = value
            }
        }
    }
    public class OssMountConfig : Tea.TeaModel {
        public class MountPoints : Tea.TeaModel {
            public var bucketName: String?

            public var bucketPath: String?

            public var endpoint: String?

            public var mountDir: String?

            public var readOnly: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bucketName != nil {
                    map["bucketName"] = self.bucketName!
                }
                if self.bucketPath != nil {
                    map["bucketPath"] = self.bucketPath!
                }
                if self.endpoint != nil {
                    map["endpoint"] = self.endpoint!
                }
                if self.mountDir != nil {
                    map["mountDir"] = self.mountDir!
                }
                if self.readOnly != nil {
                    map["readOnly"] = self.readOnly!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bucketName"] as? String {
                    self.bucketName = value
                }
                if let value = dict["bucketPath"] as? String {
                    self.bucketPath = value
                }
                if let value = dict["endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["mountDir"] as? String {
                    self.mountDir = value
                }
                if let value = dict["readOnly"] as? Bool {
                    self.readOnly = value
                }
            }
        }
        public var mountPoints: [DeployVllmModelInput.OssMountConfig.MountPoints]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mountPoints != nil {
                var tmp : [Any] = []
                for k in self.mountPoints! {
                    tmp.append(k.toMap())
                }
                map["mountPoints"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["mountPoints"] as? [Any?] {
                var tmp : [DeployVllmModelInput.OssMountConfig.MountPoints] = []
                for v in value {
                    if v != nil {
                        var model = DeployVllmModelInput.OssMountConfig.MountPoints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mountPoints = tmp
            }
        }
    }
    public class ProvisionConfig : Tea.TeaModel {
        public class ScheduledActions : Tea.TeaModel {
            public var endTime: String?

            public var name: String?

            public var scheduleExpression: String?

            public var startTime: String?

            public var target: Int32?

            public var timeZone: String?

            public override init() {
                super.init()
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
                    map["endTime"] = self.endTime!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.scheduleExpression != nil {
                    map["scheduleExpression"] = self.scheduleExpression!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                if self.target != nil {
                    map["target"] = self.target!
                }
                if self.timeZone != nil {
                    map["timeZone"] = self.timeZone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["endTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["scheduleExpression"] as? String {
                    self.scheduleExpression = value
                }
                if let value = dict["startTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["target"] as? Int32 {
                    self.target = value
                }
                if let value = dict["timeZone"] as? String {
                    self.timeZone = value
                }
            }
        }
        public var alwaysAllocateGPU: Bool?

        public var scheduledActions: [DeployVllmModelInput.ProvisionConfig.ScheduledActions]?

        public var target: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alwaysAllocateGPU != nil {
                map["alwaysAllocateGPU"] = self.alwaysAllocateGPU!
            }
            if self.scheduledActions != nil {
                var tmp : [Any] = []
                for k in self.scheduledActions! {
                    tmp.append(k.toMap())
                }
                map["scheduledActions"] = tmp
            }
            if self.target != nil {
                map["target"] = self.target!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alwaysAllocateGPU"] as? Bool {
                self.alwaysAllocateGPU = value
            }
            if let value = dict["scheduledActions"] as? [Any?] {
                var tmp : [DeployVllmModelInput.ProvisionConfig.ScheduledActions] = []
                for v in value {
                    if v != nil {
                        var model = DeployVllmModelInput.ProvisionConfig.ScheduledActions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scheduledActions = tmp
            }
            if let value = dict["target"] as? Int32 {
                self.target = value
            }
        }
    }
    public class VpcConfig : Tea.TeaModel {
        public var securityGroupId: String?

        public var vSwitchIds: [String]?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityGroupId != nil {
                map["securityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchIds != nil {
                map["vSwitchIds"] = self.vSwitchIds!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["securityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["vSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
            if let value = dict["vpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var accountID: String?

    public var concurrencyConfig: DeployVllmModelInput.ConcurrencyConfig?

    public var cpu: Double?

    public var customContainerConfig: DeployVllmModelInput.CustomContainerConfig?

    public var description_: String?

    public var diskSize: Int32?

    public var envName: String?

    public var environmentVariables: [String: Any]?

    public var featureGates: DeployVllmModelInput.FeatureGates?

    public var gpuConfig: DeployVllmModelInput.GpuConfig?

    public var httpTrigger: DeployVllmModelInput.HttpTrigger?

    public var imageName: String?

    public var instanceConcurrency: Int32?

    public var logConfig: DeployVllmModelInput.LogConfig?

    public var memorySize: Int32?

    public var modelConfig: DeployVllmModelInput.ModelConfig?

    public var name: String?

    public var nasConfig: DeployVllmModelInput.NasConfig?

    public var originalName: String?

    public var ossMountConfig: DeployVllmModelInput.OssMountConfig?

    public var projectName: String?

    public var provisionConfig: DeployVllmModelInput.ProvisionConfig?

    public var region: String?

    public var reportStatusURL: String?

    public var role: String?

    public var timeout: Int32?

    public var traceId: String?

    public var vpcConfig: DeployVllmModelInput.VpcConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.concurrencyConfig?.validate()
        try self.customContainerConfig?.validate()
        try self.featureGates?.validate()
        try self.gpuConfig?.validate()
        try self.httpTrigger?.validate()
        try self.logConfig?.validate()
        try self.modelConfig?.validate()
        try self.nasConfig?.validate()
        try self.ossMountConfig?.validate()
        try self.provisionConfig?.validate()
        try self.vpcConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountID != nil {
            map["accountID"] = self.accountID!
        }
        if self.concurrencyConfig != nil {
            map["concurrencyConfig"] = self.concurrencyConfig?.toMap()
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.customContainerConfig != nil {
            map["customContainerConfig"] = self.customContainerConfig?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.diskSize != nil {
            map["diskSize"] = self.diskSize!
        }
        if self.envName != nil {
            map["envName"] = self.envName!
        }
        if self.environmentVariables != nil {
            map["environmentVariables"] = self.environmentVariables!
        }
        if self.featureGates != nil {
            map["featureGates"] = self.featureGates?.toMap()
        }
        if self.gpuConfig != nil {
            map["gpuConfig"] = self.gpuConfig?.toMap()
        }
        if self.httpTrigger != nil {
            map["httpTrigger"] = self.httpTrigger?.toMap()
        }
        if self.imageName != nil {
            map["imageName"] = self.imageName!
        }
        if self.instanceConcurrency != nil {
            map["instanceConcurrency"] = self.instanceConcurrency!
        }
        if self.logConfig != nil {
            map["logConfig"] = self.logConfig?.toMap()
        }
        if self.memorySize != nil {
            map["memorySize"] = self.memorySize!
        }
        if self.modelConfig != nil {
            map["modelConfig"] = self.modelConfig?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nasConfig != nil {
            map["nasConfig"] = self.nasConfig?.toMap()
        }
        if self.originalName != nil {
            map["originalName"] = self.originalName!
        }
        if self.ossMountConfig != nil {
            map["ossMountConfig"] = self.ossMountConfig?.toMap()
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.provisionConfig != nil {
            map["provisionConfig"] = self.provisionConfig?.toMap()
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.reportStatusURL != nil {
            map["reportStatusURL"] = self.reportStatusURL!
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.traceId != nil {
            map["traceId"] = self.traceId!
        }
        if self.vpcConfig != nil {
            map["vpcConfig"] = self.vpcConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountID"] as? String {
            self.accountID = value
        }
        if let value = dict["concurrencyConfig"] as? [String: Any?] {
            var model = DeployVllmModelInput.ConcurrencyConfig()
            model.fromMap(value)
            self.concurrencyConfig = model
        }
        if let value = dict["cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["customContainerConfig"] as? [String: Any?] {
            var model = DeployVllmModelInput.CustomContainerConfig()
            model.fromMap(value)
            self.customContainerConfig = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["diskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["envName"] as? String {
            self.envName = value
        }
        if let value = dict["environmentVariables"] as? [String: Any] {
            self.environmentVariables = value
        }
        if let value = dict["featureGates"] as? [String: Any?] {
            var model = DeployVllmModelInput.FeatureGates()
            model.fromMap(value)
            self.featureGates = model
        }
        if let value = dict["gpuConfig"] as? [String: Any?] {
            var model = DeployVllmModelInput.GpuConfig()
            model.fromMap(value)
            self.gpuConfig = model
        }
        if let value = dict["httpTrigger"] as? [String: Any?] {
            var model = DeployVllmModelInput.HttpTrigger()
            model.fromMap(value)
            self.httpTrigger = model
        }
        if let value = dict["imageName"] as? String {
            self.imageName = value
        }
        if let value = dict["instanceConcurrency"] as? Int32 {
            self.instanceConcurrency = value
        }
        if let value = dict["logConfig"] as? [String: Any?] {
            var model = DeployVllmModelInput.LogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["memorySize"] as? Int32 {
            self.memorySize = value
        }
        if let value = dict["modelConfig"] as? [String: Any?] {
            var model = DeployVllmModelInput.ModelConfig()
            model.fromMap(value)
            self.modelConfig = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nasConfig"] as? [String: Any?] {
            var model = DeployVllmModelInput.NasConfig()
            model.fromMap(value)
            self.nasConfig = model
        }
        if let value = dict["originalName"] as? String {
            self.originalName = value
        }
        if let value = dict["ossMountConfig"] as? [String: Any?] {
            var model = DeployVllmModelInput.OssMountConfig()
            model.fromMap(value)
            self.ossMountConfig = model
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["provisionConfig"] as? [String: Any?] {
            var model = DeployVllmModelInput.ProvisionConfig()
            model.fromMap(value)
            self.provisionConfig = model
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["reportStatusURL"] as? String {
            self.reportStatusURL = value
        }
        if let value = dict["role"] as? String {
            self.role = value
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["traceId"] as? String {
            self.traceId = value
        }
        if let value = dict["vpcConfig"] as? [String: Any?] {
            var model = DeployVllmModelInput.VpcConfig()
            model.fromMap(value)
            self.vpcConfig = model
        }
    }
}

public class DeployVllmModelOutput : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deploymentTaskID: String?

        public var errorMessage: String?

        public var finished: Bool?

        public var modelName: String?

        public var serviceName: String?

        public var traceID: String?

        public var urlInternet: String?

        public var urlIntranet: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deploymentTaskID != nil {
                map["deploymentTaskID"] = self.deploymentTaskID!
            }
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.finished != nil {
                map["finished"] = self.finished!
            }
            if self.modelName != nil {
                map["modelName"] = self.modelName!
            }
            if self.serviceName != nil {
                map["serviceName"] = self.serviceName!
            }
            if self.traceID != nil {
                map["traceID"] = self.traceID!
            }
            if self.urlInternet != nil {
                map["urlInternet"] = self.urlInternet!
            }
            if self.urlIntranet != nil {
                map["urlIntranet"] = self.urlIntranet!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deploymentTaskID"] as? String {
                self.deploymentTaskID = value
            }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["finished"] as? Bool {
                self.finished = value
            }
            if let value = dict["modelName"] as? String {
                self.modelName = value
            }
            if let value = dict["serviceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["traceID"] as? String {
                self.traceID = value
            }
            if let value = dict["urlInternet"] as? String {
                self.urlInternet = value
            }
            if let value = dict["urlIntranet"] as? String {
                self.urlIntranet = value
            }
        }
    }
    public var data: DeployVllmModelOutput.Data?

    public var errCode: String?

    public var errMsg: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DeployVllmModelOutput.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeRegionsOutput : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public var localName: String?

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
                if self.localName != nil {
                    map["localName"] = self.localName!
                }
                if self.regionId != nil {
                    map["regionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["localName"] as? String {
                    self.localName = value
                }
                if let value = dict["regionId"] as? String {
                    self.regionId = value
                }
            }
        }
        public var region: [DescribeRegionsOutput.Regions.Region]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["region"] as? [Any?] {
                var tmp : [DescribeRegionsOutput.Regions.Region] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsOutput.Regions.Region()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.region = tmp
            }
        }
    }
    public var regions: DescribeRegionsOutput.Regions?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            map["regions"] = self.regions?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regions"] as? [String: Any?] {
            var model = DescribeRegionsOutput.Regions()
            model.fromMap(value)
            self.regions = model
        }
    }
}

public class DownloadModelOutput : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var modelPath: String?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelPath != nil {
                map["modelPath"] = self.modelPath!
            }
            if self.taskType != nil {
                map["taskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["modelPath"] as? String {
                self.modelPath = value
            }
            if let value = dict["taskType"] as? String {
                self.taskType = value
            }
        }
    }
    public var data: DownloadModelOutput.Data?

    public var errCode: String?

    public var errMsg: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = DownloadModelOutput.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class Environment : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var generation: Int32?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var projectName: String?

    public var spec: EnvironmentSpec?

    public var status: EnvironmentStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
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
        if let value = dict["generation"] as? Int32 {
            self.generation = value
        }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["spec"] as? [String: Any?] {
            var model = EnvironmentSpec()
            model.fromMap(value)
            self.spec = model
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = EnvironmentStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class EnvironmentBaseline : Tea.TeaModel {
    public var servicesInstances: [String: ServiceInstance]?

    public var variables: [String: Variable]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.servicesInstances != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.servicesInstances! {
                tmp[k] = v.toMap()
            }
            map["servicesInstances"] = tmp
        }
        if self.variables != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.variables! {
                tmp[k] = v.toMap()
            }
            map["variables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["servicesInstances"] as? [String: Any?] {
            var tmp : [String: ServiceInstance] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = ServiceInstance()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.servicesInstances = tmp
        }
        if let value = dict["variables"] as? [String: Any?] {
            var tmp : [String: Variable] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = Variable()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.variables = tmp
        }
    }
}

public class EnvironmentChanges : Tea.TeaModel {
    public var services: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.services != nil {
            map["services"] = self.services!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["services"] as? [String: Any] {
            self.services = value
        }
    }
}

public class EnvironmentDeployment : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var spec: EnvironmentDeploymentSpec?

    public var status: EnvironmentDeploymentStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
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
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["spec"] as? [String: Any?] {
            var model = EnvironmentDeploymentSpec()
            model.fromMap(value)
            self.spec = model
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = EnvironmentDeploymentStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class EnvironmentDeploymentSpec : Tea.TeaModel {
    public var baseline: EnvironmentSnapshot?

    public var changes: EnvironmentChanges?

    public var skipRemoveResources: Bool?

    public var target: EnvironmentStagedConfigs?

    public var webhookCodeContext: WebhookCodeContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.baseline?.validate()
        try self.changes?.validate()
        try self.target?.validate()
        try self.webhookCodeContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseline != nil {
            map["baseline"] = self.baseline?.toMap()
        }
        if self.changes != nil {
            map["changes"] = self.changes?.toMap()
        }
        if self.skipRemoveResources != nil {
            map["skipRemoveResources"] = self.skipRemoveResources!
        }
        if self.target != nil {
            map["target"] = self.target?.toMap()
        }
        if self.webhookCodeContext != nil {
            map["webhookCodeContext"] = self.webhookCodeContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["baseline"] as? [String: Any?] {
            var model = EnvironmentSnapshot()
            model.fromMap(value)
            self.baseline = model
        }
        if let value = dict["changes"] as? [String: Any?] {
            var model = EnvironmentChanges()
            model.fromMap(value)
            self.changes = model
        }
        if let value = dict["skipRemoveResources"] as? Bool {
            self.skipRemoveResources = value
        }
        if let value = dict["target"] as? [String: Any?] {
            var model = EnvironmentStagedConfigs()
            model.fromMap(value)
            self.target = model
        }
        if let value = dict["webhookCodeContext"] as? [String: Any?] {
            var model = WebhookCodeContext()
            model.fromMap(value)
            self.webhookCodeContext = model
        }
    }
}

public class EnvironmentDeploymentStatus : Tea.TeaModel {
    public var finishedTime: String?

    public var phase: String?

    public var pipelineName: String?

    public var serviceDeployments: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.finishedTime != nil {
            map["finishedTime"] = self.finishedTime!
        }
        if self.phase != nil {
            map["phase"] = self.phase!
        }
        if self.pipelineName != nil {
            map["pipelineName"] = self.pipelineName!
        }
        if self.serviceDeployments != nil {
            map["serviceDeployments"] = self.serviceDeployments!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["finishedTime"] as? String {
            self.finishedTime = value
        }
        if let value = dict["phase"] as? String {
            self.phase = value
        }
        if let value = dict["pipelineName"] as? String {
            self.pipelineName = value
        }
        if let value = dict["serviceDeployments"] as? [String: String] {
            self.serviceDeployments = value
        }
    }
}

public class EnvironmentSnapshot : Tea.TeaModel {
    public var services: [String: ServiceInstance]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.services != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.services! {
                tmp[k] = v.toMap()
            }
            map["services"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["services"] as? [String: Any?] {
            var tmp : [String: ServiceInstance] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = ServiceInstance()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.services = tmp
        }
    }
}

public class EnvironmentSpec : Tea.TeaModel {
    public var roleArn: String?

    public var stagedConfigs: EnvironmentStagedConfigs?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stagedConfigs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleArn != nil {
            map["roleArn"] = self.roleArn!
        }
        if self.stagedConfigs != nil {
            map["stagedConfigs"] = self.stagedConfigs?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["roleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["stagedConfigs"] as? [String: Any?] {
            var model = EnvironmentStagedConfigs()
            model.fromMap(value)
            self.stagedConfigs = model
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class EnvironmentStagedConfigs : Tea.TeaModel {
    public var services: [String: ServiceConfig]?

    public var variables: [String: Variable]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.services != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.services! {
                tmp[k] = v.toMap()
            }
            map["services"] = tmp
        }
        if self.variables != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.variables! {
                tmp[k] = v.toMap()
            }
            map["variables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["services"] as? [String: Any?] {
            var tmp : [String: ServiceConfig] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = ServiceConfig()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.services = tmp
        }
        if let value = dict["variables"] as? [String: Any?] {
            var tmp : [String: Variable] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = Variable()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.variables = tmp
        }
    }
}

public class EnvironmentStatus : Tea.TeaModel {
    public var latestEnvironmentDeploymentName: String?

    public var observedGeneration: Int64?

    public var observedTime: String?

    public var servicesInstances: [String: ServiceInstance]?

    public var servicesWithPendingChanges: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latestEnvironmentDeploymentName != nil {
            map["latestEnvironmentDeploymentName"] = self.latestEnvironmentDeploymentName!
        }
        if self.observedGeneration != nil {
            map["observedGeneration"] = self.observedGeneration!
        }
        if self.observedTime != nil {
            map["observedTime"] = self.observedTime!
        }
        if self.servicesInstances != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.servicesInstances! {
                tmp[k] = v.toMap()
            }
            map["servicesInstances"] = tmp
        }
        if self.servicesWithPendingChanges != nil {
            map["servicesWithPendingChanges"] = self.servicesWithPendingChanges!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latestEnvironmentDeploymentName"] as? String {
            self.latestEnvironmentDeploymentName = value
        }
        if let value = dict["observedGeneration"] as? Int64 {
            self.observedGeneration = value
        }
        if let value = dict["observedTime"] as? String {
            self.observedTime = value
        }
        if let value = dict["servicesInstances"] as? [String: Any?] {
            var tmp : [String: ServiceInstance] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = ServiceInstance()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.servicesInstances = tmp
        }
        if let value = dict["servicesWithPendingChanges"] as? [String] {
            self.servicesWithPendingChanges = value
        }
    }
}

public class EventFilterConfig : Tea.TeaModel {
    public var branch: BranchFilter?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.branch?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.branch != nil {
            map["branch"] = self.branch?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["branch"] as? [String: Any?] {
            var model = BranchFilter()
            model.fromMap(value)
            self.branch = model
        }
    }
}

public class FinalizeConfig : Tea.TeaModel {
    public var steps: [Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.steps != nil {
            map["steps"] = self.steps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["steps"] as? [Any] {
            self.steps = value
        }
    }
}

public class GetModelStatusOutput : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var currentBytes: Int64?

        public var errMessage: String?

        public var fileSize: Int64?

        public var finished: Bool?

        public var finishedTime: Int64?

        public var speed: Int64?

        public var startTime: Int64?

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
            if self.currentBytes != nil {
                map["currentBytes"] = self.currentBytes!
            }
            if self.errMessage != nil {
                map["errMessage"] = self.errMessage!
            }
            if self.fileSize != nil {
                map["fileSize"] = self.fileSize!
            }
            if self.finished != nil {
                map["finished"] = self.finished!
            }
            if self.finishedTime != nil {
                map["finishedTime"] = self.finishedTime!
            }
            if self.speed != nil {
                map["speed"] = self.speed!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["currentBytes"] as? Int64 {
                self.currentBytes = value
            }
            if let value = dict["errMessage"] as? String {
                self.errMessage = value
            }
            if let value = dict["fileSize"] as? Int64 {
                self.fileSize = value
            }
            if let value = dict["finished"] as? Bool {
                self.finished = value
            }
            if let value = dict["finishedTime"] as? Int64 {
                self.finishedTime = value
            }
            if let value = dict["speed"] as? Int64 {
                self.speed = value
            }
            if let value = dict["startTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var data: GetModelStatusOutput.Data?

    public var errCode: String?

    public var errMsg: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if let value = dict["data"] as? [String: Any?] {
            var model = GetModelStatusOutput.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GitAccount : Tea.TeaModel {
    public var avatar: String?

    public var displayName: String?

    public var id: String?

    public var name: String?

    public var uri: String?

    public override init() {
        super.init()
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
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.uri != nil {
            map["uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["avatar"] as? String {
            self.avatar = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["uri"] as? String {
            self.uri = value
        }
    }
}

public class GitEventSnapshot : Tea.TeaModel {
    public var branch: String?

    public var commitID: String?

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
        if self.branch != nil {
            map["branch"] = self.branch!
        }
        if self.commitID != nil {
            map["commitID"] = self.commitID!
        }
        if self.tag != nil {
            map["tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["branch"] as? String {
            self.branch = value
        }
        if let value = dict["commitID"] as? String {
            self.commitID = value
        }
        if let value = dict["tag"] as? String {
            self.tag = value
        }
    }
}

public class GitLabConfig : Tea.TeaModel {
    public var isFixedIP: Bool?

    public var token: String?

    public var uri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isFixedIP != nil {
            map["isFixedIP"] = self.isFixedIP!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.uri != nil {
            map["uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["isFixedIP"] as? Bool {
            self.isFixedIP = value
        }
        if let value = dict["token"] as? String {
            self.token = value
        }
        if let value = dict["uri"] as? String {
            self.uri = value
        }
    }
}

public class InitializeConfig : Tea.TeaModel {
    public var steps: [Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.steps != nil {
            map["steps"] = self.steps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["steps"] as? [Any] {
            self.steps = value
        }
    }
}

public class Installation : Tea.TeaModel {
    public var actionUri: String?

    public var message: String?

    public var stage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionUri != nil {
            map["actionUri"] = self.actionUri!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.stage != nil {
            map["stage"] = self.stage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["actionUri"] as? String {
            self.actionUri = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["stage"] as? String {
            self.stage = value
        }
    }
}

public class MCPInstallationConfig : Tea.TeaModel {
    public var mcpServers: MCPServerInstallationConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.mcpServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mcpServers != nil {
            map["mcpServers"] = self.mcpServers?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["mcpServers"] as? [String: Any?] {
            var model = MCPServerInstallationConfig()
            model.fromMap(value)
            self.mcpServers = model
        }
    }
}

public class MCPServerInstallationConfig : Tea.TeaModel {
    public var args: String?

    public var command: String?

    public var env: [String: String]?

    public var transportType: String?

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
        if self.args != nil {
            map["args"] = self.args!
        }
        if self.command != nil {
            map["command"] = self.command!
        }
        if self.env != nil {
            map["env"] = self.env!
        }
        if self.transportType != nil {
            map["transportType"] = self.transportType!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["args"] as? String {
            self.args = value
        }
        if let value = dict["command"] as? String {
            self.command = value
        }
        if let value = dict["env"] as? [String: String] {
            self.env = value
        }
        if let value = dict["transportType"] as? String {
            self.transportType = value
        }
        if let value = dict["url"] as? String {
            self.url = value
        }
    }
}

public class MCPToolMeta : Tea.TeaModel {
    public var description_: String?

    public var inputSchema: [String: Any]?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.inputSchema != nil {
            map["inputSchema"] = self.inputSchema!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["inputSchema"] as? [String: Any] {
            self.inputSchema = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class ModelAsyncTask : Tea.TeaModel {
    public var errCode: String?

    public var errMsg: String?

    public var finished: Bool?

    public var finishedTime: Int64?

    public var result: Any?

    public var startTime: Int64?

    public var taskType: String?

    public var updateTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
        }
        if self.finished != nil {
            map["finished"] = self.finished!
        }
        if self.finishedTime != nil {
            map["finishedTime"] = self.finishedTime!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["finished"] as? Bool {
            self.finished = value
        }
        if let value = dict["finishedTime"] as? Int64 {
            self.finishedTime = value
        }
        if let value = dict["result"] as? Any {
            self.result = value
        }
        if let value = dict["startTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["taskType"] as? String {
            self.taskType = value
        }
        if let value = dict["updateTime"] as? Int64 {
            self.updateTime = value
        }
    }
}

public class ModelConfig : Tea.TeaModel {
    public var bucket: String?

    public var framework: String?

    public var model: String?

    public var multiModelConfig: [ModelConfig]?

    public var path: String?

    public var prefix_: String?

    public var region: String?

    public var reversion: String?

    public var token: String?

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
        if self.bucket != nil {
            map["bucket"] = self.bucket!
        }
        if self.framework != nil {
            map["framework"] = self.framework!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.multiModelConfig != nil {
            var tmp : [Any] = []
            for k in self.multiModelConfig! {
                tmp.append(k.toMap())
            }
            map["multiModelConfig"] = tmp
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.prefix_ != nil {
            map["prefix"] = self.prefix_!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        if self.reversion != nil {
            map["reversion"] = self.reversion!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["framework"] as? String {
            self.framework = value
        }
        if let value = dict["model"] as? String {
            self.model = value
        }
        if let value = dict["multiModelConfig"] as? [Any?] {
            var tmp : [ModelConfig] = []
            for v in value {
                if v != nil {
                    var model = ModelConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.multiModelConfig = tmp
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["region"] as? String {
            self.region = value
        }
        if let value = dict["reversion"] as? String {
            self.reversion = value
        }
        if let value = dict["token"] as? String {
            self.token = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ModelFile : Tea.TeaModel {
    public var isDir: Bool?

    public var modeTime: Int64?

    public var name: String?

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
        if self.isDir != nil {
            map["isDir"] = self.isDir!
        }
        if self.modeTime != nil {
            map["modeTime"] = self.modeTime!
        }
        if self.name != nil {
            map["name"] = self.name!
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
        if let value = dict["isDir"] as? Bool {
            self.isDir = value
        }
        if let value = dict["modeTime"] as? Int64 {
            self.modeTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["size"] as? Int64 {
            self.size = value
        }
    }
}

public class ModelFilePreview : Tea.TeaModel {
    public var content: String?

    public var hash: String?

    public var isCompressedImage: Bool?

    public var isDir: Bool?

    public var name: String?

    public var path: String?

    public var size: Int64?

    public var unpreviewable: Bool?

    public override init() {
        super.init()
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
        if self.hash != nil {
            map["hash"] = self.hash!
        }
        if self.isCompressedImage != nil {
            map["isCompressedImage"] = self.isCompressedImage!
        }
        if self.isDir != nil {
            map["isDir"] = self.isDir!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.unpreviewable != nil {
            map["unpreviewable"] = self.unpreviewable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["hash"] as? String {
            self.hash = value
        }
        if let value = dict["isCompressedImage"] as? Bool {
            self.isCompressedImage = value
        }
        if let value = dict["isDir"] as? Bool {
            self.isDir = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["size"] as? Int64 {
            self.size = value
        }
        if let value = dict["unpreviewable"] as? Bool {
            self.unpreviewable = value
        }
    }
}

public class ModelProvider : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var uid: String?

    public override init() {
        super.init()
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
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
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
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class ModelProviderAuthorization : Tea.TeaModel {
    public var authConfig: [String: String]?

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
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authConfig"] as? [String: String] {
            self.authConfig = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ModelProviderSchema : Tea.TeaModel {
    public var detail: String?

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
        if self.detail != nil {
            map["detail"] = self.detail!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["detail"] as? String {
            self.detail = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ModelProviderSpec : Tea.TeaModel {
    public var authorization: ModelProviderAuthorization?

    public var schema: ModelProviderSchema?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authorization?.validate()
        try self.schema?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorization != nil {
            map["authorization"] = self.authorization?.toMap()
        }
        if self.schema != nil {
            map["schema"] = self.schema?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authorization"] as? [String: Any?] {
            var model = ModelProviderAuthorization()
            model.fromMap(value)
            self.authorization = model
        }
        if let value = dict["schema"] as? [String: Any?] {
            var model = ModelProviderSchema()
            model.fromMap(value)
            self.schema = model
        }
    }
}

public class ModelSet : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var generation: Int64?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var status: ModelSetStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
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
        if let value = dict["generation"] as? Int64 {
            self.generation = value
        }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = ModelSetStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class ModelSetModelProfile : Tea.TeaModel {
    public class Props : Tea.TeaModel {
        public var contextSize: Int64?

        public var llmMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contextSize != nil {
                map["contextSize"] = self.contextSize!
            }
            if self.llmMode != nil {
                map["llmMode"] = self.llmMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["contextSize"] as? Int64 {
                self.contextSize = value
            }
            if let value = dict["llmMode"] as? String {
                self.llmMode = value
            }
        }
    }
    public var description_: String?

    public var displayName: String?

    public var enabled: Bool?

    public var name: String?

    public var props: ModelSetModelProfile.Props?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.props?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.props != nil {
            map["props"] = self.props?.toMap()
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
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
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["props"] as? [String: Any?] {
            var model = ModelSetModelProfile.Props()
            model.fromMap(value)
            self.props = model
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class ModelSetSpec : Tea.TeaModel {
    public class Features : Tea.TeaModel {
        public var agentThought: Bool?

        public var toolCall: Bool?

        public var vision: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentThought != nil {
                map["agentThought"] = self.agentThought!
            }
            if self.toolCall != nil {
                map["toolCall"] = self.toolCall!
            }
            if self.vision != nil {
                map["vision"] = self.vision!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentThought"] as? Bool {
                self.agentThought = value
            }
            if let value = dict["toolCall"] as? Bool {
                self.toolCall = value
            }
            if let value = dict["vision"] as? Bool {
                self.vision = value
            }
        }
    }
    public var apiInvokeType: String?

    public var authConfig: Authorization?

    public var baseUrl: String?

    public var features: ModelSetSpec.Features?

    public var modelType: String?

    public var models: [ModelSetModelProfile]?

    public var provider: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authConfig?.validate()
        try self.features?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiInvokeType != nil {
            map["apiInvokeType"] = self.apiInvokeType!
        }
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig?.toMap()
        }
        if self.baseUrl != nil {
            map["baseUrl"] = self.baseUrl!
        }
        if self.features != nil {
            map["features"] = self.features?.toMap()
        }
        if self.modelType != nil {
            map["modelType"] = self.modelType!
        }
        if self.models != nil {
            var tmp : [Any] = []
            for k in self.models! {
                tmp.append(k.toMap())
            }
            map["models"] = tmp
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiInvokeType"] as? String {
            self.apiInvokeType = value
        }
        if let value = dict["authConfig"] as? [String: Any?] {
            var model = Authorization()
            model.fromMap(value)
            self.authConfig = model
        }
        if let value = dict["baseUrl"] as? String {
            self.baseUrl = value
        }
        if let value = dict["features"] as? [String: Any?] {
            var model = ModelSetSpec.Features()
            model.fromMap(value)
            self.features = model
        }
        if let value = dict["modelType"] as? String {
            self.modelType = value
        }
        if let value = dict["models"] as? [Any?] {
            var tmp : [ModelSetModelProfile] = []
            for v in value {
                if v != nil {
                    var model = ModelSetModelProfile()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.models = tmp
        }
        if let value = dict["provider"] as? String {
            self.provider = value
        }
    }
}

public class ModelSetStatus : Tea.TeaModel {
    public var observedGeneration: Int64?

    public var observedTime: String?

    public var phase: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.observedGeneration != nil {
            map["observedGeneration"] = self.observedGeneration!
        }
        if self.observedTime != nil {
            map["observedTime"] = self.observedTime!
        }
        if self.phase != nil {
            map["phase"] = self.phase!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["observedGeneration"] as? Int64 {
            self.observedGeneration = value
        }
        if let value = dict["observedTime"] as? String {
            self.observedTime = value
        }
        if let value = dict["phase"] as? String {
            self.phase = value
        }
    }
}

public class ModelTask : Tea.TeaModel {
    public var currentBytes: String?

    public var errCode: String?

    public var errMsg: String?

    public var extra: Any?

    public var fileSize: Double?

    public var finishTime: Double?

    public var finished: Bool?

    public var finishedTime: Double?

    public var id: String?

    public var params: String?

    public var result: Any?

    public var speed: String?

    public var startTime: Double?

    public var status: String?

    public var taskId: String?

    public var taskType: String?

    public var total: Double?

    public var totalBytes: String?

    public var updateTime: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentBytes != nil {
            map["currentBytes"] = self.currentBytes!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
        }
        if self.extra != nil {
            map["extra"] = self.extra!
        }
        if self.fileSize != nil {
            map["fileSize"] = self.fileSize!
        }
        if self.finishTime != nil {
            map["finishTime"] = self.finishTime!
        }
        if self.finished != nil {
            map["finished"] = self.finished!
        }
        if self.finishedTime != nil {
            map["finishedTime"] = self.finishedTime!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.params != nil {
            map["params"] = self.params!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        if self.speed != nil {
            map["speed"] = self.speed!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        if self.totalBytes != nil {
            map["totalBytes"] = self.totalBytes!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["currentBytes"] as? String {
            self.currentBytes = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["extra"] as? Any {
            self.extra = value
        }
        if let value = dict["fileSize"] as? Double {
            self.fileSize = value
        }
        if let value = dict["finishTime"] as? Double {
            self.finishTime = value
        }
        if let value = dict["finished"] as? Bool {
            self.finished = value
        }
        if let value = dict["finishedTime"] as? Double {
            self.finishedTime = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["params"] as? String {
            self.params = value
        }
        if let value = dict["result"] as? Any {
            self.result = value
        }
        if let value = dict["speed"] as? String {
            self.speed = value
        }
        if let value = dict["startTime"] as? Double {
            self.startTime = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["taskType"] as? String {
            self.taskType = value
        }
        if let value = dict["total"] as? Double {
            self.total = value
        }
        if let value = dict["totalBytes"] as? String {
            self.totalBytes = value
        }
        if let value = dict["updateTime"] as? Double {
            self.updateTime = value
        }
    }
}

public class OAuthCredential : Tea.TeaModel {
    public var createdTime: Int64?

    public var expiration: Int64?

    public var refreshToken: String?

    public var scope: String?

    public var token: String?

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
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.expiration != nil {
            map["expiration"] = self.expiration!
        }
        if self.refreshToken != nil {
            map["refreshToken"] = self.refreshToken!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdTime"] as? Int64 {
            self.createdTime = value
        }
        if let value = dict["expiration"] as? Int64 {
            self.expiration = value
        }
        if let value = dict["refreshToken"] as? String {
            self.refreshToken = value
        }
        if let value = dict["scope"] as? String {
            self.scope = value
        }
        if let value = dict["token"] as? String {
            self.token = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class OpenAPIToolMeta : Tea.TeaModel {
    public var method: String?

    public var path: String?

    public var toolId: String?

    public var toolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.method != nil {
            map["method"] = self.method!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.toolId != nil {
            map["toolId"] = self.toolId!
        }
        if self.toolName != nil {
            map["toolName"] = self.toolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["method"] as? String {
            self.method = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["toolId"] as? String {
            self.toolId = value
        }
        if let value = dict["toolName"] as? String {
            self.toolName = value
        }
    }
}

public class OperationModelFileAction : Tea.TeaModel {
    public var action: String?

    public var destination: String?

    public var source: String?

    public var target: String?

    public override init() {
        super.init()
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
        if self.destination != nil {
            map["destination"] = self.destination!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.target != nil {
            map["target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["action"] as? String {
            self.action = value
        }
        if let value = dict["destination"] as? String {
            self.destination = value
        }
        if let value = dict["source"] as? String {
            self.source = value
        }
        if let value = dict["target"] as? String {
            self.target = value
        }
    }
}

public class OssSourceConfig : Tea.TeaModel {
    public var bucket: String?

    public var object: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucket != nil {
            map["bucket"] = self.bucket!
        }
        if self.object != nil {
            map["object"] = self.object!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["object"] as? String {
            self.object = value
        }
    }
}

public class Pipeline : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var generation: Int32?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var resourceVersion: Int32?

    public var spec: PipelineSpec?

    public var status: PipelineStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceVersion != nil {
            map["resourceVersion"] = self.resourceVersion!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
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
        if let value = dict["generation"] as? Int32 {
            self.generation = value
        }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["resourceVersion"] as? Int32 {
            self.resourceVersion = value
        }
        if let value = dict["spec"] as? [String: Any?] {
            var model = PipelineSpec()
            model.fromMap(value)
            self.spec = model
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = PipelineStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class PipelineSpec : Tea.TeaModel {
    public var context: Context?

    public var templateName: String?

    public var templateSpec: PipelineTemplateSpec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.context?.validate()
        try self.templateSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.context != nil {
            map["context"] = self.context?.toMap()
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.templateSpec != nil {
            map["templateSpec"] = self.templateSpec?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["context"] as? [String: Any?] {
            var model = Context()
            model.fromMap(value)
            self.context = model
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["templateSpec"] as? [String: Any?] {
            var model = PipelineTemplateSpec()
            model.fromMap(value)
            self.templateSpec = model
        }
    }
}

public class PipelineStatus : Tea.TeaModel {
    public var latestExecError: TaskExecError?

    public var phase: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.latestExecError?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latestExecError != nil {
            map["latestExecError"] = self.latestExecError?.toMap()
        }
        if self.phase != nil {
            map["phase"] = self.phase!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latestExecError"] as? [String: Any?] {
            var model = TaskExecError()
            model.fromMap(value)
            self.latestExecError = model
        }
        if let value = dict["phase"] as? String {
            self.phase = value
        }
    }
}

public class PipelineTemplate : Tea.TeaModel {
    public var createdTime: String?

    public var deletionTime: String?

    public var description_: String?

    public var generation: Int32?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var resourceVersion: Int32?

    public var spec: PipelineTemplateSpec?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.deletionTime != nil {
            map["deletionTime"] = self.deletionTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceVersion != nil {
            map["resourceVersion"] = self.resourceVersion!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["deletionTime"] as? String {
            self.deletionTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["generation"] as? Int32 {
            self.generation = value
        }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["resourceVersion"] as? Int32 {
            self.resourceVersion = value
        }
        if let value = dict["spec"] as? [String: Any?] {
            var model = PipelineTemplateSpec()
            model.fromMap(value)
            self.spec = model
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class PipelineTemplateSpec : Tea.TeaModel {
    public var context: Context?

    public var tasks: [TaskExec]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.context?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.context != nil {
            map["context"] = self.context?.toMap()
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["context"] as? [String: Any?] {
            var model = Context()
            model.fromMap(value)
            self.context = model
        }
        if let value = dict["tasks"] as? [Any?] {
            var tmp : [TaskExec] = []
            for v in value {
                if v != nil {
                    var model = TaskExec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
    }
}

public class Project : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var status: ProjectStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
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
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = ProjectStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class ProjectSpec : Tea.TeaModel {

    public override init() {
        super.init()
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

public class ProjectStatus : Tea.TeaModel {
    public var services: [ServiceMeta]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["services"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["services"] as? [Any?] {
            var tmp : [ServiceMeta] = []
            for v in value {
                if v != nil {
                    var model = ServiceMeta()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.services = tmp
        }
    }
}

public class PullRequestFilter : Tea.TeaModel {
    public var sourceBranch: String?

    public var targetBranch: String?

    public var types: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceBranch != nil {
            map["sourceBranch"] = self.sourceBranch!
        }
        if self.targetBranch != nil {
            map["targetBranch"] = self.targetBranch!
        }
        if self.types != nil {
            map["types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sourceBranch"] as? String {
            self.sourceBranch = value
        }
        if let value = dict["targetBranch"] as? String {
            self.targetBranch = value
        }
        if let value = dict["types"] as? [String] {
            self.types = value
        }
    }
}

public class PushFilter : Tea.TeaModel {
    public var branch: String?

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
        if self.branch != nil {
            map["branch"] = self.branch!
        }
        if self.tag != nil {
            map["tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["branch"] as? String {
            self.branch = value
        }
        if let value = dict["tag"] as? String {
            self.tag = value
        }
    }
}

public class Repository : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var spec: RepositorySpec?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
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
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["spec"] as? [String: Any?] {
            var model = RepositorySpec()
            model.fromMap(value)
            self.spec = model
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class RepositorySourceConfig : Tea.TeaModel {
    public var codeVersion: CodeVersionReference?

    public var filter: EventFilterConfig?

    public var repositoryName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.codeVersion?.validate()
        try self.filter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codeVersion != nil {
            map["codeVersion"] = self.codeVersion?.toMap()
        }
        if self.filter != nil {
            map["filter"] = self.filter?.toMap()
        }
        if self.repositoryName != nil {
            map["repositoryName"] = self.repositoryName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["codeVersion"] as? [String: Any?] {
            var model = CodeVersionReference()
            model.fromMap(value)
            self.codeVersion = model
        }
        if let value = dict["filter"] as? [String: Any?] {
            var model = EventFilterConfig()
            model.fromMap(value)
            self.filter = model
        }
        if let value = dict["repositoryName"] as? String {
            self.repositoryName = value
        }
    }
}

public class RepositorySpec : Tea.TeaModel {
    public var cloneUrl: String?

    public var connectionName: String?

    public var displayName: String?

    public var id: Int64?

    public var owner: String?

    public var platform: String?

    public var webUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cloneUrl != nil {
            map["cloneUrl"] = self.cloneUrl!
        }
        if self.connectionName != nil {
            map["connectionName"] = self.connectionName!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.owner != nil {
            map["owner"] = self.owner!
        }
        if self.platform != nil {
            map["platform"] = self.platform!
        }
        if self.webUrl != nil {
            map["webUrl"] = self.webUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cloneUrl"] as? String {
            self.cloneUrl = value
        }
        if let value = dict["connectionName"] as? String {
            self.connectionName = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["owner"] as? String {
            self.owner = value
        }
        if let value = dict["platform"] as? String {
            self.platform = value
        }
        if let value = dict["webUrl"] as? String {
            self.webUrl = value
        }
    }
}

public class RunAfter : Tea.TeaModel {
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
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class ServiceBaseline : Tea.TeaModel {
    public var serviceInstance: ServiceInstance?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serviceInstance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceInstance != nil {
            map["serviceInstance"] = self.serviceInstance?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["serviceInstance"] as? [String: Any?] {
            var model = ServiceInstance()
            model.fromMap(value)
            self.serviceInstance = model
        }
    }
}

public class ServiceChanges : Tea.TeaModel {
    public var merge: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.merge != nil {
            map["merge"] = self.merge!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["merge"] as? [String: Any] {
            self.merge = value
        }
    }
}

public class ServiceCommandStep : Tea.TeaModel {
    public var path: String?

    public var run: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.run != nil {
            map["run"] = self.run!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["run"] as? String {
            self.run = value
        }
    }
}

public class ServiceComponentStep : Tea.TeaModel {
    public var component: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.component != nil {
            map["component"] = self.component!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["component"] as? String {
            self.component = value
        }
    }
}

public class ServiceConfig : Tea.TeaModel {
    public var artifact: ArtifactMeta?

    public var build: BuildConfig?

    public var component: String?

    public var props: [String: Any]?

    public var source: SourceConfig?

    public var type: String?

    public var variables: [String: Variable]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.artifact?.validate()
        try self.build?.validate()
        try self.source?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifact != nil {
            map["artifact"] = self.artifact?.toMap()
        }
        if self.build != nil {
            map["build"] = self.build?.toMap()
        }
        if self.component != nil {
            map["component"] = self.component!
        }
        if self.props != nil {
            map["props"] = self.props!
        }
        if self.source != nil {
            map["source"] = self.source?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.variables != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.variables! {
                tmp[k] = v.toMap()
            }
            map["variables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["artifact"] as? [String: Any?] {
            var model = ArtifactMeta()
            model.fromMap(value)
            self.artifact = model
        }
        if let value = dict["build"] as? [String: Any?] {
            var model = BuildConfig()
            model.fromMap(value)
            self.build = model
        }
        if let value = dict["component"] as? String {
            self.component = value
        }
        if let value = dict["props"] as? [String: Any] {
            self.props = value
        }
        if let value = dict["source"] as? [String: Any?] {
            var model = SourceConfig()
            model.fromMap(value)
            self.source = model
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["variables"] as? [String: Any?] {
            var tmp : [String: Variable] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = Variable()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.variables = tmp
        }
    }
}

public class ServiceDeployment : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var environmentDeploymentName: String?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var status: ServiceDeploymentStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.environmentDeploymentName != nil {
            map["environmentDeploymentName"] = self.environmentDeploymentName!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
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
        if let value = dict["environmentDeploymentName"] as? String {
            self.environmentDeploymentName = value
        }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = ServiceDeploymentStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class ServiceDeploymentSpec : Tea.TeaModel {
    public var baseline: ServiceBaseline?

    public var changes: ServiceChanges?

    public var skipRemoveResources: Bool?

    public var target: ServiceBaseline?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.baseline?.validate()
        try self.changes?.validate()
        try self.target?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseline != nil {
            map["baseline"] = self.baseline?.toMap()
        }
        if self.changes != nil {
            map["changes"] = self.changes?.toMap()
        }
        if self.skipRemoveResources != nil {
            map["skipRemoveResources"] = self.skipRemoveResources!
        }
        if self.target != nil {
            map["target"] = self.target?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["baseline"] as? [String: Any?] {
            var model = ServiceBaseline()
            model.fromMap(value)
            self.baseline = model
        }
        if let value = dict["changes"] as? [String: Any?] {
            var model = ServiceChanges()
            model.fromMap(value)
            self.changes = model
        }
        if let value = dict["skipRemoveResources"] as? Bool {
            self.skipRemoveResources = value
        }
        if let value = dict["target"] as? [String: Any?] {
            var model = ServiceBaseline()
            model.fromMap(value)
            self.target = model
        }
    }
}

public class ServiceDeploymentStatus : Tea.TeaModel {
    public var finishedTime: String?

    public var phase: String?

    public var pipelineName: String?

    public var startTime: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.finishedTime != nil {
            map["finishedTime"] = self.finishedTime!
        }
        if self.phase != nil {
            map["phase"] = self.phase!
        }
        if self.pipelineName != nil {
            map["pipelineName"] = self.pipelineName!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["finishedTime"] as? String {
            self.finishedTime = value
        }
        if let value = dict["phase"] as? String {
            self.phase = value
        }
        if let value = dict["pipelineName"] as? String {
            self.pipelineName = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
    }
}

public class ServiceInstance : Tea.TeaModel {
    public class LatestDeployment : Tea.TeaModel {
        public var finishedTime: String?

        public var name: String?

        public var phase: String?

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
            if self.finishedTime != nil {
                map["finishedTime"] = self.finishedTime!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.phase != nil {
                map["phase"] = self.phase!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["finishedTime"] as? String {
                self.finishedTime = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["phase"] as? String {
                self.phase = value
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var config: ServiceConfig?

    public var latestDeployment: ServiceInstance.LatestDeployment?

    public var outputs: [String: Any]?

    public var variables: [String: Variable]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.config?.validate()
        try self.latestDeployment?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["config"] = self.config?.toMap()
        }
        if self.latestDeployment != nil {
            map["latestDeployment"] = self.latestDeployment?.toMap()
        }
        if self.outputs != nil {
            map["outputs"] = self.outputs!
        }
        if self.variables != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.variables! {
                tmp[k] = v.toMap()
            }
            map["variables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["config"] as? [String: Any?] {
            var model = ServiceConfig()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["latestDeployment"] as? [String: Any?] {
            var model = ServiceInstance.LatestDeployment()
            model.fromMap(value)
            self.latestDeployment = model
        }
        if let value = dict["outputs"] as? [String: Any] {
            self.outputs = value
        }
        if let value = dict["variables"] as? [String: Any?] {
            var tmp : [String: Variable] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = Variable()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.variables = tmp
        }
    }
}

public class ServiceMeta : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ServicePluginStep : Tea.TeaModel {
    public var args: [String: Any]?

    public var plugin: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.args != nil {
            map["args"] = self.args!
        }
        if self.plugin != nil {
            map["plugin"] = self.plugin!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["args"] as? [String: Any] {
            self.args = value
        }
        if let value = dict["plugin"] as? String {
            self.plugin = value
        }
    }
}

public class SourceConfig : Tea.TeaModel {
    public var oss: OssSourceConfig?

    public var repository: RepositorySourceConfig?

    public var template: TemplateSourceConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.oss?.validate()
        try self.repository?.validate()
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.oss != nil {
            map["oss"] = self.oss?.toMap()
        }
        if self.repository != nil {
            map["repository"] = self.repository?.toMap()
        }
        if self.template != nil {
            map["template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["oss"] as? [String: Any?] {
            var model = OssSourceConfig()
            model.fromMap(value)
            self.oss = model
        }
        if let value = dict["repository"] as? [String: Any?] {
            var model = RepositorySourceConfig()
            model.fromMap(value)
            self.repository = model
        }
        if let value = dict["template"] as? [String: Any?] {
            var model = TemplateSourceConfig()
            model.fromMap(value)
            self.template = model
        }
    }
}

public class Task : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var generation: Int32?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var resourceVersion: Int32?

    public var spec: TaskSpec?

    public var status: TaskStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceVersion != nil {
            map["resourceVersion"] = self.resourceVersion!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
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
        if let value = dict["generation"] as? Int32 {
            self.generation = value
        }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["resourceVersion"] as? Int32 {
            self.resourceVersion = value
        }
        if let value = dict["spec"] as? [String: Any?] {
            var model = TaskSpec()
            model.fromMap(value)
            self.spec = model
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = TaskStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class TaskExec : Tea.TeaModel {
    public var context: Context?

    public var name: String?

    public var runAfters: [RunAfter]?

    public var taskTemplate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.context?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.context != nil {
            map["context"] = self.context?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.runAfters != nil {
            var tmp : [Any] = []
            for k in self.runAfters! {
                tmp.append(k.toMap())
            }
            map["runAfters"] = tmp
        }
        if self.taskTemplate != nil {
            map["taskTemplate"] = self.taskTemplate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["context"] as? [String: Any?] {
            var model = Context()
            model.fromMap(value)
            self.context = model
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["runAfters"] as? [Any?] {
            var tmp : [RunAfter] = []
            for v in value {
                if v != nil {
                    var model = RunAfter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.runAfters = tmp
        }
        if let value = dict["taskTemplate"] as? String {
            self.taskTemplate = value
        }
    }
}

public class TaskExecError : Tea.TeaModel {
    public var code: String?

    public var extraInfo: String?

    public var message: String?

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
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["extraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class TaskInvocation : Tea.TeaModel {
    public var instanceID: String?

    public var invocationID: String?

    public var invocationTarget: String?

    public var output: String?

    public var requestID: String?

    public var slsLogStore: String?

    public var slsProject: String?

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
        if self.instanceID != nil {
            map["instanceID"] = self.instanceID!
        }
        if self.invocationID != nil {
            map["invocationID"] = self.invocationID!
        }
        if self.invocationTarget != nil {
            map["invocationTarget"] = self.invocationTarget!
        }
        if self.output != nil {
            map["output"] = self.output!
        }
        if self.requestID != nil {
            map["requestID"] = self.requestID!
        }
        if self.slsLogStore != nil {
            map["slsLogStore"] = self.slsLogStore!
        }
        if self.slsProject != nil {
            map["slsProject"] = self.slsProject!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceID"] as? String {
            self.instanceID = value
        }
        if let value = dict["invocationID"] as? String {
            self.invocationID = value
        }
        if let value = dict["invocationTarget"] as? String {
            self.invocationTarget = value
        }
        if let value = dict["output"] as? String {
            self.output = value
        }
        if let value = dict["requestID"] as? String {
            self.requestID = value
        }
        if let value = dict["slsLogStore"] as? String {
            self.slsLogStore = value
        }
        if let value = dict["slsProject"] as? String {
            self.slsProject = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class TaskSpec : Tea.TeaModel {
    public var context: Context?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.context?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.context != nil {
            map["context"] = self.context?.toMap()
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["context"] as? [String: Any?] {
            var model = Context()
            model.fromMap(value)
            self.context = model
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
    }
}

public class TaskStatus : Tea.TeaModel {
    public var executionDetails: [String]?

    public var invocations: [TaskInvocation]?

    public var latestExecError: TaskExecError?

    public var phase: String?

    public var statusGeneration: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.latestExecError?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionDetails != nil {
            map["executionDetails"] = self.executionDetails!
        }
        if self.invocations != nil {
            var tmp : [Any] = []
            for k in self.invocations! {
                tmp.append(k.toMap())
            }
            map["invocations"] = tmp
        }
        if self.latestExecError != nil {
            map["latestExecError"] = self.latestExecError?.toMap()
        }
        if self.phase != nil {
            map["phase"] = self.phase!
        }
        if self.statusGeneration != nil {
            map["statusGeneration"] = self.statusGeneration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["executionDetails"] as? [String] {
            self.executionDetails = value
        }
        if let value = dict["invocations"] as? [Any?] {
            var tmp : [TaskInvocation] = []
            for v in value {
                if v != nil {
                    var model = TaskInvocation()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.invocations = tmp
        }
        if let value = dict["latestExecError"] as? [String: Any?] {
            var model = TaskExecError()
            model.fromMap(value)
            self.latestExecError = model
        }
        if let value = dict["phase"] as? String {
            self.phase = value
        }
        if let value = dict["statusGeneration"] as? Int64 {
            self.statusGeneration = value
        }
    }
}

public class TaskTemplate : Tea.TeaModel {
    public var createdTime: String?

    public var deletionTime: String?

    public var description_: String?

    public var generation: Int32?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var resourceVersion: Int32?

    public var spec: TaskTemplateSpec?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.deletionTime != nil {
            map["deletionTime"] = self.deletionTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.resourceVersion != nil {
            map["resourceVersion"] = self.resourceVersion!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["deletionTime"] as? String {
            self.deletionTime = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["generation"] as? Int32 {
            self.generation = value
        }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["resourceVersion"] as? Int32 {
            self.resourceVersion = value
        }
        if let value = dict["spec"] as? [String: Any?] {
            var model = TaskTemplateSpec()
            model.fromMap(value)
            self.spec = model
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class TaskTemplateSpec : Tea.TeaModel {
    public var context: Context?

    public var description_: String?

    public var executeCondition: Condition?

    public var worker: TaskWorker?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.context?.validate()
        try self.executeCondition?.validate()
        try self.worker?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.context != nil {
            map["context"] = self.context?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.executeCondition != nil {
            map["executeCondition"] = self.executeCondition?.toMap()
        }
        if self.worker != nil {
            map["worker"] = self.worker?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["context"] as? [String: Any?] {
            var model = Context()
            model.fromMap(value)
            self.context = model
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["executeCondition"] as? [String: Any?] {
            var model = Condition()
            model.fromMap(value)
            self.executeCondition = model
        }
        if let value = dict["worker"] as? [String: Any?] {
            var model = TaskWorker()
            model.fromMap(value)
            self.worker = model
        }
    }
}

public class TaskWorker : Tea.TeaModel {
    public var presetWorker: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.presetWorker != nil {
            map["presetWorker"] = self.presetWorker!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["presetWorker"] as? String {
            self.presetWorker = value
        }
    }
}

public class Template : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var spec: TemplateSpec?

    public var status: TemplateStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
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
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["spec"] as? [String: Any?] {
            var model = TemplateSpec()
            model.fromMap(value)
            self.spec = model
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = TemplateStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class TemplateConfig : Tea.TeaModel {
    public var parameters: [String: String]?

    public var serviceNameChanges: [String: String]?

    public var templateName: String?

    public var variableValues: TemplateVariableValueMap?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.variableValues?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.serviceNameChanges != nil {
            map["serviceNameChanges"] = self.serviceNameChanges!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.variableValues != nil {
            map["variableValues"] = self.variableValues?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["serviceNameChanges"] as? [String: String] {
            self.serviceNameChanges = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["variableValues"] as? [String: Any?] {
            var model = TemplateVariableValueMap()
            model.fromMap(value)
            self.variableValues = model
        }
    }
}

public class TemplateParameterSchema : Tea.TeaModel {
    public class RoleExtension : Tea.TeaModel {
        public var authorities: [String]?

        public var name: String?

        public var service: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorities != nil {
                map["authorities"] = self.authorities!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.service != nil {
                map["service"] = self.service!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["authorities"] as? [String] {
                self.authorities = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["service"] as? String {
                self.service = value
            }
        }
    }
    public var default_: Any?

    public var description_: String?

    public var enum_: [String]?

    public var pattern: String?

    public var required_: Bool?

    public var roleExtension: TemplateParameterSchema.RoleExtension?

    public var sensitive: Bool?

    public var title: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.roleExtension?.validate()
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
        if self.pattern != nil {
            map["pattern"] = self.pattern!
        }
        if self.required_ != nil {
            map["required"] = self.required_!
        }
        if self.roleExtension != nil {
            map["roleExtension"] = self.roleExtension?.toMap()
        }
        if self.sensitive != nil {
            map["sensitive"] = self.sensitive!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["default"] as? Any {
            self.default_ = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["enum"] as? [String] {
            self.enum_ = value
        }
        if let value = dict["pattern"] as? String {
            self.pattern = value
        }
        if let value = dict["required"] as? Bool {
            self.required_ = value
        }
        if let value = dict["roleExtension"] as? [String: Any?] {
            var model = TemplateParameterSchema.RoleExtension()
            model.fromMap(value)
            self.roleExtension = model
        }
        if let value = dict["sensitive"] as? Bool {
            self.sensitive = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class TemplateRevision : Tea.TeaModel {
    public class Status : Tea.TeaModel {
        public var packageUrl: String?

        public var phase: String?

        public var pipelineName: String?

        public var templateUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.packageUrl != nil {
                map["packageUrl"] = self.packageUrl!
            }
            if self.phase != nil {
                map["phase"] = self.phase!
            }
            if self.pipelineName != nil {
                map["pipelineName"] = self.pipelineName!
            }
            if self.templateUrl != nil {
                map["templateUrl"] = self.templateUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["packageUrl"] as? String {
                self.packageUrl = value
            }
            if let value = dict["phase"] as? String {
                self.phase = value
            }
            if let value = dict["pipelineName"] as? String {
                self.pipelineName = value
            }
            if let value = dict["templateUrl"] as? String {
                self.templateUrl = value
            }
        }
    }
    public var createdTime: String?

    public var description_: String?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var spec: TemplateSpec?

    public var status: TemplateRevision.Status?

    public var templateName: String?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
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
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["spec"] as? [String: Any?] {
            var model = TemplateSpec()
            model.fromMap(value)
            self.spec = model
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = TemplateRevision.Status()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class TemplateServiceConfig : Tea.TeaModel {
    public var artifact: ArtifactMeta?

    public var build: BuildConfig?

    public var component: String?

    public var props: [String: Any]?

    public var source: SourceConfig?

    public var type: String?

    public var variables: [String: TemplateParameterSchema]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.artifact?.validate()
        try self.build?.validate()
        try self.source?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifact != nil {
            map["artifact"] = self.artifact?.toMap()
        }
        if self.build != nil {
            map["build"] = self.build?.toMap()
        }
        if self.component != nil {
            map["component"] = self.component!
        }
        if self.props != nil {
            map["props"] = self.props!
        }
        if self.source != nil {
            map["source"] = self.source?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.variables != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.variables! {
                tmp[k] = v.toMap()
            }
            map["variables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["artifact"] as? [String: Any?] {
            var model = ArtifactMeta()
            model.fromMap(value)
            self.artifact = model
        }
        if let value = dict["build"] as? [String: Any?] {
            var model = BuildConfig()
            model.fromMap(value)
            self.build = model
        }
        if let value = dict["component"] as? String {
            self.component = value
        }
        if let value = dict["props"] as? [String: Any] {
            self.props = value
        }
        if let value = dict["source"] as? [String: Any?] {
            var model = SourceConfig()
            model.fromMap(value)
            self.source = model
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["variables"] as? [String: Any?] {
            var tmp : [String: TemplateParameterSchema] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = TemplateParameterSchema()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.variables = tmp
        }
    }
}

public class TemplateSourceConfig : Tea.TeaModel {
    public var downloadUrl: String?

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
        if self.downloadUrl != nil {
            map["downloadUrl"] = self.downloadUrl!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["downloadUrl"] as? String {
            self.downloadUrl = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class TemplateSpec : Tea.TeaModel {
    public class Source : Tea.TeaModel {
        public var repository: RepositorySourceConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.repository?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.repository != nil {
                map["repository"] = self.repository?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["repository"] as? [String: Any?] {
                var model = RepositorySourceConfig()
                model.fromMap(value)
                self.repository = model
            }
        }
    }
    public var author: String?

    public var category: String?

    public var license: String?

    public var packageName: String?

    public var readme: String?

    public var registryToken: String?

    public var services: [String: TemplateServiceConfig]?

    public var source: TemplateSpec.Source?

    public var variables: [String: TemplateParameterSchema]?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.source?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.author != nil {
            map["author"] = self.author!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.license != nil {
            map["license"] = self.license!
        }
        if self.packageName != nil {
            map["packageName"] = self.packageName!
        }
        if self.readme != nil {
            map["readme"] = self.readme!
        }
        if self.registryToken != nil {
            map["registryToken"] = self.registryToken!
        }
        if self.services != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.services! {
                tmp[k] = v.toMap()
            }
            map["services"] = tmp
        }
        if self.source != nil {
            map["source"] = self.source?.toMap()
        }
        if self.variables != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.variables! {
                tmp[k] = v.toMap()
            }
            map["variables"] = tmp
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["author"] as? String {
            self.author = value
        }
        if let value = dict["category"] as? String {
            self.category = value
        }
        if let value = dict["license"] as? String {
            self.license = value
        }
        if let value = dict["packageName"] as? String {
            self.packageName = value
        }
        if let value = dict["readme"] as? String {
            self.readme = value
        }
        if let value = dict["registryToken"] as? String {
            self.registryToken = value
        }
        if let value = dict["services"] as? [String: Any?] {
            var tmp : [String: TemplateServiceConfig] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = TemplateServiceConfig()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.services = tmp
        }
        if let value = dict["source"] as? [String: Any?] {
            var model = TemplateSpec.Source()
            model.fromMap(value)
            self.source = model
        }
        if let value = dict["variables"] as? [String: Any?] {
            var tmp : [String: TemplateParameterSchema] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = TemplateParameterSchema()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.variables = tmp
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class TemplateStatus : Tea.TeaModel {
    public class LatestDeployment : Tea.TeaModel {
        public var finishedTime: String?

        public var phase: String?

        public var pipelineName: String?

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
            if self.finishedTime != nil {
                map["finishedTime"] = self.finishedTime!
            }
            if self.phase != nil {
                map["phase"] = self.phase!
            }
            if self.pipelineName != nil {
                map["pipelineName"] = self.pipelineName!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["finishedTime"] as? String {
                self.finishedTime = value
            }
            if let value = dict["phase"] as? String {
                self.phase = value
            }
            if let value = dict["pipelineName"] as? String {
                self.pipelineName = value
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var latestDeployment: TemplateStatus.LatestDeployment?

    public var latestVersion: String?

    public var packageUrl: String?

    public var phase: String?

    public var templateUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.latestDeployment?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latestDeployment != nil {
            map["latestDeployment"] = self.latestDeployment?.toMap()
        }
        if self.latestVersion != nil {
            map["latestVersion"] = self.latestVersion!
        }
        if self.packageUrl != nil {
            map["packageUrl"] = self.packageUrl!
        }
        if self.phase != nil {
            map["phase"] = self.phase!
        }
        if self.templateUrl != nil {
            map["templateUrl"] = self.templateUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["latestDeployment"] as? [String: Any?] {
            var model = TemplateStatus.LatestDeployment()
            model.fromMap(value)
            self.latestDeployment = model
        }
        if let value = dict["latestVersion"] as? String {
            self.latestVersion = value
        }
        if let value = dict["packageUrl"] as? String {
            self.packageUrl = value
        }
        if let value = dict["phase"] as? String {
            self.phase = value
        }
        if let value = dict["templateUrl"] as? String {
            self.templateUrl = value
        }
    }
}

public class TemplateVariableValueMap : Tea.TeaModel {
    public var services: [String: [String: Any]]?

    public var shared: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.services != nil {
            map["services"] = self.services!
        }
        if self.shared != nil {
            map["shared"] = self.shared!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["services"] as? [String: [String: Any]] {
            self.services = value
        }
        if let value = dict["shared"] as? [String: Any] {
            self.shared = value
        }
    }
}

public class Tool : Tea.TeaModel {
    public var method: String?

    public var path: String?

    public var toolId: String?

    public var toolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.method != nil {
            map["method"] = self.method!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.toolId != nil {
            map["toolId"] = self.toolId!
        }
        if self.toolName != nil {
            map["toolName"] = self.toolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["method"] as? String {
            self.method = value
        }
        if let value = dict["path"] as? String {
            self.path = value
        }
        if let value = dict["toolId"] as? String {
            self.toolId = value
        }
        if let value = dict["toolName"] as? String {
            self.toolName = value
        }
    }
}

public class Toolset : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var generation: Int64?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

    public var spec: ToolsetSpec?

    public var status: ToolsetStatus?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.spec?.validate()
        try self.status?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.generation != nil {
            map["generation"] = self.generation!
        }
        if self.kind != nil {
            map["kind"] = self.kind!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.spec != nil {
            map["spec"] = self.spec?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.uid != nil {
            map["uid"] = self.uid!
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
        if let value = dict["generation"] as? Int64 {
            self.generation = value
        }
        if let value = dict["kind"] as? String {
            self.kind = value
        }
        if let value = dict["labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["spec"] as? [String: Any?] {
            var model = ToolsetSpec()
            model.fromMap(value)
            self.spec = model
        }
        if let value = dict["status"] as? [String: Any?] {
            var model = ToolsetStatus()
            model.fromMap(value)
            self.status = model
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class ToolsetAuthorization : Tea.TeaModel {
    public var authConfig: [String: String]?

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
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authConfig"] as? [String: String] {
            self.authConfig = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ToolsetSchema : Tea.TeaModel {
    public var detail: String?

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
        if self.detail != nil {
            map["detail"] = self.detail!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["detail"] as? String {
            self.detail = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ToolsetSpec : Tea.TeaModel {
    public var authConfig: Authorization?

    public var schema: ToolsetSchema?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authConfig?.validate()
        try self.schema?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConfig != nil {
            map["authConfig"] = self.authConfig?.toMap()
        }
        if self.schema != nil {
            map["schema"] = self.schema?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["authConfig"] as? [String: Any?] {
            var model = Authorization()
            model.fromMap(value)
            self.authConfig = model
        }
        if let value = dict["schema"] as? [String: Any?] {
            var model = ToolsetSchema()
            model.fromMap(value)
            self.schema = model
        }
    }
}

public class ToolsetStatus : Tea.TeaModel {
    public class Outputs : Tea.TeaModel {
        public class McpServerConfig : Tea.TeaModel {
            public var headers: [String: String]?

            public var transportType: String?

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
                if self.headers != nil {
                    map["headers"] = self.headers!
                }
                if self.transportType != nil {
                    map["transportType"] = self.transportType!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["headers"] as? [String: String] {
                    self.headers = value
                }
                if let value = dict["transportType"] as? String {
                    self.transportType = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public class Urls : Tea.TeaModel {
            public var internetUrl: String?

            public var intranetUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.internetUrl != nil {
                    map["internetUrl"] = self.internetUrl!
                }
                if self.intranetUrl != nil {
                    map["intranetUrl"] = self.intranetUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["internetUrl"] as? String {
                    self.internetUrl = value
                }
                if let value = dict["intranetUrl"] as? String {
                    self.intranetUrl = value
                }
            }
        }
        public var functionArn: String?

        public var mcpServerConfig: ToolsetStatus.Outputs.McpServerConfig?

        public var openApiTools: [OpenAPIToolMeta]?

        public var tools: [MCPToolMeta]?

        public var urls: ToolsetStatus.Outputs.Urls?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.mcpServerConfig?.validate()
            try self.urls?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.functionArn != nil {
                map["functionArn"] = self.functionArn!
            }
            if self.mcpServerConfig != nil {
                map["mcpServerConfig"] = self.mcpServerConfig?.toMap()
            }
            if self.openApiTools != nil {
                var tmp : [Any] = []
                for k in self.openApiTools! {
                    tmp.append(k.toMap())
                }
                map["openApiTools"] = tmp
            }
            if self.tools != nil {
                var tmp : [Any] = []
                for k in self.tools! {
                    tmp.append(k.toMap())
                }
                map["tools"] = tmp
            }
            if self.urls != nil {
                map["urls"] = self.urls?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["functionArn"] as? String {
                self.functionArn = value
            }
            if let value = dict["mcpServerConfig"] as? [String: Any?] {
                var model = ToolsetStatus.Outputs.McpServerConfig()
                model.fromMap(value)
                self.mcpServerConfig = model
            }
            if let value = dict["openApiTools"] as? [Any?] {
                var tmp : [OpenAPIToolMeta] = []
                for v in value {
                    if v != nil {
                        var model = OpenAPIToolMeta()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.openApiTools = tmp
            }
            if let value = dict["tools"] as? [Any?] {
                var tmp : [MCPToolMeta] = []
                for v in value {
                    if v != nil {
                        var model = MCPToolMeta()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tools = tmp
            }
            if let value = dict["urls"] as? [String: Any?] {
                var model = ToolsetStatus.Outputs.Urls()
                model.fromMap(value)
                self.urls = model
            }
        }
    }
    public var observedGeneration: Int64?

    public var observedTime: String?

    public var outputs: ToolsetStatus.Outputs?

    public var phase: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.outputs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.observedGeneration != nil {
            map["observedGeneration"] = self.observedGeneration!
        }
        if self.observedTime != nil {
            map["observedTime"] = self.observedTime!
        }
        if self.outputs != nil {
            map["outputs"] = self.outputs?.toMap()
        }
        if self.phase != nil {
            map["phase"] = self.phase!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["observedGeneration"] as? Int64 {
            self.observedGeneration = value
        }
        if let value = dict["observedTime"] as? String {
            self.observedTime = value
        }
        if let value = dict["outputs"] as? [String: Any?] {
            var model = ToolsetStatus.Outputs()
            model.fromMap(value)
            self.outputs = model
        }
        if let value = dict["phase"] as? String {
            self.phase = value
        }
    }
}

public class Variable : Tea.TeaModel {
    public var encrypted: Bool?

    public var sensitive: Bool?

    public var value: Any?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encrypted != nil {
            map["encrypted"] = self.encrypted!
        }
        if self.sensitive != nil {
            map["sensitive"] = self.sensitive!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["encrypted"] as? Bool {
            self.encrypted = value
        }
        if let value = dict["sensitive"] as? Bool {
            self.sensitive = value
        }
        if let value = dict["value"] as? Any {
            self.value = value
        }
    }
}

public class WebhookCodeContext : Tea.TeaModel {
    public var branch: String?

    public var commitID: String?

    public var description_: String?

    public var eventType: String?

    public var message: String?

    public var prType: String?

    public var repoUrl: String?

    public var sourceBranch: String?

    public var tag: String?

    public var targetBranch: String?

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
        if self.branch != nil {
            map["branch"] = self.branch!
        }
        if self.commitID != nil {
            map["commitID"] = self.commitID!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.eventType != nil {
            map["eventType"] = self.eventType!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.prType != nil {
            map["prType"] = self.prType!
        }
        if self.repoUrl != nil {
            map["repoUrl"] = self.repoUrl!
        }
        if self.sourceBranch != nil {
            map["sourceBranch"] = self.sourceBranch!
        }
        if self.tag != nil {
            map["tag"] = self.tag!
        }
        if self.targetBranch != nil {
            map["targetBranch"] = self.targetBranch!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["branch"] as? String {
            self.branch = value
        }
        if let value = dict["commitID"] as? String {
            self.commitID = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["eventType"] as? String {
            self.eventType = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["prType"] as? String {
            self.prType = value
        }
        if let value = dict["repoUrl"] as? String {
            self.repoUrl = value
        }
        if let value = dict["sourceBranch"] as? String {
            self.sourceBranch = value
        }
        if let value = dict["tag"] as? String {
            self.tag = value
        }
        if let value = dict["targetBranch"] as? String {
            self.targetBranch = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class OpenStructOssSourceConfig : Tea.TeaModel {
    public var bucket: String?

    public var object: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucket != nil {
            map["bucket"] = self.bucket!
        }
        if self.object != nil {
            map["object"] = self.object!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["object"] as? String {
            self.object = value
        }
    }
}

public class ActivateConnectionRequest : Tea.TeaModel {
    public var account: GitAccount?

    public var credential: OAuthCredential?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.account?.validate()
        try self.credential?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["account"] = self.account?.toMap()
        }
        if self.credential != nil {
            map["credential"] = self.credential?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["account"] as? [String: Any?] {
            var model = GitAccount()
            model.fromMap(value)
            self.account = model
        }
        if let value = dict["credential"] as? [String: Any?] {
            var model = OAuthCredential()
            model.fromMap(value)
            self.credential = model
        }
    }
}

public class ActivateConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Connection?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Connection()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelPipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Pipeline?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Pipeline()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Task()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateArtifactRequest : Tea.TeaModel {
    public var body: Artifact?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Artifact()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateArtifactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Artifact?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Artifact()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEnvironmentRequest : Tea.TeaModel {
    public var body: Environment?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Environment()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Environment?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Environment()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePipelineRequest : Tea.TeaModel {
    public var body: Pipeline?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Pipeline()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Pipeline?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Pipeline()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
    public var body: Project?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Project()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Project?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Project()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTaskRequest : Tea.TeaModel {
    public var body: Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Task()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Task()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateToolsetRequest : Tea.TeaModel {
    public var body: Toolset?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Toolset()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateToolsetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Toolset?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Toolset()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteArtifactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class DeleteConnectionRequest : Tea.TeaModel {
    public var force: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.force != nil {
            map["force"] = self.force!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["force"] as? Bool {
            self.force = value
        }
    }
}

public class DeleteConnectionResponseBody : Tea.TeaModel {
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

public class DeleteConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class DeleteProjectRequest : Tea.TeaModel {
    public var force: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.force != nil {
            map["force"] = self.force!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["force"] as? Bool {
            self.force = value
        }
    }
}

public class DeleteProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class DeleteToolsetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
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
    }
}

public class DeployEnvironmentRequest : Tea.TeaModel {
    public var body: DeployEnvironmentOptions?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeployEnvironmentOptions()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeployEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnvironmentDeployment?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnvironmentDeployment()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FetchArtifactDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ArtifactCode?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ArtifactCode()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FetchArtifactTempBucketTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ArtifactTempBucketToken?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ArtifactTempBucketToken()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FetchConnectionCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OAuthCredential?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OAuthCredential()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetArtifactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Artifact?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Artifact()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Environment?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Environment()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEnvironmentDeploymentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnvironmentDeployment?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnvironmentDeployment()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Pipeline?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Pipeline()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Project?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Project()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Repository?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Repository()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceDeploymentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ServiceDeployment?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ServiceDeployment()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Task()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetToolsetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Toolset?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Toolset()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConnectionsRequest : Tea.TeaModel {
    public var keyword: String?

    public var labelSelector: [String]?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.labelSelector != nil {
            map["labelSelector"] = self.labelSelector!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["labelSelector"] as? [String] {
            self.labelSelector = value
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListConnectionsShrinkRequest : Tea.TeaModel {
    public var keyword: String?

    public var labelSelectorShrink: String?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.labelSelectorShrink != nil {
            map["labelSelector"] = self.labelSelectorShrink!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["labelSelector"] as? String {
            self.labelSelectorShrink = value
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListConnectionsResponseBody : Tea.TeaModel {
    public var data: [Connection]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Connection] = []
            for v in value {
                if v != nil {
                    var model = Connection()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListConnectionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConnectionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListConnectionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEnvironmentsRequest : Tea.TeaModel {
    public var keyword: String?

    public var labelSelector: [String]?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.labelSelector != nil {
            map["labelSelector"] = self.labelSelector!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["labelSelector"] as? [String] {
            self.labelSelector = value
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListEnvironmentsShrinkRequest : Tea.TeaModel {
    public var keyword: String?

    public var labelSelectorShrink: String?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.labelSelectorShrink != nil {
            map["labelSelector"] = self.labelSelectorShrink!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["labelSelector"] as? String {
            self.labelSelectorShrink = value
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListEnvironmentsResponseBody : Tea.TeaModel {
    public var data: [Environment]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Environment] = []
            for v in value {
                if v != nil {
                    var model = Environment()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListEnvironmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEnvironmentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListEnvironmentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPipelinesRequest : Tea.TeaModel {
    public var labelSelector: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelSelector != nil {
            map["labelSelector"] = self.labelSelector!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["labelSelector"] as? [String] {
            self.labelSelector = value
        }
    }
}

public class ListPipelinesShrinkRequest : Tea.TeaModel {
    public var labelSelectorShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelSelectorShrink != nil {
            map["labelSelector"] = self.labelSelectorShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["labelSelector"] as? String {
            self.labelSelectorShrink = value
        }
    }
}

public class ListPipelinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [Pipeline]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
        if let value = dict["body"] as? [Any?] {
            var tmp : [Pipeline] = []
            for v in value {
                if v != nil {
                    var model = Pipeline()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.body = tmp
        }
    }
}

public class ListProjectsRequest : Tea.TeaModel {
    public var keyword: String?

    public var labelSelector: [String]?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.labelSelector != nil {
            map["labelSelector"] = self.labelSelector!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["labelSelector"] as? [String] {
            self.labelSelector = value
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListProjectsShrinkRequest : Tea.TeaModel {
    public var keyword: String?

    public var labelSelectorShrink: String?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.labelSelectorShrink != nil {
            map["labelSelector"] = self.labelSelectorShrink!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["labelSelector"] as? String {
            self.labelSelectorShrink = value
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListProjectsResponseBody : Tea.TeaModel {
    public var data: [Project]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Project] = []
            for v in value {
                if v != nil {
                    var model = Project()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListProjectsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceDeploymentsRequest : Tea.TeaModel {
    public var keyword: String?

    public var labelSelector: [String]?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.labelSelector != nil {
            map["labelSelector"] = self.labelSelector!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["labelSelector"] as? [String] {
            self.labelSelector = value
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListServiceDeploymentsShrinkRequest : Tea.TeaModel {
    public var keyword: String?

    public var labelSelectorShrink: String?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.labelSelectorShrink != nil {
            map["labelSelector"] = self.labelSelectorShrink!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["labelSelector"] as? String {
            self.labelSelectorShrink = value
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListServiceDeploymentsResponseBody : Tea.TeaModel {
    public var data: [ServiceDeployment]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ServiceDeployment] = []
            for v in value {
                if v != nil {
                    var model = ServiceDeployment()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListServiceDeploymentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceDeploymentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListServiceDeploymentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTasksRequest : Tea.TeaModel {
    public var labelSelector: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelSelector != nil {
            map["labelSelector"] = self.labelSelector!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["labelSelector"] as? [String] {
            self.labelSelector = value
        }
    }
}

public class ListTasksShrinkRequest : Tea.TeaModel {
    public var labelSelectorShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelSelectorShrink != nil {
            map["labelSelector"] = self.labelSelectorShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["labelSelector"] as? String {
            self.labelSelectorShrink = value
        }
    }
}

public class ListTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [Task]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
        if let value = dict["body"] as? [Any?] {
            var tmp : [Task] = []
            for v in value {
                if v != nil {
                    var model = Task()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.body = tmp
        }
    }
}

public class ListToolsetsRequest : Tea.TeaModel {
    public var keyword: String?

    public var labelSelector: [String]?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.labelSelector != nil {
            map["labelSelector"] = self.labelSelector!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["labelSelector"] as? [String] {
            self.labelSelector = value
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListToolsetsShrinkRequest : Tea.TeaModel {
    public var keyword: String?

    public var labelSelectorShrink: String?

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
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.labelSelectorShrink != nil {
            map["labelSelector"] = self.labelSelectorShrink!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["labelSelector"] as? String {
            self.labelSelectorShrink = value
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListToolsetsResponseBody : Tea.TeaModel {
    public var data: [Toolset]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Toolset] = []
            for v in value {
                if v != nil {
                    var model = Toolset()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["pageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListToolsetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListToolsetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListToolsetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PreviewEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnvironmentDeploymentSpec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnvironmentDeploymentSpec()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutArtifactRequest : Tea.TeaModel {
    public var body: Artifact?

    public var force: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.force != nil {
            map["force"] = self.force!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Artifact()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["force"] as? Bool {
            self.force = value
        }
    }
}

public class PutArtifactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Artifact?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Artifact()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutPipelineStatusRequest : Tea.TeaModel {
    public var body: Pipeline?

    public var force: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.force != nil {
            map["force"] = self.force!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Pipeline()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["force"] as? Bool {
            self.force = value
        }
    }
}

public class PutPipelineStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Pipeline?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Pipeline()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutTaskStatusRequest : Tea.TeaModel {
    public var body: Task?

    public var force: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.force != nil {
            map["force"] = self.force!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Task()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["force"] as? Bool {
            self.force = value
        }
    }
}

public class PutTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Task()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenderServicesByTemplateRequest : Tea.TeaModel {
    public var parameters: [String: Any]?

    public var projectName: String?

    public var serviceNameChanges: [String: String]?

    public var templateName: String?

    public var variableValues: TemplateVariableValueMap?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.variableValues?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.serviceNameChanges != nil {
            map["serviceNameChanges"] = self.serviceNameChanges!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.variableValues != nil {
            map["variableValues"] = self.variableValues?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["serviceNameChanges"] as? [String: String] {
            self.serviceNameChanges = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["variableValues"] as? [String: Any?] {
            var model = TemplateVariableValueMap()
            model.fromMap(value)
            self.variableValues = model
        }
    }
}

public class RenderServicesByTemplateResponseBody : Tea.TeaModel {
    public var changedServiceNames: [String: String]?

    public var services: [String: ServiceConfig]?

    public var variables: [String: Variable]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changedServiceNames != nil {
            map["changedServiceNames"] = self.changedServiceNames!
        }
        if self.services != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.services! {
                tmp[k] = v.toMap()
            }
            map["services"] = tmp
        }
        if self.variables != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.variables! {
                tmp[k] = v.toMap()
            }
            map["variables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["changedServiceNames"] as? [String: String] {
            self.changedServiceNames = value
        }
        if let value = dict["services"] as? [String: Any?] {
            var tmp : [String: ServiceConfig] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = ServiceConfig()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.services = tmp
        }
        if let value = dict["variables"] as? [String: Any?] {
            var tmp : [String: Variable] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = Variable()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.variables = tmp
        }
    }
}

public class RenderServicesByTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenderServicesByTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RenderServicesByTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResumeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Task()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RetryTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Task()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartPipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Pipeline?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Pipeline()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Task?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Task()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEnvironmentRequest : Tea.TeaModel {
    public var body: Environment?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Environment()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Environment?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Environment()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateProjectRequest : Tea.TeaModel {
    public var body: Project?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Project()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Project?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Project()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateToolsetRequest : Tea.TeaModel {
    public var body: Toolset?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Toolset()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateToolsetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Toolset?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Toolset()
            model.fromMap(value)
            self.body = model
        }
    }
}
