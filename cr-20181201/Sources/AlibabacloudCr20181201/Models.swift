import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ArtifactLifecyclePolicy : Tea.TeaModel {
    public class Condition : Tea.TeaModel {
        public var lastPullOlderThanDays: Int32?

        public var lastPushOlderThanDays: Int32?

        public var latestTagCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lastPullOlderThanDays != nil {
                map["LastPullOlderThanDays"] = self.lastPullOlderThanDays!
            }
            if self.lastPushOlderThanDays != nil {
                map["LastPushOlderThanDays"] = self.lastPushOlderThanDays!
            }
            if self.latestTagCount != nil {
                map["LatestTagCount"] = self.latestTagCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LastPullOlderThanDays"] as? Int32 {
                self.lastPullOlderThanDays = value
            }
            if let value = dict["LastPushOlderThanDays"] as? Int32 {
                self.lastPushOlderThanDays = value
            }
            if let value = dict["LatestTagCount"] as? Int32 {
                self.latestTagCount = value
            }
        }
    }
    public class Filter : Tea.TeaModel {
        public var tagWildcard: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagWildcard != nil {
                map["TagWildcard"] = self.tagWildcard!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagWildcard"] as? String {
                self.tagWildcard = value
            }
        }
    }
    public var condition: ArtifactLifecyclePolicy.Condition?

    public var filter: ArtifactLifecyclePolicy.Filter?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.condition?.validate()
        try self.filter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.condition != nil {
            map["Condition"] = self.condition?.toMap()
        }
        if self.filter != nil {
            map["Filter"] = self.filter?.toMap()
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Condition"] as? [String: Any?] {
            var model = ArtifactLifecyclePolicy.Condition()
            model.fromMap(value)
            self.condition = model
        }
        if let value = dict["Filter"] as? [String: Any?] {
            var model = ArtifactLifecyclePolicy.Filter()
            model.fromMap(value)
            self.filter = model
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class RepoConfiguration : Tea.TeaModel {
    public class ArtifactBuildRuleParameters : Tea.TeaModel {
        public var imageIndexOnly: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageIndexOnly != nil {
                map["ImageIndexOnly"] = self.imageIndexOnly!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageIndexOnly"] as? Bool {
                self.imageIndexOnly = value
            }
        }
    }
    public var artifactBuildRuleParameters: RepoConfiguration.ArtifactBuildRuleParameters?

    public var repoType: String?

    public var tagImmutability: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.artifactBuildRuleParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactBuildRuleParameters != nil {
            map["ArtifactBuildRuleParameters"] = self.artifactBuildRuleParameters?.toMap()
        }
        if self.repoType != nil {
            map["RepoType"] = self.repoType!
        }
        if self.tagImmutability != nil {
            map["TagImmutability"] = self.tagImmutability!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactBuildRuleParameters"] as? [String: Any?] {
            var model = RepoConfiguration.ArtifactBuildRuleParameters()
            model.fromMap(value)
            self.artifactBuildRuleParameters = model
        }
        if let value = dict["RepoType"] as? String {
            self.repoType = value
        }
        if let value = dict["TagImmutability"] as? Bool {
            self.tagImmutability = value
        }
    }
}

public class RouteItem : Tea.TeaModel {
    public var endpointType: String?

    public var instanceDomain: String?

    public var storageDomain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        if self.instanceDomain != nil {
            map["InstanceDomain"] = self.instanceDomain!
        }
        if self.storageDomain != nil {
            map["StorageDomain"] = self.storageDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
        if let value = dict["InstanceDomain"] as? String {
            self.instanceDomain = value
        }
        if let value = dict["StorageDomain"] as? String {
            self.storageDomain = value
        }
    }
}

