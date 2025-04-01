import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int32
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("resourceVersion") {
            self.resourceVersion = dict["resourceVersion"] as! Int32
        }
        if dict.keys.contains("spec") {
            var model = ArtifactSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = ArtifactStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
        }
        if dict.keys.contains("updatedTime") {
            self.updatedTime = dict["updatedTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("checksum") {
            self.checksum = dict["checksum"] as! String
        }
        if dict.keys.contains("url") {
            self.url = dict["url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("checksum") {
            self.checksum = dict["checksum"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("runtime") {
            self.runtime = dict["runtime"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("uri") {
            self.uri = dict["uri"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("arn") {
            self.arn = dict["arn"] as! String
        }
        if dict.keys.contains("checksum") {
            self.checksum = dict["checksum"] as! String
        }
        if dict.keys.contains("size") {
            self.size = dict["size"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accessKeyId") {
                self.accessKeyId = dict["accessKeyId"] as! String
            }
            if dict.keys.contains("accessKeySecret") {
                self.accessKeySecret = dict["accessKeySecret"] as! String
            }
            if dict.keys.contains("securityToken") {
                self.securityToken = dict["securityToken"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("credentials") {
            var model = ArtifactTempBucketToken.Credentials()
            model.fromMap(dict["credentials"] as! [String: Any])
            self.credentials = model
        }
        if dict.keys.contains("ossBucketName") {
            self.ossBucketName = dict["ossBucketName"] as! String
        }
        if dict.keys.contains("ossObjectName") {
            self.ossObjectName = dict["ossObjectName"] as! String
        }
        if dict.keys.contains("ossRegion") {
            self.ossRegion = dict["ossRegion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyPath") {
            self.keyPath = dict["keyPath"] as! [String: Any]
        }
        if dict.keys.contains("paths") {
            self.paths = dict["paths"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("default") {
            var model = DefaultBuilderConfig()
            model.fromMap(dict["default"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ref") {
            self.ref = dict["ref"] as! String
        }
        if dict.keys.contains("remote") {
            self.remote = dict["remote"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("branch") {
            self.branch = dict["branch"] as! String
        }
        if dict.keys.contains("commitID") {
            self.commitID = dict["commitID"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("expression") {
            self.expression = dict["expression"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("spec") {
            var model = ConnectionSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = ConnectionStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("account") {
            var model = GitAccount()
            model.fromMap(dict["account"] as! [String: Any])
            self.account = model
        }
        if dict.keys.contains("gitlabConfig") {
            var model = GitLabConfig()
            model.fromMap(dict["gitlabConfig"] as! [String: Any])
            self.gitlabConfig = model
        }
        if dict.keys.contains("platform") {
            self.platform = dict["platform"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("installation") {
            var model = Installation()
            model.fromMap(dict["installation"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("hint") {
            self.hint = dict["hint"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("required") {
            self.required_ = dict["required"] as! Bool
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class DefaultBuilderConfig : Tea.TeaModel {
    public var cache: BuildCacheConfig?

    public var languages: [String]?

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
        if self.steps != nil {
            map["steps"] = self.steps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cache") {
            var model = BuildCacheConfig()
            model.fromMap(dict["cache"] as! [String: Any])
            self.cache = model
        }
        if dict.keys.contains("languages") {
            self.languages = dict["languages"] as! [String]
        }
        if dict.keys.contains("steps") {
            self.steps = dict["steps"] as! [Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeployCustomContainerInput : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("reservedConcurrency") {
                self.reservedConcurrency = dict["reservedConcurrency"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("failureThreshold") {
                    self.failureThreshold = dict["failureThreshold"] as! Int32
                }
                if dict.keys.contains("httpGetUrl") {
                    self.httpGetUrl = dict["httpGetUrl"] as! String
                }
                if dict.keys.contains("initialDelaySeconds") {
                    self.initialDelaySeconds = dict["initialDelaySeconds"] as! Int32
                }
                if dict.keys.contains("periodSeconds") {
                    self.periodSeconds = dict["periodSeconds"] as! Int32
                }
                if dict.keys.contains("successThreshold") {
                    self.successThreshold = dict["successThreshold"] as! Int32
                }
                if dict.keys.contains("timeoutSeconds") {
                    self.timeoutSeconds = dict["timeoutSeconds"] as! Int64
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("handler") {
                        self.handler = dict["handler"] as! String
                    }
                    if dict.keys.contains("timeout") {
                        self.timeout = dict["timeout"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("handler") {
                        self.handler = dict["handler"] as! String
                    }
                    if dict.keys.contains("timeout") {
                        self.timeout = dict["timeout"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("initializer") {
                    var model = DeployCustomContainerInput.CustomContainerConfig.InstanceLifecycleConfig.Initializer()
                    model.fromMap(dict["initializer"] as! [String: Any])
                    self.initializer = model
                }
                if dict.keys.contains("preStop") {
                    var model = DeployCustomContainerInput.CustomContainerConfig.InstanceLifecycleConfig.PreStop()
                    model.fromMap(dict["preStop"] as! [String: Any])
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("command") {
                self.command = dict["command"] as! [String]
            }
            if dict.keys.contains("entrypoint") {
                self.entrypoint = dict["entrypoint"] as! [String]
            }
            if dict.keys.contains("healthCheckConfig") {
                var model = DeployCustomContainerInput.CustomContainerConfig.HealthCheckConfig()
                model.fromMap(dict["healthCheckConfig"] as! [String: Any])
                self.healthCheckConfig = model
            }
            if dict.keys.contains("image") {
                self.image = dict["image"] as! String
            }
            if dict.keys.contains("instanceConcurrency") {
                self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
            }
            if dict.keys.contains("instanceLifecycleConfig") {
                var model = DeployCustomContainerInput.CustomContainerConfig.InstanceLifecycleConfig()
                model.fromMap(dict["instanceLifecycleConfig"] as! [String: Any])
                self.instanceLifecycleConfig = model
            }
            if dict.keys.contains("port") {
                self.port = dict["port"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gpuMemorySize") {
                self.gpuMemorySize = dict["gpuMemorySize"] as! Int64
            }
            if dict.keys.contains("gpuType") {
                self.gpuType = dict["gpuType"] as! String
            }
        }
    }
    public class HttpTrigger : Tea.TeaModel {
        public class TriggerConfig : Tea.TeaModel {
            public var authType: String?

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
                if self.authType != nil {
                    map["authType"] = self.authType!
                }
                if self.dsableURLInternet != nil {
                    map["dsableURLInternet"] = self.dsableURLInternet!
                }
                if self.methods != nil {
                    map["methods"] = self.methods!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("authType") {
                    self.authType = dict["authType"] as! String
                }
                if dict.keys.contains("dsableURLInternet") {
                    self.dsableURLInternet = dict["dsableURLInternet"] as! Bool
                }
                if dict.keys.contains("methods") {
                    self.methods = dict["methods"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("qualifier") {
                self.qualifier = dict["qualifier"] as! String
            }
            if dict.keys.contains("triggerConfig") {
                var model = DeployCustomContainerInput.HttpTrigger.TriggerConfig()
                model.fromMap(dict["triggerConfig"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enableInstanceMetrics") {
                self.enableInstanceMetrics = dict["enableInstanceMetrics"] as! Bool
            }
            if dict.keys.contains("enableRequestMetrics") {
                self.enableRequestMetrics = dict["enableRequestMetrics"] as! Bool
            }
            if dict.keys.contains("logBeginRule") {
                self.logBeginRule = dict["logBeginRule"] as! String
            }
            if dict.keys.contains("logstore") {
                self.logstore = dict["logstore"] as! String
            }
            if dict.keys.contains("project") {
                self.project = dict["project"] as! String
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

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("framework") {
                self.framework = dict["framework"] as! String
            }
            if dict.keys.contains("multiModelConfig") {
                var tmp : [ModelConfig] = []
                for v in dict["multiModelConfig"] as! [Any] {
                    var model = ModelConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.multiModelConfig = tmp
            }
            if dict.keys.contains("prefix") {
                self.prefix_ = dict["prefix"] as! String
            }
            if dict.keys.contains("sourceType") {
                self.sourceType = dict["sourceType"] as! String
            }
            if dict.keys.contains("srcModelScopeModelID") {
                self.srcModelScopeModelID = dict["srcModelScopeModelID"] as! String
            }
            if dict.keys.contains("srcModelScopeModelRevision") {
                self.srcModelScopeModelRevision = dict["srcModelScopeModelRevision"] as! String
            }
            if dict.keys.contains("srcModelScopeToken") {
                self.srcModelScopeToken = dict["srcModelScopeToken"] as! String
            }
            if dict.keys.contains("srcOssBucket") {
                self.srcOssBucket = dict["srcOssBucket"] as! String
            }
            if dict.keys.contains("srcOssPath") {
                self.srcOssPath = dict["srcOssPath"] as! String
            }
            if dict.keys.contains("srcOssRegion") {
                self.srcOssRegion = dict["srcOssRegion"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("groupId") {
                self.groupId = dict["groupId"] as! Int64
            }
            if dict.keys.contains("mountPoints") {
                self.mountPoints = dict["mountPoints"] as! [String]
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("endTime") {
                    self.endTime = dict["endTime"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("scheduleExpression") {
                    self.scheduleExpression = dict["scheduleExpression"] as! String
                }
                if dict.keys.contains("startTime") {
                    self.startTime = dict["startTime"] as! String
                }
                if dict.keys.contains("target") {
                    self.target = dict["target"] as! Int32
                }
                if dict.keys.contains("timeZone") {
                    self.timeZone = dict["timeZone"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alwaysAllocateGPU") {
                self.alwaysAllocateGPU = dict["alwaysAllocateGPU"] as! Bool
            }
            if dict.keys.contains("scheduledActions") {
                var tmp : [DeployCustomContainerInput.ProvisionConfig.ScheduledActions] = []
                for v in dict["scheduledActions"] as! [Any] {
                    var model = DeployCustomContainerInput.ProvisionConfig.ScheduledActions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.scheduledActions = tmp
            }
            if dict.keys.contains("target") {
                self.target = dict["target"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("securityGroupId") {
                self.securityGroupId = dict["securityGroupId"] as! String
            }
            if dict.keys.contains("vSwitchIds") {
                self.vSwitchIds = dict["vSwitchIds"] as! [String]
            }
            if dict.keys.contains("vpcId") {
                self.vpcId = dict["vpcId"] as! String
            }
        }
    }
    public var accountID: String?

    public var concurrencyConfig: DeployCustomContainerInput.ConcurrencyConfig?

    public var cpu: Double?

    public var customContainerConfig: DeployCustomContainerInput.CustomContainerConfig?

    public var description_: String?

    public var diskSize: Int32?

    public var envName: String?

    public var environmentVariables: [String: Any]?

    public var gpuConfig: DeployCustomContainerInput.GpuConfig?

    public var httpTrigger: DeployCustomContainerInput.HttpTrigger?

    public var logConfig: DeployCustomContainerInput.LogConfig?

    public var memorySize: Int32?

    public var modelConfig: DeployCustomContainerInput.ModelConfig?

    public var name: String?

    public var nasConfig: DeployCustomContainerInput.NasConfig?

    public var originalName: String?

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
        try self.concurrencyConfig?.validate()
        try self.customContainerConfig?.validate()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountID") {
            self.accountID = dict["accountID"] as! String
        }
        if dict.keys.contains("concurrencyConfig") {
            var model = DeployCustomContainerInput.ConcurrencyConfig()
            model.fromMap(dict["concurrencyConfig"] as! [String: Any])
            self.concurrencyConfig = model
        }
        if dict.keys.contains("cpu") {
            self.cpu = dict["cpu"] as! Double
        }
        if dict.keys.contains("customContainerConfig") {
            var model = DeployCustomContainerInput.CustomContainerConfig()
            model.fromMap(dict["customContainerConfig"] as! [String: Any])
            self.customContainerConfig = model
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("diskSize") {
            self.diskSize = dict["diskSize"] as! Int32
        }
        if dict.keys.contains("envName") {
            self.envName = dict["envName"] as! String
        }
        if dict.keys.contains("environmentVariables") {
            self.environmentVariables = dict["environmentVariables"] as! [String: Any]
        }
        if dict.keys.contains("gpuConfig") {
            var model = DeployCustomContainerInput.GpuConfig()
            model.fromMap(dict["gpuConfig"] as! [String: Any])
            self.gpuConfig = model
        }
        if dict.keys.contains("httpTrigger") {
            var model = DeployCustomContainerInput.HttpTrigger()
            model.fromMap(dict["httpTrigger"] as! [String: Any])
            self.httpTrigger = model
        }
        if dict.keys.contains("logConfig") {
            var model = DeployCustomContainerInput.LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("memorySize") {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("modelConfig") {
            var model = DeployCustomContainerInput.ModelConfig()
            model.fromMap(dict["modelConfig"] as! [String: Any])
            self.modelConfig = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nasConfig") {
            var model = DeployCustomContainerInput.NasConfig()
            model.fromMap(dict["nasConfig"] as! [String: Any])
            self.nasConfig = model
        }
        if dict.keys.contains("originalName") {
            self.originalName = dict["originalName"] as! String
        }
        if dict.keys.contains("projectName") {
            self.projectName = dict["projectName"] as! String
        }
        if dict.keys.contains("provisionConfig") {
            var model = DeployCustomContainerInput.ProvisionConfig()
            model.fromMap(dict["provisionConfig"] as! [String: Any])
            self.provisionConfig = model
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("reportStatusURL") {
            self.reportStatusURL = dict["reportStatusURL"] as! String
        }
        if dict.keys.contains("role") {
            self.role = dict["role"] as! String
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
        if dict.keys.contains("vpcConfig") {
            var model = DeployCustomContainerInput.VpcConfig()
            model.fromMap(dict["vpcConfig"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deploymentTaskID") {
                self.deploymentTaskID = dict["deploymentTaskID"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("finished") {
                self.finished = dict["finished"] as! Bool
            }
            if dict.keys.contains("nasConfigStr") {
                self.nasConfigStr = dict["nasConfigStr"] as! String
            }
            if dict.keys.contains("serviceName") {
                self.serviceName = dict["serviceName"] as! String
            }
            if dict.keys.contains("traceID") {
                self.traceID = dict["traceID"] as! String
            }
            if dict.keys.contains("urlInternet") {
                self.urlInternet = dict["urlInternet"] as! String
            }
            if dict.keys.contains("urlIntranet") {
                self.urlIntranet = dict["urlIntranet"] as! String
            }
            if dict.keys.contains("vpcConfigStr") {
                self.vpcConfigStr = dict["vpcConfigStr"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = DeployCustomContainerOutput.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("services") {
            self.services = dict["services"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("reservedConcurrency") {
                self.reservedConcurrency = dict["reservedConcurrency"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gpuMemorySize") {
                self.gpuMemorySize = dict["gpuMemorySize"] as! Int32
            }
            if dict.keys.contains("gpuType") {
                self.gpuType = dict["gpuType"] as! String
            }
        }
    }
    public class HttpTrigger : Tea.TeaModel {
        public class TriggerConfig : Tea.TeaModel {
            public var authType: String?

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
                if self.authType != nil {
                    map["authType"] = self.authType!
                }
                if self.dsableURLInternet != nil {
                    map["dsableURLInternet"] = self.dsableURLInternet!
                }
                if self.methods != nil {
                    map["methods"] = self.methods!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("authType") {
                    self.authType = dict["authType"] as! String
                }
                if dict.keys.contains("dsableURLInternet") {
                    self.dsableURLInternet = dict["dsableURLInternet"] as! Bool
                }
                if dict.keys.contains("methods") {
                    self.methods = dict["methods"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("qualifier") {
                self.qualifier = dict["qualifier"] as! String
            }
            if dict.keys.contains("triggerConfig") {
                var model = DeployHuggingFaceModelInput.HttpTrigger.TriggerConfig()
                model.fromMap(dict["triggerConfig"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enableInstanceMetrics") {
                self.enableInstanceMetrics = dict["enableInstanceMetrics"] as! Bool
            }
            if dict.keys.contains("enableRequestMetrics") {
                self.enableRequestMetrics = dict["enableRequestMetrics"] as! Bool
            }
            if dict.keys.contains("logBeginRule") {
                self.logBeginRule = dict["logBeginRule"] as! String
            }
            if dict.keys.contains("logstore") {
                self.logstore = dict["logstore"] as! String
            }
            if dict.keys.contains("project") {
                self.project = dict["project"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("framework") {
                    self.framework = dict["framework"] as! String
                }
                if dict.keys.contains("task") {
                    self.task = dict["task"] as! String
                }
            }
        }
        public var fmkHuggingFaceConfig: DeployHuggingFaceModelInput.ModelConfig.FmkHuggingFaceConfig?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fmkHuggingFaceConfig") {
                var model = DeployHuggingFaceModelInput.ModelConfig.FmkHuggingFaceConfig()
                model.fromMap(dict["fmkHuggingFaceConfig"] as! [String: Any])
                self.fmkHuggingFaceConfig = model
            }
            if dict.keys.contains("framework") {
                self.framework = dict["framework"] as! String
            }
            if dict.keys.contains("multiModelConfig") {
                var tmp : [ModelConfig] = []
                for v in dict["multiModelConfig"] as! [Any] {
                    var model = ModelConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.multiModelConfig = tmp
            }
            if dict.keys.contains("prefix") {
                self.prefix_ = dict["prefix"] as! String
            }
            if dict.keys.contains("sourceType") {
                self.sourceType = dict["sourceType"] as! String
            }
            if dict.keys.contains("srcModelScopeModelID") {
                self.srcModelScopeModelID = dict["srcModelScopeModelID"] as! String
            }
            if dict.keys.contains("srcModelScopeModelRevision") {
                self.srcModelScopeModelRevision = dict["srcModelScopeModelRevision"] as! String
            }
            if dict.keys.contains("srcModelScopeToken") {
                self.srcModelScopeToken = dict["srcModelScopeToken"] as! String
            }
            if dict.keys.contains("srcOssBucket") {
                self.srcOssBucket = dict["srcOssBucket"] as! String
            }
            if dict.keys.contains("srcOssPath") {
                self.srcOssPath = dict["srcOssPath"] as! String
            }
            if dict.keys.contains("srcOssRegion") {
                self.srcOssRegion = dict["srcOssRegion"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("groupId") {
                self.groupId = dict["groupId"] as! Int32
            }
            if dict.keys.contains("mountPoints") {
                self.mountPoints = dict["mountPoints"] as! [String]
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("endTime") {
                    self.endTime = dict["endTime"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("scheduleExpression") {
                    self.scheduleExpression = dict["scheduleExpression"] as! String
                }
                if dict.keys.contains("startTime") {
                    self.startTime = dict["startTime"] as! String
                }
                if dict.keys.contains("target") {
                    self.target = dict["target"] as! Int32
                }
                if dict.keys.contains("timeZone") {
                    self.timeZone = dict["timeZone"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alwaysAllocateGPU") {
                self.alwaysAllocateGPU = dict["alwaysAllocateGPU"] as! Bool
            }
            if dict.keys.contains("scheduledActions") {
                var tmp : [DeployHuggingFaceModelInput.ProvisionConfig.ScheduledActions] = []
                for v in dict["scheduledActions"] as! [Any] {
                    var model = DeployHuggingFaceModelInput.ProvisionConfig.ScheduledActions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.scheduledActions = tmp
            }
            if dict.keys.contains("target") {
                self.target = dict["target"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("securityGroupId") {
                self.securityGroupId = dict["securityGroupId"] as! String
            }
            if dict.keys.contains("vSwitchIds") {
                self.vSwitchIds = dict["vSwitchIds"] as! [String]
            }
            if dict.keys.contains("vpcId") {
                self.vpcId = dict["vpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountID") {
            self.accountID = dict["accountID"] as! String
        }
        if dict.keys.contains("concurrencyConfig") {
            var model = DeployHuggingFaceModelInput.ConcurrencyConfig()
            model.fromMap(dict["concurrencyConfig"] as! [String: Any])
            self.concurrencyConfig = model
        }
        if dict.keys.contains("cpu") {
            self.cpu = dict["cpu"] as! Double
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("diskSize") {
            self.diskSize = dict["diskSize"] as! Int32
        }
        if dict.keys.contains("envName") {
            self.envName = dict["envName"] as! String
        }
        if dict.keys.contains("environmentVariables") {
            self.environmentVariables = dict["environmentVariables"] as! [String: Any]
        }
        if dict.keys.contains("gpuConfig") {
            var model = DeployHuggingFaceModelInput.GpuConfig()
            model.fromMap(dict["gpuConfig"] as! [String: Any])
            self.gpuConfig = model
        }
        if dict.keys.contains("httpTrigger") {
            var model = DeployHuggingFaceModelInput.HttpTrigger()
            model.fromMap(dict["httpTrigger"] as! [String: Any])
            self.httpTrigger = model
        }
        if dict.keys.contains("imageName") {
            self.imageName = dict["imageName"] as! String
        }
        if dict.keys.contains("instanceConcurrency") {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("logConfig") {
            var model = DeployHuggingFaceModelInput.LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("memorySize") {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("modelConfig") {
            var model = DeployHuggingFaceModelInput.ModelConfig()
            model.fromMap(dict["modelConfig"] as! [String: Any])
            self.modelConfig = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nasConfig") {
            var model = DeployHuggingFaceModelInput.NasConfig()
            model.fromMap(dict["nasConfig"] as! [String: Any])
            self.nasConfig = model
        }
        if dict.keys.contains("originalName") {
            self.originalName = dict["originalName"] as! String
        }
        if dict.keys.contains("projectName") {
            self.projectName = dict["projectName"] as! String
        }
        if dict.keys.contains("provisionConfig") {
            var model = DeployHuggingFaceModelInput.ProvisionConfig()
            model.fromMap(dict["provisionConfig"] as! [String: Any])
            self.provisionConfig = model
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("reportStatusURL") {
            self.reportStatusURL = dict["reportStatusURL"] as! String
        }
        if dict.keys.contains("role") {
            self.role = dict["role"] as! String
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
        if dict.keys.contains("vpcConfig") {
            var model = DeployHuggingFaceModelInput.VpcConfig()
            model.fromMap(dict["vpcConfig"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deploymentTaskID") {
                self.deploymentTaskID = dict["deploymentTaskID"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("finished") {
                self.finished = dict["finished"] as! Bool
            }
            if dict.keys.contains("serviceName") {
                self.serviceName = dict["serviceName"] as! String
            }
            if dict.keys.contains("taskType") {
                self.taskType = dict["taskType"] as! String
            }
            if dict.keys.contains("traceID") {
                self.traceID = dict["traceID"] as! String
            }
            if dict.keys.contains("urlInternet") {
                self.urlInternet = dict["urlInternet"] as! String
            }
            if dict.keys.contains("urlIntranet") {
                self.urlIntranet = dict["urlIntranet"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = DeployHuggingFaceModelOutput.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("reservedConcurrency") {
                self.reservedConcurrency = dict["reservedConcurrency"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gpuMemorySize") {
                self.gpuMemorySize = dict["gpuMemorySize"] as! Int32
            }
            if dict.keys.contains("gpuType") {
                self.gpuType = dict["gpuType"] as! String
            }
        }
    }
    public class HttpTrigger : Tea.TeaModel {
        public class TriggerConfig : Tea.TeaModel {
            public var authType: String?

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
                if self.authType != nil {
                    map["authType"] = self.authType!
                }
                if self.dsableURLInternet != nil {
                    map["dsableURLInternet"] = self.dsableURLInternet!
                }
                if self.methods != nil {
                    map["methods"] = self.methods!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("authType") {
                    self.authType = dict["authType"] as! String
                }
                if dict.keys.contains("dsableURLInternet") {
                    self.dsableURLInternet = dict["dsableURLInternet"] as! Bool
                }
                if dict.keys.contains("methods") {
                    self.methods = dict["methods"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("qualifier") {
                self.qualifier = dict["qualifier"] as! String
            }
            if dict.keys.contains("triggerConfig") {
                var model = DeployModelScopeModelInput.HttpTrigger.TriggerConfig()
                model.fromMap(dict["triggerConfig"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enableInstanceMetrics") {
                self.enableInstanceMetrics = dict["enableInstanceMetrics"] as! Bool
            }
            if dict.keys.contains("enableRequestMetrics") {
                self.enableRequestMetrics = dict["enableRequestMetrics"] as! Bool
            }
            if dict.keys.contains("logBeginRule") {
                self.logBeginRule = dict["logBeginRule"] as! String
            }
            if dict.keys.contains("logstore") {
                self.logstore = dict["logstore"] as! String
            }
            if dict.keys.contains("project") {
                self.project = dict["project"] as! String
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

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("framework") {
                self.framework = dict["framework"] as! String
            }
            if dict.keys.contains("multiModelConfig") {
                var tmp : [ModelConfig] = []
                for v in dict["multiModelConfig"] as! [Any] {
                    var model = ModelConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.multiModelConfig = tmp
            }
            if dict.keys.contains("prefix") {
                self.prefix_ = dict["prefix"] as! String
            }
            if dict.keys.contains("sourceType") {
                self.sourceType = dict["sourceType"] as! String
            }
            if dict.keys.contains("srcModelScopeModelID") {
                self.srcModelScopeModelID = dict["srcModelScopeModelID"] as! String
            }
            if dict.keys.contains("srcModelScopeModelRevision") {
                self.srcModelScopeModelRevision = dict["srcModelScopeModelRevision"] as! String
            }
            if dict.keys.contains("srcModelScopeToken") {
                self.srcModelScopeToken = dict["srcModelScopeToken"] as! String
            }
            if dict.keys.contains("srcOssBucket") {
                self.srcOssBucket = dict["srcOssBucket"] as! String
            }
            if dict.keys.contains("srcOssPath") {
                self.srcOssPath = dict["srcOssPath"] as! String
            }
            if dict.keys.contains("srcOssRegion") {
                self.srcOssRegion = dict["srcOssRegion"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("groupId") {
                self.groupId = dict["groupId"] as! Int32
            }
            if dict.keys.contains("mountPoints") {
                self.mountPoints = dict["mountPoints"] as! [String]
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("endTime") {
                    self.endTime = dict["endTime"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("scheduleExpression") {
                    self.scheduleExpression = dict["scheduleExpression"] as! String
                }
                if dict.keys.contains("startTime") {
                    self.startTime = dict["startTime"] as! String
                }
                if dict.keys.contains("target") {
                    self.target = dict["target"] as! Int32
                }
                if dict.keys.contains("timeZone") {
                    self.timeZone = dict["timeZone"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alwaysAllocateGPU") {
                self.alwaysAllocateGPU = dict["alwaysAllocateGPU"] as! Bool
            }
            if dict.keys.contains("scheduledActions") {
                var tmp : [DeployModelScopeModelInput.ProvisionConfig.ScheduledActions] = []
                for v in dict["scheduledActions"] as! [Any] {
                    var model = DeployModelScopeModelInput.ProvisionConfig.ScheduledActions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.scheduledActions = tmp
            }
            if dict.keys.contains("target") {
                self.target = dict["target"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("securityGroupId") {
                self.securityGroupId = dict["securityGroupId"] as! String
            }
            if dict.keys.contains("vSwitchIds") {
                self.vSwitchIds = dict["vSwitchIds"] as! [String]
            }
            if dict.keys.contains("vpcId") {
                self.vpcId = dict["vpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountID") {
            self.accountID = dict["accountID"] as! String
        }
        if dict.keys.contains("concurrencyConfig") {
            var model = DeployModelScopeModelInput.ConcurrencyConfig()
            model.fromMap(dict["concurrencyConfig"] as! [String: Any])
            self.concurrencyConfig = model
        }
        if dict.keys.contains("cpu") {
            self.cpu = dict["cpu"] as! Double
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("diskSize") {
            self.diskSize = dict["diskSize"] as! Int32
        }
        if dict.keys.contains("envName") {
            self.envName = dict["envName"] as! String
        }
        if dict.keys.contains("environmentVariables") {
            self.environmentVariables = dict["environmentVariables"] as! [String: Any]
        }
        if dict.keys.contains("gpuConfig") {
            var model = DeployModelScopeModelInput.GpuConfig()
            model.fromMap(dict["gpuConfig"] as! [String: Any])
            self.gpuConfig = model
        }
        if dict.keys.contains("httpTrigger") {
            var model = DeployModelScopeModelInput.HttpTrigger()
            model.fromMap(dict["httpTrigger"] as! [String: Any])
            self.httpTrigger = model
        }
        if dict.keys.contains("imageName") {
            self.imageName = dict["imageName"] as! String
        }
        if dict.keys.contains("instanceConcurrency") {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("logConfig") {
            var model = DeployModelScopeModelInput.LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("memorySize") {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("modelConfig") {
            var model = DeployModelScopeModelInput.ModelConfig()
            model.fromMap(dict["modelConfig"] as! [String: Any])
            self.modelConfig = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nasConfig") {
            var model = DeployModelScopeModelInput.NasConfig()
            model.fromMap(dict["nasConfig"] as! [String: Any])
            self.nasConfig = model
        }
        if dict.keys.contains("originalName") {
            self.originalName = dict["originalName"] as! String
        }
        if dict.keys.contains("projectName") {
            self.projectName = dict["projectName"] as! String
        }
        if dict.keys.contains("provisionConfig") {
            var model = DeployModelScopeModelInput.ProvisionConfig()
            model.fromMap(dict["provisionConfig"] as! [String: Any])
            self.provisionConfig = model
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("reportStatusURL") {
            self.reportStatusURL = dict["reportStatusURL"] as! String
        }
        if dict.keys.contains("role") {
            self.role = dict["role"] as! String
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
        if dict.keys.contains("vpcConfig") {
            var model = DeployModelScopeModelInput.VpcConfig()
            model.fromMap(dict["vpcConfig"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deploymentTaskID") {
                self.deploymentTaskID = dict["deploymentTaskID"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("finished") {
                self.finished = dict["finished"] as! Bool
            }
            if dict.keys.contains("serviceName") {
                self.serviceName = dict["serviceName"] as! String
            }
            if dict.keys.contains("taskType") {
                self.taskType = dict["taskType"] as! String
            }
            if dict.keys.contains("traceID") {
                self.traceID = dict["traceID"] as! String
            }
            if dict.keys.contains("urlInternet") {
                self.urlInternet = dict["urlInternet"] as! String
            }
            if dict.keys.contains("urlIntranet") {
                self.urlIntranet = dict["urlIntranet"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = DeployModelScopeModelOutput.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("reservedConcurrency") {
                self.reservedConcurrency = dict["reservedConcurrency"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gpuMemorySize") {
                self.gpuMemorySize = dict["gpuMemorySize"] as! Int32
            }
            if dict.keys.contains("gpuType") {
                self.gpuType = dict["gpuType"] as! String
            }
        }
    }
    public class HttpTrigger : Tea.TeaModel {
        public class TriggerConfig : Tea.TeaModel {
            public var authType: String?

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
                if self.authType != nil {
                    map["authType"] = self.authType!
                }
                if self.dsableURLInternet != nil {
                    map["dsableURLInternet"] = self.dsableURLInternet!
                }
                if self.methods != nil {
                    map["methods"] = self.methods!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("authType") {
                    self.authType = dict["authType"] as! String
                }
                if dict.keys.contains("dsableURLInternet") {
                    self.dsableURLInternet = dict["dsableURLInternet"] as! Bool
                }
                if dict.keys.contains("methods") {
                    self.methods = dict["methods"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("qualifier") {
                self.qualifier = dict["qualifier"] as! String
            }
            if dict.keys.contains("triggerConfig") {
                var model = DeployOllamaModelInput.HttpTrigger.TriggerConfig()
                model.fromMap(dict["triggerConfig"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enableInstanceMetrics") {
                self.enableInstanceMetrics = dict["enableInstanceMetrics"] as! Bool
            }
            if dict.keys.contains("enableRequestMetrics") {
                self.enableRequestMetrics = dict["enableRequestMetrics"] as! Bool
            }
            if dict.keys.contains("logBeginRule") {
                self.logBeginRule = dict["logBeginRule"] as! String
            }
            if dict.keys.contains("logstore") {
                self.logstore = dict["logstore"] as! String
            }
            if dict.keys.contains("project") {
                self.project = dict["project"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("minP") {
                    self.minP = dict["minP"] as! Double
                }
                if dict.keys.contains("mirostat") {
                    self.mirostat = dict["mirostat"] as! Int32
                }
                if dict.keys.contains("mirostatEta") {
                    self.mirostatEta = dict["mirostatEta"] as! Double
                }
                if dict.keys.contains("mirostatTau") {
                    self.mirostatTau = dict["mirostatTau"] as! Double
                }
                if dict.keys.contains("modelName") {
                    self.modelName = dict["modelName"] as! String
                }
                if dict.keys.contains("modelfileAdapter") {
                    self.modelfileAdapter = dict["modelfileAdapter"] as! String
                }
                if dict.keys.contains("modelfileAdditionalFromsString") {
                    self.modelfileAdditionalFromsString = dict["modelfileAdditionalFromsString"] as! String
                }
                if dict.keys.contains("modelfileFullTextPostfix") {
                    self.modelfileFullTextPostfix = dict["modelfileFullTextPostfix"] as! String
                }
                if dict.keys.contains("modelfileParams") {
                    self.modelfileParams = dict["modelfileParams"] as! String
                }
                if dict.keys.contains("modelfileSystem") {
                    self.modelfileSystem = dict["modelfileSystem"] as! String
                }
                if dict.keys.contains("modelfileTemplate") {
                    self.modelfileTemplate = dict["modelfileTemplate"] as! String
                }
                if dict.keys.contains("numCtx") {
                    self.numCtx = dict["numCtx"] as! Int32
                }
                if dict.keys.contains("numPredict") {
                    self.numPredict = dict["numPredict"] as! Int32
                }
                if dict.keys.contains("quantize") {
                    self.quantize = dict["quantize"] as! String
                }
                if dict.keys.contains("repeatLastN") {
                    self.repeatLastN = dict["repeatLastN"] as! Int32
                }
                if dict.keys.contains("repeatPenalty") {
                    self.repeatPenalty = dict["repeatPenalty"] as! Double
                }
                if dict.keys.contains("seed") {
                    self.seed = dict["seed"] as! Int32
                }
                if dict.keys.contains("singleModelFile") {
                    self.singleModelFile = dict["singleModelFile"] as! String
                }
                if dict.keys.contains("splitedModelStartFile") {
                    self.splitedModelStartFile = dict["splitedModelStartFile"] as! String
                }
                if dict.keys.contains("stop") {
                    self.stop = dict["stop"] as! String
                }
                if dict.keys.contains("stream") {
                    self.stream = dict["stream"] as! Bool
                }
                if dict.keys.contains("temperature") {
                    self.temperature = dict["temperature"] as! Double
                }
                if dict.keys.contains("tfsZ") {
                    self.tfsZ = dict["tfsZ"] as! Double
                }
                if dict.keys.contains("topK") {
                    self.topK = dict["topK"] as! Int32
                }
                if dict.keys.contains("topP") {
                    self.topP = dict["topP"] as! Double
                }
            }
        }
        public var fmkOllamaConfig: DeployOllamaModelInput.ModelConfig.FmkOllamaConfig?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fmkOllamaConfig") {
                var model = DeployOllamaModelInput.ModelConfig.FmkOllamaConfig()
                model.fromMap(dict["fmkOllamaConfig"] as! [String: Any])
                self.fmkOllamaConfig = model
            }
            if dict.keys.contains("framework") {
                self.framework = dict["framework"] as! String
            }
            if dict.keys.contains("multiModelConfig") {
                var tmp : [ModelConfig] = []
                for v in dict["multiModelConfig"] as! [Any] {
                    var model = ModelConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.multiModelConfig = tmp
            }
            if dict.keys.contains("prefix") {
                self.prefix_ = dict["prefix"] as! String
            }
            if dict.keys.contains("sourceType") {
                self.sourceType = dict["sourceType"] as! String
            }
            if dict.keys.contains("srcModelScopeModelID") {
                self.srcModelScopeModelID = dict["srcModelScopeModelID"] as! String
            }
            if dict.keys.contains("srcModelScopeModelRevision") {
                self.srcModelScopeModelRevision = dict["srcModelScopeModelRevision"] as! String
            }
            if dict.keys.contains("srcModelScopeToken") {
                self.srcModelScopeToken = dict["srcModelScopeToken"] as! String
            }
            if dict.keys.contains("srcOssBucket") {
                self.srcOssBucket = dict["srcOssBucket"] as! String
            }
            if dict.keys.contains("srcOssPath") {
                self.srcOssPath = dict["srcOssPath"] as! String
            }
            if dict.keys.contains("srcOssRegion") {
                self.srcOssRegion = dict["srcOssRegion"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("groupId") {
                self.groupId = dict["groupId"] as! Int32
            }
            if dict.keys.contains("mountPoints") {
                self.mountPoints = dict["mountPoints"] as! [String]
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("endTime") {
                    self.endTime = dict["endTime"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("scheduleExpression") {
                    self.scheduleExpression = dict["scheduleExpression"] as! String
                }
                if dict.keys.contains("startTime") {
                    self.startTime = dict["startTime"] as! String
                }
                if dict.keys.contains("target") {
                    self.target = dict["target"] as! Int32
                }
                if dict.keys.contains("timeZone") {
                    self.timeZone = dict["timeZone"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alwaysAllocateGPU") {
                self.alwaysAllocateGPU = dict["alwaysAllocateGPU"] as! Bool
            }
            if dict.keys.contains("scheduledActions") {
                var tmp : [DeployOllamaModelInput.ProvisionConfig.ScheduledActions] = []
                for v in dict["scheduledActions"] as! [Any] {
                    var model = DeployOllamaModelInput.ProvisionConfig.ScheduledActions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.scheduledActions = tmp
            }
            if dict.keys.contains("target") {
                self.target = dict["target"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("securityGroupId") {
                self.securityGroupId = dict["securityGroupId"] as! String
            }
            if dict.keys.contains("vSwitchIds") {
                self.vSwitchIds = dict["vSwitchIds"] as! [String]
            }
            if dict.keys.contains("vpcId") {
                self.vpcId = dict["vpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountID") {
            self.accountID = dict["accountID"] as! String
        }
        if dict.keys.contains("concurrencyConfig") {
            var model = DeployOllamaModelInput.ConcurrencyConfig()
            model.fromMap(dict["concurrencyConfig"] as! [String: Any])
            self.concurrencyConfig = model
        }
        if dict.keys.contains("cpu") {
            self.cpu = dict["cpu"] as! Double
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("diskSize") {
            self.diskSize = dict["diskSize"] as! Int32
        }
        if dict.keys.contains("envName") {
            self.envName = dict["envName"] as! String
        }
        if dict.keys.contains("environmentVariables") {
            self.environmentVariables = dict["environmentVariables"] as! [String: Any]
        }
        if dict.keys.contains("gpuConfig") {
            var model = DeployOllamaModelInput.GpuConfig()
            model.fromMap(dict["gpuConfig"] as! [String: Any])
            self.gpuConfig = model
        }
        if dict.keys.contains("httpTrigger") {
            var model = DeployOllamaModelInput.HttpTrigger()
            model.fromMap(dict["httpTrigger"] as! [String: Any])
            self.httpTrigger = model
        }
        if dict.keys.contains("imageName") {
            self.imageName = dict["imageName"] as! String
        }
        if dict.keys.contains("instanceConcurrency") {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("logConfig") {
            var model = DeployOllamaModelInput.LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("memorySize") {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("modelConfig") {
            var model = DeployOllamaModelInput.ModelConfig()
            model.fromMap(dict["modelConfig"] as! [String: Any])
            self.modelConfig = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nasConfig") {
            var model = DeployOllamaModelInput.NasConfig()
            model.fromMap(dict["nasConfig"] as! [String: Any])
            self.nasConfig = model
        }
        if dict.keys.contains("originalName") {
            self.originalName = dict["originalName"] as! String
        }
        if dict.keys.contains("projectName") {
            self.projectName = dict["projectName"] as! String
        }
        if dict.keys.contains("provisionConfig") {
            var model = DeployOllamaModelInput.ProvisionConfig()
            model.fromMap(dict["provisionConfig"] as! [String: Any])
            self.provisionConfig = model
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("reportStatusURL") {
            self.reportStatusURL = dict["reportStatusURL"] as! String
        }
        if dict.keys.contains("role") {
            self.role = dict["role"] as! String
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
        if dict.keys.contains("vpcConfig") {
            var model = DeployOllamaModelInput.VpcConfig()
            model.fromMap(dict["vpcConfig"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deploymentTaskID") {
                self.deploymentTaskID = dict["deploymentTaskID"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("finished") {
                self.finished = dict["finished"] as! Bool
            }
            if dict.keys.contains("modelName") {
                self.modelName = dict["modelName"] as! String
            }
            if dict.keys.contains("serviceName") {
                self.serviceName = dict["serviceName"] as! String
            }
            if dict.keys.contains("traceID") {
                self.traceID = dict["traceID"] as! String
            }
            if dict.keys.contains("urlInternet") {
                self.urlInternet = dict["urlInternet"] as! String
            }
            if dict.keys.contains("urlIntranet") {
                self.urlIntranet = dict["urlIntranet"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = DeployOllamaModelOutput.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("reservedConcurrency") {
                self.reservedConcurrency = dict["reservedConcurrency"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gpuMemorySize") {
                self.gpuMemorySize = dict["gpuMemorySize"] as! Int32
            }
            if dict.keys.contains("gpuType") {
                self.gpuType = dict["gpuType"] as! String
            }
        }
    }
    public class HttpTrigger : Tea.TeaModel {
        public class TriggerConfig : Tea.TeaModel {
            public var authType: String?

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
                if self.authType != nil {
                    map["authType"] = self.authType!
                }
                if self.dsableURLInternet != nil {
                    map["dsableURLInternet"] = self.dsableURLInternet!
                }
                if self.methods != nil {
                    map["methods"] = self.methods!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("authType") {
                    self.authType = dict["authType"] as! String
                }
                if dict.keys.contains("dsableURLInternet") {
                    self.dsableURLInternet = dict["dsableURLInternet"] as! Bool
                }
                if dict.keys.contains("methods") {
                    self.methods = dict["methods"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("qualifier") {
                self.qualifier = dict["qualifier"] as! String
            }
            if dict.keys.contains("triggerConfig") {
                var model = DeployTensorRtModelInput.HttpTrigger.TriggerConfig()
                model.fromMap(dict["triggerConfig"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enableInstanceMetrics") {
                self.enableInstanceMetrics = dict["enableInstanceMetrics"] as! Bool
            }
            if dict.keys.contains("enableRequestMetrics") {
                self.enableRequestMetrics = dict["enableRequestMetrics"] as! Bool
            }
            if dict.keys.contains("logBeginRule") {
                self.logBeginRule = dict["logBeginRule"] as! String
            }
            if dict.keys.contains("logstore") {
                self.logstore = dict["logstore"] as! String
            }
            if dict.keys.contains("project") {
                self.project = dict["project"] as! String
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

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("framework") {
                self.framework = dict["framework"] as! String
            }
            if dict.keys.contains("multiModelConfig") {
                var tmp : [ModelConfig] = []
                for v in dict["multiModelConfig"] as! [Any] {
                    var model = ModelConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.multiModelConfig = tmp
            }
            if dict.keys.contains("prefix") {
                self.prefix_ = dict["prefix"] as! String
            }
            if dict.keys.contains("sourceType") {
                self.sourceType = dict["sourceType"] as! String
            }
            if dict.keys.contains("srcModelScopeModelID") {
                self.srcModelScopeModelID = dict["srcModelScopeModelID"] as! String
            }
            if dict.keys.contains("srcModelScopeModelRevision") {
                self.srcModelScopeModelRevision = dict["srcModelScopeModelRevision"] as! String
            }
            if dict.keys.contains("srcModelScopeToken") {
                self.srcModelScopeToken = dict["srcModelScopeToken"] as! String
            }
            if dict.keys.contains("srcOssBucket") {
                self.srcOssBucket = dict["srcOssBucket"] as! String
            }
            if dict.keys.contains("srcOssPath") {
                self.srcOssPath = dict["srcOssPath"] as! String
            }
            if dict.keys.contains("srcOssRegion") {
                self.srcOssRegion = dict["srcOssRegion"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enableTLS") {
                    self.enableTLS = dict["enableTLS"] as! Bool
                }
                if dict.keys.contains("mountDir") {
                    self.mountDir = dict["mountDir"] as! String
                }
                if dict.keys.contains("serverAddr") {
                    self.serverAddr = dict["serverAddr"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("groupId") {
                self.groupId = dict["groupId"] as! Int32
            }
            if dict.keys.contains("mountPoints") {
                var tmp : [DeployTensorRtModelInput.NasConfig.MountPoints] = []
                for v in dict["mountPoints"] as! [Any] {
                    var model = DeployTensorRtModelInput.NasConfig.MountPoints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.mountPoints = tmp
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("endTime") {
                    self.endTime = dict["endTime"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("scheduleExpression") {
                    self.scheduleExpression = dict["scheduleExpression"] as! String
                }
                if dict.keys.contains("startTime") {
                    self.startTime = dict["startTime"] as! String
                }
                if dict.keys.contains("target") {
                    self.target = dict["target"] as! Int32
                }
                if dict.keys.contains("timeZone") {
                    self.timeZone = dict["timeZone"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alwaysAllocateGPU") {
                self.alwaysAllocateGPU = dict["alwaysAllocateGPU"] as! Bool
            }
            if dict.keys.contains("scheduledActions") {
                var tmp : [DeployTensorRtModelInput.ProvisionConfig.ScheduledActions] = []
                for v in dict["scheduledActions"] as! [Any] {
                    var model = DeployTensorRtModelInput.ProvisionConfig.ScheduledActions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.scheduledActions = tmp
            }
            if dict.keys.contains("target") {
                self.target = dict["target"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("securityGroupId") {
                self.securityGroupId = dict["securityGroupId"] as! String
            }
            if dict.keys.contains("vSwitchIds") {
                self.vSwitchIds = dict["vSwitchIds"] as! [String]
            }
            if dict.keys.contains("vpcId") {
                self.vpcId = dict["vpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountID") {
            self.accountID = dict["accountID"] as! String
        }
        if dict.keys.contains("concurrencyConfig") {
            var model = DeployTensorRtModelInput.ConcurrencyConfig()
            model.fromMap(dict["concurrencyConfig"] as! [String: Any])
            self.concurrencyConfig = model
        }
        if dict.keys.contains("cpu") {
            self.cpu = dict["cpu"] as! Double
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("diskSize") {
            self.diskSize = dict["diskSize"] as! Int32
        }
        if dict.keys.contains("envName") {
            self.envName = dict["envName"] as! String
        }
        if dict.keys.contains("environmentVariables") {
            self.environmentVariables = dict["environmentVariables"] as! [String: Any]
        }
        if dict.keys.contains("gpuConfig") {
            var model = DeployTensorRtModelInput.GpuConfig()
            model.fromMap(dict["gpuConfig"] as! [String: Any])
            self.gpuConfig = model
        }
        if dict.keys.contains("httpTrigger") {
            var model = DeployTensorRtModelInput.HttpTrigger()
            model.fromMap(dict["httpTrigger"] as! [String: Any])
            self.httpTrigger = model
        }
        if dict.keys.contains("imageName") {
            self.imageName = dict["imageName"] as! String
        }
        if dict.keys.contains("instanceConcurrency") {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("logConfig") {
            var model = DeployTensorRtModelInput.LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("memorySize") {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("modelConfig") {
            var model = DeployTensorRtModelInput.ModelConfig()
            model.fromMap(dict["modelConfig"] as! [String: Any])
            self.modelConfig = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nasConfig") {
            var model = DeployTensorRtModelInput.NasConfig()
            model.fromMap(dict["nasConfig"] as! [String: Any])
            self.nasConfig = model
        }
        if dict.keys.contains("originalName") {
            self.originalName = dict["originalName"] as! String
        }
        if dict.keys.contains("projectName") {
            self.projectName = dict["projectName"] as! String
        }
        if dict.keys.contains("provisionConfig") {
            var model = DeployTensorRtModelInput.ProvisionConfig()
            model.fromMap(dict["provisionConfig"] as! [String: Any])
            self.provisionConfig = model
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("reportStatusURL") {
            self.reportStatusURL = dict["reportStatusURL"] as! String
        }
        if dict.keys.contains("role") {
            self.role = dict["role"] as! String
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
        if dict.keys.contains("vpcConfig") {
            var model = DeployTensorRtModelInput.VpcConfig()
            model.fromMap(dict["vpcConfig"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deploymentTaskID") {
                self.deploymentTaskID = dict["deploymentTaskID"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("finished") {
                self.finished = dict["finished"] as! Bool
            }
            if dict.keys.contains("serviceName") {
                self.serviceName = dict["serviceName"] as! String
            }
            if dict.keys.contains("traceID") {
                self.traceID = dict["traceID"] as! String
            }
            if dict.keys.contains("urlInternet") {
                self.urlInternet = dict["urlInternet"] as! String
            }
            if dict.keys.contains("urlIntranet") {
                self.urlIntranet = dict["urlIntranet"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = DeployTensorRtModelOutput.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("reservedConcurrency") {
                self.reservedConcurrency = dict["reservedConcurrency"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gpuMemorySize") {
                self.gpuMemorySize = dict["gpuMemorySize"] as! Int32
            }
            if dict.keys.contains("gpuType") {
                self.gpuType = dict["gpuType"] as! String
            }
        }
    }
    public class HttpTrigger : Tea.TeaModel {
        public class TriggerConfig : Tea.TeaModel {
            public var authType: String?

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
                if self.authType != nil {
                    map["authType"] = self.authType!
                }
                if self.dsableURLInternet != nil {
                    map["dsableURLInternet"] = self.dsableURLInternet!
                }
                if self.methods != nil {
                    map["methods"] = self.methods!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("authType") {
                    self.authType = dict["authType"] as! String
                }
                if dict.keys.contains("dsableURLInternet") {
                    self.dsableURLInternet = dict["dsableURLInternet"] as! Bool
                }
                if dict.keys.contains("methods") {
                    self.methods = dict["methods"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("qualifier") {
                self.qualifier = dict["qualifier"] as! String
            }
            if dict.keys.contains("triggerConfig") {
                var model = DeployVllmModelInput.HttpTrigger.TriggerConfig()
                model.fromMap(dict["triggerConfig"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enableInstanceMetrics") {
                self.enableInstanceMetrics = dict["enableInstanceMetrics"] as! Bool
            }
            if dict.keys.contains("enableRequestMetrics") {
                self.enableRequestMetrics = dict["enableRequestMetrics"] as! Bool
            }
            if dict.keys.contains("logBeginRule") {
                self.logBeginRule = dict["logBeginRule"] as! String
            }
            if dict.keys.contains("logstore") {
                self.logstore = dict["logstore"] as! String
            }
            if dict.keys.contains("project") {
                self.project = dict["project"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("apiKey") {
                    self.apiKey = dict["apiKey"] as! String
                }
                if dict.keys.contains("blockSize") {
                    self.blockSize = dict["blockSize"] as! Int32
                }
                if dict.keys.contains("chatTemplate") {
                    self.chatTemplate = dict["chatTemplate"] as! String
                }
                if dict.keys.contains("dtype") {
                    self.dtype = dict["dtype"] as! String
                }
                if dict.keys.contains("fullTextPostfix") {
                    self.fullTextPostfix = dict["fullTextPostfix"] as! String
                }
                if dict.keys.contains("gpuMemoryUtilization") {
                    self.gpuMemoryUtilization = dict["gpuMemoryUtilization"] as! Double
                }
                if dict.keys.contains("loadFormat") {
                    self.loadFormat = dict["loadFormat"] as! String
                }
                if dict.keys.contains("maxModelLen") {
                    self.maxModelLen = dict["maxModelLen"] as! Int32
                }
                if dict.keys.contains("maxParallelLoadingWorkers") {
                    self.maxParallelLoadingWorkers = dict["maxParallelLoadingWorkers"] as! Int32
                }
                if dict.keys.contains("quantization") {
                    self.quantization = dict["quantization"] as! String
                }
                if dict.keys.contains("servedModelName") {
                    self.servedModelName = dict["servedModelName"] as! String
                }
                if dict.keys.contains("swapSpace") {
                    self.swapSpace = dict["swapSpace"] as! Int32
                }
            }
        }
        public var fmkVllmConfig: DeployVllmModelInput.ModelConfig.FmkVllmConfig?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fmkVllmConfig") {
                var model = DeployVllmModelInput.ModelConfig.FmkVllmConfig()
                model.fromMap(dict["fmkVllmConfig"] as! [String: Any])
                self.fmkVllmConfig = model
            }
            if dict.keys.contains("framework") {
                self.framework = dict["framework"] as! String
            }
            if dict.keys.contains("multiModelConfig") {
                var tmp : [ModelConfig] = []
                for v in dict["multiModelConfig"] as! [Any] {
                    var model = ModelConfig()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.multiModelConfig = tmp
            }
            if dict.keys.contains("prefix") {
                self.prefix_ = dict["prefix"] as! String
            }
            if dict.keys.contains("sourceType") {
                self.sourceType = dict["sourceType"] as! String
            }
            if dict.keys.contains("srcModelScopeModelID") {
                self.srcModelScopeModelID = dict["srcModelScopeModelID"] as! String
            }
            if dict.keys.contains("srcModelScopeModelRevision") {
                self.srcModelScopeModelRevision = dict["srcModelScopeModelRevision"] as! String
            }
            if dict.keys.contains("srcModelScopeToken") {
                self.srcModelScopeToken = dict["srcModelScopeToken"] as! String
            }
            if dict.keys.contains("srcOssBucket") {
                self.srcOssBucket = dict["srcOssBucket"] as! String
            }
            if dict.keys.contains("srcOssPath") {
                self.srcOssPath = dict["srcOssPath"] as! String
            }
            if dict.keys.contains("srcOssRegion") {
                self.srcOssRegion = dict["srcOssRegion"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enableTLS") {
                    self.enableTLS = dict["enableTLS"] as! Bool
                }
                if dict.keys.contains("mountDir") {
                    self.mountDir = dict["mountDir"] as! String
                }
                if dict.keys.contains("serverAddr") {
                    self.serverAddr = dict["serverAddr"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("groupId") {
                self.groupId = dict["groupId"] as! Int32
            }
            if dict.keys.contains("mountPoints") {
                var tmp : [DeployVllmModelInput.NasConfig.MountPoints] = []
                for v in dict["mountPoints"] as! [Any] {
                    var model = DeployVllmModelInput.NasConfig.MountPoints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.mountPoints = tmp
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("endTime") {
                    self.endTime = dict["endTime"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("scheduleExpression") {
                    self.scheduleExpression = dict["scheduleExpression"] as! String
                }
                if dict.keys.contains("startTime") {
                    self.startTime = dict["startTime"] as! String
                }
                if dict.keys.contains("target") {
                    self.target = dict["target"] as! Int32
                }
                if dict.keys.contains("timeZone") {
                    self.timeZone = dict["timeZone"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alwaysAllocateGPU") {
                self.alwaysAllocateGPU = dict["alwaysAllocateGPU"] as! Bool
            }
            if dict.keys.contains("scheduledActions") {
                var tmp : [DeployVllmModelInput.ProvisionConfig.ScheduledActions] = []
                for v in dict["scheduledActions"] as! [Any] {
                    var model = DeployVllmModelInput.ProvisionConfig.ScheduledActions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.scheduledActions = tmp
            }
            if dict.keys.contains("target") {
                self.target = dict["target"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("securityGroupId") {
                self.securityGroupId = dict["securityGroupId"] as! String
            }
            if dict.keys.contains("vSwitchIds") {
                self.vSwitchIds = dict["vSwitchIds"] as! [String]
            }
            if dict.keys.contains("vpcId") {
                self.vpcId = dict["vpcId"] as! String
            }
        }
    }
    public var accountID: String?

    public var concurrencyConfig: DeployVllmModelInput.ConcurrencyConfig?

    public var cpu: Double?

    public var description_: String?

    public var diskSize: Int32?

    public var envName: String?

    public var environmentVariables: [String: Any]?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountID") {
            self.accountID = dict["accountID"] as! String
        }
        if dict.keys.contains("concurrencyConfig") {
            var model = DeployVllmModelInput.ConcurrencyConfig()
            model.fromMap(dict["concurrencyConfig"] as! [String: Any])
            self.concurrencyConfig = model
        }
        if dict.keys.contains("cpu") {
            self.cpu = dict["cpu"] as! Double
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("diskSize") {
            self.diskSize = dict["diskSize"] as! Int32
        }
        if dict.keys.contains("envName") {
            self.envName = dict["envName"] as! String
        }
        if dict.keys.contains("environmentVariables") {
            self.environmentVariables = dict["environmentVariables"] as! [String: Any]
        }
        if dict.keys.contains("gpuConfig") {
            var model = DeployVllmModelInput.GpuConfig()
            model.fromMap(dict["gpuConfig"] as! [String: Any])
            self.gpuConfig = model
        }
        if dict.keys.contains("httpTrigger") {
            var model = DeployVllmModelInput.HttpTrigger()
            model.fromMap(dict["httpTrigger"] as! [String: Any])
            self.httpTrigger = model
        }
        if dict.keys.contains("imageName") {
            self.imageName = dict["imageName"] as! String
        }
        if dict.keys.contains("instanceConcurrency") {
            self.instanceConcurrency = dict["instanceConcurrency"] as! Int32
        }
        if dict.keys.contains("logConfig") {
            var model = DeployVllmModelInput.LogConfig()
            model.fromMap(dict["logConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("memorySize") {
            self.memorySize = dict["memorySize"] as! Int32
        }
        if dict.keys.contains("modelConfig") {
            var model = DeployVllmModelInput.ModelConfig()
            model.fromMap(dict["modelConfig"] as! [String: Any])
            self.modelConfig = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nasConfig") {
            var model = DeployVllmModelInput.NasConfig()
            model.fromMap(dict["nasConfig"] as! [String: Any])
            self.nasConfig = model
        }
        if dict.keys.contains("originalName") {
            self.originalName = dict["originalName"] as! String
        }
        if dict.keys.contains("projectName") {
            self.projectName = dict["projectName"] as! String
        }
        if dict.keys.contains("provisionConfig") {
            var model = DeployVllmModelInput.ProvisionConfig()
            model.fromMap(dict["provisionConfig"] as! [String: Any])
            self.provisionConfig = model
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("reportStatusURL") {
            self.reportStatusURL = dict["reportStatusURL"] as! String
        }
        if dict.keys.contains("role") {
            self.role = dict["role"] as! String
        }
        if dict.keys.contains("timeout") {
            self.timeout = dict["timeout"] as! Int32
        }
        if dict.keys.contains("traceId") {
            self.traceId = dict["traceId"] as! String
        }
        if dict.keys.contains("vpcConfig") {
            var model = DeployVllmModelInput.VpcConfig()
            model.fromMap(dict["vpcConfig"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deploymentTaskID") {
                self.deploymentTaskID = dict["deploymentTaskID"] as! String
            }
            if dict.keys.contains("errorMessage") {
                self.errorMessage = dict["errorMessage"] as! String
            }
            if dict.keys.contains("finished") {
                self.finished = dict["finished"] as! Bool
            }
            if dict.keys.contains("modelName") {
                self.modelName = dict["modelName"] as! String
            }
            if dict.keys.contains("serviceName") {
                self.serviceName = dict["serviceName"] as! String
            }
            if dict.keys.contains("traceID") {
                self.traceID = dict["traceID"] as! String
            }
            if dict.keys.contains("urlInternet") {
                self.urlInternet = dict["urlInternet"] as! String
            }
            if dict.keys.contains("urlIntranet") {
                self.urlIntranet = dict["urlIntranet"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = DeployVllmModelOutput.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("modelPath") {
                self.modelPath = dict["modelPath"] as! String
            }
            if dict.keys.contains("taskType") {
                self.taskType = dict["taskType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = DownloadModelOutput.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int32
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("projectName") {
            self.projectName = dict["projectName"] as! String
        }
        if dict.keys.contains("spec") {
            var model = EnvironmentSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = EnvironmentStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("servicesInstances") {
            var tmp : [String: ServiceInstance] = [:]
            for (k, v) in dict["servicesInstances"] as! [String: Any] {
                if v != nil {
                    var model = ServiceInstance()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.servicesInstances = tmp
        }
        if dict.keys.contains("variables") {
            var tmp : [String: Variable] = [:]
            for (k, v) in dict["variables"] as! [String: Any] {
                if v != nil {
                    var model = Variable()
                    model.fromMap(v as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("services") {
            self.services = dict["services"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("spec") {
            var model = EnvironmentDeploymentSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = EnvironmentDeploymentStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("baseline") {
            var model = EnvironmentSnapshot()
            model.fromMap(dict["baseline"] as! [String: Any])
            self.baseline = model
        }
        if dict.keys.contains("changes") {
            var model = EnvironmentChanges()
            model.fromMap(dict["changes"] as! [String: Any])
            self.changes = model
        }
        if dict.keys.contains("skipRemoveResources") {
            self.skipRemoveResources = dict["skipRemoveResources"] as! Bool
        }
        if dict.keys.contains("target") {
            var model = EnvironmentStagedConfigs()
            model.fromMap(dict["target"] as! [String: Any])
            self.target = model
        }
        if dict.keys.contains("webhookCodeContext") {
            var model = WebhookCodeContext()
            model.fromMap(dict["webhookCodeContext"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("finishedTime") {
            self.finishedTime = dict["finishedTime"] as! String
        }
        if dict.keys.contains("phase") {
            self.phase = dict["phase"] as! String
        }
        if dict.keys.contains("pipelineName") {
            self.pipelineName = dict["pipelineName"] as! String
        }
        if dict.keys.contains("serviceDeployments") {
            self.serviceDeployments = dict["serviceDeployments"] as! [String: String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("services") {
            var tmp : [String: ServiceInstance] = [:]
            for (k, v) in dict["services"] as! [String: Any] {
                if v != nil {
                    var model = ServiceInstance()
                    model.fromMap(v as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("roleArn") {
            self.roleArn = dict["roleArn"] as! String
        }
        if dict.keys.contains("stagedConfigs") {
            var model = EnvironmentStagedConfigs()
            model.fromMap(dict["stagedConfigs"] as! [String: Any])
            self.stagedConfigs = model
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("services") {
            var tmp : [String: ServiceConfig] = [:]
            for (k, v) in dict["services"] as! [String: Any] {
                if v != nil {
                    var model = ServiceConfig()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.services = tmp
        }
        if dict.keys.contains("variables") {
            var tmp : [String: Variable] = [:]
            for (k, v) in dict["variables"] as! [String: Any] {
                if v != nil {
                    var model = Variable()
                    model.fromMap(v as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("latestEnvironmentDeploymentName") {
            self.latestEnvironmentDeploymentName = dict["latestEnvironmentDeploymentName"] as! String
        }
        if dict.keys.contains("observedGeneration") {
            self.observedGeneration = dict["observedGeneration"] as! Int64
        }
        if dict.keys.contains("observedTime") {
            self.observedTime = dict["observedTime"] as! String
        }
        if dict.keys.contains("servicesInstances") {
            var tmp : [String: ServiceInstance] = [:]
            for (k, v) in dict["servicesInstances"] as! [String: Any] {
                if v != nil {
                    var model = ServiceInstance()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.servicesInstances = tmp
        }
        if dict.keys.contains("servicesWithPendingChanges") {
            self.servicesWithPendingChanges = dict["servicesWithPendingChanges"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("branch") {
            var model = BranchFilter()
            model.fromMap(dict["branch"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("steps") {
            self.steps = dict["steps"] as! [Any]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("currentBytes") {
                self.currentBytes = dict["currentBytes"] as! Int64
            }
            if dict.keys.contains("errMessage") {
                self.errMessage = dict["errMessage"] as! String
            }
            if dict.keys.contains("fileSize") {
                self.fileSize = dict["fileSize"] as! Int64
            }
            if dict.keys.contains("finished") {
                self.finished = dict["finished"] as! Bool
            }
            if dict.keys.contains("finishedTime") {
                self.finishedTime = dict["finishedTime"] as! Int64
            }
            if dict.keys.contains("speed") {
                self.speed = dict["speed"] as! Int64
            }
            if dict.keys.contains("startTime") {
                self.startTime = dict["startTime"] as! Int64
            }
            if dict.keys.contains("total") {
                self.total = dict["total"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetModelStatusOutput.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("avatar") {
            self.avatar = dict["avatar"] as! String
        }
        if dict.keys.contains("displayName") {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("uri") {
            self.uri = dict["uri"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("branch") {
            self.branch = dict["branch"] as! String
        }
        if dict.keys.contains("commitID") {
            self.commitID = dict["commitID"] as! String
        }
        if dict.keys.contains("tag") {
            self.tag = dict["tag"] as! String
        }
    }
}

public class GitLabConfig : Tea.TeaModel {
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
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.uri != nil {
            map["uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("token") {
            self.token = dict["token"] as! String
        }
        if dict.keys.contains("uri") {
            self.uri = dict["uri"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("steps") {
            self.steps = dict["steps"] as! [Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("actionUri") {
            self.actionUri = dict["actionUri"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("stage") {
            self.stage = dict["stage"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("finished") {
            self.finished = dict["finished"] as! Bool
        }
        if dict.keys.contains("finishedTime") {
            self.finishedTime = dict["finishedTime"] as! Int64
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! Any
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! Int64
        }
        if dict.keys.contains("taskType") {
            self.taskType = dict["taskType"] as! String
        }
        if dict.keys.contains("updateTime") {
            self.updateTime = dict["updateTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bucket") {
            self.bucket = dict["bucket"] as! String
        }
        if dict.keys.contains("framework") {
            self.framework = dict["framework"] as! String
        }
        if dict.keys.contains("model") {
            self.model = dict["model"] as! String
        }
        if dict.keys.contains("multiModelConfig") {
            var tmp : [ModelConfig] = []
            for v in dict["multiModelConfig"] as! [Any] {
                var model = ModelConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.multiModelConfig = tmp
        }
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("prefix") {
            self.prefix_ = dict["prefix"] as! String
        }
        if dict.keys.contains("region") {
            self.region = dict["region"] as! String
        }
        if dict.keys.contains("reversion") {
            self.reversion = dict["reversion"] as! String
        }
        if dict.keys.contains("token") {
            self.token = dict["token"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("isDir") {
            self.isDir = dict["isDir"] as! Bool
        }
        if dict.keys.contains("modeTime") {
            self.modeTime = dict["modeTime"] as! Int64
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("size") {
            self.size = dict["size"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("hash") {
            self.hash = dict["hash"] as! String
        }
        if dict.keys.contains("isCompressedImage") {
            self.isCompressedImage = dict["isCompressedImage"] as! Bool
        }
        if dict.keys.contains("isDir") {
            self.isDir = dict["isDir"] as! Bool
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("size") {
            self.size = dict["size"] as! Int64
        }
        if dict.keys.contains("unpreviewable") {
            self.unpreviewable = dict["unpreviewable"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authConfig") {
            self.authConfig = dict["authConfig"] as! [String: String]
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("detail") {
            self.detail = dict["detail"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authorization") {
            var model = ModelProviderAuthorization()
            model.fromMap(dict["authorization"] as! [String: Any])
            self.authorization = model
        }
        if dict.keys.contains("schema") {
            var model = ModelProviderSchema()
            model.fromMap(dict["schema"] as! [String: Any])
            self.schema = model
        }
    }
}

public class ModelTask : Tea.TeaModel {
    public var errMsg: String?

    public var fileSize: Double?

    public var finishTime: Double?

    public var finished: Bool?

    public var startTime: Double?

    public var status: String?

    public var taskId: String?

    public var total: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
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
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("fileSize") {
            self.fileSize = dict["fileSize"] as! Double
        }
        if dict.keys.contains("finishTime") {
            self.finishTime = dict["finishTime"] as! Double
        }
        if dict.keys.contains("finished") {
            self.finished = dict["finished"] as! Bool
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! Double
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! Int64
        }
        if dict.keys.contains("expiration") {
            self.expiration = dict["expiration"] as! Int64
        }
        if dict.keys.contains("refreshToken") {
            self.refreshToken = dict["refreshToken"] as! String
        }
        if dict.keys.contains("scope") {
            self.scope = dict["scope"] as! String
        }
        if dict.keys.contains("token") {
            self.token = dict["token"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("action") {
            self.action = dict["action"] as! String
        }
        if dict.keys.contains("destination") {
            self.destination = dict["destination"] as! String
        }
        if dict.keys.contains("source") {
            self.source = dict["source"] as! String
        }
        if dict.keys.contains("target") {
            self.target = dict["target"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bucket") {
            self.bucket = dict["bucket"] as! String
        }
        if dict.keys.contains("object") {
            self.object = dict["object"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int32
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("resourceVersion") {
            self.resourceVersion = dict["resourceVersion"] as! Int32
        }
        if dict.keys.contains("spec") {
            var model = PipelineSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = PipelineStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("context") {
            var model = Context()
            model.fromMap(dict["context"] as! [String: Any])
            self.context = model
        }
        if dict.keys.contains("templateName") {
            self.templateName = dict["templateName"] as! String
        }
        if dict.keys.contains("templateSpec") {
            var model = PipelineTemplateSpec()
            model.fromMap(dict["templateSpec"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("latestExecError") {
            var model = TaskExecError()
            model.fromMap(dict["latestExecError"] as! [String: Any])
            self.latestExecError = model
        }
        if dict.keys.contains("phase") {
            self.phase = dict["phase"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("deletionTime") {
            self.deletionTime = dict["deletionTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int32
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("resourceVersion") {
            self.resourceVersion = dict["resourceVersion"] as! Int32
        }
        if dict.keys.contains("spec") {
            var model = PipelineTemplateSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("context") {
            var model = Context()
            model.fromMap(dict["context"] as! [String: Any])
            self.context = model
        }
        if dict.keys.contains("tasks") {
            var tmp : [TaskExec] = []
            for v in dict["tasks"] as! [Any] {
                var model = TaskExec()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("status") {
            var model = ProjectStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("services") {
            var tmp : [ServiceMeta] = []
            for v in dict["services"] as! [Any] {
                var model = ServiceMeta()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sourceBranch") {
            self.sourceBranch = dict["sourceBranch"] as! String
        }
        if dict.keys.contains("targetBranch") {
            self.targetBranch = dict["targetBranch"] as! String
        }
        if dict.keys.contains("types") {
            self.types = dict["types"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("branch") {
            self.branch = dict["branch"] as! String
        }
        if dict.keys.contains("tag") {
            self.tag = dict["tag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("spec") {
            var model = RepositorySpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("codeVersion") {
            var model = CodeVersionReference()
            model.fromMap(dict["codeVersion"] as! [String: Any])
            self.codeVersion = model
        }
        if dict.keys.contains("filter") {
            var model = EventFilterConfig()
            model.fromMap(dict["filter"] as! [String: Any])
            self.filter = model
        }
        if dict.keys.contains("repositoryName") {
            self.repositoryName = dict["repositoryName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cloneUrl") {
            self.cloneUrl = dict["cloneUrl"] as! String
        }
        if dict.keys.contains("connectionName") {
            self.connectionName = dict["connectionName"] as! String
        }
        if dict.keys.contains("displayName") {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("owner") {
            self.owner = dict["owner"] as! String
        }
        if dict.keys.contains("platform") {
            self.platform = dict["platform"] as! String
        }
        if dict.keys.contains("webUrl") {
            self.webUrl = dict["webUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("serviceInstance") {
            var model = ServiceInstance()
            model.fromMap(dict["serviceInstance"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("merge") {
            self.merge = dict["merge"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("run") {
            self.run = dict["run"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("component") {
            self.component = dict["component"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("artifact") {
            var model = ArtifactMeta()
            model.fromMap(dict["artifact"] as! [String: Any])
            self.artifact = model
        }
        if dict.keys.contains("build") {
            var model = BuildConfig()
            model.fromMap(dict["build"] as! [String: Any])
            self.build = model
        }
        if dict.keys.contains("component") {
            self.component = dict["component"] as! String
        }
        if dict.keys.contains("props") {
            self.props = dict["props"] as! [String: Any]
        }
        if dict.keys.contains("source") {
            var model = SourceConfig()
            model.fromMap(dict["source"] as! [String: Any])
            self.source = model
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("variables") {
            var tmp : [String: Variable] = [:]
            for (k, v) in dict["variables"] as! [String: Any] {
                if v != nil {
                    var model = Variable()
                    model.fromMap(v as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("environmentDeploymentName") {
            self.environmentDeploymentName = dict["environmentDeploymentName"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("status") {
            var model = ServiceDeploymentStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("baseline") {
            var model = ServiceBaseline()
            model.fromMap(dict["baseline"] as! [String: Any])
            self.baseline = model
        }
        if dict.keys.contains("changes") {
            var model = ServiceChanges()
            model.fromMap(dict["changes"] as! [String: Any])
            self.changes = model
        }
        if dict.keys.contains("skipRemoveResources") {
            self.skipRemoveResources = dict["skipRemoveResources"] as! Bool
        }
        if dict.keys.contains("target") {
            var model = ServiceBaseline()
            model.fromMap(dict["target"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("finishedTime") {
            self.finishedTime = dict["finishedTime"] as! String
        }
        if dict.keys.contains("phase") {
            self.phase = dict["phase"] as! String
        }
        if dict.keys.contains("pipelineName") {
            self.pipelineName = dict["pipelineName"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
        }
        if dict.keys.contains("taskName") {
            self.taskName = dict["taskName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("finishedTime") {
                self.finishedTime = dict["finishedTime"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("phase") {
                self.phase = dict["phase"] as! String
            }
            if dict.keys.contains("startTime") {
                self.startTime = dict["startTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("config") {
            var model = ServiceConfig()
            model.fromMap(dict["config"] as! [String: Any])
            self.config = model
        }
        if dict.keys.contains("latestDeployment") {
            var model = ServiceInstance.LatestDeployment()
            model.fromMap(dict["latestDeployment"] as! [String: Any])
            self.latestDeployment = model
        }
        if dict.keys.contains("outputs") {
            self.outputs = dict["outputs"] as! [String: Any]
        }
        if dict.keys.contains("variables") {
            var tmp : [String: Variable] = [:]
            for (k, v) in dict["variables"] as! [String: Any] {
                if v != nil {
                    var model = Variable()
                    model.fromMap(v as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("args") {
            self.args = dict["args"] as! [String: Any]
        }
        if dict.keys.contains("plugin") {
            self.plugin = dict["plugin"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("oss") {
            var model = OssSourceConfig()
            model.fromMap(dict["oss"] as! [String: Any])
            self.oss = model
        }
        if dict.keys.contains("repository") {
            var model = RepositorySourceConfig()
            model.fromMap(dict["repository"] as! [String: Any])
            self.repository = model
        }
        if dict.keys.contains("template") {
            var model = TemplateSourceConfig()
            model.fromMap(dict["template"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int32
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("resourceVersion") {
            self.resourceVersion = dict["resourceVersion"] as! Int32
        }
        if dict.keys.contains("spec") {
            var model = TaskSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = TaskStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("context") {
            var model = Context()
            model.fromMap(dict["context"] as! [String: Any])
            self.context = model
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("runAfters") {
            var tmp : [RunAfter] = []
            for v in dict["runAfters"] as! [Any] {
                var model = RunAfter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.runAfters = tmp
        }
        if dict.keys.contains("taskTemplate") {
            self.taskTemplate = dict["taskTemplate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("extraInfo") {
            self.extraInfo = dict["extraInfo"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instanceID") {
            self.instanceID = dict["instanceID"] as! String
        }
        if dict.keys.contains("invocationID") {
            self.invocationID = dict["invocationID"] as! String
        }
        if dict.keys.contains("invocationTarget") {
            self.invocationTarget = dict["invocationTarget"] as! String
        }
        if dict.keys.contains("output") {
            self.output = dict["output"] as! String
        }
        if dict.keys.contains("requestID") {
            self.requestID = dict["requestID"] as! String
        }
        if dict.keys.contains("slsLogStore") {
            self.slsLogStore = dict["slsLogStore"] as! String
        }
        if dict.keys.contains("slsProject") {
            self.slsProject = dict["slsProject"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("context") {
            var model = Context()
            model.fromMap(dict["context"] as! [String: Any])
            self.context = model
        }
        if dict.keys.contains("templateName") {
            self.templateName = dict["templateName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("executionDetails") {
            self.executionDetails = dict["executionDetails"] as! [String]
        }
        if dict.keys.contains("invocations") {
            var tmp : [TaskInvocation] = []
            for v in dict["invocations"] as! [Any] {
                var model = TaskInvocation()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.invocations = tmp
        }
        if dict.keys.contains("latestExecError") {
            var model = TaskExecError()
            model.fromMap(dict["latestExecError"] as! [String: Any])
            self.latestExecError = model
        }
        if dict.keys.contains("phase") {
            self.phase = dict["phase"] as! String
        }
        if dict.keys.contains("statusGeneration") {
            self.statusGeneration = dict["statusGeneration"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("deletionTime") {
            self.deletionTime = dict["deletionTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("generation") {
            self.generation = dict["generation"] as! Int32
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("resourceVersion") {
            self.resourceVersion = dict["resourceVersion"] as! Int32
        }
        if dict.keys.contains("spec") {
            var model = TaskTemplateSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("context") {
            var model = Context()
            model.fromMap(dict["context"] as! [String: Any])
            self.context = model
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("executeCondition") {
            var model = Condition()
            model.fromMap(dict["executeCondition"] as! [String: Any])
            self.executeCondition = model
        }
        if dict.keys.contains("worker") {
            var model = TaskWorker()
            model.fromMap(dict["worker"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("presetWorker") {
            self.presetWorker = dict["presetWorker"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("spec") {
            var model = TemplateSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = TemplateStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("parameters") {
            self.parameters = dict["parameters"] as! [String: String]
        }
        if dict.keys.contains("serviceNameChanges") {
            self.serviceNameChanges = dict["serviceNameChanges"] as! [String: String]
        }
        if dict.keys.contains("templateName") {
            self.templateName = dict["templateName"] as! String
        }
        if dict.keys.contains("variableValues") {
            var model = TemplateVariableValueMap()
            model.fromMap(dict["variableValues"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("authorities") {
                self.authorities = dict["authorities"] as! [String]
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("service") {
                self.service = dict["service"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("default") {
            self.default_ = dict["default"] as! Any
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("enum") {
            self.enum_ = dict["enum"] as! [String]
        }
        if dict.keys.contains("pattern") {
            self.pattern = dict["pattern"] as! String
        }
        if dict.keys.contains("required") {
            self.required_ = dict["required"] as! Bool
        }
        if dict.keys.contains("roleExtension") {
            var model = TemplateParameterSchema.RoleExtension()
            model.fromMap(dict["roleExtension"] as! [String: Any])
            self.roleExtension = model
        }
        if dict.keys.contains("sensitive") {
            self.sensitive = dict["sensitive"] as! Bool
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("packageUrl") {
                self.packageUrl = dict["packageUrl"] as! String
            }
            if dict.keys.contains("phase") {
                self.phase = dict["phase"] as! String
            }
            if dict.keys.contains("pipelineName") {
                self.pipelineName = dict["pipelineName"] as! String
            }
            if dict.keys.contains("templateUrl") {
                self.templateUrl = dict["templateUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("spec") {
            var model = TemplateSpec()
            model.fromMap(dict["spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("status") {
            var model = TemplateRevision.Status()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("templateName") {
            self.templateName = dict["templateName"] as! String
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("artifact") {
            var model = ArtifactMeta()
            model.fromMap(dict["artifact"] as! [String: Any])
            self.artifact = model
        }
        if dict.keys.contains("build") {
            var model = BuildConfig()
            model.fromMap(dict["build"] as! [String: Any])
            self.build = model
        }
        if dict.keys.contains("component") {
            self.component = dict["component"] as! String
        }
        if dict.keys.contains("props") {
            self.props = dict["props"] as! [String: Any]
        }
        if dict.keys.contains("source") {
            var model = SourceConfig()
            model.fromMap(dict["source"] as! [String: Any])
            self.source = model
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("variables") {
            var tmp : [String: TemplateParameterSchema] = [:]
            for (k, v) in dict["variables"] as! [String: Any] {
                if v != nil {
                    var model = TemplateParameterSchema()
                    model.fromMap(v as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("downloadUrl") {
            self.downloadUrl = dict["downloadUrl"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("repository") {
                var model = RepositorySourceConfig()
                model.fromMap(dict["repository"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("author") {
            self.author = dict["author"] as! String
        }
        if dict.keys.contains("category") {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("license") {
            self.license = dict["license"] as! String
        }
        if dict.keys.contains("packageName") {
            self.packageName = dict["packageName"] as! String
        }
        if dict.keys.contains("readme") {
            self.readme = dict["readme"] as! String
        }
        if dict.keys.contains("registryToken") {
            self.registryToken = dict["registryToken"] as! String
        }
        if dict.keys.contains("services") {
            var tmp : [String: TemplateServiceConfig] = [:]
            for (k, v) in dict["services"] as! [String: Any] {
                if v != nil {
                    var model = TemplateServiceConfig()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.services = tmp
        }
        if dict.keys.contains("source") {
            var model = TemplateSpec.Source()
            model.fromMap(dict["source"] as! [String: Any])
            self.source = model
        }
        if dict.keys.contains("variables") {
            var tmp : [String: TemplateParameterSchema] = [:]
            for (k, v) in dict["variables"] as! [String: Any] {
                if v != nil {
                    var model = TemplateParameterSchema()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.variables = tmp
        }
        if dict.keys.contains("version") {
            self.version = dict["version"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("finishedTime") {
                self.finishedTime = dict["finishedTime"] as! String
            }
            if dict.keys.contains("phase") {
                self.phase = dict["phase"] as! String
            }
            if dict.keys.contains("pipelineName") {
                self.pipelineName = dict["pipelineName"] as! String
            }
            if dict.keys.contains("startTime") {
                self.startTime = dict["startTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("latestDeployment") {
            var model = TemplateStatus.LatestDeployment()
            model.fromMap(dict["latestDeployment"] as! [String: Any])
            self.latestDeployment = model
        }
        if dict.keys.contains("latestVersion") {
            self.latestVersion = dict["latestVersion"] as! String
        }
        if dict.keys.contains("packageUrl") {
            self.packageUrl = dict["packageUrl"] as! String
        }
        if dict.keys.contains("phase") {
            self.phase = dict["phase"] as! String
        }
        if dict.keys.contains("templateUrl") {
            self.templateUrl = dict["templateUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("services") {
            self.services = dict["services"] as! [String: [String: Any]]
        }
        if dict.keys.contains("shared") {
            self.shared = dict["shared"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("method") {
            self.method = dict["method"] as! String
        }
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("toolId") {
            self.toolId = dict["toolId"] as! String
        }
        if dict.keys.contains("toolName") {
            self.toolName = dict["toolName"] as! String
        }
    }
}

public class Toolset : Tea.TeaModel {
    public var createdTime: String?

    public var description_: String?

    public var kind: String?

    public var labels: [String: String]?

    public var name: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createdTime") {
            self.createdTime = dict["createdTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("kind") {
            self.kind = dict["kind"] as! String
        }
        if dict.keys.contains("labels") {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("status") {
            var model = ToolsetStatus()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authConfig") {
            self.authConfig = dict["authConfig"] as! [String: String]
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("detail") {
            self.detail = dict["detail"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ToolsetSpec : Tea.TeaModel {
    public var authorization: ToolsetAuthorization?

    public var schema: ToolsetSchema?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("authorization") {
            var model = ToolsetAuthorization()
            model.fromMap(dict["authorization"] as! [String: Any])
            self.authorization = model
        }
        if dict.keys.contains("schema") {
            var model = ToolsetSchema()
            model.fromMap(dict["schema"] as! [String: Any])
            self.schema = model
        }
    }
}

public class ToolsetStatus : Tea.TeaModel {
    public var tools: [String: Tool]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tools != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.tools! {
                tmp[k] = v.toMap()
            }
            map["tools"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("tools") {
            var tmp : [String: Tool] = [:]
            for (k, v) in dict["tools"] as! [String: Any] {
                if v != nil {
                    var model = Tool()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.tools = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("encrypted") {
            self.encrypted = dict["encrypted"] as! Bool
        }
        if dict.keys.contains("sensitive") {
            self.sensitive = dict["sensitive"] as! Bool
        }
        if dict.keys.contains("value") {
            self.value = dict["value"] as! Any
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("branch") {
            self.branch = dict["branch"] as! String
        }
        if dict.keys.contains("commitID") {
            self.commitID = dict["commitID"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("eventType") {
            self.eventType = dict["eventType"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("prType") {
            self.prType = dict["prType"] as! String
        }
        if dict.keys.contains("repoUrl") {
            self.repoUrl = dict["repoUrl"] as! String
        }
        if dict.keys.contains("sourceBranch") {
            self.sourceBranch = dict["sourceBranch"] as! String
        }
        if dict.keys.contains("tag") {
            self.tag = dict["tag"] as! String
        }
        if dict.keys.contains("targetBranch") {
            self.targetBranch = dict["targetBranch"] as! String
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bucket") {
            self.bucket = dict["bucket"] as! String
        }
        if dict.keys.contains("object") {
            self.object = dict["object"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("account") {
            var model = GitAccount()
            model.fromMap(dict["account"] as! [String: Any])
            self.account = model
        }
        if dict.keys.contains("credential") {
            var model = OAuthCredential()
            model.fromMap(dict["credential"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Connection()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Pipeline()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Task()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = Artifact()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Artifact()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = Environment()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Environment()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = Pipeline()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Pipeline()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = Project()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Project()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = Task()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Task()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("force") {
            self.force = dict["force"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("force") {
            self.force = dict["force"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = DeployEnvironmentOptions()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnvironmentDeployment()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ArtifactCode()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ArtifactTempBucketToken()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OAuthCredential()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Artifact()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Environment()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnvironmentDeployment()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Pipeline()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Project()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Repository()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ServiceDeployment()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Task()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("labelSelector") {
            self.labelSelector = dict["labelSelector"] as! [String]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("labelSelector") {
            self.labelSelectorShrink = dict["labelSelector"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [Connection] = []
            for v in dict["data"] as! [Any] {
                var model = Connection()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListConnectionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("labelSelector") {
            self.labelSelector = dict["labelSelector"] as! [String]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("labelSelector") {
            self.labelSelectorShrink = dict["labelSelector"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [Environment] = []
            for v in dict["data"] as! [Any] {
                var model = Environment()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListEnvironmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labelSelector") {
            self.labelSelector = dict["labelSelector"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labelSelector") {
            self.labelSelectorShrink = dict["labelSelector"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var tmp : [Pipeline] = []
            for v in dict["body"] as! [Any] {
                var model = Pipeline()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("labelSelector") {
            self.labelSelector = dict["labelSelector"] as! [String]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("labelSelector") {
            self.labelSelectorShrink = dict["labelSelector"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [Project] = []
            for v in dict["data"] as! [Any] {
                var model = Project()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListProjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("labelSelector") {
            self.labelSelector = dict["labelSelector"] as! [String]
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("labelSelector") {
            self.labelSelectorShrink = dict["labelSelector"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [ServiceDeployment] = []
            for v in dict["data"] as! [Any] {
                var model = ServiceDeployment()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServiceDeploymentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labelSelector") {
            self.labelSelector = dict["labelSelector"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("labelSelector") {
            self.labelSelectorShrink = dict["labelSelector"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var tmp : [Task] = []
            for v in dict["body"] as! [Any] {
                var model = Task()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnvironmentDeploymentSpec()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = Artifact()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("force") {
            self.force = dict["force"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Artifact()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = Pipeline()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("force") {
            self.force = dict["force"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Pipeline()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = Task()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
        if dict.keys.contains("force") {
            self.force = dict["force"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Task()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("parameters") {
            self.parameters = dict["parameters"] as! [String: Any]
        }
        if dict.keys.contains("projectName") {
            self.projectName = dict["projectName"] as! String
        }
        if dict.keys.contains("serviceNameChanges") {
            self.serviceNameChanges = dict["serviceNameChanges"] as! [String: String]
        }
        if dict.keys.contains("templateName") {
            self.templateName = dict["templateName"] as! String
        }
        if dict.keys.contains("variableValues") {
            var model = TemplateVariableValueMap()
            model.fromMap(dict["variableValues"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("changedServiceNames") {
            self.changedServiceNames = dict["changedServiceNames"] as! [String: String]
        }
        if dict.keys.contains("services") {
            var tmp : [String: ServiceConfig] = [:]
            for (k, v) in dict["services"] as! [String: Any] {
                if v != nil {
                    var model = ServiceConfig()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.services = tmp
        }
        if dict.keys.contains("variables") {
            var tmp : [String: Variable] = [:]
            for (k, v) in dict["variables"] as! [String: Any] {
                if v != nil {
                    var model = Variable()
                    model.fromMap(v as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RenderServicesByTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Task()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Task()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Pipeline()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Task()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = Environment()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Environment()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = Project()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Project()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
