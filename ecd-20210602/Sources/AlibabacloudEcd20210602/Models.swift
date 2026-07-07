import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateTenantSkillRequest : Tea.TeaModel {
    public var apiKey: String?

    public var description_: String?

    public var displayName: String?

    public var envVars: [String: String]?

    public var iconETag: String?

    public var skillChannel: String?

    public var skillIcon: String?

    public var skillVersion: String?

    public var slug: String?

    public var taskKey: String?

    public override init() {
        super.init()
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
            map["ApiKey"] = self.apiKey!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.envVars != nil {
            map["EnvVars"] = self.envVars!
        }
        if self.iconETag != nil {
            map["IconETag"] = self.iconETag!
        }
        if self.skillChannel != nil {
            map["SkillChannel"] = self.skillChannel!
        }
        if self.skillIcon != nil {
            map["SkillIcon"] = self.skillIcon!
        }
        if self.skillVersion != nil {
            map["SkillVersion"] = self.skillVersion!
        }
        if self.slug != nil {
            map["Slug"] = self.slug!
        }
        if self.taskKey != nil {
            map["TaskKey"] = self.taskKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["EnvVars"] as? [String: String] {
            self.envVars = value
        }
        if let value = dict["IconETag"] as? String {
            self.iconETag = value
        }
        if let value = dict["SkillChannel"] as? String {
            self.skillChannel = value
        }
        if let value = dict["SkillIcon"] as? String {
            self.skillIcon = value
        }
        if let value = dict["SkillVersion"] as? String {
            self.skillVersion = value
        }
        if let value = dict["Slug"] as? String {
            self.slug = value
        }
        if let value = dict["TaskKey"] as? String {
            self.taskKey = value
        }
    }
}

public class CreateTenantSkillShrinkRequest : Tea.TeaModel {
    public var apiKey: String?

    public var description_: String?

    public var displayName: String?

    public var envVarsShrink: String?

    public var iconETag: String?

    public var skillChannel: String?

    public var skillIcon: String?

    public var skillVersion: String?

    public var slug: String?

    public var taskKey: String?

    public override init() {
        super.init()
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
            map["ApiKey"] = self.apiKey!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.envVarsShrink != nil {
            map["EnvVars"] = self.envVarsShrink!
        }
        if self.iconETag != nil {
            map["IconETag"] = self.iconETag!
        }
        if self.skillChannel != nil {
            map["SkillChannel"] = self.skillChannel!
        }
        if self.skillIcon != nil {
            map["SkillIcon"] = self.skillIcon!
        }
        if self.skillVersion != nil {
            map["SkillVersion"] = self.skillVersion!
        }
        if self.slug != nil {
            map["Slug"] = self.slug!
        }
        if self.taskKey != nil {
            map["TaskKey"] = self.taskKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiKey"] as? String {
            self.apiKey = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["EnvVars"] as? String {
            self.envVarsShrink = value
        }
        if let value = dict["IconETag"] as? String {
            self.iconETag = value
        }
        if let value = dict["SkillChannel"] as? String {
            self.skillChannel = value
        }
        if let value = dict["SkillIcon"] as? String {
            self.skillIcon = value
        }
        if let value = dict["SkillVersion"] as? String {
            self.skillVersion = value
        }
        if let value = dict["Slug"] as? String {
            self.slug = value
        }
        if let value = dict["TaskKey"] as? String {
            self.taskKey = value
        }
    }
}

public class CreateTenantSkillResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var skillId: String?

    public override init() {
        super.init()
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
        if self.skillId != nil {
            map["SkillId"] = self.skillId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SkillId"] as? String {
            self.skillId = value
        }
    }
}

public class CreateTenantSkillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTenantSkillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTenantSkillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTenantSkillsRequest : Tea.TeaModel {
    public var skillChannel: String?

    public var skillIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.skillChannel != nil {
            map["SkillChannel"] = self.skillChannel!
        }
        if self.skillIds != nil {
            map["SkillIds"] = self.skillIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SkillChannel"] as? String {
            self.skillChannel = value
        }
        if let value = dict["SkillIds"] as? [String] {
            self.skillIds = value
        }
    }
}

public class DeleteTenantSkillsResponseBody : Tea.TeaModel {
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

public class DeleteTenantSkillsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTenantSkillsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTenantSkillsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOssStsTokenRequest : Tea.TeaModel {
    public var fileType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
    }
}

public class GetOssStsTokenResponseBody : Tea.TeaModel {
    public var accessKeyId: String?

    public var accessKeySecret: String?

    public var bucket: String?

    public var objectKeyPrefix: String?

    public var ossRegion: String?