public class CancelArtifactBuildTaskRequest : Tea.TeaModel {
    public var buildTaskId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildTaskId != nil {
            map["BuildTaskId"] = self.buildTaskId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildTaskId"] as? String {
            self.buildTaskId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CancelArtifactBuildTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CancelArtifactBuildTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelArtifactBuildTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelArtifactBuildTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelRepoBuildRecordRequest : Tea.TeaModel {
    public var buildRecordId: String?

    public var instanceId: String?

    public var repoId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildRecordId != nil {
            map["BuildRecordId"] = self.buildRecordId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildRecordId"] as? String {
            self.buildRecordId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class CancelRepoBuildRecordResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CancelRepoBuildRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelRepoBuildRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelRepoBuildRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelRepoSyncTaskRequest : Tea.TeaModel {
    public var instanceId: String?

    public var syncTaskId: String?

    public override init() {
        super.init()
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
        if self.syncTaskId != nil {
            map["SyncTaskId"] = self.syncTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SyncTaskId"] as? String {
            self.syncTaskId = value
        }
    }
}

public class CancelRepoSyncTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CancelRepoSyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelRepoSyncTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelRepoSyncTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
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

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateArtifactBuildRuleRequest : Tea.TeaModel {
    public var artifactType: String?

    public var instanceId: String?

    public var parameters: [String: Any]?

    public var scopeId: String?

    public var scopeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.scopeId != nil {
            map["ScopeId"] = self.scopeId!
        }
        if self.scopeType != nil {
            map["ScopeType"] = self.scopeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["ScopeId"] as? String {
            self.scopeId = value
        }
        if let value = dict["ScopeType"] as? String {
            self.scopeType = value
        }
    }
}

public class CreateArtifactBuildRuleShrinkRequest : Tea.TeaModel {
    public var artifactType: String?

    public var instanceId: String?

    public var parametersShrink: String?

    public var scopeId: String?

    public var scopeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.scopeId != nil {
            map["ScopeId"] = self.scopeId!
        }
        if self.scopeType != nil {
            map["ScopeType"] = self.scopeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["ScopeId"] as? String {
            self.scopeId = value
        }
        if let value = dict["ScopeType"] as? String {
            self.scopeType = value
        }
    }
}

public class CreateArtifactBuildRuleResponseBody : Tea.TeaModel {
    public var buildRuleId: String?

    public var code: String?

    public var isSuccess: Bool?

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
        if self.buildRuleId != nil {
            map["BuildRuleId"] = self.buildRuleId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildRuleId"] as? String {
            self.buildRuleId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateArtifactBuildRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateArtifactBuildRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateArtifactBuildRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateArtifactLifecycleRuleRequest : Tea.TeaModel {
    public var auto: Bool?

    public var enableDeleteTag: Bool?

    public var instanceId: String?

    public var namespaceName: String?

    public var repoName: String?

    public var retentionTagCount: Int64?

    public var scheduleTime: String?

    public var scope: String?

    public var tagRegexp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auto != nil {
            map["Auto"] = self.auto!
        }
        if self.enableDeleteTag != nil {
            map["EnableDeleteTag"] = self.enableDeleteTag!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.retentionTagCount != nil {
            map["RetentionTagCount"] = self.retentionTagCount!
        }
        if self.scheduleTime != nil {
            map["ScheduleTime"] = self.scheduleTime!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.tagRegexp != nil {
            map["TagRegexp"] = self.tagRegexp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Auto"] as? Bool {
            self.auto = value
        }
        if let value = dict["EnableDeleteTag"] as? Bool {
            self.enableDeleteTag = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RetentionTagCount"] as? Int64 {
            self.retentionTagCount = value
        }
        if let value = dict["ScheduleTime"] as? String {
            self.scheduleTime = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["TagRegexp"] as? String {
            self.tagRegexp = value
        }
    }
}

public class CreateArtifactLifecycleRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

    public var requestId: String?

    public var ruleId: String?

    public override init() {
        super.init()
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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class CreateArtifactLifecycleRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateArtifactLifecycleRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateArtifactLifecycleRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateArtifactSubscriptionRuleRequest : Tea.TeaModel {
    public var accelerate: Bool?

    public var instanceId: String?

    public var namespaceName: String?

    public var override_: Bool?

    public var platform: [String]?

    public var repoName: String?

    public var sourceNamespaceName: String?

    public var sourceProvider: String?

    public var sourceRepoName: String?

    public var tagCount: Int64?

    public var tagRegexp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerate != nil {
            map["Accelerate"] = self.accelerate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.override_ != nil {
            map["Override"] = self.override_!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.sourceNamespaceName != nil {
            map["SourceNamespaceName"] = self.sourceNamespaceName!
        }
        if self.sourceProvider != nil {
            map["SourceProvider"] = self.sourceProvider!
        }
        if self.sourceRepoName != nil {
            map["SourceRepoName"] = self.sourceRepoName!
        }
        if self.tagCount != nil {
            map["TagCount"] = self.tagCount!
        }
        if self.tagRegexp != nil {
            map["TagRegexp"] = self.tagRegexp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accelerate"] as? Bool {
            self.accelerate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["Override"] as? Bool {
            self.override_ = value
        }
        if let value = dict["Platform"] as? [String] {
            self.platform = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["SourceNamespaceName"] as? String {
            self.sourceNamespaceName = value
        }
        if let value = dict["SourceProvider"] as? String {
            self.sourceProvider = value
        }
        if let value = dict["SourceRepoName"] as? String {
            self.sourceRepoName = value
        }
        if let value = dict["TagCount"] as? Int64 {
            self.tagCount = value
        }
        if let value = dict["TagRegexp"] as? String {
            self.tagRegexp = value
        }
    }
}

public class CreateArtifactSubscriptionRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

    public var requestId: String?

    public var ruleId: String?

    public override init() {
        super.init()
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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class CreateArtifactSubscriptionRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateArtifactSubscriptionRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateArtifactSubscriptionRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateArtifactSubscriptionTaskRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ruleId: String?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class CreateArtifactSubscriptionTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateArtifactSubscriptionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateArtifactSubscriptionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateArtifactSubscriptionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBuildRecordByRecordRequest : Tea.TeaModel {
    public var buildRecordId: String?

    public var instanceId: String?

    public var repoId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildRecordId != nil {
            map["BuildRecordId"] = self.buildRecordId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildRecordId"] as? String {
            self.buildRecordId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class CreateBuildRecordByRecordResponseBody : Tea.TeaModel {
    public var buildRecordId: String?

    public var code: String?

    public var isSuccess: Bool?

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
        if self.buildRecordId != nil {
            map["BuildRecordId"] = self.buildRecordId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildRecordId"] as? String {
            self.buildRecordId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateBuildRecordByRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBuildRecordByRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateBuildRecordByRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBuildRecordByRuleRequest : Tea.TeaModel {
    public var buildRuleId: String?

    public var instanceId: String?

    public var repoId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildRuleId != nil {
            map["BuildRuleId"] = self.buildRuleId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildRuleId"] as? String {
            self.buildRuleId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class CreateBuildRecordByRuleResponseBody : Tea.TeaModel {
    public var buildRecordId: String?

    public var code: String?

    public var isSuccess: Bool?

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
        if self.buildRecordId != nil {
            map["BuildRecordId"] = self.buildRecordId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildRecordId"] as? String {
            self.buildRecordId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateBuildRecordByRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBuildRecordByRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateBuildRecordByRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateChainRequest : Tea.TeaModel {
    public var chainConfig: String?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var repoName: String?

    public var repoNamespaceName: String?

    public var scopeExclude: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chainConfig != nil {
            map["ChainConfig"] = self.chainConfig!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        if self.scopeExclude != nil {
            map["ScopeExclude"] = self.scopeExclude!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChainConfig"] as? String {
            self.chainConfig = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
        if let value = dict["ScopeExclude"] as? [String] {
            self.scopeExclude = value
        }
    }
}

public class CreateChainResponseBody : Tea.TeaModel {
    public var chainId: String?

    public var code: String?

    public var isSuccess: Bool?

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
        if self.chainId != nil {
            map["ChainId"] = self.chainId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChainId"] as? String {
            self.chainId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateChainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateChainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateChartNamespaceRequest : Tea.TeaModel {
    public var autoCreateRepo: Bool?

    public var defaultRepoType: String?

    public var instanceId: String?

    public var namespaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCreateRepo != nil {
            map["AutoCreateRepo"] = self.autoCreateRepo!
        }
        if self.defaultRepoType != nil {
            map["DefaultRepoType"] = self.defaultRepoType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoCreateRepo"] as? Bool {
            self.autoCreateRepo = value
        }
        if let value = dict["DefaultRepoType"] as? String {
            self.defaultRepoType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
    }
}

public class CreateChartNamespaceResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateChartNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChartNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateChartNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateChartRepositoryRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoName: String?

    public var repoNamespaceName: String?

    public var repoType: String?

    public var summary: String?

    public override init() {
        super.init()
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
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        if self.repoType != nil {
            map["RepoType"] = self.repoType!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
        if let value = dict["RepoType"] as? String {
            self.repoType = value
        }
        if let value = dict["Summary"] as? String {
            self.summary = value
        }
    }
}

public class CreateChartRepositoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

    public var repoId: String?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateChartRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChartRepositoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateChartRepositoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceEndpointAclPolicyRequest : Tea.TeaModel {
    public var comment: String?

    public var endpointType: String?

    public var entry: String?

    public var instanceId: String?

    public var moduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        if self.entry != nil {
            map["Entry"] = self.entry!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
        if let value = dict["Entry"] as? String {
            self.entry = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ModuleName"] as? String {
            self.moduleName = value
        }
    }
}

public class CreateInstanceEndpointAclPolicyResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateInstanceEndpointAclPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceEndpointAclPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateInstanceEndpointAclPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceVpcEndpointLinkedVpcRequest : Tea.TeaModel {
    public var enableCreateDNSRecordInPvzt: Bool?

    public var instanceId: String?

    public var moduleName: String?

    public var vpcId: String?

    public var vswitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableCreateDNSRecordInPvzt != nil {
            map["EnableCreateDNSRecordInPvzt"] = self.enableCreateDNSRecordInPvzt!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableCreateDNSRecordInPvzt"] as? Bool {
            self.enableCreateDNSRecordInPvzt = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ModuleName"] as? String {
            self.moduleName = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VswitchId"] as? String {
            self.vswitchId = value
        }
    }
}

public class CreateInstanceVpcEndpointLinkedVpcResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateInstanceVpcEndpointLinkedVpcResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceVpcEndpointLinkedVpcResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateInstanceVpcEndpointLinkedVpcResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateNamespaceRequest : Tea.TeaModel {
    public var autoCreateRepo: Bool?

    public var defaultRepoConfiguration: RepoConfiguration?

    public var defaultRepoType: String?

    public var instanceId: String?

    public var namespaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.defaultRepoConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCreateRepo != nil {
            map["AutoCreateRepo"] = self.autoCreateRepo!
        }
        if self.defaultRepoConfiguration != nil {
            map["DefaultRepoConfiguration"] = self.defaultRepoConfiguration?.toMap()
        }
        if self.defaultRepoType != nil {
            map["DefaultRepoType"] = self.defaultRepoType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoCreateRepo"] as? Bool {
            self.autoCreateRepo = value
        }
        if let value = dict["DefaultRepoConfiguration"] as? [String: Any?] {
            var model = RepoConfiguration()
            model.fromMap(value)
            self.defaultRepoConfiguration = model
        }
        if let value = dict["DefaultRepoType"] as? String {
            self.defaultRepoType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
    }
}

public class CreateNamespaceShrinkRequest : Tea.TeaModel {
    public var autoCreateRepo: Bool?

    public var defaultRepoConfigurationShrink: String?

    public var defaultRepoType: String?

    public var instanceId: String?

    public var namespaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCreateRepo != nil {
            map["AutoCreateRepo"] = self.autoCreateRepo!
        }
        if self.defaultRepoConfigurationShrink != nil {
            map["DefaultRepoConfiguration"] = self.defaultRepoConfigurationShrink!
        }
        if self.defaultRepoType != nil {
            map["DefaultRepoType"] = self.defaultRepoType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoCreateRepo"] as? Bool {
            self.autoCreateRepo = value
        }
        if let value = dict["DefaultRepoConfiguration"] as? String {
            self.defaultRepoConfigurationShrink = value
        }
        if let value = dict["DefaultRepoType"] as? String {
            self.defaultRepoType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
    }
}

public class CreateNamespaceResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
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

public class CreateRepoBuildRuleRequest : Tea.TeaModel {
    public var buildArgs: [String]?

    public var dockerfileLocation: String?

    public var dockerfileName: String?

    public var imageTag: String?

    public var instanceId: String?

    public var platforms: [String]?

    public var pushName: String?

    public var pushType: String?

    public var repoId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildArgs != nil {
            map["BuildArgs"] = self.buildArgs!
        }
        if self.dockerfileLocation != nil {
            map["DockerfileLocation"] = self.dockerfileLocation!
        }
        if self.dockerfileName != nil {
            map["DockerfileName"] = self.dockerfileName!
        }
        if self.imageTag != nil {
            map["ImageTag"] = self.imageTag!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.platforms != nil {
            map["Platforms"] = self.platforms!
        }
        if self.pushName != nil {
            map["PushName"] = self.pushName!
        }
        if self.pushType != nil {
            map["PushType"] = self.pushType!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildArgs"] as? [String] {
            self.buildArgs = value
        }
        if let value = dict["DockerfileLocation"] as? String {
            self.dockerfileLocation = value
        }
        if let value = dict["DockerfileName"] as? String {
            self.dockerfileName = value
        }
        if let value = dict["ImageTag"] as? String {
            self.imageTag = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Platforms"] as? [String] {
            self.platforms = value
        }
        if let value = dict["PushName"] as? String {
            self.pushName = value
        }
        if let value = dict["PushType"] as? String {
            self.pushType = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class CreateRepoBuildRuleResponseBody : Tea.TeaModel {
    public var buildRuleId: String?

    public var code: String?

    public var isSuccess: Bool?

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
        if self.buildRuleId != nil {
            map["BuildRuleId"] = self.buildRuleId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildRuleId"] as? String {
            self.buildRuleId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateRepoBuildRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRepoBuildRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRepoBuildRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRepoSourceCodeRepoRequest : Tea.TeaModel {
    public var autoBuild: Bool?

    public var codeRepoName: String?

    public var codeRepoNamespaceName: String?

    public var codeRepoType: String?

    public var disableCacheBuild: Bool?

    public var instanceId: String?

    public var overseaBuild: Bool?

    public var repoId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoBuild != nil {
            map["AutoBuild"] = self.autoBuild!
        }
        if self.codeRepoName != nil {
            map["CodeRepoName"] = self.codeRepoName!
        }
        if self.codeRepoNamespaceName != nil {
            map["CodeRepoNamespaceName"] = self.codeRepoNamespaceName!
        }
        if self.codeRepoType != nil {
            map["CodeRepoType"] = self.codeRepoType!
        }
        if self.disableCacheBuild != nil {
            map["DisableCacheBuild"] = self.disableCacheBuild!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.overseaBuild != nil {
            map["OverseaBuild"] = self.overseaBuild!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoBuild"] as? Bool {
            self.autoBuild = value
        }
        if let value = dict["CodeRepoName"] as? String {
            self.codeRepoName = value
        }
        if let value = dict["CodeRepoNamespaceName"] as? String {
            self.codeRepoNamespaceName = value
        }
        if let value = dict["CodeRepoType"] as? String {
            self.codeRepoType = value
        }
        if let value = dict["DisableCacheBuild"] as? Bool {
            self.disableCacheBuild = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OverseaBuild"] as? Bool {
            self.overseaBuild = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class CreateRepoSourceCodeRepoResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateRepoSourceCodeRepoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRepoSourceCodeRepoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRepoSourceCodeRepoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRepoSyncRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var namespaceName: String?

    public var repoName: String?

    public var repoNameFilter: String?

    public var syncRuleName: String?

    public var syncScope: String?

    public var syncTrigger: String?

    public var tagFilter: String?

    public var targetInstanceId: String?

    public var targetNamespaceName: String?

    public var targetRegionId: String?

    public var targetRepoName: String?

    public var targetUserId: String?

    public override init() {
        super.init()
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
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNameFilter != nil {
            map["RepoNameFilter"] = self.repoNameFilter!
        }
        if self.syncRuleName != nil {
            map["SyncRuleName"] = self.syncRuleName!
        }
        if self.syncScope != nil {
            map["SyncScope"] = self.syncScope!
        }
        if self.syncTrigger != nil {
            map["SyncTrigger"] = self.syncTrigger!
        }
        if self.tagFilter != nil {
            map["TagFilter"] = self.tagFilter!
        }
        if self.targetInstanceId != nil {
            map["TargetInstanceId"] = self.targetInstanceId!
        }
        if self.targetNamespaceName != nil {
            map["TargetNamespaceName"] = self.targetNamespaceName!
        }
        if self.targetRegionId != nil {
            map["TargetRegionId"] = self.targetRegionId!
        }
        if self.targetRepoName != nil {
            map["TargetRepoName"] = self.targetRepoName!
        }
        if self.targetUserId != nil {
            map["TargetUserId"] = self.targetUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNameFilter"] as? String {
            self.repoNameFilter = value
        }
        if let value = dict["SyncRuleName"] as? String {
            self.syncRuleName = value
        }
        if let value = dict["SyncScope"] as? String {
            self.syncScope = value
        }
        if let value = dict["SyncTrigger"] as? String {
            self.syncTrigger = value
        }
        if let value = dict["TagFilter"] as? String {
            self.tagFilter = value
        }
        if let value = dict["TargetInstanceId"] as? String {
            self.targetInstanceId = value
        }
        if let value = dict["TargetNamespaceName"] as? String {
            self.targetNamespaceName = value
        }
        if let value = dict["TargetRegionId"] as? String {
            self.targetRegionId = value
        }
        if let value = dict["TargetRepoName"] as? String {
            self.targetRepoName = value
        }
        if let value = dict["TargetUserId"] as? String {
            self.targetUserId = value
        }
    }
}

public class CreateRepoSyncRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

    public var requestId: String?

    public var syncRuleId: String?

    public override init() {
        super.init()
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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.syncRuleId != nil {
            map["SyncRuleId"] = self.syncRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SyncRuleId"] as? String {
            self.syncRuleId = value
        }
    }
}

public class CreateRepoSyncRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRepoSyncRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRepoSyncRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRepoSyncTaskRequest : Tea.TeaModel {
    public var instanceId: String?

    public var override_: Bool?

    public var repoId: String?

    public var tag: String?

    public var targetInstanceId: String?

    public var targetNamespace: String?

    public var targetRegionId: String?

    public var targetRepoName: String?

    public var targetTag: String?

    public var targetUserId: String?

    public override init() {
        super.init()
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
        if self.override_ != nil {
            map["Override"] = self.override_!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.targetInstanceId != nil {
            map["TargetInstanceId"] = self.targetInstanceId!
        }
        if self.targetNamespace != nil {
            map["TargetNamespace"] = self.targetNamespace!
        }
        if self.targetRegionId != nil {
            map["TargetRegionId"] = self.targetRegionId!
        }
        if self.targetRepoName != nil {
            map["TargetRepoName"] = self.targetRepoName!
        }
        if self.targetTag != nil {
            map["TargetTag"] = self.targetTag!
        }
        if self.targetUserId != nil {
            map["TargetUserId"] = self.targetUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Override"] as? Bool {
            self.override_ = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
        if let value = dict["TargetInstanceId"] as? String {
            self.targetInstanceId = value
        }
        if let value = dict["TargetNamespace"] as? String {
            self.targetNamespace = value
        }
        if let value = dict["TargetRegionId"] as? String {
            self.targetRegionId = value
        }
        if let value = dict["TargetRepoName"] as? String {
            self.targetRepoName = value
        }
        if let value = dict["TargetTag"] as? String {
            self.targetTag = value
        }
        if let value = dict["TargetUserId"] as? String {
            self.targetUserId = value
        }
    }
}

public class CreateRepoSyncTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

    public var requestId: String?

    public var syncTaskId: String?

    public override init() {
        super.init()
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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.syncTaskId != nil {
            map["SyncTaskId"] = self.syncTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SyncTaskId"] as? String {
            self.syncTaskId = value
        }
    }
}

public class CreateRepoSyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRepoSyncTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRepoSyncTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRepoSyncTaskByRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoId: String?

    public var syncRuleId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.syncRuleId != nil {
            map["SyncRuleId"] = self.syncRuleId!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["SyncRuleId"] as? String {
            self.syncRuleId = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
    }
}

public class CreateRepoSyncTaskByRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

    public var requestId: String?

    public var syncTaskId: String?

    public override init() {
        super.init()
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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.syncTaskId != nil {
            map["SyncTaskId"] = self.syncTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SyncTaskId"] as? String {
            self.syncTaskId = value
        }
    }
}

public class CreateRepoSyncTaskByRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRepoSyncTaskByRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRepoSyncTaskByRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRepoTagRequest : Tea.TeaModel {
    public var fromTag: String?

    public var instanceId: String?

    public var namespaceName: String?

    public var repoName: String?

    public var toTag: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fromTag != nil {
            map["FromTag"] = self.fromTag!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.toTag != nil {
            map["ToTag"] = self.toTag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FromTag"] as? String {
            self.fromTag = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["ToTag"] as? String {
            self.toTag = value
        }
    }
}

public class CreateRepoTagResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateRepoTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRepoTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRepoTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRepoTagScanTaskRequest : Tea.TeaModel {
    public var digest: String?

    public var instanceId: String?

    public var repoId: String?

    public var scanService: String?

    public var scanType: String?

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
        if self.digest != nil {
            map["Digest"] = self.digest!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.scanService != nil {
            map["ScanService"] = self.scanService!
        }
        if self.scanType != nil {
            map["ScanType"] = self.scanType!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Digest"] as? String {
            self.digest = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["ScanService"] as? String {
            self.scanService = value
        }
        if let value = dict["ScanType"] as? String {
            self.scanType = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
    }
}

public class CreateRepoTagScanTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateRepoTagScanTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRepoTagScanTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRepoTagScanTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRepoTriggerRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoId: String?

    public var triggerName: String?

    public var triggerTag: String?

    public var triggerType: String?

    public var triggerUrl: String?

    public override init() {
        super.init()
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
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.triggerName != nil {
            map["TriggerName"] = self.triggerName!
        }
        if self.triggerTag != nil {
            map["TriggerTag"] = self.triggerTag!
        }
        if self.triggerType != nil {
            map["TriggerType"] = self.triggerType!
        }
        if self.triggerUrl != nil {
            map["TriggerUrl"] = self.triggerUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["TriggerName"] as? String {
            self.triggerName = value
        }
        if let value = dict["TriggerTag"] as? String {
            self.triggerTag = value
        }
        if let value = dict["TriggerType"] as? String {
            self.triggerType = value
        }
        if let value = dict["TriggerUrl"] as? String {
            self.triggerUrl = value
        }
    }
}

public class CreateRepoTriggerResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

    public var requestId: String?

    public var triggerId: String?

    public override init() {
        super.init()
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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.triggerId != nil {
            map["TriggerId"] = self.triggerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TriggerId"] as? String {
            self.triggerId = value
        }
    }
}

public class CreateRepoTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRepoTriggerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRepoTriggerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRepositoryRequest : Tea.TeaModel {
    public var detail: String?

    public var instanceId: String?

    public var repoName: String?

    public var repoNamespaceName: String?

    public var repoType: String?

    public var summary: String?

    public var tagImmutability: Bool?

    public override init() {
        super.init()
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
            map["Detail"] = self.detail!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        if self.repoType != nil {
            map["RepoType"] = self.repoType!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        if self.tagImmutability != nil {
            map["TagImmutability"] = self.tagImmutability!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Detail"] as? String {
            self.detail = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
        if let value = dict["RepoType"] as? String {
            self.repoType = value
        }
        if let value = dict["Summary"] as? String {
            self.summary = value
        }
        if let value = dict["TagImmutability"] as? Bool {
            self.tagImmutability = value
        }
    }
}

public class CreateRepositoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

    public var repoId: String?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRepositoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRepositoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteArtifactLifecycleRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ruleId: String?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class DeleteArtifactLifecycleRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteArtifactLifecycleRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteArtifactLifecycleRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteArtifactLifecycleRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteArtifactSubscriptionRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ruleId: String?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class DeleteArtifactSubscriptionRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteArtifactSubscriptionRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteArtifactSubscriptionRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteArtifactSubscriptionRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteChainRequest : Tea.TeaModel {
    public var chainId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chainId != nil {
            map["ChainId"] = self.chainId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChainId"] as? String {
            self.chainId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteChainResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteChainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteChainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteChartNamespaceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var namespaceName: String?

    public override init() {
        super.init()
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
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
    }
}

public class DeleteChartNamespaceResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteChartNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChartNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteChartNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteChartReleaseRequest : Tea.TeaModel {
    public var chart: String?

    public var instanceId: String?

    public var release: String?

    public var repoName: String?

    public var repoNamespaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chart != nil {
            map["Chart"] = self.chart!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.release != nil {
            map["Release"] = self.release!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Chart"] as? String {
            self.chart = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Release"] as? String {
            self.release = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
    }
}

public class DeleteChartReleaseResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteChartReleaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChartReleaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteChartReleaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteChartRepositoryRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoName: String?

    public var repoNamespaceName: String?

    public override init() {
        super.init()
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
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
    }
}

public class DeleteChartRepositoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteChartRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChartRepositoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteChartRepositoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEventCenterRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ruleId: String?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class DeleteEventCenterRuleResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteEventCenterRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEventCenterRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteEventCenterRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceEndpointAclPolicyRequest : Tea.TeaModel {
    public var endpointType: String?

    public var entry: String?

    public var instanceId: String?

    public var moduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        if self.entry != nil {
            map["Entry"] = self.entry!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
        if let value = dict["Entry"] as? String {
            self.entry = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ModuleName"] as? String {
            self.moduleName = value
        }
    }
}

public class DeleteInstanceEndpointAclPolicyResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteInstanceEndpointAclPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceEndpointAclPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteInstanceEndpointAclPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceVpcEndpointLinkedVpcRequest : Tea.TeaModel {
    public var instanceId: String?

    public var moduleName: String?

    public var vpcId: String?

    public var vswitchId: String?

    public override init() {
        super.init()
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
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ModuleName"] as? String {
            self.moduleName = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VswitchId"] as? String {
            self.vswitchId = value
        }
    }
}

public class DeleteInstanceVpcEndpointLinkedVpcResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteInstanceVpcEndpointLinkedVpcResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceVpcEndpointLinkedVpcResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteInstanceVpcEndpointLinkedVpcResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNamespaceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var namespaceName: String?

    public override init() {
        super.init()
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
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
    }
}

public class DeleteNamespaceResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
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

public class DeleteRepoBuildRuleRequest : Tea.TeaModel {
    public var buildRuleId: String?

    public var instanceId: String?

    public var repoId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildRuleId != nil {
            map["BuildRuleId"] = self.buildRuleId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildRuleId"] as? String {
            self.buildRuleId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class DeleteRepoBuildRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteRepoBuildRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRepoBuildRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRepoBuildRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRepoSyncRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var syncRuleId: String?

    public override init() {
        super.init()
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
        if self.syncRuleId != nil {
            map["SyncRuleId"] = self.syncRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SyncRuleId"] as? String {
            self.syncRuleId = value
        }
    }
}

public class DeleteRepoSyncRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteRepoSyncRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRepoSyncRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRepoSyncRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRepoTagRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
    }
}

public class DeleteRepoTagResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteRepoTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRepoTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRepoTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRepoTriggerRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoId: String?

    public var triggerId: String?

    public override init() {
        super.init()
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
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.triggerId != nil {
            map["TriggerId"] = self.triggerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["TriggerId"] as? String {
            self.triggerId = value
        }
    }
}

public class DeleteRepoTriggerResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteRepoTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRepoTriggerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRepoTriggerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRepositoryRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoId: String?

    public var repoName: String?

    public var repoNamespaceName: String?

    public override init() {
        super.init()
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
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
    }
}

public class DeleteRepositoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRepositoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRepositoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetArtifactBuildRuleRequest : Tea.TeaModel {
    public var artifactType: String?

    public var buildRuleId: String?

    public var instanceId: String?

    public var scopeId: String?

    public var scopeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
        }
        if self.buildRuleId != nil {
            map["BuildRuleId"] = self.buildRuleId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.scopeId != nil {
            map["ScopeId"] = self.scopeId!
        }
        if self.scopeType != nil {
            map["ScopeType"] = self.scopeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["BuildRuleId"] as? String {
            self.buildRuleId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ScopeId"] as? String {
            self.scopeId = value
        }
        if let value = dict["ScopeType"] as? String {
            self.scopeType = value
        }
    }
}

public class GetArtifactBuildRuleResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var imageIndexOnly: Bool?

        public var priorityFile: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageIndexOnly != nil {
                map["ImageIndexOnly"] = self.imageIndexOnly!
            }
            if self.priorityFile != nil {
                map["PriorityFile"] = self.priorityFile!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageIndexOnly"] as? Bool {
                self.imageIndexOnly = value
            }
            if let value = dict["PriorityFile"] as? String {
                self.priorityFile = value
            }
        }
    }
    public var artifactType: String?

    public var buildRuleId: String?

    public var code: String?

    public var isSuccess: Bool?

    public var parameters: GetArtifactBuildRuleResponseBody.Parameters?

    public var requestId: String?

    public var scopeId: String?

    public var scopeType: String?

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
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
        }
        if self.buildRuleId != nil {
            map["BuildRuleId"] = self.buildRuleId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scopeId != nil {
            map["ScopeId"] = self.scopeId!
        }
        if self.scopeType != nil {
            map["ScopeType"] = self.scopeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["BuildRuleId"] as? String {
            self.buildRuleId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["Parameters"] as? [String: Any?] {
            var model = GetArtifactBuildRuleResponseBody.Parameters()
            model.fromMap(value)
            self.parameters = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScopeId"] as? String {
            self.scopeId = value
        }
        if let value = dict["ScopeType"] as? String {
            self.scopeType = value
        }
    }
}

public class GetArtifactBuildRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetArtifactBuildRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetArtifactBuildRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetArtifactBuildTaskRequest : Tea.TeaModel {
    public var buildTaskId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildTaskId != nil {
            map["BuildTaskId"] = self.buildTaskId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildTaskId"] as? String {
            self.buildTaskId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetArtifactBuildTaskResponseBody : Tea.TeaModel {
    public class SourceArtifact : Tea.TeaModel {
        public var artifactType: String?

        public var repoId: String?

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
            if self.artifactType != nil {
                map["ArtifactType"] = self.artifactType!
            }
            if self.repoId != nil {
                map["RepoId"] = self.repoId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArtifactType"] as? String {
                self.artifactType = value
            }
            if let value = dict["RepoId"] as? String {
                self.repoId = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public class TargetArtifact : Tea.TeaModel {
        public var artifactType: String?

        public var repoId: String?

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
            if self.artifactType != nil {
                map["ArtifactType"] = self.artifactType!
            }
            if self.repoId != nil {
                map["RepoId"] = self.repoId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArtifactType"] as? String {
                self.artifactType = value
            }
            if let value = dict["RepoId"] as? String {
                self.repoId = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var artifactBuildType: String?

    public var buildTaskId: String?

    public var code: String?

    public var endTime: Int32?

    public var instructions: [String]?

    public var isSuccess: Bool?

    public var requestId: String?

    public var sourceArtifact: GetArtifactBuildTaskResponseBody.SourceArtifact?

    public var startTime: Int32?

    public var targetArtifact: GetArtifactBuildTaskResponseBody.TargetArtifact?

    public var taskStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sourceArtifact?.validate()
        try self.targetArtifact?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactBuildType != nil {
            map["ArtifactBuildType"] = self.artifactBuildType!
        }
        if self.buildTaskId != nil {
            map["BuildTaskId"] = self.buildTaskId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instructions != nil {
            map["Instructions"] = self.instructions!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourceArtifact != nil {
            map["SourceArtifact"] = self.sourceArtifact?.toMap()
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.targetArtifact != nil {
            map["TargetArtifact"] = self.targetArtifact?.toMap()
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactBuildType"] as? String {
            self.artifactBuildType = value
        }
        if let value = dict["BuildTaskId"] as? String {
            self.buildTaskId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EndTime"] as? Int32 {
            self.endTime = value
        }
        if let value = dict["Instructions"] as? [String] {
            self.instructions = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceArtifact"] as? [String: Any?] {
            var model = GetArtifactBuildTaskResponseBody.SourceArtifact()
            model.fromMap(value)
            self.sourceArtifact = model
        }
        if let value = dict["StartTime"] as? Int32 {
            self.startTime = value
        }
        if let value = dict["TargetArtifact"] as? [String: Any?] {
            var model = GetArtifactBuildTaskResponseBody.TargetArtifact()
            model.fromMap(value)
            self.targetArtifact = model
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
    }
}

public class GetArtifactBuildTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetArtifactBuildTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetArtifactBuildTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetArtifactLifecycleRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ruleId: String?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class GetArtifactLifecycleRuleResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class Condition : Tea.TeaModel {
            public var lastPullOlderThanDays: Int32?

            public var lastPushOlderThanDays: Int32?

            public var latestTagCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lastPullOlderThanDays != nil {
                    map["LastPullOlderThanDays"] = self.lastPullOlderThanDays!
                }
                if self.lastPushOlderThanDays != nil {
                    map["LastPushOlderThanDays"] = self.lastPushOlderThanDays!
                }
                if self.latestTagCount != nil {
                    map["LatestTagCount"] = self.latestTagCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LastPullOlderThanDays"] as? Int32 {
                    self.lastPullOlderThanDays = value
                }
                if let value = dict["LastPushOlderThanDays"] as? Int32 {
                    self.lastPushOlderThanDays = value
                }
                if let value = dict["LatestTagCount"] as? Int32 {
                    self.latestTagCount = value
                }
            }
        }
        public class Filter : Tea.TeaModel {
            public var tagWildcard: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagWildcard != nil {
                    map["TagWildcard"] = self.tagWildcard!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagWildcard"] as? String {
                    self.tagWildcard = value
                }
            }
        }
        public var condition: GetArtifactLifecycleRuleResponseBody.Policies.Condition?

        public var filter: GetArtifactLifecycleRuleResponseBody.Policies.Filter?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.condition?.validate()
            try self.filter?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.condition != nil {
                map["Condition"] = self.condition?.toMap()
            }
            if self.filter != nil {
                map["Filter"] = self.filter?.toMap()
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Condition"] as? [String: Any?] {
                var model = GetArtifactLifecycleRuleResponseBody.Policies.Condition()
                model.fromMap(value)
                self.condition = model
            }
            if let value = dict["Filter"] as? [String: Any?] {
                var model = GetArtifactLifecycleRuleResponseBody.Policies.Filter()
                model.fromMap(value)
                self.filter = model
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var auto: Bool?

    public var code: String?

    public var createTime: Int64?

    public var enableDeleteTag: Bool?

    public var instanceId: String?

    public var isSuccess: Bool?

    public var modifiedTime: Int64?

    public var namespaceName: String?

    public var nextTime: Int64?

    public var policies: [GetArtifactLifecycleRuleResponseBody.Policies]?

    public var repoName: String?

    public var requestId: String?

    public var retentionTagCount: Int64?

    public var ruleId: String?

    public var scheduleTime: String?

    public var scope: String?

    public var tagRegexp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auto != nil {
            map["Auto"] = self.auto!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.enableDeleteTag != nil {
            map["EnableDeleteTag"] = self.enableDeleteTag!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.nextTime != nil {
            map["NextTime"] = self.nextTime!
        }
        if self.policies != nil {
            var tmp : [Any] = []
            for k in self.policies! {
                tmp.append(k.toMap())
            }
            map["Policies"] = tmp
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.retentionTagCount != nil {
            map["RetentionTagCount"] = self.retentionTagCount!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.scheduleTime != nil {
            map["ScheduleTime"] = self.scheduleTime!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.tagRegexp != nil {
            map["TagRegexp"] = self.tagRegexp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Auto"] as? Bool {
            self.auto = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["EnableDeleteTag"] as? Bool {
            self.enableDeleteTag = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["ModifiedTime"] as? Int64 {
            self.modifiedTime = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["NextTime"] as? Int64 {
            self.nextTime = value
        }
        if let value = dict["Policies"] as? [Any?] {
            var tmp : [GetArtifactLifecycleRuleResponseBody.Policies] = []
            for v in value {
                if v != nil {
                    var model = GetArtifactLifecycleRuleResponseBody.Policies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policies = tmp
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RetentionTagCount"] as? Int64 {
            self.retentionTagCount = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["ScheduleTime"] as? String {
            self.scheduleTime = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["TagRegexp"] as? String {
            self.tagRegexp = value
        }
    }
}

public class GetArtifactLifecycleRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetArtifactLifecycleRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetArtifactLifecycleRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetArtifactSubscriptionRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ruleId: String?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class GetArtifactSubscriptionRuleResponseBody : Tea.TeaModel {
    public var accelerate: Bool?

    public var code: String?

    public var createTime: Int64?

    public var instanceId: String?

    public var isSuccess: Bool?

    public var modifiedTime: Int64?

    public var namespaceName: String?

    public var override_: Bool?

    public var platform: [String]?

    public var repoName: String?

    public var requestId: String?

    public var ruleId: String?

    public var sourceDomain: String?

    public var sourceNamespaceName: String?

    public var sourceProvider: String?

    public var sourceRepoName: String?

    public var tagCount: Int64?

    public var tagRegexp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerate != nil {
            map["Accelerate"] = self.accelerate!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.override_ != nil {
            map["Override"] = self.override_!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.sourceDomain != nil {
            map["SourceDomain"] = self.sourceDomain!
        }
        if self.sourceNamespaceName != nil {
            map["SourceNamespaceName"] = self.sourceNamespaceName!
        }
        if self.sourceProvider != nil {
            map["SourceProvider"] = self.sourceProvider!
        }
        if self.sourceRepoName != nil {
            map["SourceRepoName"] = self.sourceRepoName!
        }
        if self.tagCount != nil {
            map["TagCount"] = self.tagCount!
        }
        if self.tagRegexp != nil {
            map["TagRegexp"] = self.tagRegexp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accelerate"] as? Bool {
            self.accelerate = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["ModifiedTime"] as? Int64 {
            self.modifiedTime = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["Override"] as? Bool {
            self.override_ = value
        }
        if let value = dict["Platform"] as? [String] {
            self.platform = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["SourceDomain"] as? String {
            self.sourceDomain = value
        }
        if let value = dict["SourceNamespaceName"] as? String {
            self.sourceNamespaceName = value
        }
        if let value = dict["SourceProvider"] as? String {
            self.sourceProvider = value
        }
        if let value = dict["SourceRepoName"] as? String {
            self.sourceRepoName = value
        }
        if let value = dict["TagCount"] as? Int64 {
            self.tagCount = value
        }
        if let value = dict["TagRegexp"] as? String {
            self.tagRegexp = value
        }
    }
}

public class GetArtifactSubscriptionRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetArtifactSubscriptionRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetArtifactSubscriptionRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetArtifactSubscriptionTaskRequest : Tea.TeaModel {
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

public class GetArtifactSubscriptionTaskResponseBody : Tea.TeaModel {
    public var artifactType: String?

    public var code: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var isSuccess: Bool?

    public var message: String?

    public var namespaceName: String?

    public var repoName: String?

    public var requestId: String?

    public var sourceNamespaceName: String?

    public var sourceProvider: String?

    public var sourceRepoName: String?

    public var sourceRepoType: String?

    public var startTime: Int64?

    public var tagSubscriptionCount: Int64?

    public var tagTotalCount: Int64?

    public var taskId: String?

    public var taskResult: String?

    public var taskStatus: String?

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
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourceNamespaceName != nil {
            map["SourceNamespaceName"] = self.sourceNamespaceName!
        }
        if self.sourceProvider != nil {
            map["SourceProvider"] = self.sourceProvider!
        }
        if self.sourceRepoName != nil {
            map["SourceRepoName"] = self.sourceRepoName!
        }
        if self.sourceRepoType != nil {
            map["SourceRepoType"] = self.sourceRepoType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tagSubscriptionCount != nil {
            map["TagSubscriptionCount"] = self.tagSubscriptionCount!
        }
        if self.tagTotalCount != nil {
            map["TagTotalCount"] = self.tagTotalCount!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskResult != nil {
            map["TaskResult"] = self.taskResult!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceNamespaceName"] as? String {
            self.sourceNamespaceName = value
        }
        if let value = dict["SourceProvider"] as? String {
            self.sourceProvider = value
        }
        if let value = dict["SourceRepoName"] as? String {
            self.sourceRepoName = value
        }
        if let value = dict["SourceRepoType"] as? String {
            self.sourceRepoType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["TagSubscriptionCount"] as? Int64 {
            self.tagSubscriptionCount = value
        }
        if let value = dict["TagTotalCount"] as? Int64 {
            self.tagTotalCount = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskResult"] as? String {
            self.taskResult = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class GetArtifactSubscriptionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetArtifactSubscriptionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetArtifactSubscriptionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetArtifactSubscriptionTaskResultRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetArtifactSubscriptionTaskResultResponseBody : Tea.TeaModel {
    public class TaskResults : Tea.TeaModel {
        public var endTime: Int64?

        public var instanceId: String?

        public var namespaceName: String?

        public var repoName: String?

        public var result: String?

        public var startTime: Int64?

        public var status: String?

        public var tag: String?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.namespaceName != nil {
                map["NamespaceName"] = self.namespaceName!
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["NamespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["RepoName"] as? String {
                self.repoName = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var taskResults: [GetArtifactSubscriptionTaskResultResponseBody.TaskResults]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskResults != nil {
            var tmp : [Any] = []
            for k in self.taskResults! {
                tmp.append(k.toMap())
            }
            map["TaskResults"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskResults"] as? [Any?] {
            var tmp : [GetArtifactSubscriptionTaskResultResponseBody.TaskResults] = []
            for v in value {
                if v != nil {
                    var model = GetArtifactSubscriptionTaskResultResponseBody.TaskResults()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskResults = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class GetArtifactSubscriptionTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetArtifactSubscriptionTaskResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetArtifactSubscriptionTaskResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAuthorizationTokenRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetAuthorizationTokenResponseBody : Tea.TeaModel {
    public var authorizationToken: String?

    public var code: String?

    public var expireTime: Int64?

    public var isSuccess: Bool?

    public var requestId: String?

    public var tempUsername: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationToken != nil {
            map["AuthorizationToken"] = self.authorizationToken!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tempUsername != nil {
            map["TempUsername"] = self.tempUsername!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthorizationToken"] as? String {
            self.authorizationToken = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["ExpireTime"] as? Int64 {
            self.expireTime = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TempUsername"] as? String {
            self.tempUsername = value
        }
    }
}

public class GetAuthorizationTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAuthorizationTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAuthorizationTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChainRequest : Tea.TeaModel {
    public var chainId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chainId != nil {
            map["ChainId"] = self.chainId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChainId"] as? String {
            self.chainId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetChainResponseBody : Tea.TeaModel {
    public class ChainConfig : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public class NodeConfig : Tea.TeaModel {
                public class DenyPolicy : Tea.TeaModel {
                    public var action: String?

                    public var baselineList: String?

                    public var issueCount: String?

                    public var issueLevel: String?

                    public var issueList: String?

                    public var logic: String?

                    public var maliciousList: String?

                    public override init() {
                        super.init()
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
                            map["Action"] = self.action!
                        }
                        if self.baselineList != nil {
                            map["BaselineList"] = self.baselineList!
                        }
                        if self.issueCount != nil {
                            map["IssueCount"] = self.issueCount!
                        }
                        if self.issueLevel != nil {
                            map["IssueLevel"] = self.issueLevel!
                        }
                        if self.issueList != nil {
                            map["IssueList"] = self.issueList!
                        }
                        if self.logic != nil {
                            map["Logic"] = self.logic!
                        }
                        if self.maliciousList != nil {
                            map["MaliciousList"] = self.maliciousList!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Action"] as? String {
                            self.action = value
                        }
                        if let value = dict["BaselineList"] as? String {
                            self.baselineList = value
                        }
                        if let value = dict["IssueCount"] as? String {
                            self.issueCount = value
                        }
                        if let value = dict["IssueLevel"] as? String {
                            self.issueLevel = value
                        }
                        if let value = dict["IssueList"] as? String {
                            self.issueList = value
                        }
                        if let value = dict["Logic"] as? String {
                            self.logic = value
                        }
                        if let value = dict["MaliciousList"] as? String {
                            self.maliciousList = value
                        }
                    }
                }
                public var denyPolicy: GetChainResponseBody.ChainConfig.Nodes.NodeConfig.DenyPolicy?

                public var retry: Int32?

                public var scanEngine: String?

                public var timeout: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.denyPolicy?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.denyPolicy != nil {
                        map["DenyPolicy"] = self.denyPolicy?.toMap()
                    }
                    if self.retry != nil {
                        map["Retry"] = self.retry!
                    }
                    if self.scanEngine != nil {
                        map["ScanEngine"] = self.scanEngine!
                    }
                    if self.timeout != nil {
                        map["Timeout"] = self.timeout!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DenyPolicy"] as? [String: Any?] {
                        var model = GetChainResponseBody.ChainConfig.Nodes.NodeConfig.DenyPolicy()
                        model.fromMap(value)
                        self.denyPolicy = model
                    }
                    if let value = dict["Retry"] as? Int32 {
                        self.retry = value
                    }
                    if let value = dict["ScanEngine"] as? String {
                        self.scanEngine = value
                    }
                    if let value = dict["Timeout"] as? Int64 {
                        self.timeout = value
                    }
                }
            }
            public var enable: Bool?

            public var nodeConfig: GetChainResponseBody.ChainConfig.Nodes.NodeConfig?

            public var nodeName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.nodeConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["Enable"] = self.enable!
                }
                if self.nodeConfig != nil {
                    map["NodeConfig"] = self.nodeConfig?.toMap()
                }
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["NodeConfig"] as? [String: Any?] {
                    var model = GetChainResponseBody.ChainConfig.Nodes.NodeConfig()
                    model.fromMap(value)
                    self.nodeConfig = model
                }
                if let value = dict["NodeName"] as? String {
                    self.nodeName = value
                }
            }
        }
        public class Routers : Tea.TeaModel {
            public class From : Tea.TeaModel {
                public var nodeName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nodeName != nil {
                        map["NodeName"] = self.nodeName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["NodeName"] as? String {
                        self.nodeName = value
                    }
                }
            }
            public class To : Tea.TeaModel {
                public var nodeName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nodeName != nil {
                        map["NodeName"] = self.nodeName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["NodeName"] as? String {
                        self.nodeName = value
                    }
                }
            }
            public var from: GetChainResponseBody.ChainConfig.Routers.From?

            public var to: GetChainResponseBody.ChainConfig.Routers.To?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.from?.validate()
                try self.to?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.from != nil {
                    map["From"] = self.from?.toMap()
                }
                if self.to != nil {
                    map["To"] = self.to?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["From"] as? [String: Any?] {
                    var model = GetChainResponseBody.ChainConfig.Routers.From()
                    model.fromMap(value)
                    self.from = model
                }
                if let value = dict["To"] as? [String: Any?] {
                    var model = GetChainResponseBody.ChainConfig.Routers.To()
                    model.fromMap(value)
                    self.to = model
                }
            }
        }
        public var chainConfigId: String?

        public var isActive: Bool?

        public var nodes: [GetChainResponseBody.ChainConfig.Nodes]?

        public var routers: [GetChainResponseBody.ChainConfig.Routers]?

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
            if self.chainConfigId != nil {
                map["ChainConfigId"] = self.chainConfigId!
            }
            if self.isActive != nil {
                map["IsActive"] = self.isActive!
            }
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.routers != nil {
                var tmp : [Any] = []
                for k in self.routers! {
                    tmp.append(k.toMap())
                }
                map["Routers"] = tmp
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChainConfigId"] as? String {
                self.chainConfigId = value
            }
            if let value = dict["IsActive"] as? Bool {
                self.isActive = value
            }
            if let value = dict["Nodes"] as? [Any?] {
                var tmp : [GetChainResponseBody.ChainConfig.Nodes] = []
                for v in value {
                    if v != nil {
                        var model = GetChainResponseBody.ChainConfig.Nodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodes = tmp
            }
            if let value = dict["Routers"] as? [Any?] {
                var tmp : [GetChainResponseBody.ChainConfig.Routers] = []
                for v in value {
                    if v != nil {
                        var model = GetChainResponseBody.ChainConfig.Routers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.routers = tmp
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var chainConfig: GetChainResponseBody.ChainConfig?

    public var chainId: String?

    public var code: String?

    public var createTime: Int64?

    public var description_: String?

    public var instanceId: String?

    public var isSuccess: Bool?

    public var modifiedTime: Int64?

    public var name: String?

    public var requestId: String?

    public var scopeExclude: [String]?

    public var scopeId: String?

    public var scopeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.chainConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chainConfig != nil {
            map["ChainConfig"] = self.chainConfig?.toMap()
        }
        if self.chainId != nil {
            map["ChainId"] = self.chainId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scopeExclude != nil {
            map["ScopeExclude"] = self.scopeExclude!
        }
        if self.scopeId != nil {
            map["ScopeId"] = self.scopeId!
        }
        if self.scopeType != nil {
            map["ScopeType"] = self.scopeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChainConfig"] as? [String: Any?] {
            var model = GetChainResponseBody.ChainConfig()
            model.fromMap(value)
            self.chainConfig = model
        }
        if let value = dict["ChainId"] as? String {
            self.chainId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["ModifiedTime"] as? Int64 {
            self.modifiedTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScopeExclude"] as? [String] {
            self.scopeExclude = value
        }
        if let value = dict["ScopeId"] as? String {
            self.scopeId = value
        }
        if let value = dict["ScopeType"] as? String {
            self.scopeType = value
        }
    }
}

public class GetChainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetChainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChartNamespaceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var namespaceName: String?

    public override init() {
        super.init()
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
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
    }
}

public class GetChartNamespaceResponseBody : Tea.TeaModel {
    public var autoCreateRepo: Bool?

    public var code: String?

    public var defaultRepoType: String?

    public var instanceId: String?

    public var isSuccess: Bool?

    public var namespaceId: String?

    public var namespaceName: String?

    public var namespaceStatus: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCreateRepo != nil {
            map["AutoCreateRepo"] = self.autoCreateRepo!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.defaultRepoType != nil {
            map["DefaultRepoType"] = self.defaultRepoType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.namespaceStatus != nil {
            map["NamespaceStatus"] = self.namespaceStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoCreateRepo"] as? Bool {
            self.autoCreateRepo = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DefaultRepoType"] as? String {
            self.defaultRepoType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["NamespaceStatus"] as? String {
            self.namespaceStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class GetChartNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChartNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetChartNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChartRepositoryRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoName: String?

    public var repoNamespaceName: String?

    public override init() {
        super.init()
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
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
    }
}

public class GetChartRepositoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var createTime: Int64?

    public var instanceId: String?

    public var isSuccess: Bool?

    public var modifiedTime: Int64?

    public var repoId: String?

    public var repoName: String?

    public var repoNamespaceName: String?

    public var repoStatus: String?

    public var repoType: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var summary: String?

    public override init() {
        super.init()
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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        if self.repoStatus != nil {
            map["RepoStatus"] = self.repoStatus!
        }
        if self.repoType != nil {
            map["RepoType"] = self.repoType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["ModifiedTime"] as? Int64 {
            self.modifiedTime = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
        if let value = dict["RepoStatus"] as? String {
            self.repoStatus = value
        }
        if let value = dict["RepoType"] as? String {
            self.repoType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Summary"] as? String {
            self.summary = value
        }
    }
}

public class GetChartRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChartRepositoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetChartRepositoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetInstanceResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var tagKey: String?

        public var tagValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var code: String?

    public var createTime: Int64?

    public var instanceId: String?

    public var instanceIssue: String?

    public var instanceName: String?

    public var instanceSpecification: String?

    public var instanceStatus: String?

    public var isSuccess: Bool?

    public var modifiedTime: Int64?

    public var requestId: String?

    public var resourceGroupId: String?

    public var tags: [GetInstanceResponseBody.Tags]?

    public override init() {
        super.init()
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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceIssue != nil {
            map["InstanceIssue"] = self.instanceIssue!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instanceSpecification != nil {
            map["InstanceSpecification"] = self.instanceSpecification!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceIssue"] as? String {
            self.instanceIssue = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceSpecification"] as? String {
            self.instanceSpecification = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["ModifiedTime"] as? Int64 {
            self.modifiedTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetInstanceResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceResponseBody.Tags()
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

public class GetInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceCountResponseBody : Tea.TeaModel {
    public var code: String?

    public var count: Int32?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetInstanceCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceEndpointRequest : Tea.TeaModel {
    public var endpointType: String?

    public var instanceId: String?

    public var moduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ModuleName"] as? String {
            self.moduleName = value
        }
    }
}

public class GetInstanceEndpointResponseBody : Tea.TeaModel {
    public class AclEntries : Tea.TeaModel {
        public var comment: String?

        public var entry: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.entry != nil {
                map["Entry"] = self.entry!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["Entry"] as? String {
                self.entry = value
            }
        }
    }
    public class Domains : Tea.TeaModel {
        public var domain: String?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var aclEnable: Bool?

    public var aclEntries: [GetInstanceEndpointResponseBody.AclEntries]?

    public var code: String?

    public var domains: [GetInstanceEndpointResponseBody.Domains]?

    public var enable: Bool?

    public var isSuccess: Bool?

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
        if self.aclEnable != nil {
            map["AclEnable"] = self.aclEnable!
        }
        if self.aclEntries != nil {
            var tmp : [Any] = []
            for k in self.aclEntries! {
                tmp.append(k.toMap())
            }
            map["AclEntries"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.domains != nil {
            var tmp : [Any] = []
            for k in self.domains! {
                tmp.append(k.toMap())
            }
            map["Domains"] = tmp
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
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
        if let value = dict["AclEnable"] as? Bool {
            self.aclEnable = value
        }
        if let value = dict["AclEntries"] as? [Any?] {
            var tmp : [GetInstanceEndpointResponseBody.AclEntries] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceEndpointResponseBody.AclEntries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.aclEntries = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Domains"] as? [Any?] {
            var tmp : [GetInstanceEndpointResponseBody.Domains] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceEndpointResponseBody.Domains()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domains = tmp
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetInstanceEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceUsageRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetInstanceUsageResponseBody : Tea.TeaModel {
    public var chartNamespaceQuota: String?

    public var chartNamespaceUsage: String?

    public var chartRepoQuota: String?

    public var chartRepoUsage: String?

    public var code: String?

    public var isSuccess: Bool?

    public var namespaceQuota: String?

    public var namespaceUsage: String?

    public var repoQuota: String?

    public var repoUsage: String?

    public var requestId: String?

    public var vpcQuota: String?

    public var vpcUsage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chartNamespaceQuota != nil {
            map["ChartNamespaceQuota"] = self.chartNamespaceQuota!
        }
        if self.chartNamespaceUsage != nil {
            map["ChartNamespaceUsage"] = self.chartNamespaceUsage!
        }
        if self.chartRepoQuota != nil {
            map["ChartRepoQuota"] = self.chartRepoQuota!
        }
        if self.chartRepoUsage != nil {
            map["ChartRepoUsage"] = self.chartRepoUsage!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.namespaceQuota != nil {
            map["NamespaceQuota"] = self.namespaceQuota!
        }
        if self.namespaceUsage != nil {
            map["NamespaceUsage"] = self.namespaceUsage!
        }
        if self.repoQuota != nil {
            map["RepoQuota"] = self.repoQuota!
        }
        if self.repoUsage != nil {
            map["RepoUsage"] = self.repoUsage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.vpcQuota != nil {
            map["VpcQuota"] = self.vpcQuota!
        }
        if self.vpcUsage != nil {
            map["VpcUsage"] = self.vpcUsage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChartNamespaceQuota"] as? String {
            self.chartNamespaceQuota = value
        }
        if let value = dict["ChartNamespaceUsage"] as? String {
            self.chartNamespaceUsage = value
        }
        if let value = dict["ChartRepoQuota"] as? String {
            self.chartRepoQuota = value
        }
        if let value = dict["ChartRepoUsage"] as? String {
            self.chartRepoUsage = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["NamespaceQuota"] as? String {
            self.namespaceQuota = value
        }
        if let value = dict["NamespaceUsage"] as? String {
            self.namespaceUsage = value
        }
        if let value = dict["RepoQuota"] as? String {
            self.repoQuota = value
        }
        if let value = dict["RepoUsage"] as? String {
            self.repoUsage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VpcQuota"] as? String {
            self.vpcQuota = value
        }
        if let value = dict["VpcUsage"] as? String {
            self.vpcUsage = value
        }
    }
}

public class GetInstanceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceUsageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceVpcEndpointRequest : Tea.TeaModel {
    public var instanceId: String?

    public var moduleName: String?

    public override init() {
        super.init()
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
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ModuleName"] as? String {
            self.moduleName = value
        }
    }
}

public class GetInstanceVpcEndpointResponseBody : Tea.TeaModel {
    public class LinkedVpcs : Tea.TeaModel {
        public var defaultAccess: Bool?

        public var ip: String?

        public var issue: String?

        public var status: String?

        public var vpcId: String?

        public var vswitchId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultAccess != nil {
                map["DefaultAccess"] = self.defaultAccess!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.issue != nil {
                map["Issue"] = self.issue!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vswitchId != nil {
                map["VswitchId"] = self.vswitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultAccess"] as? Bool {
                self.defaultAccess = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["Issue"] as? String {
                self.issue = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VswitchId"] as? String {
                self.vswitchId = value
            }
        }
    }
    public var code: String?

    public var domains: [String]?

    public var enable: Bool?

    public var isSuccess: Bool?

    public var linkedVpcs: [GetInstanceVpcEndpointResponseBody.LinkedVpcs]?

    public var moduleName: String?

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
            map["Code"] = self.code!
        }
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.linkedVpcs != nil {
            var tmp : [Any] = []
            for k in self.linkedVpcs! {
                tmp.append(k.toMap())
            }
            map["LinkedVpcs"] = tmp
        }
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Domains"] as? [String] {
            self.domains = value
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["LinkedVpcs"] as? [Any?] {
            var tmp : [GetInstanceVpcEndpointResponseBody.LinkedVpcs] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceVpcEndpointResponseBody.LinkedVpcs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.linkedVpcs = tmp
        }
        if let value = dict["ModuleName"] as? String {
            self.moduleName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetInstanceVpcEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceVpcEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceVpcEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNamespaceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var namespaceId: String?

    public var namespaceName: String?

    public override init() {
        super.init()
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
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
    }
}

public class GetNamespaceResponseBody : Tea.TeaModel {
    public var autoCreateRepo: Bool?

    public var code: String?

    public var defaultRepoConfiguration: RepoConfiguration?

    public var defaultRepoType: String?

    public var instanceId: String?

    public var isSuccess: Bool?

    public var namespaceId: String?

    public var namespaceName: String?

    public var namespaceStatus: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.defaultRepoConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCreateRepo != nil {
            map["AutoCreateRepo"] = self.autoCreateRepo!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.defaultRepoConfiguration != nil {
            map["DefaultRepoConfiguration"] = self.defaultRepoConfiguration?.toMap()
        }
        if self.defaultRepoType != nil {
            map["DefaultRepoType"] = self.defaultRepoType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.namespaceId != nil {
            map["NamespaceId"] = self.namespaceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.namespaceStatus != nil {
            map["NamespaceStatus"] = self.namespaceStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoCreateRepo"] as? Bool {
            self.autoCreateRepo = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DefaultRepoConfiguration"] as? [String: Any?] {
            var model = RepoConfiguration()
            model.fromMap(value)
            self.defaultRepoConfiguration = model
        }
        if let value = dict["DefaultRepoType"] as? String {
            self.defaultRepoType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["NamespaceId"] as? String {
            self.namespaceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["NamespaceStatus"] as? String {
            self.namespaceStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

public class GetRepoBuildRecordRequest : Tea.TeaModel {
    public var buildRecordId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildRecordId != nil {
            map["BuildRecordId"] = self.buildRecordId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildRecordId"] as? String {
            self.buildRecordId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetRepoBuildRecordResponseBody : Tea.TeaModel {
    public class Image : Tea.TeaModel {
        public var imageTag: String?

        public var repoName: String?

        public var repoNamespaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageTag != nil {
                map["ImageTag"] = self.imageTag!
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.repoNamespaceName != nil {
                map["RepoNamespaceName"] = self.repoNamespaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageTag"] as? String {
                self.imageTag = value
            }
            if let value = dict["RepoName"] as? String {
                self.repoName = value
            }
            if let value = dict["RepoNamespaceName"] as? String {
                self.repoNamespaceName = value
            }
        }
    }
    public var buildRecordId: String?

    public var code: String?

    public var endTime: Int64?

    public var image: GetRepoBuildRecordResponseBody.Image?

    public var isSuccess: Bool?

    public var requestId: String?

    public var startTime: Int64?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.image?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildRecordId != nil {
            map["BuildRecordId"] = self.buildRecordId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.image != nil {
            map["Image"] = self.image?.toMap()
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildRecordId"] as? String {
            self.buildRecordId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Image"] as? [String: Any?] {
            var model = GetRepoBuildRecordResponseBody.Image()
            model.fromMap(value)
            self.image = model
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetRepoBuildRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepoBuildRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRepoBuildRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRepoBuildRecordStatusRequest : Tea.TeaModel {
    public var buildRecordId: String?

    public var instanceId: String?

    public var repoId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildRecordId != nil {
            map["BuildRecordId"] = self.buildRecordId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildRecordId"] as? String {
            self.buildRecordId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class GetRepoBuildRecordStatusResponseBody : Tea.TeaModel {
    public var buildStatus: String?

    public var code: String?

    public var isSuccess: Bool?

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
        if self.buildStatus != nil {
            map["BuildStatus"] = self.buildStatus!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildStatus"] as? String {
            self.buildStatus = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRepoBuildRecordStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepoBuildRecordStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRepoBuildRecordStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRepoSourceCodeRepoRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoId: String?

    public override init() {
        super.init()
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
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class GetRepoSourceCodeRepoResponseBody : Tea.TeaModel {
    public var autoBuild: String?

    public var code: String?

    public var codeRepoDomain: String?

    public var codeRepoName: String?

    public var codeRepoNamespaceName: String?

    public var codeRepoType: String?

    public var disableCacheBuild: String?

    public var isSuccess: Bool?

    public var overseaBuild: String?

    public var repoId: String?

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
        if self.autoBuild != nil {
            map["AutoBuild"] = self.autoBuild!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.codeRepoDomain != nil {
            map["CodeRepoDomain"] = self.codeRepoDomain!
        }
        if self.codeRepoName != nil {
            map["CodeRepoName"] = self.codeRepoName!
        }
        if self.codeRepoNamespaceName != nil {
            map["CodeRepoNamespaceName"] = self.codeRepoNamespaceName!
        }
        if self.codeRepoType != nil {
            map["CodeRepoType"] = self.codeRepoType!
        }
        if self.disableCacheBuild != nil {
            map["DisableCacheBuild"] = self.disableCacheBuild!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.overseaBuild != nil {
            map["OverseaBuild"] = self.overseaBuild!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoBuild"] as? String {
            self.autoBuild = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CodeRepoDomain"] as? String {
            self.codeRepoDomain = value
        }
        if let value = dict["CodeRepoName"] as? String {
            self.codeRepoName = value
        }
        if let value = dict["CodeRepoNamespaceName"] as? String {
            self.codeRepoNamespaceName = value
        }
        if let value = dict["CodeRepoType"] as? String {
            self.codeRepoType = value
        }
        if let value = dict["DisableCacheBuild"] as? String {
            self.disableCacheBuild = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["OverseaBuild"] as? String {
            self.overseaBuild = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRepoSourceCodeRepoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepoSourceCodeRepoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRepoSourceCodeRepoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRepoSyncTaskRequest : Tea.TeaModel {
    public var instanceId: String?

    public var syncTaskId: String?

    public override init() {
        super.init()
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
        if self.syncTaskId != nil {
            map["SyncTaskId"] = self.syncTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SyncTaskId"] as? String {
            self.syncTaskId = value
        }
    }
}

public class GetRepoSyncTaskResponseBody : Tea.TeaModel {
    public class ImageFrom : Tea.TeaModel {
        public var imageTag: String?

        public var instanceId: String?

        public var regionId: String?

        public var repoName: String?

        public var repoNamespaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageTag != nil {
                map["ImageTag"] = self.imageTag!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.repoNamespaceName != nil {
                map["RepoNamespaceName"] = self.repoNamespaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageTag"] as? String {
                self.imageTag = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RepoName"] as? String {
                self.repoName = value
            }
            if let value = dict["RepoNamespaceName"] as? String {
                self.repoNamespaceName = value
            }
        }
    }
    public class ImageTo : Tea.TeaModel {
        public var imageTag: String?

        public var instanceId: String?

        public var regionId: String?

        public var repoName: String?

        public var repoNamespaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageTag != nil {
                map["ImageTag"] = self.imageTag!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.repoNamespaceName != nil {
                map["RepoNamespaceName"] = self.repoNamespaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageTag"] as? String {
                self.imageTag = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RepoName"] as? String {
                self.repoName = value
            }
            if let value = dict["RepoNamespaceName"] as? String {
                self.repoNamespaceName = value
            }
        }
    }
    public class LayerTasks : Tea.TeaModel {
        public var artifactDigest: String?

        public var digest: String?

        public var size: Int64?

        public var syncLayerTaskId: String?

        public var syncedSize: Int64?

        public var taskStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.artifactDigest != nil {
                map["ArtifactDigest"] = self.artifactDigest!
            }
            if self.digest != nil {
                map["Digest"] = self.digest!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.syncLayerTaskId != nil {
                map["SyncLayerTaskId"] = self.syncLayerTaskId!
            }
            if self.syncedSize != nil {
                map["SyncedSize"] = self.syncedSize!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArtifactDigest"] as? String {
                self.artifactDigest = value
            }
            if let value = dict["Digest"] as? String {
                self.digest = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
            if let value = dict["SyncLayerTaskId"] as? String {
                self.syncLayerTaskId = value
            }
            if let value = dict["SyncedSize"] as? Int64 {
                self.syncedSize = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public var code: String?

    public var crossUser: Bool?

    public var imageFrom: GetRepoSyncTaskResponseBody.ImageFrom?

    public var imageTo: GetRepoSyncTaskResponseBody.ImageTo?

    public var isSuccess: Bool?

    public var layerTasks: [GetRepoSyncTaskResponseBody.LayerTasks]?

    public var progress: Int64?

    public var requestId: String?

    public var syncBatchTaskId: String?

    public var syncRuleId: String?

    public var syncTaskId: String?

    public var syncTransAccelerate: Bool?

    public var syncedSize: Int64?

    public var taskIssue: String?

    public var taskStatus: String?

    public var taskTrigger: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.imageFrom?.validate()
        try self.imageTo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.crossUser != nil {
            map["CrossUser"] = self.crossUser!
        }
        if self.imageFrom != nil {
            map["ImageFrom"] = self.imageFrom?.toMap()
        }
        if self.imageTo != nil {
            map["ImageTo"] = self.imageTo?.toMap()
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.layerTasks != nil {
            var tmp : [Any] = []
            for k in self.layerTasks! {
                tmp.append(k.toMap())
            }
            map["LayerTasks"] = tmp
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.syncBatchTaskId != nil {
            map["SyncBatchTaskId"] = self.syncBatchTaskId!
        }
        if self.syncRuleId != nil {
            map["SyncRuleId"] = self.syncRuleId!
        }
        if self.syncTaskId != nil {
            map["SyncTaskId"] = self.syncTaskId!
        }
        if self.syncTransAccelerate != nil {
            map["SyncTransAccelerate"] = self.syncTransAccelerate!
        }
        if self.syncedSize != nil {
            map["SyncedSize"] = self.syncedSize!
        }
        if self.taskIssue != nil {
            map["TaskIssue"] = self.taskIssue!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.taskTrigger != nil {
            map["TaskTrigger"] = self.taskTrigger!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CrossUser"] as? Bool {
            self.crossUser = value
        }
        if let value = dict["ImageFrom"] as? [String: Any?] {
            var model = GetRepoSyncTaskResponseBody.ImageFrom()
            model.fromMap(value)
            self.imageFrom = model
        }
        if let value = dict["ImageTo"] as? [String: Any?] {
            var model = GetRepoSyncTaskResponseBody.ImageTo()
            model.fromMap(value)
            self.imageTo = model
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["LayerTasks"] as? [Any?] {
            var tmp : [GetRepoSyncTaskResponseBody.LayerTasks] = []
            for v in value {
                if v != nil {
                    var model = GetRepoSyncTaskResponseBody.LayerTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.layerTasks = tmp
        }
        if let value = dict["Progress"] as? Int64 {
            self.progress = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SyncBatchTaskId"] as? String {
            self.syncBatchTaskId = value
        }
        if let value = dict["SyncRuleId"] as? String {
            self.syncRuleId = value
        }
        if let value = dict["SyncTaskId"] as? String {
            self.syncTaskId = value
        }
        if let value = dict["SyncTransAccelerate"] as? Bool {
            self.syncTransAccelerate = value
        }
        if let value = dict["SyncedSize"] as? Int64 {
            self.syncedSize = value
        }
        if let value = dict["TaskIssue"] as? String {
            self.taskIssue = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["TaskTrigger"] as? String {
            self.taskTrigger = value
        }
    }
}

public class GetRepoSyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepoSyncTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRepoSyncTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRepoTagRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
    }
}

public class GetRepoTagResponseBody : Tea.TeaModel {
    public var code: String?

    public var digest: String?

    public var imageCreate: Int64?

    public var imageId: String?

    public var imageSize: Int64?

    public var imageUpdate: Int64?

    public var isSuccess: Bool?

    public var requestId: String?

    public var status: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.digest != nil {
            map["Digest"] = self.digest!
        }
        if self.imageCreate != nil {
            map["ImageCreate"] = self.imageCreate!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageSize != nil {
            map["ImageSize"] = self.imageSize!
        }
        if self.imageUpdate != nil {
            map["ImageUpdate"] = self.imageUpdate!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Digest"] as? String {
            self.digest = value
        }
        if let value = dict["ImageCreate"] as? Int64 {
            self.imageCreate = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ImageSize"] as? Int64 {
            self.imageSize = value
        }
        if let value = dict["ImageUpdate"] as? Int64 {
            self.imageUpdate = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
    }
}

public class GetRepoTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepoTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRepoTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRepoTagScanStatusRequest : Tea.TeaModel {
    public var digest: String?

    public var instanceId: String?

    public var repoId: String?

    public var scanTaskId: String?

    public var scanType: String?

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
        if self.digest != nil {
            map["Digest"] = self.digest!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.scanTaskId != nil {
            map["ScanTaskId"] = self.scanTaskId!
        }
        if self.scanType != nil {
            map["ScanType"] = self.scanType!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Digest"] as? String {
            self.digest = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["ScanTaskId"] as? String {
            self.scanTaskId = value
        }
        if let value = dict["ScanType"] as? String {
            self.scanType = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
    }
}

public class GetRepoTagScanStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

    public var requestId: String?

    public var scanService: String?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scanService != nil {
            map["ScanService"] = self.scanService!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScanService"] as? String {
            self.scanService = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetRepoTagScanStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepoTagScanStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRepoTagScanStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRepoTagScanSummaryRequest : Tea.TeaModel {
    public var digest: String?

    public var instanceId: String?

    public var repoId: String?

    public var scanTaskId: String?

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
        if self.digest != nil {
            map["Digest"] = self.digest!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.scanTaskId != nil {
            map["ScanTaskId"] = self.scanTaskId!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Digest"] as? String {
            self.digest = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["ScanTaskId"] as? String {
            self.scanTaskId = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
    }
}

public class GetRepoTagScanSummaryResponseBody : Tea.TeaModel {
    public var code: String?

    public var highSeverity: Int32?

    public var isSuccess: Bool?

    public var lowSeverity: Int32?

    public var mediumSeverity: Int32?

    public var requestId: String?

    public var totalSeverity: Int32?

    public var unknownSeverity: Int32?

    public override init() {
        super.init()
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
        if self.highSeverity != nil {
            map["HighSeverity"] = self.highSeverity!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.lowSeverity != nil {
            map["LowSeverity"] = self.lowSeverity!
        }
        if self.mediumSeverity != nil {
            map["MediumSeverity"] = self.mediumSeverity!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalSeverity != nil {
            map["TotalSeverity"] = self.totalSeverity!
        }
        if self.unknownSeverity != nil {
            map["UnknownSeverity"] = self.unknownSeverity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HighSeverity"] as? Int32 {
            self.highSeverity = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["LowSeverity"] as? Int32 {
            self.lowSeverity = value
        }
        if let value = dict["MediumSeverity"] as? Int32 {
            self.mediumSeverity = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalSeverity"] as? Int32 {
            self.totalSeverity = value
        }
        if let value = dict["UnknownSeverity"] as? Int32 {
            self.unknownSeverity = value
        }
    }
}

public class GetRepoTagScanSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepoTagScanSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRepoTagScanSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRepositoryRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoId: String?

    public var repoName: String?

    public var repoNamespaceName: String?

    public override init() {
        super.init()
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
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
    }
}

public class GetRepositoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var createTime: Int64?

    public var detail: String?

    public var instanceId: String?

    public var isSuccess: Bool?

    public var modifiedTime: Int64?

    public var repoBuildType: String?

    public var repoId: String?

    public var repoName: String?

    public var repoNamespaceName: String?

    public var repoStatus: String?

    public var repoType: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var summary: String?

    public var tagImmutability: Bool?

    public override init() {
        super.init()
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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.repoBuildType != nil {
            map["RepoBuildType"] = self.repoBuildType!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        if self.repoStatus != nil {
            map["RepoStatus"] = self.repoStatus!
        }
        if self.repoType != nil {
            map["RepoType"] = self.repoType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        if self.tagImmutability != nil {
            map["TagImmutability"] = self.tagImmutability!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["Detail"] as? String {
            self.detail = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["ModifiedTime"] as? Int64 {
            self.modifiedTime = value
        }
        if let value = dict["RepoBuildType"] as? String {
            self.repoBuildType = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
        if let value = dict["RepoStatus"] as? String {
            self.repoStatus = value
        }
        if let value = dict["RepoType"] as? String {
            self.repoType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Summary"] as? String {
            self.summary = value
        }
        if let value = dict["TagImmutability"] as? Bool {
            self.tagImmutability = value
        }
    }
}

public class GetRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepositoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRepositoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListArtifactBuildTaskLogRequest : Tea.TeaModel {
    public var buildTaskId: String?

    public var instanceId: String?

    public var page: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildTaskId != nil {
            map["BuildTaskId"] = self.buildTaskId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildTaskId"] as? String {
            self.buildTaskId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListArtifactBuildTaskLogResponseBody : Tea.TeaModel {
    public class BuildTaskLogs : Tea.TeaModel {
        public var lineNumber: Int32?

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
            if self.lineNumber != nil {
                map["LineNumber"] = self.lineNumber!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LineNumber"] as? Int32 {
                self.lineNumber = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
        }
    }
    public var buildTaskLogs: [ListArtifactBuildTaskLogResponseBody.BuildTaskLogs]?

    public var code: String?

    public var isSuccess: Bool?

    public var requestId: String?

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
        if self.buildTaskLogs != nil {
            var tmp : [Any] = []
            for k in self.buildTaskLogs! {
                tmp.append(k.toMap())
            }
            map["BuildTaskLogs"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
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
        if let value = dict["BuildTaskLogs"] as? [Any?] {
            var tmp : [ListArtifactBuildTaskLogResponseBody.BuildTaskLogs] = []
            for v in value {
                if v != nil {
                    var model = ListArtifactBuildTaskLogResponseBody.BuildTaskLogs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.buildTaskLogs = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListArtifactBuildTaskLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListArtifactBuildTaskLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListArtifactBuildTaskLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListArtifactLifecycleRuleRequest : Tea.TeaModel {
    public var enableDeleteTag: Bool?

    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableDeleteTag != nil {
            map["EnableDeleteTag"] = self.enableDeleteTag!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableDeleteTag"] as? Bool {
            self.enableDeleteTag = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListArtifactLifecycleRuleResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class Policies : Tea.TeaModel {
            public class Condition : Tea.TeaModel {
                public var lastPullOlderThanDays: Int32?

                public var lastPushOlderThanDays: Int32?

                public var latestTagCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.lastPullOlderThanDays != nil {
                        map["LastPullOlderThanDays"] = self.lastPullOlderThanDays!
                    }
                    if self.lastPushOlderThanDays != nil {
                        map["LastPushOlderThanDays"] = self.lastPushOlderThanDays!
                    }
                    if self.latestTagCount != nil {
                        map["LatestTagCount"] = self.latestTagCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["LastPullOlderThanDays"] as? Int32 {
                        self.lastPullOlderThanDays = value
                    }
                    if let value = dict["LastPushOlderThanDays"] as? Int32 {
                        self.lastPushOlderThanDays = value
                    }
                    if let value = dict["LatestTagCount"] as? Int32 {
                        self.latestTagCount = value
                    }
                }
            }
            public class Filter : Tea.TeaModel {
                public var tagWildcard: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagWildcard != nil {
                        map["TagWildcard"] = self.tagWildcard!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["TagWildcard"] as? String {
                        self.tagWildcard = value
                    }
                }
            }
            public var condition: ListArtifactLifecycleRuleResponseBody.Rules.Policies.Condition?

            public var filter: ListArtifactLifecycleRuleResponseBody.Rules.Policies.Filter?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.condition?.validate()
                try self.filter?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.condition != nil {
                    map["Condition"] = self.condition?.toMap()
                }
                if self.filter != nil {
                    map["Filter"] = self.filter?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Condition"] as? [String: Any?] {
                    var model = ListArtifactLifecycleRuleResponseBody.Rules.Policies.Condition()
                    model.fromMap(value)
                    self.condition = model
                }
                if let value = dict["Filter"] as? [String: Any?] {
                    var model = ListArtifactLifecycleRuleResponseBody.Rules.Policies.Filter()
                    model.fromMap(value)
                    self.filter = model
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var auto: Bool?

        public var createTime: Int64?

        public var enableDeleteTag: Bool?

        public var instanceId: String?

        public var modifiedTime: Int64?

        public var namespaceName: String?

        public var nextTime: Int64?

        public var policies: [ListArtifactLifecycleRuleResponseBody.Rules.Policies]?

        public var repoName: String?

        public var retentionTagCount: Int64?

        public var ruleId: String?

        public var scheduleTime: String?

        public var scope: String?

        public var tagRegexp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auto != nil {
                map["Auto"] = self.auto!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.enableDeleteTag != nil {
                map["EnableDeleteTag"] = self.enableDeleteTag!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.namespaceName != nil {
                map["NamespaceName"] = self.namespaceName!
            }
            if self.nextTime != nil {
                map["NextTime"] = self.nextTime!
            }
            if self.policies != nil {
                var tmp : [Any] = []
                for k in self.policies! {
                    tmp.append(k.toMap())
                }
                map["Policies"] = tmp
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.retentionTagCount != nil {
                map["RetentionTagCount"] = self.retentionTagCount!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.scheduleTime != nil {
                map["ScheduleTime"] = self.scheduleTime!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            if self.tagRegexp != nil {
                map["TagRegexp"] = self.tagRegexp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Auto"] as? Bool {
                self.auto = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["EnableDeleteTag"] as? Bool {
                self.enableDeleteTag = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ModifiedTime"] as? Int64 {
                self.modifiedTime = value
            }
            if let value = dict["NamespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["NextTime"] as? Int64 {
                self.nextTime = value
            }
            if let value = dict["Policies"] as? [Any?] {
                var tmp : [ListArtifactLifecycleRuleResponseBody.Rules.Policies] = []
                for v in value {
                    if v != nil {
                        var model = ListArtifactLifecycleRuleResponseBody.Rules.Policies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.policies = tmp
            }
            if let value = dict["RepoName"] as? String {
                self.repoName = value
            }
            if let value = dict["RetentionTagCount"] as? Int64 {
                self.retentionTagCount = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["ScheduleTime"] as? String {
                self.scheduleTime = value
            }
            if let value = dict["Scope"] as? String {
                self.scope = value
            }
            if let value = dict["TagRegexp"] as? String {
                self.tagRegexp = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var rules: [ListArtifactLifecycleRuleResponseBody.Rules]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [ListArtifactLifecycleRuleResponseBody.Rules] = []
            for v in value {
                if v != nil {
                    var model = ListArtifactLifecycleRuleResponseBody.Rules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rules = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListArtifactLifecycleRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListArtifactLifecycleRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListArtifactLifecycleRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListArtifactSubscriptionRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListArtifactSubscriptionRuleResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public var accelerate: Bool?

        public var createTime: Int64?

        public var instanceId: String?

        public var modifiedTime: Int64?

        public var namespaceName: String?

        public var override_: Bool?

        public var platform: [String]?

        public var repoName: String?

        public var ruleId: String?

        public var sourceDomain: String?

        public var sourceNamespaceName: String?

        public var sourceProvider: String?

        public var sourceRepoName: String?

        public var tagCount: Int64?

        public var tagRegexp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accelerate != nil {
                map["Accelerate"] = self.accelerate!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.namespaceName != nil {
                map["NamespaceName"] = self.namespaceName!
            }
            if self.override_ != nil {
                map["Override"] = self.override_!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.sourceDomain != nil {
                map["SourceDomain"] = self.sourceDomain!
            }
            if self.sourceNamespaceName != nil {
                map["SourceNamespaceName"] = self.sourceNamespaceName!
            }
            if self.sourceProvider != nil {
                map["SourceProvider"] = self.sourceProvider!
            }
            if self.sourceRepoName != nil {
                map["SourceRepoName"] = self.sourceRepoName!
            }
            if self.tagCount != nil {
                map["TagCount"] = self.tagCount!
            }
            if self.tagRegexp != nil {
                map["TagRegexp"] = self.tagRegexp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Accelerate"] as? Bool {
                self.accelerate = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ModifiedTime"] as? Int64 {
                self.modifiedTime = value
            }
            if let value = dict["NamespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["Override"] as? Bool {
                self.override_ = value
            }
            if let value = dict["Platform"] as? [String] {
                self.platform = value
            }
            if let value = dict["RepoName"] as? String {
                self.repoName = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["SourceDomain"] as? String {
                self.sourceDomain = value
            }
            if let value = dict["SourceNamespaceName"] as? String {
                self.sourceNamespaceName = value
            }
            if let value = dict["SourceProvider"] as? String {
                self.sourceProvider = value
            }
            if let value = dict["SourceRepoName"] as? String {
                self.sourceRepoName = value
            }
            if let value = dict["TagCount"] as? Int64 {
                self.tagCount = value
            }
            if let value = dict["TagRegexp"] as? String {
                self.tagRegexp = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var rules: [ListArtifactSubscriptionRuleResponseBody.Rules]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [ListArtifactSubscriptionRuleResponseBody.Rules] = []
            for v in value {
                if v != nil {
                    var model = ListArtifactSubscriptionRuleResponseBody.Rules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rules = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListArtifactSubscriptionRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListArtifactSubscriptionRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListArtifactSubscriptionRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListArtifactSubscriptionTaskRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListArtifactSubscriptionTaskResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var artifactType: String?

        public var endTime: String?

        public var instanceId: String?

        public var message: String?

        public var namespaceName: String?

        public var repoName: String?

        public var sourceNamespaceName: String?

        public var sourceProvider: String?

        public var sourceRepoName: String?

        public var sourceRepoType: String?

        public var startTime: String?

        public var tagSubscriptionCount: Int64?

        public var tagTotalCount: Int64?

        public var taskId: String?

        public var taskResult: String?

        public var taskStatus: String?

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
            if self.artifactType != nil {
                map["ArtifactType"] = self.artifactType!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.namespaceName != nil {
                map["NamespaceName"] = self.namespaceName!
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.sourceNamespaceName != nil {
                map["SourceNamespaceName"] = self.sourceNamespaceName!
            }
            if self.sourceProvider != nil {
                map["SourceProvider"] = self.sourceProvider!
            }
            if self.sourceRepoName != nil {
                map["SourceRepoName"] = self.sourceRepoName!
            }
            if self.sourceRepoType != nil {
                map["SourceRepoType"] = self.sourceRepoType!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.tagSubscriptionCount != nil {
                map["TagSubscriptionCount"] = self.tagSubscriptionCount!
            }
            if self.tagTotalCount != nil {
                map["TagTotalCount"] = self.tagTotalCount!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskResult != nil {
                map["TaskResult"] = self.taskResult!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArtifactType"] as? String {
                self.artifactType = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["NamespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["RepoName"] as? String {
                self.repoName = value
            }
            if let value = dict["SourceNamespaceName"] as? String {
                self.sourceNamespaceName = value
            }
            if let value = dict["SourceProvider"] as? String {
                self.sourceProvider = value
            }
            if let value = dict["SourceRepoName"] as? String {
                self.sourceRepoName = value
            }
            if let value = dict["SourceRepoType"] as? String {
                self.sourceRepoType = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["TagSubscriptionCount"] as? Int64 {
                self.tagSubscriptionCount = value
            }
            if let value = dict["TagTotalCount"] as? Int64 {
                self.tagTotalCount = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskResult"] as? String {
                self.taskResult = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tasks: [ListArtifactSubscriptionTaskResponseBody.Tasks]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [ListArtifactSubscriptionTaskResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = ListArtifactSubscriptionTaskResponseBody.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListArtifactSubscriptionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListArtifactSubscriptionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListArtifactSubscriptionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListChainRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repoName: String?

    public var repoNamespaceName: String?

    public override init() {
        super.init()
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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
    }
}

public class ListChainResponseBody : Tea.TeaModel {
    public class Chains : Tea.TeaModel {
        public var chainId: String?

        public var createTime: Int64?

        public var description_: String?

        public var instanceId: String?

        public var modifiedTime: Int64?

        public var name: String?

        public var scopeExclude: [String]?

        public var scopeId: String?

        public var scopeType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chainId != nil {
                map["ChainId"] = self.chainId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.scopeExclude != nil {
                map["ScopeExclude"] = self.scopeExclude!
            }
            if self.scopeId != nil {
                map["ScopeId"] = self.scopeId!
            }
            if self.scopeType != nil {
                map["ScopeType"] = self.scopeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChainId"] as? String {
                self.chainId = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ModifiedTime"] as? Int64 {
                self.modifiedTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ScopeExclude"] as? [String] {
                self.scopeExclude = value
            }
            if let value = dict["ScopeId"] as? String {
                self.scopeId = value
            }
            if let value = dict["ScopeType"] as? String {
                self.scopeType = value
            }
        }
    }
    public var chains: [ListChainResponseBody.Chains]?

    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.chains != nil {
            var tmp : [Any] = []
            for k in self.chains! {
                tmp.append(k.toMap())
            }
            map["Chains"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if let value = dict["Chains"] as? [Any?] {
            var tmp : [ListChainResponseBody.Chains] = []
            for v in value {
                if v != nil {
                    var model = ListChainResponseBody.Chains()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.chains = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListChainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListChainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListChainInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repoName: String?

    public var repoNamespaceName: String?

    public override init() {
        super.init()
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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
    }
}

public class ListChainInstanceResponseBody : Tea.TeaModel {
    public class ChainInstances : Tea.TeaModel {
        public class Chain : Tea.TeaModel {
            public var chainId: String?

            public var chainName: String?

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
                if self.chainId != nil {
                    map["ChainId"] = self.chainId!
                }
                if self.chainName != nil {
                    map["ChainName"] = self.chainName!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ChainId"] as? String {
                    self.chainId = value
                }
                if let value = dict["ChainName"] as? String {
                    self.chainName = value
                }
                if let value = dict["Version"] as? Int64 {
                    self.version = value
                }
            }
        }
        public var chain: ListChainInstanceResponseBody.ChainInstances.Chain?

        public var chainInstanceId: String?

        public var endTime: Int64?

        public var repoName: String?

        public var repoNamespaceName: String?

        public var result: String?

        public var startTime: Int64?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.chain?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chain != nil {
                map["Chain"] = self.chain?.toMap()
            }
            if self.chainInstanceId != nil {
                map["ChainInstanceId"] = self.chainInstanceId!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.repoNamespaceName != nil {
                map["RepoNamespaceName"] = self.repoNamespaceName!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Chain"] as? [String: Any?] {
                var model = ListChainInstanceResponseBody.ChainInstances.Chain()
                model.fromMap(value)
                self.chain = model
            }
            if let value = dict["ChainInstanceId"] as? String {
                self.chainInstanceId = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["RepoName"] as? String {
                self.repoName = value
            }
            if let value = dict["RepoNamespaceName"] as? String {
                self.repoNamespaceName = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var chainInstances: [ListChainInstanceResponseBody.ChainInstances]?

    public var code: String?

    public var instanceId: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.chainInstances != nil {
            var tmp : [Any] = []
            for k in self.chainInstances! {
                tmp.append(k.toMap())
            }
            map["ChainInstances"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if let value = dict["ChainInstances"] as? [Any?] {
            var tmp : [ListChainInstanceResponseBody.ChainInstances] = []
            for v in value {
                if v != nil {
                    var model = ListChainInstanceResponseBody.ChainInstances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.chainInstances = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListChainInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChainInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListChainInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListChartNamespaceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var namespaceName: String?

    public var namespaceStatus: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.namespaceStatus != nil {
            map["NamespaceStatus"] = self.namespaceStatus!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["NamespaceStatus"] as? String {
            self.namespaceStatus = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListChartNamespaceResponseBody : Tea.TeaModel {
    public class Namespaces : Tea.TeaModel {
        public var autoCreateRepo: Bool?

        public var defaultRepoType: String?

        public var instanceId: String?

        public var namespaceId: String?

        public var namespaceName: String?

        public var namespaceStatus: String?

        public var resourceGroupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoCreateRepo != nil {
                map["AutoCreateRepo"] = self.autoCreateRepo!
            }
            if self.defaultRepoType != nil {
                map["DefaultRepoType"] = self.defaultRepoType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.namespaceName != nil {
                map["NamespaceName"] = self.namespaceName!
            }
            if self.namespaceStatus != nil {
                map["NamespaceStatus"] = self.namespaceStatus!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoCreateRepo"] as? Bool {
                self.autoCreateRepo = value
            }
            if let value = dict["DefaultRepoType"] as? String {
                self.defaultRepoType = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["NamespaceId"] as? String {
                self.namespaceId = value
            }
            if let value = dict["NamespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["NamespaceStatus"] as? String {
                self.namespaceStatus = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var namespaces: [ListChartNamespaceResponseBody.Namespaces]?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.namespaces != nil {
            var tmp : [Any] = []
            for k in self.namespaces! {
                tmp.append(k.toMap())
            }
            map["Namespaces"] = tmp
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["Namespaces"] as? [Any?] {
            var tmp : [ListChartNamespaceResponseBody.Namespaces] = []
            for v in value {
                if v != nil {
                    var model = ListChartNamespaceResponseBody.Namespaces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.namespaces = tmp
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListChartNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChartNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListChartNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListChartReleaseRequest : Tea.TeaModel {
    public var chart: String?

    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repoName: String?

    public var repoNamespaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chart != nil {
            map["Chart"] = self.chart!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Chart"] as? String {
            self.chart = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
    }
}

public class ListChartReleaseResponseBody : Tea.TeaModel {
    public class ChartReleases : Tea.TeaModel {
        public var chart: String?

        public var instanceId: String?

        public var modifiedTime: Int64?

        public var release: String?

        public var repoId: String?

        public var size: String?

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
            if self.chart != nil {
                map["Chart"] = self.chart!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.release != nil {
                map["Release"] = self.release!
            }
            if self.repoId != nil {
                map["RepoId"] = self.repoId!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Chart"] as? String {
                self.chart = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ModifiedTime"] as? Int64 {
                self.modifiedTime = value
            }
            if let value = dict["Release"] as? String {
                self.release = value
            }
            if let value = dict["RepoId"] as? String {
                self.repoId = value
            }
            if let value = dict["Size"] as? String {
                self.size = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var chartReleases: [ListChartReleaseResponseBody.ChartReleases]?

    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chartReleases != nil {
            var tmp : [Any] = []
            for k in self.chartReleases! {
                tmp.append(k.toMap())
            }
            map["ChartReleases"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if let value = dict["ChartReleases"] as? [Any?] {
            var tmp : [ListChartReleaseResponseBody.ChartReleases] = []
            for v in value {
                if v != nil {
                    var model = ListChartReleaseResponseBody.ChartReleases()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.chartReleases = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListChartReleaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChartReleaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListChartReleaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListChartRepositoryRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repoName: String?

    public var repoNamespaceName: String?

    public var repoStatus: String?

    public override init() {
        super.init()
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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        if self.repoStatus != nil {
            map["RepoStatus"] = self.repoStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
        if let value = dict["RepoStatus"] as? String {
            self.repoStatus = value
        }
    }
}

public class ListChartRepositoryResponseBody : Tea.TeaModel {
    public class Repositories : Tea.TeaModel {
        public var createTime: Int64?

        public var instanceId: String?

        public var modifiedTime: Int64?

        public var repoId: String?

        public var repoName: String?

        public var repoNamespaceName: String?

        public var repoStatus: String?

        public var repoType: String?

        public var resourceGroupId: String?

        public var summary: String?

        public override init() {
            super.init()
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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.repoId != nil {
                map["RepoId"] = self.repoId!
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.repoNamespaceName != nil {
                map["RepoNamespaceName"] = self.repoNamespaceName!
            }
            if self.repoStatus != nil {
                map["RepoStatus"] = self.repoStatus!
            }
            if self.repoType != nil {
                map["RepoType"] = self.repoType!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ModifiedTime"] as? Int64 {
                self.modifiedTime = value
            }
            if let value = dict["RepoId"] as? String {
                self.repoId = value
            }
            if let value = dict["RepoName"] as? String {
                self.repoName = value
            }
            if let value = dict["RepoNamespaceName"] as? String {
                self.repoNamespaceName = value
            }
            if let value = dict["RepoStatus"] as? String {
                self.repoStatus = value
            }
            if let value = dict["RepoType"] as? String {
                self.repoType = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Summary"] as? String {
                self.summary = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repositories: [ListChartRepositoryResponseBody.Repositories]?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repositories != nil {
            var tmp : [Any] = []
            for k in self.repositories! {
                tmp.append(k.toMap())
            }
            map["Repositories"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Repositories"] as? [Any?] {
            var tmp : [ListChartRepositoryResponseBody.Repositories] = []
            for v in value {
                if v != nil {
                    var model = ListChartRepositoryResponseBody.Repositories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.repositories = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListChartRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChartRepositoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListChartRepositoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEventCenterRecordRequest : Tea.TeaModel {
    public var eventType: String?

    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repoName: String?

    public var repoNamespaceName: String?

    public var ruleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class ListEventCenterRecordResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var createTime: Int64?

        public var eventChannel: String?

        public var eventNotifyId: String?

        public var eventNotifyMethod: String?

        public var eventType: String?

        public var instanceId: String?

        public var namespace: String?

        public var recordId: String?

        public var repoName: String?

        public var ruleId: String?

        public var ruleName: String?

        public var tag: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.eventChannel != nil {
                map["EventChannel"] = self.eventChannel!
            }
            if self.eventNotifyId != nil {
                map["EventNotifyId"] = self.eventNotifyId!
            }
            if self.eventNotifyMethod != nil {
                map["EventNotifyMethod"] = self.eventNotifyMethod!
            }
            if self.eventType != nil {
                map["EventType"] = self.eventType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.recordId != nil {
                map["RecordId"] = self.recordId!
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["EventChannel"] as? String {
                self.eventChannel = value
            }
            if let value = dict["EventNotifyId"] as? String {
                self.eventNotifyId = value
            }
            if let value = dict["EventNotifyMethod"] as? String {
                self.eventNotifyMethod = value
            }
            if let value = dict["EventType"] as? String {
                self.eventType = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["RecordId"] as? String {
                self.recordId = value
            }
            if let value = dict["RepoName"] as? String {
                self.repoName = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var records: [ListEventCenterRecordResponseBody.Records]?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Records"] as? [Any?] {
            var tmp : [ListEventCenterRecordResponseBody.Records] = []
            for v in value {
                if v != nil {
                    var model = ListEventCenterRecordResponseBody.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListEventCenterRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEventCenterRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEventCenterRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEventCenterRuleNameRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListEventCenterRuleNameResponseBody : Tea.TeaModel {
    public class RuleNames : Tea.TeaModel {
        public var ruleId: String?

        public var ruleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var requestId: String?

    public var ruleNames: [ListEventCenterRuleNameResponseBody.RuleNames]?

    public override init() {
        super.init()
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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleNames != nil {
            var tmp : [Any] = []
            for k in self.ruleNames! {
                tmp.append(k.toMap())
            }
            map["RuleNames"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleNames"] as? [Any?] {
            var tmp : [ListEventCenterRuleNameResponseBody.RuleNames] = []
            for v in value {
                if v != nil {
                    var model = ListEventCenterRuleNameResponseBody.RuleNames()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleNames = tmp
        }
    }
}

public class ListEventCenterRuleNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEventCenterRuleNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEventCenterRuleNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceRequest : Tea.TeaModel {
    public var instanceName: String?

    public var instanceStatus: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public override init() {
        super.init()
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
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ListInstanceResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var createTime: String?

        public var instanceId: String?

        public var instanceIssue: String?

        public var instanceName: String?

        public var instanceSpecification: String?

        public var instanceStatus: String?

        public var modifiedTime: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var tags: [ListInstanceResponseBody.Instances.Tags]?

        public override init() {
            super.init()
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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceIssue != nil {
                map["InstanceIssue"] = self.instanceIssue!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceSpecification != nil {
                map["InstanceSpecification"] = self.instanceSpecification!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceIssue"] as? String {
                self.instanceIssue = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceSpecification"] as? String {
                self.instanceSpecification = value
            }
            if let value = dict["InstanceStatus"] as? String {
                self.instanceStatus = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListInstanceResponseBody.Instances.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListInstanceResponseBody.Instances.Tags()
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
    public var code: String?

    public var instances: [ListInstanceResponseBody.Instances]?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [ListInstanceResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = ListInstanceResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceEndpointRequest : Tea.TeaModel {
    public var instanceId: String?

    public var moduleName: String?

    public var summary: Bool?

    public override init() {
        super.init()
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
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ModuleName"] as? String {
            self.moduleName = value
        }
        if let value = dict["Summary"] as? Bool {
            self.summary = value
        }
    }
}

public class ListInstanceEndpointResponseBody : Tea.TeaModel {
    public class Endpoints : Tea.TeaModel {
        public class AclEntries : Tea.TeaModel {
            public var entry: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.entry != nil {
                    map["Entry"] = self.entry!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Entry"] as? String {
                    self.entry = value
                }
            }
        }
        public class Domains : Tea.TeaModel {
            public var domain: String?

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
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class LinkedVpcs : Tea.TeaModel {
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
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public var aclEnable: Bool?

        public var aclEntries: [ListInstanceEndpointResponseBody.Endpoints.AclEntries]?

        public var domains: [ListInstanceEndpointResponseBody.Endpoints.Domains]?

        public var enable: Bool?

        public var endpointType: String?

        public var linkedVpcs: [ListInstanceEndpointResponseBody.Endpoints.LinkedVpcs]?

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
            if self.aclEnable != nil {
                map["AclEnable"] = self.aclEnable!
            }
            if self.aclEntries != nil {
                var tmp : [Any] = []
                for k in self.aclEntries! {
                    tmp.append(k.toMap())
                }
                map["AclEntries"] = tmp
            }
            if self.domains != nil {
                var tmp : [Any] = []
                for k in self.domains! {
                    tmp.append(k.toMap())
                }
                map["Domains"] = tmp
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.endpointType != nil {
                map["EndpointType"] = self.endpointType!
            }
            if self.linkedVpcs != nil {
                var tmp : [Any] = []
                for k in self.linkedVpcs! {
                    tmp.append(k.toMap())
                }
                map["LinkedVpcs"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclEnable"] as? Bool {
                self.aclEnable = value
            }
            if let value = dict["AclEntries"] as? [Any?] {
                var tmp : [ListInstanceEndpointResponseBody.Endpoints.AclEntries] = []
                for v in value {
                    if v != nil {
                        var model = ListInstanceEndpointResponseBody.Endpoints.AclEntries()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.aclEntries = tmp
            }
            if let value = dict["Domains"] as? [Any?] {
                var tmp : [ListInstanceEndpointResponseBody.Endpoints.Domains] = []
                for v in value {
                    if v != nil {
                        var model = ListInstanceEndpointResponseBody.Endpoints.Domains()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.domains = tmp
            }
            if let value = dict["Enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["EndpointType"] as? String {
                self.endpointType = value
            }
            if let value = dict["LinkedVpcs"] as? [Any?] {
                var tmp : [ListInstanceEndpointResponseBody.Endpoints.LinkedVpcs] = []
                for v in value {
                    if v != nil {
                        var model = ListInstanceEndpointResponseBody.Endpoints.LinkedVpcs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.linkedVpcs = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var endpoints: [ListInstanceEndpointResponseBody.Endpoints]?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.endpoints != nil {
            var tmp : [Any] = []
            for k in self.endpoints! {
                tmp.append(k.toMap())
            }
            map["Endpoints"] = tmp
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Endpoints"] as? [Any?] {
            var tmp : [ListInstanceEndpointResponseBody.Endpoints] = []
            for v in value {
                if v != nil {
                    var model = ListInstanceEndpointResponseBody.Endpoints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.endpoints = tmp
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListInstanceEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstanceEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceRegionRequest : Tea.TeaModel {
    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class ListInstanceRegionResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
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
                map["LocalName"] = self.localName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var regions: [ListInstanceRegionResponseBody.Regions]?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [ListInstanceRegionResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = ListInstanceRegionResponseBody.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListInstanceRegionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceRegionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstanceRegionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNamespaceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var namespaceName: String?

    public var namespaceStatus: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.namespaceStatus != nil {
            map["NamespaceStatus"] = self.namespaceStatus!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["NamespaceStatus"] as? String {
            self.namespaceStatus = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListNamespaceResponseBody : Tea.TeaModel {
    public class Namespaces : Tea.TeaModel {
        public var autoCreateRepo: Bool?

        public var defaultRepoConfiguration: RepoConfiguration?

        public var defaultRepoType: String?

        public var instanceId: String?

        public var namespaceId: String?

        public var namespaceName: String?

        public var namespaceStatus: String?

        public var resourceGroupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.defaultRepoConfiguration?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoCreateRepo != nil {
                map["AutoCreateRepo"] = self.autoCreateRepo!
            }
            if self.defaultRepoConfiguration != nil {
                map["DefaultRepoConfiguration"] = self.defaultRepoConfiguration?.toMap()
            }
            if self.defaultRepoType != nil {
                map["DefaultRepoType"] = self.defaultRepoType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.namespaceName != nil {
                map["NamespaceName"] = self.namespaceName!
            }
            if self.namespaceStatus != nil {
                map["NamespaceStatus"] = self.namespaceStatus!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoCreateRepo"] as? Bool {
                self.autoCreateRepo = value
            }
            if let value = dict["DefaultRepoConfiguration"] as? [String: Any?] {
                var model = RepoConfiguration()
                model.fromMap(value)
                self.defaultRepoConfiguration = model
            }
            if let value = dict["DefaultRepoType"] as? String {
                self.defaultRepoType = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["NamespaceId"] as? String {
                self.namespaceId = value
            }
            if let value = dict["NamespaceName"] as? String {
                self.namespaceName = value
            }
            if let value = dict["NamespaceStatus"] as? String {
                self.namespaceStatus = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var namespaces: [ListNamespaceResponseBody.Namespaces]?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.namespaces != nil {
            var tmp : [Any] = []
            for k in self.namespaces! {
                tmp.append(k.toMap())
            }
            map["Namespaces"] = tmp
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["Namespaces"] as? [Any?] {
            var tmp : [ListNamespaceResponseBody.Namespaces] = []
            for v in value {
                if v != nil {
                    var model = ListNamespaceResponseBody.Namespaces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.namespaces = tmp
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRepoBuildRecordRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repoId: String?

    public override init() {
        super.init()
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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class ListRepoBuildRecordResponseBody : Tea.TeaModel {
    public class BuildRecords : Tea.TeaModel {
        public class Image : Tea.TeaModel {
            public var imageTag: String?

            public var repoId: String?

            public var repoName: String?

            public var repoNamespaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.imageTag != nil {
                    map["ImageTag"] = self.imageTag!
                }
                if self.repoId != nil {
                    map["RepoId"] = self.repoId!
                }
                if self.repoName != nil {
                    map["RepoName"] = self.repoName!
                }
                if self.repoNamespaceName != nil {
                    map["RepoNamespaceName"] = self.repoNamespaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ImageTag"] as? String {
                    self.imageTag = value
                }
                if let value = dict["RepoId"] as? String {
                    self.repoId = value
                }
                if let value = dict["RepoName"] as? String {
                    self.repoName = value
                }
                if let value = dict["RepoNamespaceName"] as? String {
                    self.repoNamespaceName = value
                }
            }
        }
        public var buildRecordId: String?

        public var buildStatus: String?

        public var endTime: String?

        public var image: ListRepoBuildRecordResponseBody.BuildRecords.Image?

        public var startTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.image?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildRecordId != nil {
                map["BuildRecordId"] = self.buildRecordId!
            }
            if self.buildStatus != nil {
                map["BuildStatus"] = self.buildStatus!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.image != nil {
                map["Image"] = self.image?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BuildRecordId"] as? String {
                self.buildRecordId = value
            }
            if let value = dict["BuildStatus"] as? String {
                self.buildStatus = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Image"] as? [String: Any?] {
                var model = ListRepoBuildRecordResponseBody.BuildRecords.Image()
                model.fromMap(value)
                self.image = model
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var buildRecords: [ListRepoBuildRecordResponseBody.BuildRecords]?

    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildRecords != nil {
            var tmp : [Any] = []
            for k in self.buildRecords! {
                tmp.append(k.toMap())
            }
            map["BuildRecords"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if let value = dict["BuildRecords"] as? [Any?] {
            var tmp : [ListRepoBuildRecordResponseBody.BuildRecords] = []
            for v in value {
                if v != nil {
                    var model = ListRepoBuildRecordResponseBody.BuildRecords()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.buildRecords = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListRepoBuildRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepoBuildRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRepoBuildRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRepoBuildRecordLogRequest : Tea.TeaModel {
    public var buildRecordId: String?

    public var instanceId: String?

    public var offset: Int32?

    public var repoId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildRecordId != nil {
            map["BuildRecordId"] = self.buildRecordId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildRecordId"] as? String {
            self.buildRecordId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class ListRepoBuildRecordLogResponseBody : Tea.TeaModel {
    public class BuildRecordLogs : Tea.TeaModel {
        public var buildStage: String?

        public var lineNumber: Int32?

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
            if self.buildStage != nil {
                map["BuildStage"] = self.buildStage!
            }
            if self.lineNumber != nil {
                map["LineNumber"] = self.lineNumber!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BuildStage"] as? String {
                self.buildStage = value
            }
            if let value = dict["LineNumber"] as? Int32 {
                self.lineNumber = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
        }
    }
    public var buildRecordLogs: [ListRepoBuildRecordLogResponseBody.BuildRecordLogs]?

    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildRecordLogs != nil {
            var tmp : [Any] = []
            for k in self.buildRecordLogs! {
                tmp.append(k.toMap())
            }
            map["BuildRecordLogs"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if let value = dict["BuildRecordLogs"] as? [Any?] {
            var tmp : [ListRepoBuildRecordLogResponseBody.BuildRecordLogs] = []
            for v in value {
                if v != nil {
                    var model = ListRepoBuildRecordLogResponseBody.BuildRecordLogs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.buildRecordLogs = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListRepoBuildRecordLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepoBuildRecordLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRepoBuildRecordLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRepoBuildRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repoId: String?

    public override init() {
        super.init()
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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class ListRepoBuildRuleResponseBody : Tea.TeaModel {
    public class BuildRules : Tea.TeaModel {
        public var buildArgs: [String]?

        public var buildRuleId: String?

        public var dockerfileLocation: String?

        public var dockerfileName: String?

        public var imageTag: String?

        public var platforms: [String]?

        public var pushName: String?

        public var pushType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildArgs != nil {
                map["BuildArgs"] = self.buildArgs!
            }
            if self.buildRuleId != nil {
                map["BuildRuleId"] = self.buildRuleId!
            }
            if self.dockerfileLocation != nil {
                map["DockerfileLocation"] = self.dockerfileLocation!
            }
            if self.dockerfileName != nil {
                map["DockerfileName"] = self.dockerfileName!
            }
            if self.imageTag != nil {
                map["ImageTag"] = self.imageTag!
            }
            if self.platforms != nil {
                map["Platforms"] = self.platforms!
            }
            if self.pushName != nil {
                map["PushName"] = self.pushName!
            }
            if self.pushType != nil {
                map["PushType"] = self.pushType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BuildArgs"] as? [String] {
                self.buildArgs = value
            }
            if let value = dict["BuildRuleId"] as? String {
                self.buildRuleId = value
            }
            if let value = dict["DockerfileLocation"] as? String {
                self.dockerfileLocation = value
            }
            if let value = dict["DockerfileName"] as? String {
                self.dockerfileName = value
            }
            if let value = dict["ImageTag"] as? String {
                self.imageTag = value
            }
            if let value = dict["Platforms"] as? [String] {
                self.platforms = value
            }
            if let value = dict["PushName"] as? String {
                self.pushName = value
            }
            if let value = dict["PushType"] as? String {
                self.pushType = value
            }
        }
    }
    public var buildRules: [ListRepoBuildRuleResponseBody.BuildRules]?

    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildRules != nil {
            var tmp : [Any] = []
            for k in self.buildRules! {
                tmp.append(k.toMap())
            }
            map["BuildRules"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if let value = dict["BuildRules"] as? [Any?] {
            var tmp : [ListRepoBuildRuleResponseBody.BuildRules] = []
            for v in value {
                if v != nil {
                    var model = ListRepoBuildRuleResponseBody.BuildRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.buildRules = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListRepoBuildRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepoBuildRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRepoBuildRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRepoSyncRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var namespaceName: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repoName: String?

    public var targetInstanceId: String?

    public var targetRegionId: String?

    public override init() {
        super.init()
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
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.targetInstanceId != nil {
            map["TargetInstanceId"] = self.targetInstanceId!
        }
        if self.targetRegionId != nil {
            map["TargetRegionId"] = self.targetRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["TargetInstanceId"] as? String {
            self.targetInstanceId = value
        }
        if let value = dict["TargetRegionId"] as? String {
            self.targetRegionId = value
        }
    }
}

public class ListRepoSyncRuleResponseBody : Tea.TeaModel {
    public class SyncRules : Tea.TeaModel {
        public var createTime: Int64?

        public var crossUser: Bool?

        public var localInstanceId: String?

        public var localNamespaceName: String?

        public var localRegionId: String?

        public var localRepoName: String?

        public var modifiedTime: Int64?

        public var repoNameFilter: String?

        public var syncDirection: String?

        public var syncRuleId: String?

        public var syncRuleName: String?

        public var syncScope: String?

        public var syncTrigger: String?

        public var tagFilter: String?

        public var targetInstanceId: String?

        public var targetNamespaceName: String?

        public var targetRegionId: String?

        public var targetRepoName: String?

        public override init() {
            super.init()
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
            if self.crossUser != nil {
                map["CrossUser"] = self.crossUser!
            }
            if self.localInstanceId != nil {
                map["LocalInstanceId"] = self.localInstanceId!
            }
            if self.localNamespaceName != nil {
                map["LocalNamespaceName"] = self.localNamespaceName!
            }
            if self.localRegionId != nil {
                map["LocalRegionId"] = self.localRegionId!
            }
            if self.localRepoName != nil {
                map["LocalRepoName"] = self.localRepoName!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.repoNameFilter != nil {
                map["RepoNameFilter"] = self.repoNameFilter!
            }
            if self.syncDirection != nil {
                map["SyncDirection"] = self.syncDirection!
            }
            if self.syncRuleId != nil {
                map["SyncRuleId"] = self.syncRuleId!
            }
            if self.syncRuleName != nil {
                map["SyncRuleName"] = self.syncRuleName!
            }
            if self.syncScope != nil {
                map["SyncScope"] = self.syncScope!
            }
            if self.syncTrigger != nil {
                map["SyncTrigger"] = self.syncTrigger!
            }
            if self.tagFilter != nil {
                map["TagFilter"] = self.tagFilter!
            }
            if self.targetInstanceId != nil {
                map["TargetInstanceId"] = self.targetInstanceId!
            }
            if self.targetNamespaceName != nil {
                map["TargetNamespaceName"] = self.targetNamespaceName!
            }
            if self.targetRegionId != nil {
                map["TargetRegionId"] = self.targetRegionId!
            }
            if self.targetRepoName != nil {
                map["TargetRepoName"] = self.targetRepoName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["CrossUser"] as? Bool {
                self.crossUser = value
            }
            if let value = dict["LocalInstanceId"] as? String {
                self.localInstanceId = value
            }
            if let value = dict["LocalNamespaceName"] as? String {
                self.localNamespaceName = value
            }
            if let value = dict["LocalRegionId"] as? String {
                self.localRegionId = value
            }
            if let value = dict["LocalRepoName"] as? String {
                self.localRepoName = value
            }
            if let value = dict["ModifiedTime"] as? Int64 {
                self.modifiedTime = value
            }
            if let value = dict["RepoNameFilter"] as? String {
                self.repoNameFilter = value
            }
            if let value = dict["SyncDirection"] as? String {
                self.syncDirection = value
            }
            if let value = dict["SyncRuleId"] as? String {
                self.syncRuleId = value
            }
            if let value = dict["SyncRuleName"] as? String {
                self.syncRuleName = value
            }
            if let value = dict["SyncScope"] as? String {
                self.syncScope = value
            }
            if let value = dict["SyncTrigger"] as? String {
                self.syncTrigger = value
            }
            if let value = dict["TagFilter"] as? String {
                self.tagFilter = value
            }
            if let value = dict["TargetInstanceId"] as? String {
                self.targetInstanceId = value
            }
            if let value = dict["TargetNamespaceName"] as? String {
                self.targetNamespaceName = value
            }
            if let value = dict["TargetRegionId"] as? String {
                self.targetRegionId = value
            }
            if let value = dict["TargetRepoName"] as? String {
                self.targetRepoName = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var syncRules: [ListRepoSyncRuleResponseBody.SyncRules]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.syncRules != nil {
            var tmp : [Any] = []
            for k in self.syncRules! {
                tmp.append(k.toMap())
            }
            map["SyncRules"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SyncRules"] as? [Any?] {
            var tmp : [ListRepoSyncRuleResponseBody.SyncRules] = []
            for v in value {
                if v != nil {
                    var model = ListRepoSyncRuleResponseBody.SyncRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.syncRules = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListRepoSyncRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepoSyncRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRepoSyncRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRepoSyncTaskRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repoName: String?

    public var repoNamespaceName: String?

    public var syncRecordId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        if self.syncRecordId != nil {
            map["SyncRecordId"] = self.syncRecordId!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
        if let value = dict["SyncRecordId"] as? String {
            self.syncRecordId = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
    }
}

public class ListRepoSyncTaskResponseBody : Tea.TeaModel {
    public class SyncTasks : Tea.TeaModel {
        public class ImageFrom : Tea.TeaModel {
            public var imageTag: String?

            public var instanceId: String?

            public var regionId: String?

            public var repoName: String?

            public var repoNamespaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.imageTag != nil {
                    map["ImageTag"] = self.imageTag!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.repoName != nil {
                    map["RepoName"] = self.repoName!
                }
                if self.repoNamespaceName != nil {
                    map["RepoNamespaceName"] = self.repoNamespaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ImageTag"] as? String {
                    self.imageTag = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RepoName"] as? String {
                    self.repoName = value
                }
                if let value = dict["RepoNamespaceName"] as? String {
                    self.repoNamespaceName = value
                }
            }
        }
        public class ImageTo : Tea.TeaModel {
            public var imageTag: String?

            public var instanceId: String?

            public var regionId: String?

            public var repoName: String?

            public var repoNamespaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.imageTag != nil {
                    map["ImageTag"] = self.imageTag!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.repoName != nil {
                    map["RepoName"] = self.repoName!
                }
                if self.repoNamespaceName != nil {
                    map["RepoNamespaceName"] = self.repoNamespaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ImageTag"] as? String {
                    self.imageTag = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RepoName"] as? String {
                    self.repoName = value
                }
                if let value = dict["RepoNamespaceName"] as? String {
                    self.repoNamespaceName = value
                }
            }
        }
        public var createTime: Int64?

        public var crossUser: Bool?

        public var customLink: Bool?

        public var imageFrom: ListRepoSyncTaskResponseBody.SyncTasks.ImageFrom?

        public var imageTo: ListRepoSyncTaskResponseBody.SyncTasks.ImageTo?

        public var modifedTime: Int64?

        public var syncBatchTaskId: String?

        public var syncRuleId: String?

        public var syncTaskId: String?

        public var syncTransAccelerate: Bool?

        public var taskIssue: String?

        public var taskStatus: String?

        public var taskTrigger: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.imageFrom?.validate()
            try self.imageTo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.crossUser != nil {
                map["CrossUser"] = self.crossUser!
            }
            if self.customLink != nil {
                map["CustomLink"] = self.customLink!
            }
            if self.imageFrom != nil {
                map["ImageFrom"] = self.imageFrom?.toMap()
            }
            if self.imageTo != nil {
                map["ImageTo"] = self.imageTo?.toMap()
            }
            if self.modifedTime != nil {
                map["ModifedTime"] = self.modifedTime!
            }
            if self.syncBatchTaskId != nil {
                map["SyncBatchTaskId"] = self.syncBatchTaskId!
            }
            if self.syncRuleId != nil {
                map["SyncRuleId"] = self.syncRuleId!
            }
            if self.syncTaskId != nil {
                map["SyncTaskId"] = self.syncTaskId!
            }
            if self.syncTransAccelerate != nil {
                map["SyncTransAccelerate"] = self.syncTransAccelerate!
            }
            if self.taskIssue != nil {
                map["TaskIssue"] = self.taskIssue!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskTrigger != nil {
                map["TaskTrigger"] = self.taskTrigger!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["CrossUser"] as? Bool {
                self.crossUser = value
            }
            if let value = dict["CustomLink"] as? Bool {
                self.customLink = value
            }
            if let value = dict["ImageFrom"] as? [String: Any?] {
                var model = ListRepoSyncTaskResponseBody.SyncTasks.ImageFrom()
                model.fromMap(value)
                self.imageFrom = model
            }
            if let value = dict["ImageTo"] as? [String: Any?] {
                var model = ListRepoSyncTaskResponseBody.SyncTasks.ImageTo()
                model.fromMap(value)
                self.imageTo = model
            }
            if let value = dict["ModifedTime"] as? Int64 {
                self.modifedTime = value
            }
            if let value = dict["SyncBatchTaskId"] as? String {
                self.syncBatchTaskId = value
            }
            if let value = dict["SyncRuleId"] as? String {
                self.syncRuleId = value
            }
            if let value = dict["SyncTaskId"] as? String {
                self.syncTaskId = value
            }
            if let value = dict["SyncTransAccelerate"] as? Bool {
                self.syncTransAccelerate = value
            }
            if let value = dict["TaskIssue"] as? String {
                self.taskIssue = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["TaskTrigger"] as? String {
                self.taskTrigger = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var syncTasks: [ListRepoSyncTaskResponseBody.SyncTasks]?

    public var totalCount: String?

    public override init() {
        super.init()
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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.syncTasks != nil {
            var tmp : [Any] = []
            for k in self.syncTasks! {
                tmp.append(k.toMap())
            }
            map["SyncTasks"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SyncTasks"] as? [Any?] {
            var tmp : [ListRepoSyncTaskResponseBody.SyncTasks] = []
            for v in value {
                if v != nil {
                    var model = ListRepoSyncTaskResponseBody.SyncTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.syncTasks = tmp
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListRepoSyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepoSyncTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRepoSyncTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRepoTagRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repoId: String?

    public override init() {
        super.init()
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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class ListRepoTagResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public var digest: String?

        public var imageCreate: String?

        public var imageId: String?

        public var imageSize: Int64?

        public var imageUpdate: String?

        public var status: String?

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
            if self.digest != nil {
                map["Digest"] = self.digest!
            }
            if self.imageCreate != nil {
                map["ImageCreate"] = self.imageCreate!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageSize != nil {
                map["ImageSize"] = self.imageSize!
            }
            if self.imageUpdate != nil {
                map["ImageUpdate"] = self.imageUpdate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Digest"] as? String {
                self.digest = value
            }
            if let value = dict["ImageCreate"] as? String {
                self.imageCreate = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageSize"] as? Int64 {
                self.imageSize = value
            }
            if let value = dict["ImageUpdate"] as? String {
                self.imageUpdate = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
        }
    }
    public var code: String?

    public var images: [ListRepoTagResponseBody.Images]?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
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
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Images"] as? [Any?] {
            var tmp : [ListRepoTagResponseBody.Images] = []
            for v in value {
                if v != nil {
                    var model = ListRepoTagResponseBody.Images()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.images = tmp
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListRepoTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepoTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRepoTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRepoTagScanResultRequest : Tea.TeaModel {
    public var digest: String?

    public var filterValue: String?

    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repoId: String?

    public var scanTaskId: String?

    public var scanType: String?

    public var severity: String?

    public var tag: String?

    public var vulQueryKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.digest != nil {
            map["Digest"] = self.digest!
        }
        if self.filterValue != nil {
            map["FilterValue"] = self.filterValue!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.scanTaskId != nil {
            map["ScanTaskId"] = self.scanTaskId!
        }
        if self.scanType != nil {
            map["ScanType"] = self.scanType!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.vulQueryKey != nil {
            map["VulQueryKey"] = self.vulQueryKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Digest"] as? String {
            self.digest = value
        }
        if let value = dict["FilterValue"] as? String {
            self.filterValue = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["ScanTaskId"] as? String {
            self.scanTaskId = value
        }
        if let value = dict["ScanType"] as? String {
            self.scanType = value
        }
        if let value = dict["Severity"] as? String {
            self.severity = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
        if let value = dict["VulQueryKey"] as? String {
            self.vulQueryKey = value
        }
    }
}

public class ListRepoTagScanResultResponseBody : Tea.TeaModel {
    public class Vulnerabilities : Tea.TeaModel {
        public var addedBy: String?

        public var aliasName: String?

        public var cveLink: String?

        public var cveLocation: String?

        public var cveName: String?

        public var description_: String?

        public var feature: String?

        public var fixCmd: String?

        public var scanType: String?

        public var severity: String?

        public var version: String?

        public var versionFixed: String?

        public var versionFormat: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addedBy != nil {
                map["AddedBy"] = self.addedBy!
            }
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.cveLink != nil {
                map["CveLink"] = self.cveLink!
            }
            if self.cveLocation != nil {
                map["CveLocation"] = self.cveLocation!
            }
            if self.cveName != nil {
                map["CveName"] = self.cveName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.feature != nil {
                map["Feature"] = self.feature!
            }
            if self.fixCmd != nil {
                map["FixCmd"] = self.fixCmd!
            }
            if self.scanType != nil {
                map["ScanType"] = self.scanType!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.versionFixed != nil {
                map["VersionFixed"] = self.versionFixed!
            }
            if self.versionFormat != nil {
                map["VersionFormat"] = self.versionFormat!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddedBy"] as? String {
                self.addedBy = value
            }
            if let value = dict["AliasName"] as? String {
                self.aliasName = value
            }
            if let value = dict["CveLink"] as? String {
                self.cveLink = value
            }
            if let value = dict["CveLocation"] as? String {
                self.cveLocation = value
            }
            if let value = dict["CveName"] as? String {
                self.cveName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Feature"] as? String {
                self.feature = value
            }
            if let value = dict["FixCmd"] as? String {
                self.fixCmd = value
            }
            if let value = dict["ScanType"] as? String {
                self.scanType = value
            }
            if let value = dict["Severity"] as? String {
                self.severity = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["VersionFixed"] as? String {
                self.versionFixed = value
            }
            if let value = dict["VersionFormat"] as? String {
                self.versionFormat = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var vulnerabilities: [ListRepoTagScanResultResponseBody.Vulnerabilities]?

    public override init() {
        super.init()
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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if self.vulnerabilities != nil {
            var tmp : [Any] = []
            for k in self.vulnerabilities! {
                tmp.append(k.toMap())
            }
            map["Vulnerabilities"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["Vulnerabilities"] as? [Any?] {
            var tmp : [ListRepoTagScanResultResponseBody.Vulnerabilities] = []
            for v in value {
                if v != nil {
                    var model = ListRepoTagScanResultResponseBody.Vulnerabilities()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vulnerabilities = tmp
        }
    }
}

public class ListRepoTagScanResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepoTagScanResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRepoTagScanResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRepoTriggerRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoId: String?

    public override init() {
        super.init()
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
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class ListRepoTriggerResponseBody : Tea.TeaModel {
    public class Triggers : Tea.TeaModel {
        public var repoEvent: String?

        public var triggerId: String?

        public var triggerName: String?

        public var triggerTag: String?

        public var triggerType: String?

        public var triggerUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.repoEvent != nil {
                map["RepoEvent"] = self.repoEvent!
            }
            if self.triggerId != nil {
                map["TriggerId"] = self.triggerId!
            }
            if self.triggerName != nil {
                map["TriggerName"] = self.triggerName!
            }
            if self.triggerTag != nil {
                map["TriggerTag"] = self.triggerTag!
            }
            if self.triggerType != nil {
                map["TriggerType"] = self.triggerType!
            }
            if self.triggerUrl != nil {
                map["TriggerUrl"] = self.triggerUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RepoEvent"] as? String {
                self.repoEvent = value
            }
            if let value = dict["TriggerId"] as? String {
                self.triggerId = value
            }
            if let value = dict["TriggerName"] as? String {
                self.triggerName = value
            }
            if let value = dict["TriggerTag"] as? String {
                self.triggerTag = value
            }
            if let value = dict["TriggerType"] as? String {
                self.triggerType = value
            }
            if let value = dict["TriggerUrl"] as? String {
                self.triggerUrl = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var requestId: String?

    public var triggers: [ListRepoTriggerResponseBody.Triggers]?

    public override init() {
        super.init()
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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.triggers != nil {
            var tmp : [Any] = []
            for k in self.triggers! {
                tmp.append(k.toMap())
            }
            map["Triggers"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Triggers"] as? [Any?] {
            var tmp : [ListRepoTriggerResponseBody.Triggers] = []
            for v in value {
                if v != nil {
                    var model = ListRepoTriggerResponseBody.Triggers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.triggers = tmp
        }
    }
}

public class ListRepoTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepoTriggerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRepoTriggerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRepositoryRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repoName: String?

    public var repoNamespaceName: String?

    public var repoStatus: String?

    public override init() {
        super.init()
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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        if self.repoStatus != nil {
            map["RepoStatus"] = self.repoStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
        if let value = dict["RepoStatus"] as? String {
            self.repoStatus = value
        }
    }
}

public class ListRepositoryResponseBody : Tea.TeaModel {
    public class Repositories : Tea.TeaModel {
        public var createTime: Int64?

        public var instanceId: String?

        public var modifiedTime: Int64?

        public var repoBuildType: String?

        public var repoId: String?

        public var repoName: String?

        public var repoNamespaceName: String?

        public var repoStatus: String?

        public var repoType: String?

        public var resourceGroupId: String?

        public var summary: String?

        public var tagImmutability: Bool?

        public override init() {
            super.init()
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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.repoBuildType != nil {
                map["RepoBuildType"] = self.repoBuildType!
            }
            if self.repoId != nil {
                map["RepoId"] = self.repoId!
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.repoNamespaceName != nil {
                map["RepoNamespaceName"] = self.repoNamespaceName!
            }
            if self.repoStatus != nil {
                map["RepoStatus"] = self.repoStatus!
            }
            if self.repoType != nil {
                map["RepoType"] = self.repoType!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.tagImmutability != nil {
                map["TagImmutability"] = self.tagImmutability!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ModifiedTime"] as? Int64 {
                self.modifiedTime = value
            }
            if let value = dict["RepoBuildType"] as? String {
                self.repoBuildType = value
            }
            if let value = dict["RepoId"] as? String {
                self.repoId = value
            }
            if let value = dict["RepoName"] as? String {
                self.repoName = value
            }
            if let value = dict["RepoNamespaceName"] as? String {
                self.repoNamespaceName = value
            }
            if let value = dict["RepoStatus"] as? String {
                self.repoStatus = value
            }
            if let value = dict["RepoType"] as? String {
                self.repoType = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Summary"] as? String {
                self.summary = value
            }
            if let value = dict["TagImmutability"] as? Bool {
                self.tagImmutability = value
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repositories: [ListRepositoryResponseBody.Repositories]?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repositories != nil {
            var tmp : [Any] = []
            for k in self.repositories! {
                tmp.append(k.toMap())
            }
            map["Repositories"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Repositories"] as? [Any?] {
            var tmp : [ListRepositoryResponseBody.Repositories] = []
            for v in value {
                if v != nil {
                    var model = ListRepositoryResponseBody.Repositories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.repositories = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepositoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRepositoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScanBaselineByTaskRequest : Tea.TeaModel {
    public var digest: String?

    public var instanceId: String?

    public var level: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repoId: String?

    public var scanTaskId: String?

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
        if self.digest != nil {
            map["Digest"] = self.digest!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.scanTaskId != nil {
            map["ScanTaskId"] = self.scanTaskId!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Digest"] as? String {
            self.digest = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Level"] as? String {
            self.level = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["ScanTaskId"] as? String {
            self.scanTaskId = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
    }
}

public class ListScanBaselineByTaskResponseBody : Tea.TeaModel {
    public class ScanBaselines : Tea.TeaModel {
        public var baselineClassAlias: String?

        public var baselineDetailAdvice: String?

        public var baselineDetailDescription: String?

        public var baselineDetailPrompt: String?

        public var baselineItemCount: Int32?

        public var baselineNameAlias: String?

        public var baselineNameKey: String?

        public var baselineNameLevel: String?

        public var createTime: Int64?

        public var firstScanTime: Int64?

        public var highRiskItemCount: Int32?

        public var lowRiskItemCount: Int32?

        public var middleRiskItemCount: Int32?

        public var scanTaskId: String?

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
            if self.baselineClassAlias != nil {
                map["BaselineClassAlias"] = self.baselineClassAlias!
            }
            if self.baselineDetailAdvice != nil {
                map["BaselineDetailAdvice"] = self.baselineDetailAdvice!
            }
            if self.baselineDetailDescription != nil {
                map["BaselineDetailDescription"] = self.baselineDetailDescription!
            }
            if self.baselineDetailPrompt != nil {
                map["BaselineDetailPrompt"] = self.baselineDetailPrompt!
            }
            if self.baselineItemCount != nil {
                map["BaselineItemCount"] = self.baselineItemCount!
            }
            if self.baselineNameAlias != nil {
                map["BaselineNameAlias"] = self.baselineNameAlias!
            }
            if self.baselineNameKey != nil {
                map["BaselineNameKey"] = self.baselineNameKey!
            }
            if self.baselineNameLevel != nil {
                map["BaselineNameLevel"] = self.baselineNameLevel!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.firstScanTime != nil {
                map["FirstScanTime"] = self.firstScanTime!
            }
            if self.highRiskItemCount != nil {
                map["HighRiskItemCount"] = self.highRiskItemCount!
            }
            if self.lowRiskItemCount != nil {
                map["LowRiskItemCount"] = self.lowRiskItemCount!
            }
            if self.middleRiskItemCount != nil {
                map["MiddleRiskItemCount"] = self.middleRiskItemCount!
            }
            if self.scanTaskId != nil {
                map["ScanTaskId"] = self.scanTaskId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BaselineClassAlias"] as? String {
                self.baselineClassAlias = value
            }
            if let value = dict["BaselineDetailAdvice"] as? String {
                self.baselineDetailAdvice = value
            }
            if let value = dict["BaselineDetailDescription"] as? String {
                self.baselineDetailDescription = value
            }
            if let value = dict["BaselineDetailPrompt"] as? String {
                self.baselineDetailPrompt = value
            }
            if let value = dict["BaselineItemCount"] as? Int32 {
                self.baselineItemCount = value
            }
            if let value = dict["BaselineNameAlias"] as? String {
                self.baselineNameAlias = value
            }
            if let value = dict["BaselineNameKey"] as? String {
                self.baselineNameKey = value
            }
            if let value = dict["BaselineNameLevel"] as? String {
                self.baselineNameLevel = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["FirstScanTime"] as? Int64 {
                self.firstScanTime = value
            }
            if let value = dict["HighRiskItemCount"] as? Int32 {
                self.highRiskItemCount = value
            }
            if let value = dict["LowRiskItemCount"] as? Int32 {
                self.lowRiskItemCount = value
            }
            if let value = dict["MiddleRiskItemCount"] as? Int32 {
                self.middleRiskItemCount = value
            }
            if let value = dict["ScanTaskId"] as? String {
                self.scanTaskId = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var code: Int32?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var scanBaselines: [ListScanBaselineByTaskResponseBody.ScanBaselines]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scanBaselines != nil {
            var tmp : [Any] = []
            for k in self.scanBaselines! {
                tmp.append(k.toMap())
            }
            map["ScanBaselines"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScanBaselines"] as? [Any?] {
            var tmp : [ListScanBaselineByTaskResponseBody.ScanBaselines] = []
            for v in value {
                if v != nil {
                    var model = ListScanBaselineByTaskResponseBody.ScanBaselines()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scanBaselines = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListScanBaselineByTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScanBaselineByTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListScanBaselineByTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScanMaliciousFileByTaskRequest : Tea.TeaModel {
    public var digest: String?

    public var instanceId: String?

    public var level: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var repoId: String?

    public var scanTaskId: String?

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
        if self.digest != nil {
            map["Digest"] = self.digest!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.scanTaskId != nil {
            map["ScanTaskId"] = self.scanTaskId!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Digest"] as? String {
            self.digest = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Level"] as? String {
            self.level = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["ScanTaskId"] as? String {
            self.scanTaskId = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
    }
}

public class ListScanMaliciousFileByTaskResponseBody : Tea.TeaModel {
    public class ScanMaliciousFiles : Tea.TeaModel {
        public var createTime: Int64?

        public var filePath: String?

        public var firstScanTime: Int64?

        public var level: String?

        public var maliciousMd5: String?

        public var maliciousName: String?

        public var scanTaskId: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.filePath != nil {
                map["FilePath"] = self.filePath!
            }
            if self.firstScanTime != nil {
                map["FirstScanTime"] = self.firstScanTime!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.maliciousMd5 != nil {
                map["MaliciousMd5"] = self.maliciousMd5!
            }
            if self.maliciousName != nil {
                map["MaliciousName"] = self.maliciousName!
            }
            if self.scanTaskId != nil {
                map["ScanTaskId"] = self.scanTaskId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["FilePath"] as? String {
                self.filePath = value
            }
            if let value = dict["FirstScanTime"] as? Int64 {
                self.firstScanTime = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["MaliciousMd5"] as? String {
                self.maliciousMd5 = value
            }
            if let value = dict["MaliciousName"] as? String {
                self.maliciousName = value
            }
            if let value = dict["ScanTaskId"] as? String {
                self.scanTaskId = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var code: Int32?

    public var isSuccess: Bool?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var scanMaliciousFiles: [ListScanMaliciousFileByTaskResponseBody.ScanMaliciousFiles]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scanMaliciousFiles != nil {
            var tmp : [Any] = []
            for k in self.scanMaliciousFiles! {
                tmp.append(k.toMap())
            }
            map["ScanMaliciousFiles"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScanMaliciousFiles"] as? [Any?] {
            var tmp : [ListScanMaliciousFileByTaskResponseBody.ScanMaliciousFiles] = []
            for v in value {
                if v != nil {
                    var model = ListScanMaliciousFileByTaskResponseBody.ScanMaliciousFiles()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scanMaliciousFiles = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListScanMaliciousFileByTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScanMaliciousFileByTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListScanMaliciousFileByTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
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
    public var nextToken: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public class TagResource : Tea.TeaModel {
            public var resourceId: String?

            public var resourceType: String?

            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var tagResource: [ListTagResourcesResponseBody.TagResources.TagResource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagResource != nil {
                var tmp : [Any] = []
                for k in self.tagResource! {
                    tmp.append(k.toMap())
                }
                map["TagResource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagResource"] as? [Any?] {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in value {
                    if v != nil {
                        var model = ListTagResourcesResponseBody.TagResources.TagResource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagResource = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: ListTagResourcesResponseBody.TagResources?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagResources?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            map["TagResources"] = self.tagResources?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(value)
            self.tagResources = model
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetLoginPasswordRequest : Tea.TeaModel {
    public var instanceId: String?

    public var password: String?

    public override init() {
        super.init()
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
        if self.password != nil {
            map["Password"] = self.password!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
    }
}

public class ResetLoginPasswordResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ResetLoginPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetLoginPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResetLoginPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
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
    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
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

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
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

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateArtifactLifecycleRuleRequest : Tea.TeaModel {
    public var auto: Bool?

    public var enableDeleteTag: Bool?

    public var instanceId: String?

    public var namespaceName: String?

    public var repoName: String?

    public var retentionTagCount: Int64?

    public var ruleId: String?

    public var scheduleTime: String?

    public var scope: String?

    public var tagRegexp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auto != nil {
            map["Auto"] = self.auto!
        }
        if self.enableDeleteTag != nil {
            map["EnableDeleteTag"] = self.enableDeleteTag!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.retentionTagCount != nil {
            map["RetentionTagCount"] = self.retentionTagCount!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.scheduleTime != nil {
            map["ScheduleTime"] = self.scheduleTime!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.tagRegexp != nil {
            map["TagRegexp"] = self.tagRegexp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Auto"] as? Bool {
            self.auto = value
        }
        if let value = dict["EnableDeleteTag"] as? Bool {
            self.enableDeleteTag = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RetentionTagCount"] as? Int64 {
            self.retentionTagCount = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["ScheduleTime"] as? String {
            self.scheduleTime = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["TagRegexp"] as? String {
            self.tagRegexp = value
        }
    }
}

public class UpdateArtifactLifecycleRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateArtifactLifecycleRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateArtifactLifecycleRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateArtifactLifecycleRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateArtifactSubscriptionRuleRequest : Tea.TeaModel {
    public var accelerate: String?

    public var instanceId: String?

    public var namespaceName: String?

    public var override_: String?

    public var platform: [String]?

    public var repoName: String?

    public var ruleId: String?

    public var sourceNamespaceName: String?

    public var sourceProvider: String?

    public var sourceRepoName: String?

    public var tagCount: Int64?

    public var tagRegexp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accelerate != nil {
            map["Accelerate"] = self.accelerate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.override_ != nil {
            map["Override"] = self.override_!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.sourceNamespaceName != nil {
            map["SourceNamespaceName"] = self.sourceNamespaceName!
        }
        if self.sourceProvider != nil {
            map["SourceProvider"] = self.sourceProvider!
        }
        if self.sourceRepoName != nil {
            map["SourceRepoName"] = self.sourceRepoName!
        }
        if self.tagCount != nil {
            map["TagCount"] = self.tagCount!
        }
        if self.tagRegexp != nil {
            map["TagRegexp"] = self.tagRegexp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accelerate"] as? String {
            self.accelerate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["Override"] as? String {
            self.override_ = value
        }
        if let value = dict["Platform"] as? [String] {
            self.platform = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["SourceNamespaceName"] as? String {
            self.sourceNamespaceName = value
        }
        if let value = dict["SourceProvider"] as? String {
            self.sourceProvider = value
        }
        if let value = dict["SourceRepoName"] as? String {
            self.sourceRepoName = value
        }
        if let value = dict["TagCount"] as? Int64 {
            self.tagCount = value
        }
        if let value = dict["TagRegexp"] as? String {
            self.tagRegexp = value
        }
    }
}

public class UpdateArtifactSubscriptionRuleResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateArtifactSubscriptionRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateArtifactSubscriptionRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateArtifactSubscriptionRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateChainRequest : Tea.TeaModel {
    public var chainConfig: String?

    public var chainId: String?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var scopeExclude: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chainConfig != nil {
            map["ChainConfig"] = self.chainConfig!
        }
        if self.chainId != nil {
            map["ChainId"] = self.chainId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.scopeExclude != nil {
            map["ScopeExclude"] = self.scopeExclude!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChainConfig"] as? String {
            self.chainConfig = value
        }
        if let value = dict["ChainId"] as? String {
            self.chainId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ScopeExclude"] as? [String] {
            self.scopeExclude = value
        }
    }
}

public class UpdateChainResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateChainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateChainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateChainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateChartNamespaceRequest : Tea.TeaModel {
    public var autoCreateRepo: Bool?

    public var defaultRepoType: String?

    public var instanceId: String?

    public var namespaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCreateRepo != nil {
            map["AutoCreateRepo"] = self.autoCreateRepo!
        }
        if self.defaultRepoType != nil {
            map["DefaultRepoType"] = self.defaultRepoType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoCreateRepo"] as? Bool {
            self.autoCreateRepo = value
        }
        if let value = dict["DefaultRepoType"] as? String {
            self.defaultRepoType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
    }
}

public class UpdateChartNamespaceResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateChartNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateChartNamespaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateChartNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateChartRepositoryRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoName: String?

    public var repoNamespaceName: String?

    public var repoType: String?

    public var summary: String?

    public override init() {
        super.init()
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
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        if self.repoType != nil {
            map["RepoType"] = self.repoType!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
        if let value = dict["RepoType"] as? String {
            self.repoType = value
        }
        if let value = dict["Summary"] as? String {
            self.summary = value
        }
    }
}

public class UpdateChartRepositoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateChartRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateChartRepositoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateChartRepositoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEventCenterRuleRequest : Tea.TeaModel {
    public var eventChannel: String?

    public var eventConfig: String?

    public var eventScope: String?

    public var eventType: String?

    public var instanceId: String?

    public var namespaces: [String]?

    public var repoNames: [String]?

    public var repoTagFilterPattern: String?

    public var ruleId: String?

    public var ruleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventChannel != nil {
            map["EventChannel"] = self.eventChannel!
        }
        if self.eventConfig != nil {
            map["EventConfig"] = self.eventConfig!
        }
        if self.eventScope != nil {
            map["EventScope"] = self.eventScope!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespaces != nil {
            map["Namespaces"] = self.namespaces!
        }
        if self.repoNames != nil {
            map["RepoNames"] = self.repoNames!
        }
        if self.repoTagFilterPattern != nil {
            map["RepoTagFilterPattern"] = self.repoTagFilterPattern!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventChannel"] as? String {
            self.eventChannel = value
        }
        if let value = dict["EventConfig"] as? String {
            self.eventConfig = value
        }
        if let value = dict["EventScope"] as? String {
            self.eventScope = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Namespaces"] as? [String] {
            self.namespaces = value
        }
        if let value = dict["RepoNames"] as? [String] {
            self.repoNames = value
        }
        if let value = dict["RepoTagFilterPattern"] as? String {
            self.repoTagFilterPattern = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
    }
}

public class UpdateEventCenterRuleShrinkRequest : Tea.TeaModel {
    public var eventChannel: String?

    public var eventConfig: String?

    public var eventScope: String?

    public var eventType: String?

    public var instanceId: String?

    public var namespacesShrink: String?

    public var repoNamesShrink: String?

    public var repoTagFilterPattern: String?

    public var ruleId: String?

    public var ruleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventChannel != nil {
            map["EventChannel"] = self.eventChannel!
        }
        if self.eventConfig != nil {
            map["EventConfig"] = self.eventConfig!
        }
        if self.eventScope != nil {
            map["EventScope"] = self.eventScope!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespacesShrink != nil {
            map["Namespaces"] = self.namespacesShrink!
        }
        if self.repoNamesShrink != nil {
            map["RepoNames"] = self.repoNamesShrink!
        }
        if self.repoTagFilterPattern != nil {
            map["RepoTagFilterPattern"] = self.repoTagFilterPattern!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventChannel"] as? String {
            self.eventChannel = value
        }
        if let value = dict["EventConfig"] as? String {
            self.eventConfig = value
        }
        if let value = dict["EventScope"] as? String {
            self.eventScope = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Namespaces"] as? String {
            self.namespacesShrink = value
        }
        if let value = dict["RepoNames"] as? String {
            self.repoNamesShrink = value
        }
        if let value = dict["RepoTagFilterPattern"] as? String {
            self.repoTagFilterPattern = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
    }
}

public class UpdateEventCenterRuleResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var requestId: String?

    public var ruleId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class UpdateEventCenterRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEventCenterRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateEventCenterRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceEndpointStatusRequest : Tea.TeaModel {
    public var enable: Bool?

    public var endpointType: String?

    public var instanceId: String?

    public var moduleName: String?

    public override init() {
        super.init()
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
            map["Enable"] = self.enable!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ModuleName"] as? String {
            self.moduleName = value
        }
    }
}

public class UpdateInstanceEndpointStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateInstanceEndpointStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceEndpointStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateInstanceEndpointStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateNamespaceRequest : Tea.TeaModel {
    public var autoCreateRepo: Bool?

    public var defaultRepoConfiguration: RepoConfiguration?

    public var defaultRepoType: String?

    public var instanceId: String?

    public var namespaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.defaultRepoConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCreateRepo != nil {
            map["AutoCreateRepo"] = self.autoCreateRepo!
        }
        if self.defaultRepoConfiguration != nil {
            map["DefaultRepoConfiguration"] = self.defaultRepoConfiguration?.toMap()
        }
        if self.defaultRepoType != nil {
            map["DefaultRepoType"] = self.defaultRepoType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoCreateRepo"] as? Bool {
            self.autoCreateRepo = value
        }
        if let value = dict["DefaultRepoConfiguration"] as? [String: Any?] {
            var model = RepoConfiguration()
            model.fromMap(value)
            self.defaultRepoConfiguration = model
        }
        if let value = dict["DefaultRepoType"] as? String {
            self.defaultRepoType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
    }
}

public class UpdateNamespaceShrinkRequest : Tea.TeaModel {
    public var autoCreateRepo: Bool?

    public var defaultRepoConfigurationShrink: String?

    public var defaultRepoType: String?

    public var instanceId: String?

    public var namespaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCreateRepo != nil {
            map["AutoCreateRepo"] = self.autoCreateRepo!
        }
        if self.defaultRepoConfigurationShrink != nil {
            map["DefaultRepoConfiguration"] = self.defaultRepoConfigurationShrink!
        }
        if self.defaultRepoType != nil {
            map["DefaultRepoType"] = self.defaultRepoType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoCreateRepo"] as? Bool {
            self.autoCreateRepo = value
        }
        if let value = dict["DefaultRepoConfiguration"] as? String {
            self.defaultRepoConfigurationShrink = value
        }
        if let value = dict["DefaultRepoType"] as? String {
            self.defaultRepoType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
    }
}

public class UpdateNamespaceResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
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

public class UpdateRepoBuildRuleRequest : Tea.TeaModel {
    public var buildArgs: [String]?

    public var buildRuleId: String?

    public var dockerfileLocation: String?

    public var dockerfileName: String?

    public var imageTag: String?

    public var instanceId: String?

    public var platforms: [String]?

    public var pushName: String?

    public var pushType: String?

    public var repoId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buildArgs != nil {
            map["BuildArgs"] = self.buildArgs!
        }
        if self.buildRuleId != nil {
            map["BuildRuleId"] = self.buildRuleId!
        }
        if self.dockerfileLocation != nil {
            map["DockerfileLocation"] = self.dockerfileLocation!
        }
        if self.dockerfileName != nil {
            map["DockerfileName"] = self.dockerfileName!
        }
        if self.imageTag != nil {
            map["ImageTag"] = self.imageTag!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.platforms != nil {
            map["Platforms"] = self.platforms!
        }
        if self.pushName != nil {
            map["PushName"] = self.pushName!
        }
        if self.pushType != nil {
            map["PushType"] = self.pushType!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildArgs"] as? [String] {
            self.buildArgs = value
        }
        if let value = dict["BuildRuleId"] as? String {
            self.buildRuleId = value
        }
        if let value = dict["DockerfileLocation"] as? String {
            self.dockerfileLocation = value
        }
        if let value = dict["DockerfileName"] as? String {
            self.dockerfileName = value
        }
        if let value = dict["ImageTag"] as? String {
            self.imageTag = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Platforms"] as? [String] {
            self.platforms = value
        }
        if let value = dict["PushName"] as? String {
            self.pushName = value
        }
        if let value = dict["PushType"] as? String {
            self.pushType = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class UpdateRepoBuildRuleResponseBody : Tea.TeaModel {
    public var buildRuleId: String?

    public var code: String?

    public var isSuccess: Bool?

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
        if self.buildRuleId != nil {
            map["BuildRuleId"] = self.buildRuleId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuildRuleId"] as? String {
            self.buildRuleId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateRepoBuildRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRepoBuildRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateRepoBuildRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRepoSourceCodeRepoRequest : Tea.TeaModel {
    public var autoBuild: String?

    public var codeRepoId: String?

    public var codeRepoName: String?

    public var codeRepoNamespaceName: String?

    public var codeRepoType: String?

    public var disableCacheBuild: String?

    public var instanceId: String?

    public var overseaBuild: String?

    public var repoId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoBuild != nil {
            map["AutoBuild"] = self.autoBuild!
        }
        if self.codeRepoId != nil {
            map["CodeRepoId"] = self.codeRepoId!
        }
        if self.codeRepoName != nil {
            map["CodeRepoName"] = self.codeRepoName!
        }
        if self.codeRepoNamespaceName != nil {
            map["CodeRepoNamespaceName"] = self.codeRepoNamespaceName!
        }
        if self.codeRepoType != nil {
            map["CodeRepoType"] = self.codeRepoType!
        }
        if self.disableCacheBuild != nil {
            map["DisableCacheBuild"] = self.disableCacheBuild!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.overseaBuild != nil {
            map["OverseaBuild"] = self.overseaBuild!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoBuild"] as? String {
            self.autoBuild = value
        }
        if let value = dict["CodeRepoId"] as? String {
            self.codeRepoId = value
        }
        if let value = dict["CodeRepoName"] as? String {
            self.codeRepoName = value
        }
        if let value = dict["CodeRepoNamespaceName"] as? String {
            self.codeRepoNamespaceName = value
        }
        if let value = dict["CodeRepoType"] as? String {
            self.codeRepoType = value
        }
        if let value = dict["DisableCacheBuild"] as? String {
            self.disableCacheBuild = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OverseaBuild"] as? String {
            self.overseaBuild = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class UpdateRepoSourceCodeRepoResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateRepoSourceCodeRepoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRepoSourceCodeRepoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateRepoSourceCodeRepoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRepoTriggerRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoId: String?

    public var triggerId: String?

    public var triggerName: String?

    public var triggerTag: String?

    public var triggerType: String?

    public var triggerUrl: String?

    public override init() {
        super.init()
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
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.triggerId != nil {
            map["TriggerId"] = self.triggerId!
        }
        if self.triggerName != nil {
            map["TriggerName"] = self.triggerName!
        }
        if self.triggerTag != nil {
            map["TriggerTag"] = self.triggerTag!
        }
        if self.triggerType != nil {
            map["TriggerType"] = self.triggerType!
        }
        if self.triggerUrl != nil {
            map["TriggerUrl"] = self.triggerUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["TriggerId"] as? String {
            self.triggerId = value
        }
        if let value = dict["TriggerName"] as? String {
            self.triggerName = value
        }
        if let value = dict["TriggerTag"] as? String {
            self.triggerTag = value
        }
        if let value = dict["TriggerType"] as? String {
            self.triggerType = value
        }
        if let value = dict["TriggerUrl"] as? String {
            self.triggerUrl = value
        }
    }
}

public class UpdateRepoTriggerResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateRepoTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRepoTriggerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateRepoTriggerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRepositoryRequest : Tea.TeaModel {
    public var detail: String?

    public var instanceId: String?

    public var repoId: String?

    public var repoName: String?

    public var repoNamespaceName: String?

    public var repoType: String?

    public var summary: String?

    public var tagImmutability: Bool?

    public override init() {
        super.init()
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
            map["Detail"] = self.detail!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        if self.repoNamespaceName != nil {
            map["RepoNamespaceName"] = self.repoNamespaceName!
        }
        if self.repoType != nil {
            map["RepoType"] = self.repoType!
        }
        if self.summary != nil {
            map["Summary"] = self.summary!
        }
        if self.tagImmutability != nil {
            map["TagImmutability"] = self.tagImmutability!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Detail"] as? String {
            self.detail = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
        if let value = dict["RepoNamespaceName"] as? String {
            self.repoNamespaceName = value
        }
        if let value = dict["RepoType"] as? String {
            self.repoType = value
        }
        if let value = dict["Summary"] as? String {
            self.summary = value
        }
        if let value = dict["TagImmutability"] as? Bool {
            self.tagImmutability = value
        }
    }
}

public class UpdateRepositoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var isSuccess: Bool?

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
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRepositoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateRepositoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