    public var requestId: String?

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
            map["AccessKeyId"] = self.accessKeyId!
        }
        if self.accessKeySecret != nil {
            map["AccessKeySecret"] = self.accessKeySecret!
        }
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.objectKeyPrefix != nil {
            map["ObjectKeyPrefix"] = self.objectKeyPrefix!
        }
        if self.ossRegion != nil {
            map["OssRegion"] = self.ossRegion!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKeyId"] as? String {
            self.accessKeyId = value
        }
        if let value = dict["AccessKeySecret"] as? String {
            self.accessKeySecret = value
        }
        if let value = dict["Bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["ObjectKeyPrefix"] as? String {
            self.objectKeyPrefix = value
        }
        if let value = dict["OssRegion"] as? String {
            self.ossRegion = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class GetOssStsTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssStsTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetOssStsTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetParseProgressRequest : Tea.TeaModel {
    public var taskKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskKey != nil {
            map["TaskKey"] = self.taskKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TaskKey"] as? String {
            self.taskKey = value
        }
    }
}

public class GetParseProgressResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var errorCode: String?

        public var errorMessage: String?

        public var requiredEnvVars: [String]?

        public var requiresApiKey: Bool?

        public var skillName: String?

        public var slug: String?

        public var status: String?

        public var taskKey: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.requiredEnvVars != nil {
                map["RequiredEnvVars"] = self.requiredEnvVars!
            }
            if self.requiresApiKey != nil {
                map["RequiresApiKey"] = self.requiresApiKey!
            }
            if self.skillName != nil {
                map["SkillName"] = self.skillName!
            }
            if self.slug != nil {
                map["Slug"] = self.slug!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskKey != nil {
                map["TaskKey"] = self.taskKey!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["RequiredEnvVars"] as? [String] {
                self.requiredEnvVars = value
            }
            if let value = dict["RequiresApiKey"] as? Bool {
                self.requiresApiKey = value
            }
            if let value = dict["SkillName"] as? String {
                self.skillName = value
            }
            if let value = dict["Slug"] as? String {
                self.slug = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskKey"] as? String {
                self.taskKey = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var data: GetParseProgressResponseBody.Data?

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
            var model = GetParseProgressResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetParseProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetParseProgressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetParseProgressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSecureSkillIdentitiesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var skillChannel: String?

    public override init() {
        super.init()
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
        if self.skillChannel != nil {
            map["SkillChannel"] = self.skillChannel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SkillChannel"] as? String {
            self.skillChannel = value
        }
    }
}

public class ListSecureSkillIdentitiesResponseBody : Tea.TeaModel {
    public var identities: [String]?

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
        if self.identities != nil {
            map["Identities"] = self.identities!
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
        if let value = dict["Identities"] as? [String] {
            self.identities = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListSecureSkillIdentitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSecureSkillIdentitiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSecureSkillIdentitiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSkillAuthedIdentitiesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var skillChannel: String?

    public var skillId: String?

    public override init() {
        super.init()
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
        if self.skillChannel != nil {
            map["SkillChannel"] = self.skillChannel!
        }
        if self.skillId != nil {
            map["SkillId"] = self.skillId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SkillChannel"] as? String {
            self.skillChannel = value
        }
        if let value = dict["SkillId"] as? String {
            self.skillId = value
        }
    }
}

public class ListSkillAuthedIdentitiesResponseBody : Tea.TeaModel {
    public class Identities : Tea.TeaModel {
        public var autoInstall: Bool?

        public var identityId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoInstall != nil {
                map["AutoInstall"] = self.autoInstall!
            }
            if self.identityId != nil {
                map["IdentityId"] = self.identityId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoInstall"] as? Bool {
                self.autoInstall = value
            }
            if let value = dict["IdentityId"] as? String {
                self.identityId = value
            }
        }
    }
    public var identities: [ListSkillAuthedIdentitiesResponseBody.Identities]?

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
        if self.identities != nil {
            var tmp : [Any] = []
            for k in self.identities! {
                tmp.append(k.toMap())
            }
            map["Identities"] = tmp
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
        if let value = dict["Identities"] as? [Any?] {
            var tmp : [ListSkillAuthedIdentitiesResponseBody.Identities] = []
            for v in value {
                if v != nil {
                    var model = ListSkillAuthedIdentitiesResponseBody.Identities()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.identities = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListSkillAuthedIdentitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSkillAuthedIdentitiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSkillAuthedIdentitiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSkillsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var skillChannel: String?

    public var skillIds: [String]?

    public var supplierType: String?

    public override init() {
        super.init()
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
        if self.skillChannel != nil {
            map["SkillChannel"] = self.skillChannel!
        }
        if self.skillIds != nil {
            map["SkillIds"] = self.skillIds!
        }
        if self.supplierType != nil {
            map["SupplierType"] = self.supplierType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SkillChannel"] as? String {
            self.skillChannel = value
        }
        if let value = dict["SkillIds"] as? [String] {
            self.skillIds = value
        }
        if let value = dict["SupplierType"] as? String {
            self.supplierType = value
        }
    }
}

public class ListSkillsResponseBody : Tea.TeaModel {
    public class Skills : Tea.TeaModel {
        public class SkillVersions : Tea.TeaModel {
            public var changeLog: String?

            public var createdAt: Int64?

            public var publishStatus: String?

            public var securityScanFailReason: String?

            public var securityScanScore: Int32?

            public var securityScanStatus: String?

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
                if self.changeLog != nil {
                    map["ChangeLog"] = self.changeLog!
                }
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.publishStatus != nil {
                    map["PublishStatus"] = self.publishStatus!
                }
                if self.securityScanFailReason != nil {
                    map["SecurityScanFailReason"] = self.securityScanFailReason!
                }
                if self.securityScanScore != nil {
                    map["SecurityScanScore"] = self.securityScanScore!
                }
                if self.securityScanStatus != nil {
                    map["SecurityScanStatus"] = self.securityScanStatus!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ChangeLog"] as? String {
                    self.changeLog = value
                }
                if let value = dict["CreatedAt"] as? Int64 {
                    self.createdAt = value
                }
                if let value = dict["PublishStatus"] as? String {
                    self.publishStatus = value
                }
                if let value = dict["SecurityScanFailReason"] as? String {
                    self.securityScanFailReason = value
                }
                if let value = dict["SecurityScanScore"] as? Int32 {
                    self.securityScanScore = value
                }
                if let value = dict["SecurityScanStatus"] as? String {
                    self.securityScanStatus = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var apiKey: String?

        public var author: String?

        public var defaultVersion: String?

        public var description_: String?

        public var displayName: String?

        public var enable: Bool?

        public var envVars: [String: String]?

        public var gmtCreated: String?

        public var skillIconUrl: String?

        public var skillId: String?

        public var skillName: String?

        public var skillVersions: [ListSkillsResponseBody.Skills.SkillVersions]?

        public var slug: String?

        public var sourceMarket: String?

        public var sourceMarketName: String?

        public var supplierType: String?

        public override init() {
            super.init()
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
                map["ApiKey"] = self.apiKey!
            }
            if self.author != nil {
                map["Author"] = self.author!
            }
            if self.defaultVersion != nil {
                map["DefaultVersion"] = self.defaultVersion!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.envVars != nil {
                map["EnvVars"] = self.envVars!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.skillIconUrl != nil {
                map["SkillIconUrl"] = self.skillIconUrl!
            }
            if self.skillId != nil {
                map["SkillId"] = self.skillId!
            }
            if self.skillName != nil {
                map["SkillName"] = self.skillName!
            }
            if self.skillVersions != nil {
                var tmp : [Any] = []
                for k in self.skillVersions! {
                    tmp.append(k.toMap())
                }
                map["SkillVersions"] = tmp
            }
            if self.slug != nil {
                map["Slug"] = self.slug!
            }
            if self.sourceMarket != nil {
                map["SourceMarket"] = self.sourceMarket!
            }
            if self.sourceMarketName != nil {
                map["SourceMarketName"] = self.sourceMarketName!
            }
            if self.supplierType != nil {
                map["SupplierType"] = self.supplierType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApiKey"] as? String {
                self.apiKey = value
            }
            if let value = dict["Author"] as? String {
                self.author = value
            }
            if let value = dict["DefaultVersion"] as? String {
                self.defaultVersion = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["EnvVars"] as? [String: String] {
                self.envVars = value
            }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["SkillIconUrl"] as? String {
                self.skillIconUrl = value
            }
            if let value = dict["SkillId"] as? String {
                self.skillId = value
            }
            if let value = dict["SkillName"] as? String {
                self.skillName = value
            }
            if let value = dict["SkillVersions"] as? [Any?] {
                var tmp : [ListSkillsResponseBody.Skills.SkillVersions] = []
                for v in value {
                    if v != nil {
                        var model = ListSkillsResponseBody.Skills.SkillVersions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.skillVersions = tmp
            }
            if let value = dict["Slug"] as? String {
                self.slug = value
            }
            if let value = dict["SourceMarket"] as? String {
                self.sourceMarket = value
            }
            if let value = dict["SourceMarketName"] as? String {
                self.sourceMarketName = value
            }
            if let value = dict["SupplierType"] as? String {
                self.supplierType = value
            }
        }
    }
    public var requestId: String?

    public var skills: [ListSkillsResponseBody.Skills]?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Skills"] as? [Any?] {
            var tmp : [ListSkillsResponseBody.Skills] = []
            for v in value {
                if v != nil {
                    var model = ListSkillsResponseBody.Skills()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.skills = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

public class ParseSkillPackageRequest : Tea.TeaModel {
    public var ossObjectETag: String?

    public var ossObjectKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ossObjectETag != nil {
            map["OssObjectETag"] = self.ossObjectETag!
        }
        if self.ossObjectKey != nil {
            map["OssObjectKey"] = self.ossObjectKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OssObjectETag"] as? String {
            self.ossObjectETag = value
        }
        if let value = dict["OssObjectKey"] as? String {
            self.ossObjectKey = value
        }
    }
}

public class ParseSkillPackageResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskKey: String?

    public override init() {
        super.init()
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
        if self.taskKey != nil {
            map["TaskKey"] = self.taskKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskKey"] as? String {
            self.taskKey = value
        }
    }
}

public class ParseSkillPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ParseSkillPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ParseSkillPackageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetIdentitySkillAuthRequest : Tea.TeaModel {
    public class Identities : Tea.TeaModel {
        public var identityId: String?

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
            if self.identityId != nil {
                map["IdentityId"] = self.identityId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IdentityId"] as? String {
                self.identityId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var autoInstall: Bool?

    public var identities: [SetIdentitySkillAuthRequest.Identities]?

    public var operationType: String?

    public var skillChannel: String?

    public var skillIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoInstall != nil {
            map["AutoInstall"] = self.autoInstall!
        }
        if self.identities != nil {
            var tmp : [Any] = []
            for k in self.identities! {
                tmp.append(k.toMap())
            }
            map["Identities"] = tmp
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.skillChannel != nil {
            map["SkillChannel"] = self.skillChannel!
        }
        if self.skillIds != nil {
            map["SkillIds"] = self.skillIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoInstall"] as? Bool {
            self.autoInstall = value
        }
        if let value = dict["Identities"] as? [Any?] {
            var tmp : [SetIdentitySkillAuthRequest.Identities] = []
            for v in value {
                if v != nil {
                    var model = SetIdentitySkillAuthRequest.Identities()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.identities = tmp
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
        if let value = dict["SkillChannel"] as? String {
            self.skillChannel = value
        }
        if let value = dict["SkillIds"] as? [String] {
            self.skillIds = value
        }
    }
}

public class SetIdentitySkillAuthResponseBody : Tea.TeaModel {
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

public class SetIdentitySkillAuthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetIdentitySkillAuthResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetIdentitySkillAuthResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetIdentitySkillSecurityRequest : Tea.TeaModel {
    public class IdentityIds : Tea.TeaModel {
        public var identityId: String?

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
            if self.identityId != nil {
                map["IdentityId"] = self.identityId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IdentityId"] as? String {
                self.identityId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var enabled: Bool?

    public var identityIds: [SetIdentitySkillSecurityRequest.IdentityIds]?

    public var skillChannel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.identityIds != nil {
            var tmp : [Any] = []
            for k in self.identityIds! {
                tmp.append(k.toMap())
            }
            map["IdentityIds"] = tmp
        }
        if self.skillChannel != nil {
            map["SkillChannel"] = self.skillChannel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["IdentityIds"] as? [Any?] {
            var tmp : [SetIdentitySkillSecurityRequest.IdentityIds] = []
            for v in value {
                if v != nil {
                    var model = SetIdentitySkillSecurityRequest.IdentityIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.identityIds = tmp
        }
        if let value = dict["SkillChannel"] as? String {
            self.skillChannel = value
        }
    }
}

public class SetIdentitySkillSecurityResponseBody : Tea.TeaModel {
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

public class SetIdentitySkillSecurityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetIdentitySkillSecurityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetIdentitySkillSecurityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetTenantSkillEnabledRequest : Tea.TeaModel {
    public var enabled: Bool?

    public var skillChannel: String?

    public var skillIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.skillChannel != nil {
            map["SkillChannel"] = self.skillChannel!
        }
        if self.skillIds != nil {
            map["SkillIds"] = self.skillIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["SkillChannel"] as? String {
            self.skillChannel = value
        }
        if let value = dict["SkillIds"] as? [String] {
            self.skillIds = value
        }
    }
}

public class SetTenantSkillEnabledResponseBody : Tea.TeaModel {
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

public class SetTenantSkillEnabledResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetTenantSkillEnabledResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetTenantSkillEnabledResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
