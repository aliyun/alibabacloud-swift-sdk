import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildTaskId") && dict["BuildTaskId"] != nil {
            self.buildTaskId = dict["BuildTaskId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CancelArtifactBuildTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRecordId") && dict["BuildRecordId"] != nil {
            self.buildRecordId = dict["BuildRecordId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CancelRepoBuildRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceRegionId") && dict["ResourceRegionId"] != nil {
            self.resourceRegionId = dict["ResourceRegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactType") && dict["ArtifactType"] != nil {
            self.artifactType = dict["ArtifactType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("ScopeId") && dict["ScopeId"] != nil {
            self.scopeId = dict["ScopeId"] as! String
        }
        if dict.keys.contains("ScopeType") && dict["ScopeType"] != nil {
            self.scopeType = dict["ScopeType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactType") && dict["ArtifactType"] != nil {
            self.artifactType = dict["ArtifactType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("ScopeId") && dict["ScopeId"] != nil {
            self.scopeId = dict["ScopeId"] as! String
        }
        if dict.keys.contains("ScopeType") && dict["ScopeType"] != nil {
            self.scopeType = dict["ScopeType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRuleId") && dict["BuildRuleId"] != nil {
            self.buildRuleId = dict["BuildRuleId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateArtifactBuildRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRecordId") && dict["BuildRecordId"] != nil {
            self.buildRecordId = dict["BuildRecordId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRecordId") && dict["BuildRecordId"] != nil {
            self.buildRecordId = dict["BuildRecordId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateBuildRecordByRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRuleId") && dict["BuildRuleId"] != nil {
            self.buildRuleId = dict["BuildRuleId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRecordId") && dict["BuildRecordId"] != nil {
            self.buildRecordId = dict["BuildRecordId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateBuildRecordByRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChainConfig") && dict["ChainConfig"] != nil {
            self.chainConfig = dict["ChainConfig"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
        }
        if dict.keys.contains("ScopeExclude") && dict["ScopeExclude"] != nil {
            self.scopeExclude = dict["ScopeExclude"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChainId") && dict["ChainId"] != nil {
            self.chainId = dict["ChainId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateChainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoCreateRepo") && dict["AutoCreateRepo"] != nil {
            self.autoCreateRepo = dict["AutoCreateRepo"] as! Bool
        }
        if dict.keys.contains("DefaultRepoType") && dict["DefaultRepoType"] != nil {
            self.defaultRepoType = dict["DefaultRepoType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateChartNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
        }
        if dict.keys.contains("RepoType") && dict["RepoType"] != nil {
            self.repoType = dict["RepoType"] as! String
        }
        if dict.keys.contains("Summary") && dict["Summary"] != nil {
            self.summary = dict["Summary"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateChartRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
            self.endpointType = dict["EndpointType"] as! String
        }
        if dict.keys.contains("Entry") && dict["Entry"] != nil {
            self.entry = dict["Entry"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateInstanceEndpointAclPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableCreateDNSRecordInPvzt") && dict["EnableCreateDNSRecordInPvzt"] != nil {
            self.enableCreateDNSRecordInPvzt = dict["EnableCreateDNSRecordInPvzt"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
            self.vswitchId = dict["VswitchId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateInstanceVpcEndpointLinkedVpcResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateNamespaceRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoCreateRepo") && dict["AutoCreateRepo"] != nil {
            self.autoCreateRepo = dict["AutoCreateRepo"] as! Bool
        }
        if dict.keys.contains("DefaultRepoType") && dict["DefaultRepoType"] != nil {
            self.defaultRepoType = dict["DefaultRepoType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildArgs") && dict["BuildArgs"] != nil {
            self.buildArgs = dict["BuildArgs"] as! [String]
        }
        if dict.keys.contains("DockerfileLocation") && dict["DockerfileLocation"] != nil {
            self.dockerfileLocation = dict["DockerfileLocation"] as! String
        }
        if dict.keys.contains("DockerfileName") && dict["DockerfileName"] != nil {
            self.dockerfileName = dict["DockerfileName"] as! String
        }
        if dict.keys.contains("ImageTag") && dict["ImageTag"] != nil {
            self.imageTag = dict["ImageTag"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Platforms") && dict["Platforms"] != nil {
            self.platforms = dict["Platforms"] as! [String]
        }
        if dict.keys.contains("PushName") && dict["PushName"] != nil {
            self.pushName = dict["PushName"] as! String
        }
        if dict.keys.contains("PushType") && dict["PushType"] != nil {
            self.pushType = dict["PushType"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRuleId") && dict["BuildRuleId"] != nil {
            self.buildRuleId = dict["BuildRuleId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRepoBuildRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
            self.autoBuild = dict["AutoBuild"] as! Bool
        }
        if dict.keys.contains("CodeRepoName") && dict["CodeRepoName"] != nil {
            self.codeRepoName = dict["CodeRepoName"] as! String
        }
        if dict.keys.contains("CodeRepoNamespaceName") && dict["CodeRepoNamespaceName"] != nil {
            self.codeRepoNamespaceName = dict["CodeRepoNamespaceName"] as! String
        }
        if dict.keys.contains("CodeRepoType") && dict["CodeRepoType"] != nil {
            self.codeRepoType = dict["CodeRepoType"] as! String
        }
        if dict.keys.contains("DisableCacheBuild") && dict["DisableCacheBuild"] != nil {
            self.disableCacheBuild = dict["DisableCacheBuild"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OverseaBuild") && dict["OverseaBuild"] != nil {
            self.overseaBuild = dict["OverseaBuild"] as! Bool
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRepoSourceCodeRepoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRepoSyncRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var namespaceName: String?

    public var repoName: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("SyncRuleName") && dict["SyncRuleName"] != nil {
            self.syncRuleName = dict["SyncRuleName"] as! String
        }
        if dict.keys.contains("SyncScope") && dict["SyncScope"] != nil {
            self.syncScope = dict["SyncScope"] as! String
        }
        if dict.keys.contains("SyncTrigger") && dict["SyncTrigger"] != nil {
            self.syncTrigger = dict["SyncTrigger"] as! String
        }
        if dict.keys.contains("TagFilter") && dict["TagFilter"] != nil {
            self.tagFilter = dict["TagFilter"] as! String
        }
        if dict.keys.contains("TargetInstanceId") && dict["TargetInstanceId"] != nil {
            self.targetInstanceId = dict["TargetInstanceId"] as! String
        }
        if dict.keys.contains("TargetNamespaceName") && dict["TargetNamespaceName"] != nil {
            self.targetNamespaceName = dict["TargetNamespaceName"] as! String
        }
        if dict.keys.contains("TargetRegionId") && dict["TargetRegionId"] != nil {
            self.targetRegionId = dict["TargetRegionId"] as! String
        }
        if dict.keys.contains("TargetRepoName") && dict["TargetRepoName"] != nil {
            self.targetRepoName = dict["TargetRepoName"] as! String
        }
        if dict.keys.contains("TargetUserId") && dict["TargetUserId"] != nil {
            self.targetUserId = dict["TargetUserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SyncRuleId") && dict["SyncRuleId"] != nil {
            self.syncRuleId = dict["SyncRuleId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRepoSyncRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Override") && dict["Override"] != nil {
            self.override_ = dict["Override"] as! Bool
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("TargetInstanceId") && dict["TargetInstanceId"] != nil {
            self.targetInstanceId = dict["TargetInstanceId"] as! String
        }
        if dict.keys.contains("TargetNamespace") && dict["TargetNamespace"] != nil {
            self.targetNamespace = dict["TargetNamespace"] as! String
        }
        if dict.keys.contains("TargetRegionId") && dict["TargetRegionId"] != nil {
            self.targetRegionId = dict["TargetRegionId"] as! String
        }
        if dict.keys.contains("TargetRepoName") && dict["TargetRepoName"] != nil {
            self.targetRepoName = dict["TargetRepoName"] as! String
        }
        if dict.keys.contains("TargetTag") && dict["TargetTag"] != nil {
            self.targetTag = dict["TargetTag"] as! String
        }
        if dict.keys.contains("TargetUserId") && dict["TargetUserId"] != nil {
            self.targetUserId = dict["TargetUserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SyncTaskId") && dict["SyncTaskId"] != nil {
            self.syncTaskId = dict["SyncTaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRepoSyncTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("SyncRuleId") && dict["SyncRuleId"] != nil {
            self.syncRuleId = dict["SyncRuleId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SyncTaskId") && dict["SyncTaskId"] != nil {
            self.syncTaskId = dict["SyncTaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRepoSyncTaskByRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FromTag") && dict["FromTag"] != nil {
            self.fromTag = dict["FromTag"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("ToTag") && dict["ToTag"] != nil {
            self.toTag = dict["ToTag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRepoTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRepoTagScanTaskRequest : Tea.TeaModel {
    public var digest: String?

    public var instanceId: String?

    public var repoId: String?

    public var scanService: String?

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
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Digest") && dict["Digest"] != nil {
            self.digest = dict["Digest"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("ScanService") && dict["ScanService"] != nil {
            self.scanService = dict["ScanService"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRepoTagScanTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("TriggerName") && dict["TriggerName"] != nil {
            self.triggerName = dict["TriggerName"] as! String
        }
        if dict.keys.contains("TriggerTag") && dict["TriggerTag"] != nil {
            self.triggerTag = dict["TriggerTag"] as! String
        }
        if dict.keys.contains("TriggerType") && dict["TriggerType"] != nil {
            self.triggerType = dict["TriggerType"] as! String
        }
        if dict.keys.contains("TriggerUrl") && dict["TriggerUrl"] != nil {
            self.triggerUrl = dict["TriggerUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TriggerId") && dict["TriggerId"] != nil {
            self.triggerId = dict["TriggerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRepoTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
        }
        if dict.keys.contains("RepoType") && dict["RepoType"] != nil {
            self.repoType = dict["RepoType"] as! String
        }
        if dict.keys.contains("Summary") && dict["Summary"] != nil {
            self.summary = dict["Summary"] as! String
        }
        if dict.keys.contains("TagImmutability") && dict["TagImmutability"] != nil {
            self.tagImmutability = dict["TagImmutability"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChainId") && dict["ChainId"] != nil {
            self.chainId = dict["ChainId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteChainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteChartNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Chart") && dict["Chart"] != nil {
            self.chart = dict["Chart"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Release") && dict["Release"] != nil {
            self.release = dict["Release"] as! String
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteChartReleaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteChartRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteEventCenterRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
            self.endpointType = dict["EndpointType"] as! String
        }
        if dict.keys.contains("Entry") && dict["Entry"] != nil {
            self.entry = dict["Entry"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteInstanceEndpointAclPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
            self.vswitchId = dict["VswitchId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteInstanceVpcEndpointLinkedVpcResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRuleId") && dict["BuildRuleId"] != nil {
            self.buildRuleId = dict["BuildRuleId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteRepoBuildRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SyncRuleId") && dict["SyncRuleId"] != nil {
            self.syncRuleId = dict["SyncRuleId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteRepoSyncRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteRepoTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("TriggerId") && dict["TriggerId"] != nil {
            self.triggerId = dict["TriggerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteRepoTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactType") && dict["ArtifactType"] != nil {
            self.artifactType = dict["ArtifactType"] as! String
        }
        if dict.keys.contains("BuildRuleId") && dict["BuildRuleId"] != nil {
            self.buildRuleId = dict["BuildRuleId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ScopeId") && dict["ScopeId"] != nil {
            self.scopeId = dict["ScopeId"] as! String
        }
        if dict.keys.contains("ScopeType") && dict["ScopeType"] != nil {
            self.scopeType = dict["ScopeType"] as! String
        }
    }
}

public class GetArtifactBuildRuleResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageIndexOnly") && dict["ImageIndexOnly"] != nil {
                self.imageIndexOnly = dict["ImageIndexOnly"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactType") && dict["ArtifactType"] != nil {
            self.artifactType = dict["ArtifactType"] as! String
        }
        if dict.keys.contains("BuildRuleId") && dict["BuildRuleId"] != nil {
            self.buildRuleId = dict["BuildRuleId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            var model = GetArtifactBuildRuleResponseBody.Parameters()
            model.fromMap(dict["Parameters"] as! [String: Any])
            self.parameters = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScopeId") && dict["ScopeId"] != nil {
            self.scopeId = dict["ScopeId"] as! String
        }
        if dict.keys.contains("ScopeType") && dict["ScopeType"] != nil {
            self.scopeType = dict["ScopeType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetArtifactBuildRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildTaskId") && dict["BuildTaskId"] != nil {
            self.buildTaskId = dict["BuildTaskId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ArtifactType") && dict["ArtifactType"] != nil {
                self.artifactType = dict["ArtifactType"] as! String
            }
            if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
                self.repoId = dict["RepoId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ArtifactType") && dict["ArtifactType"] != nil {
                self.artifactType = dict["ArtifactType"] as! String
            }
            if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
                self.repoId = dict["RepoId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactBuildType") && dict["ArtifactBuildType"] != nil {
            self.artifactBuildType = dict["ArtifactBuildType"] as! String
        }
        if dict.keys.contains("BuildTaskId") && dict["BuildTaskId"] != nil {
            self.buildTaskId = dict["BuildTaskId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int32
        }
        if dict.keys.contains("Instructions") && dict["Instructions"] != nil {
            self.instructions = dict["Instructions"] as! [String]
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SourceArtifact") && dict["SourceArtifact"] != nil {
            var model = GetArtifactBuildTaskResponseBody.SourceArtifact()
            model.fromMap(dict["SourceArtifact"] as! [String: Any])
            self.sourceArtifact = model
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int32
        }
        if dict.keys.contains("TargetArtifact") && dict["TargetArtifact"] != nil {
            var model = GetArtifactBuildTaskResponseBody.TargetArtifact()
            model.fromMap(dict["TargetArtifact"] as! [String: Any])
            self.targetArtifact = model
        }
        if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
            self.taskStatus = dict["TaskStatus"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetArtifactBuildTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizationToken") && dict["AuthorizationToken"] != nil {
            self.authorizationToken = dict["AuthorizationToken"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TempUsername") && dict["TempUsername"] != nil {
            self.tempUsername = dict["TempUsername"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetAuthorizationTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChainId") && dict["ChainId"] != nil {
            self.chainId = dict["ChainId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Action") && dict["Action"] != nil {
                            self.action = dict["Action"] as! String
                        }
                        if dict.keys.contains("BaselineList") && dict["BaselineList"] != nil {
                            self.baselineList = dict["BaselineList"] as! String
                        }
                        if dict.keys.contains("IssueCount") && dict["IssueCount"] != nil {
                            self.issueCount = dict["IssueCount"] as! String
                        }
                        if dict.keys.contains("IssueLevel") && dict["IssueLevel"] != nil {
                            self.issueLevel = dict["IssueLevel"] as! String
                        }
                        if dict.keys.contains("IssueList") && dict["IssueList"] != nil {
                            self.issueList = dict["IssueList"] as! String
                        }
                        if dict.keys.contains("Logic") && dict["Logic"] != nil {
                            self.logic = dict["Logic"] as! String
                        }
                        if dict.keys.contains("MaliciousList") && dict["MaliciousList"] != nil {
                            self.maliciousList = dict["MaliciousList"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DenyPolicy") && dict["DenyPolicy"] != nil {
                        var model = GetChainResponseBody.ChainConfig.Nodes.NodeConfig.DenyPolicy()
                        model.fromMap(dict["DenyPolicy"] as! [String: Any])
                        self.denyPolicy = model
                    }
                    if dict.keys.contains("Retry") && dict["Retry"] != nil {
                        self.retry = dict["Retry"] as! Int32
                    }
                    if dict.keys.contains("ScanEngine") && dict["ScanEngine"] != nil {
                        self.scanEngine = dict["ScanEngine"] as! String
                    }
                    if dict.keys.contains("Timeout") && dict["Timeout"] != nil {
                        self.timeout = dict["Timeout"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Enable") && dict["Enable"] != nil {
                    self.enable = dict["Enable"] as! Bool
                }
                if dict.keys.contains("NodeConfig") && dict["NodeConfig"] != nil {
                    var model = GetChainResponseBody.ChainConfig.Nodes.NodeConfig()
                    model.fromMap(dict["NodeConfig"] as! [String: Any])
                    self.nodeConfig = model
                }
                if dict.keys.contains("NodeName") && dict["NodeName"] != nil {
                    self.nodeName = dict["NodeName"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("NodeName") && dict["NodeName"] != nil {
                        self.nodeName = dict["NodeName"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("NodeName") && dict["NodeName"] != nil {
                        self.nodeName = dict["NodeName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("From") && dict["From"] != nil {
                    var model = GetChainResponseBody.ChainConfig.Routers.From()
                    model.fromMap(dict["From"] as! [String: Any])
                    self.from = model
                }
                if dict.keys.contains("To") && dict["To"] != nil {
                    var model = GetChainResponseBody.ChainConfig.Routers.To()
                    model.fromMap(dict["To"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChainConfigId") && dict["ChainConfigId"] != nil {
                self.chainConfigId = dict["ChainConfigId"] as! String
            }
            if dict.keys.contains("IsActive") && dict["IsActive"] != nil {
                self.isActive = dict["IsActive"] as! Bool
            }
            if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
                var tmp : [GetChainResponseBody.ChainConfig.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = GetChainResponseBody.ChainConfig.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Routers") && dict["Routers"] != nil {
                var tmp : [GetChainResponseBody.ChainConfig.Routers] = []
                for v in dict["Routers"] as! [Any] {
                    var model = GetChainResponseBody.ChainConfig.Routers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.routers = tmp
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChainConfig") && dict["ChainConfig"] != nil {
            var model = GetChainResponseBody.ChainConfig()
            model.fromMap(dict["ChainConfig"] as! [String: Any])
            self.chainConfig = model
        }
        if dict.keys.contains("ChainId") && dict["ChainId"] != nil {
            self.chainId = dict["ChainId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! Int64
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScopeExclude") && dict["ScopeExclude"] != nil {
            self.scopeExclude = dict["ScopeExclude"] as! [String]
        }
        if dict.keys.contains("ScopeId") && dict["ScopeId"] != nil {
            self.scopeId = dict["ScopeId"] as! String
        }
        if dict.keys.contains("ScopeType") && dict["ScopeType"] != nil {
            self.scopeType = dict["ScopeType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetChainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoCreateRepo") && dict["AutoCreateRepo"] != nil {
            self.autoCreateRepo = dict["AutoCreateRepo"] as! Bool
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DefaultRepoType") && dict["DefaultRepoType"] != nil {
            self.defaultRepoType = dict["DefaultRepoType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("NamespaceId") && dict["NamespaceId"] != nil {
            self.namespaceId = dict["NamespaceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
        }
        if dict.keys.contains("NamespaceStatus") && dict["NamespaceStatus"] != nil {
            self.namespaceStatus = dict["NamespaceStatus"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetChartNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! Int64
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
        }
        if dict.keys.contains("RepoStatus") && dict["RepoStatus"] != nil {
            self.repoStatus = dict["RepoStatus"] as! String
        }
        if dict.keys.contains("RepoType") && dict["RepoType"] != nil {
            self.repoType = dict["RepoType"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Summary") && dict["Summary"] != nil {
            self.summary = dict["Summary"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetChartRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                self.tagValue = dict["TagValue"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceIssue") && dict["InstanceIssue"] != nil {
            self.instanceIssue = dict["InstanceIssue"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("InstanceSpecification") && dict["InstanceSpecification"] != nil {
            self.instanceSpecification = dict["InstanceSpecification"] as! String
        }
        if dict.keys.contains("InstanceStatus") && dict["InstanceStatus"] != nil {
            self.instanceStatus = dict["InstanceStatus"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [GetInstanceResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = GetInstanceResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") && dict["Count"] != nil {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetInstanceCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
            self.endpointType = dict["EndpointType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("Entry") && dict["Entry"] != nil {
                self.entry = dict["Entry"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclEnable") && dict["AclEnable"] != nil {
            self.aclEnable = dict["AclEnable"] as! Bool
        }
        if dict.keys.contains("AclEntries") && dict["AclEntries"] != nil {
            var tmp : [GetInstanceEndpointResponseBody.AclEntries] = []
            for v in dict["AclEntries"] as! [Any] {
                var model = GetInstanceEndpointResponseBody.AclEntries()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.aclEntries = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Domains") && dict["Domains"] != nil {
            var tmp : [GetInstanceEndpointResponseBody.Domains] = []
            for v in dict["Domains"] as! [Any] {
                var model = GetInstanceEndpointResponseBody.Domains()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.domains = tmp
        }
        if dict.keys.contains("Enable") && dict["Enable"] != nil {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetInstanceEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChartNamespaceQuota") && dict["ChartNamespaceQuota"] != nil {
            self.chartNamespaceQuota = dict["ChartNamespaceQuota"] as! String
        }
        if dict.keys.contains("ChartNamespaceUsage") && dict["ChartNamespaceUsage"] != nil {
            self.chartNamespaceUsage = dict["ChartNamespaceUsage"] as! String
        }
        if dict.keys.contains("ChartRepoQuota") && dict["ChartRepoQuota"] != nil {
            self.chartRepoQuota = dict["ChartRepoQuota"] as! String
        }
        if dict.keys.contains("ChartRepoUsage") && dict["ChartRepoUsage"] != nil {
            self.chartRepoUsage = dict["ChartRepoUsage"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("NamespaceQuota") && dict["NamespaceQuota"] != nil {
            self.namespaceQuota = dict["NamespaceQuota"] as! String
        }
        if dict.keys.contains("NamespaceUsage") && dict["NamespaceUsage"] != nil {
            self.namespaceUsage = dict["NamespaceUsage"] as! String
        }
        if dict.keys.contains("RepoQuota") && dict["RepoQuota"] != nil {
            self.repoQuota = dict["RepoQuota"] as! String
        }
        if dict.keys.contains("RepoUsage") && dict["RepoUsage"] != nil {
            self.repoUsage = dict["RepoUsage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetInstanceUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
        }
    }
}

public class GetInstanceVpcEndpointResponseBody : Tea.TeaModel {
    public class LinkedVpcs : Tea.TeaModel {
        public var defaultAccess: Bool?

        public var ip: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultAccess") && dict["DefaultAccess"] != nil {
                self.defaultAccess = dict["DefaultAccess"] as! Bool
            }
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
                self.vswitchId = dict["VswitchId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Domains") && dict["Domains"] != nil {
            self.domains = dict["Domains"] as! [String]
        }
        if dict.keys.contains("Enable") && dict["Enable"] != nil {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("LinkedVpcs") && dict["LinkedVpcs"] != nil {
            var tmp : [GetInstanceVpcEndpointResponseBody.LinkedVpcs] = []
            for v in dict["LinkedVpcs"] as! [Any] {
                var model = GetInstanceVpcEndpointResponseBody.LinkedVpcs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.linkedVpcs = tmp
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetInstanceVpcEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NamespaceId") && dict["NamespaceId"] != nil {
            self.namespaceId = dict["NamespaceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
        }
    }
}

public class GetNamespaceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoCreateRepo") && dict["AutoCreateRepo"] != nil {
            self.autoCreateRepo = dict["AutoCreateRepo"] as! Bool
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DefaultRepoType") && dict["DefaultRepoType"] != nil {
            self.defaultRepoType = dict["DefaultRepoType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("NamespaceId") && dict["NamespaceId"] != nil {
            self.namespaceId = dict["NamespaceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
        }
        if dict.keys.contains("NamespaceStatus") && dict["NamespaceStatus"] != nil {
            self.namespaceStatus = dict["NamespaceStatus"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRecordId") && dict["BuildRecordId"] != nil {
            self.buildRecordId = dict["BuildRecordId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageTag") && dict["ImageTag"] != nil {
                self.imageTag = dict["ImageTag"] as! String
            }
            if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
                self.repoName = dict["RepoName"] as! String
            }
            if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
                self.repoNamespaceName = dict["RepoNamespaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRecordId") && dict["BuildRecordId"] != nil {
            self.buildRecordId = dict["BuildRecordId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Image") && dict["Image"] != nil {
            var model = GetRepoBuildRecordResponseBody.Image()
            model.fromMap(dict["Image"] as! [String: Any])
            self.image = model
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetRepoBuildRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRecordId") && dict["BuildRecordId"] != nil {
            self.buildRecordId = dict["BuildRecordId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildStatus") && dict["BuildStatus"] != nil {
            self.buildStatus = dict["BuildStatus"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetRepoBuildRecordStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
            self.autoBuild = dict["AutoBuild"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CodeRepoDomain") && dict["CodeRepoDomain"] != nil {
            self.codeRepoDomain = dict["CodeRepoDomain"] as! String
        }
        if dict.keys.contains("CodeRepoName") && dict["CodeRepoName"] != nil {
            self.codeRepoName = dict["CodeRepoName"] as! String
        }
        if dict.keys.contains("CodeRepoNamespaceName") && dict["CodeRepoNamespaceName"] != nil {
            self.codeRepoNamespaceName = dict["CodeRepoNamespaceName"] as! String
        }
        if dict.keys.contains("CodeRepoType") && dict["CodeRepoType"] != nil {
            self.codeRepoType = dict["CodeRepoType"] as! String
        }
        if dict.keys.contains("DisableCacheBuild") && dict["DisableCacheBuild"] != nil {
            self.disableCacheBuild = dict["DisableCacheBuild"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("OverseaBuild") && dict["OverseaBuild"] != nil {
            self.overseaBuild = dict["OverseaBuild"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetRepoSourceCodeRepoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SyncTaskId") && dict["SyncTaskId"] != nil {
            self.syncTaskId = dict["SyncTaskId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageTag") && dict["ImageTag"] != nil {
                self.imageTag = dict["ImageTag"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
                self.repoName = dict["RepoName"] as! String
            }
            if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
                self.repoNamespaceName = dict["RepoNamespaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageTag") && dict["ImageTag"] != nil {
                self.imageTag = dict["ImageTag"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
                self.repoName = dict["RepoName"] as! String
            }
            if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
                self.repoNamespaceName = dict["RepoNamespaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ArtifactDigest") && dict["ArtifactDigest"] != nil {
                self.artifactDigest = dict["ArtifactDigest"] as! String
            }
            if dict.keys.contains("Digest") && dict["Digest"] != nil {
                self.digest = dict["Digest"] as! String
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int64
            }
            if dict.keys.contains("SyncLayerTaskId") && dict["SyncLayerTaskId"] != nil {
                self.syncLayerTaskId = dict["SyncLayerTaskId"] as! String
            }
            if dict.keys.contains("SyncedSize") && dict["SyncedSize"] != nil {
                self.syncedSize = dict["SyncedSize"] as! Int64
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! String
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
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.taskTrigger != nil {
            map["TaskTrigger"] = self.taskTrigger!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CrossUser") && dict["CrossUser"] != nil {
            self.crossUser = dict["CrossUser"] as! Bool
        }
        if dict.keys.contains("ImageFrom") && dict["ImageFrom"] != nil {
            var model = GetRepoSyncTaskResponseBody.ImageFrom()
            model.fromMap(dict["ImageFrom"] as! [String: Any])
            self.imageFrom = model
        }
        if dict.keys.contains("ImageTo") && dict["ImageTo"] != nil {
            var model = GetRepoSyncTaskResponseBody.ImageTo()
            model.fromMap(dict["ImageTo"] as! [String: Any])
            self.imageTo = model
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("LayerTasks") && dict["LayerTasks"] != nil {
            var tmp : [GetRepoSyncTaskResponseBody.LayerTasks] = []
            for v in dict["LayerTasks"] as! [Any] {
                var model = GetRepoSyncTaskResponseBody.LayerTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.layerTasks = tmp
        }
        if dict.keys.contains("Progress") && dict["Progress"] != nil {
            self.progress = dict["Progress"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SyncBatchTaskId") && dict["SyncBatchTaskId"] != nil {
            self.syncBatchTaskId = dict["SyncBatchTaskId"] as! String
        }
        if dict.keys.contains("SyncRuleId") && dict["SyncRuleId"] != nil {
            self.syncRuleId = dict["SyncRuleId"] as! String
        }
        if dict.keys.contains("SyncTaskId") && dict["SyncTaskId"] != nil {
            self.syncTaskId = dict["SyncTaskId"] as! String
        }
        if dict.keys.contains("SyncTransAccelerate") && dict["SyncTransAccelerate"] != nil {
            self.syncTransAccelerate = dict["SyncTransAccelerate"] as! Bool
        }
        if dict.keys.contains("SyncedSize") && dict["SyncedSize"] != nil {
            self.syncedSize = dict["SyncedSize"] as! Int64
        }
        if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
            self.taskStatus = dict["TaskStatus"] as! String
        }
        if dict.keys.contains("TaskTrigger") && dict["TaskTrigger"] != nil {
            self.taskTrigger = dict["TaskTrigger"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetRepoSyncTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Digest") && dict["Digest"] != nil {
            self.digest = dict["Digest"] as! String
        }
        if dict.keys.contains("ImageCreate") && dict["ImageCreate"] != nil {
            self.imageCreate = dict["ImageCreate"] as! Int64
        }
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageSize") && dict["ImageSize"] != nil {
            self.imageSize = dict["ImageSize"] as! Int64
        }
        if dict.keys.contains("ImageUpdate") && dict["ImageUpdate"] != nil {
            self.imageUpdate = dict["ImageUpdate"] as! Int64
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetRepoTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRepoTagLayersRequest : Tea.TeaModel {
    public var digest: String?

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
        if self.digest != nil {
            map["Digest"] = self.digest!
        }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Digest") && dict["Digest"] != nil {
            self.digest = dict["Digest"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
        }
    }
}

public class GetRepoTagLayersResponseBody : Tea.TeaModel {
    public class Layers : Tea.TeaModel {
        public var blobDigest: String?

        public var blobSize: Int64?

        public var layerCMD: String?

        public var layerIndex: Int32?

        public var layerInstruction: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blobDigest != nil {
                map["BlobDigest"] = self.blobDigest!
            }
            if self.blobSize != nil {
                map["BlobSize"] = self.blobSize!
            }
            if self.layerCMD != nil {
                map["LayerCMD"] = self.layerCMD!
            }
            if self.layerIndex != nil {
                map["LayerIndex"] = self.layerIndex!
            }
            if self.layerInstruction != nil {
                map["LayerInstruction"] = self.layerInstruction!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlobDigest") && dict["BlobDigest"] != nil {
                self.blobDigest = dict["BlobDigest"] as! String
            }
            if dict.keys.contains("BlobSize") && dict["BlobSize"] != nil {
                self.blobSize = dict["BlobSize"] as! Int64
            }
            if dict.keys.contains("LayerCMD") && dict["LayerCMD"] != nil {
                self.layerCMD = dict["LayerCMD"] as! String
            }
            if dict.keys.contains("LayerIndex") && dict["LayerIndex"] != nil {
                self.layerIndex = dict["LayerIndex"] as! Int32
            }
            if dict.keys.contains("LayerInstruction") && dict["LayerInstruction"] != nil {
                self.layerInstruction = dict["LayerInstruction"] as! String
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var layers: [GetRepoTagLayersResponseBody.Layers]?

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
        if self.layers != nil {
            var tmp : [Any] = []
            for k in self.layers! {
                tmp.append(k.toMap())
            }
            map["Layers"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("Layers") && dict["Layers"] != nil {
            var tmp : [GetRepoTagLayersResponseBody.Layers] = []
            for v in dict["Layers"] as! [Any] {
                var model = GetRepoTagLayersResponseBody.Layers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.layers = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetRepoTagLayersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepoTagLayersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetRepoTagLayersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRepoTagManifestRequest : Tea.TeaModel {
    public var instanceId: String?

    public var repoId: String?

    public var schemaVersion: Int32?

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
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! Int32
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
        }
    }
}

public class GetRepoTagManifestResponseBody : Tea.TeaModel {
    public class Manifest : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var digest: String?

            public var mediaType: String?

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
                if self.digest != nil {
                    map["Digest"] = self.digest!
                }
                if self.mediaType != nil {
                    map["MediaType"] = self.mediaType!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Digest") && dict["Digest"] != nil {
                    self.digest = dict["Digest"] as! String
                }
                if dict.keys.contains("MediaType") && dict["MediaType"] != nil {
                    self.mediaType = dict["MediaType"] as! String
                }
                if dict.keys.contains("Size") && dict["Size"] != nil {
                    self.size = dict["Size"] as! Int64
                }
            }
        }
        public class FsLayers : Tea.TeaModel {
            public var blobSum: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blobSum != nil {
                    map["BlobSum"] = self.blobSum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlobSum") && dict["BlobSum"] != nil {
                    self.blobSum = dict["BlobSum"] as! String
                }
            }
        }
        public class History : Tea.TeaModel {
            public var v1Compatibility: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.v1Compatibility != nil {
                    map["V1Compatibility"] = self.v1Compatibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("V1Compatibility") && dict["V1Compatibility"] != nil {
                    self.v1Compatibility = dict["V1Compatibility"] as! [String: Any]
                }
            }
        }
        public class Layers : Tea.TeaModel {
            public var digest: String?

            public var mediaType: String?

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
                if self.digest != nil {
                    map["Digest"] = self.digest!
                }
                if self.mediaType != nil {
                    map["MediaType"] = self.mediaType!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Digest") && dict["Digest"] != nil {
                    self.digest = dict["Digest"] as! String
                }
                if dict.keys.contains("MediaType") && dict["MediaType"] != nil {
                    self.mediaType = dict["MediaType"] as! String
                }
                if dict.keys.contains("Size") && dict["Size"] != nil {
                    self.size = dict["Size"] as! Int64
                }
            }
        }
        public class Signatures : Tea.TeaModel {
            public var header: [String: Any]?

            public var protected: String?

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
                if self.header != nil {
                    map["Header"] = self.header!
                }
                if self.protected != nil {
                    map["Protected"] = self.protected!
                }
                if self.signature != nil {
                    map["Signature"] = self.signature!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Header") && dict["Header"] != nil {
                    self.header = dict["Header"] as! [String: Any]
                }
                if dict.keys.contains("Protected") && dict["Protected"] != nil {
                    self.protected = dict["Protected"] as! String
                }
                if dict.keys.contains("Signature") && dict["Signature"] != nil {
                    self.signature = dict["Signature"] as! String
                }
            }
        }
        public var architecture: String?

        public var config: GetRepoTagManifestResponseBody.Manifest.Config?

        public var fsLayers: [GetRepoTagManifestResponseBody.Manifest.FsLayers]?

        public var history: [GetRepoTagManifestResponseBody.Manifest.History]?

        public var layers: [GetRepoTagManifestResponseBody.Manifest.Layers]?

        public var mediaType: String?

        public var name: String?

        public var schemaVersion: Int32?

        public var signatures: [GetRepoTagManifestResponseBody.Manifest.Signatures]?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.config?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.architecture != nil {
                map["Architecture"] = self.architecture!
            }
            if self.config != nil {
                map["Config"] = self.config?.toMap()
            }
            if self.fsLayers != nil {
                var tmp : [Any] = []
                for k in self.fsLayers! {
                    tmp.append(k.toMap())
                }
                map["FsLayers"] = tmp
            }
            if self.history != nil {
                var tmp : [Any] = []
                for k in self.history! {
                    tmp.append(k.toMap())
                }
                map["History"] = tmp
            }
            if self.layers != nil {
                var tmp : [Any] = []
                for k in self.layers! {
                    tmp.append(k.toMap())
                }
                map["Layers"] = tmp
            }
            if self.mediaType != nil {
                map["MediaType"] = self.mediaType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.signatures != nil {
                var tmp : [Any] = []
                for k in self.signatures! {
                    tmp.append(k.toMap())
                }
                map["Signatures"] = tmp
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Architecture") && dict["Architecture"] != nil {
                self.architecture = dict["Architecture"] as! String
            }
            if dict.keys.contains("Config") && dict["Config"] != nil {
                var model = GetRepoTagManifestResponseBody.Manifest.Config()
                model.fromMap(dict["Config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("FsLayers") && dict["FsLayers"] != nil {
                var tmp : [GetRepoTagManifestResponseBody.Manifest.FsLayers] = []
                for v in dict["FsLayers"] as! [Any] {
                    var model = GetRepoTagManifestResponseBody.Manifest.FsLayers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.fsLayers = tmp
            }
            if dict.keys.contains("History") && dict["History"] != nil {
                var tmp : [GetRepoTagManifestResponseBody.Manifest.History] = []
                for v in dict["History"] as! [Any] {
                    var model = GetRepoTagManifestResponseBody.Manifest.History()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.history = tmp
            }
            if dict.keys.contains("Layers") && dict["Layers"] != nil {
                var tmp : [GetRepoTagManifestResponseBody.Manifest.Layers] = []
                for v in dict["Layers"] as! [Any] {
                    var model = GetRepoTagManifestResponseBody.Manifest.Layers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.layers = tmp
            }
            if dict.keys.contains("MediaType") && dict["MediaType"] != nil {
                self.mediaType = dict["MediaType"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! Int32
            }
            if dict.keys.contains("Signatures") && dict["Signatures"] != nil {
                var tmp : [GetRepoTagManifestResponseBody.Manifest.Signatures] = []
                for v in dict["Signatures"] as! [Any] {
                    var model = GetRepoTagManifestResponseBody.Manifest.Signatures()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.signatures = tmp
            }
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                self.tag = dict["Tag"] as! String
            }
        }
    }
    public var code: String?

    public var isSuccess: Bool?

    public var manifest: GetRepoTagManifestResponseBody.Manifest?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.manifest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.manifest != nil {
            map["Manifest"] = self.manifest?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("Manifest") && dict["Manifest"] != nil {
            var model = GetRepoTagManifestResponseBody.Manifest()
            model.fromMap(dict["Manifest"] as! [String: Any])
            self.manifest = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetRepoTagManifestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepoTagManifestResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetRepoTagManifestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRepoTagScanStatusRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Digest") && dict["Digest"] != nil {
            self.digest = dict["Digest"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("ScanTaskId") && dict["ScanTaskId"] != nil {
            self.scanTaskId = dict["ScanTaskId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScanService") && dict["ScanService"] != nil {
            self.scanService = dict["ScanService"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetRepoTagScanStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Digest") && dict["Digest"] != nil {
            self.digest = dict["Digest"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("ScanTaskId") && dict["ScanTaskId"] != nil {
            self.scanTaskId = dict["ScanTaskId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HighSeverity") && dict["HighSeverity"] != nil {
            self.highSeverity = dict["HighSeverity"] as! Int32
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("LowSeverity") && dict["LowSeverity"] != nil {
            self.lowSeverity = dict["LowSeverity"] as! Int32
        }
        if dict.keys.contains("MediumSeverity") && dict["MediumSeverity"] != nil {
            self.mediumSeverity = dict["MediumSeverity"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalSeverity") && dict["TotalSeverity"] != nil {
            self.totalSeverity = dict["TotalSeverity"] as! Int32
        }
        if dict.keys.contains("UnknownSeverity") && dict["UnknownSeverity"] != nil {
            self.unknownSeverity = dict["UnknownSeverity"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetRepoTagScanSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! Int64
        }
        if dict.keys.contains("RepoBuildType") && dict["RepoBuildType"] != nil {
            self.repoBuildType = dict["RepoBuildType"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
        }
        if dict.keys.contains("RepoStatus") && dict["RepoStatus"] != nil {
            self.repoStatus = dict["RepoStatus"] as! String
        }
        if dict.keys.contains("RepoType") && dict["RepoType"] != nil {
            self.repoType = dict["RepoType"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Summary") && dict["Summary"] != nil {
            self.summary = dict["Summary"] as! String
        }
        if dict.keys.contains("TagImmutability") && dict["TagImmutability"] != nil {
            self.tagImmutability = dict["TagImmutability"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildTaskId") && dict["BuildTaskId"] != nil {
            self.buildTaskId = dict["BuildTaskId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Page") && dict["Page"] != nil {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LineNumber") && dict["LineNumber"] != nil {
                self.lineNumber = dict["LineNumber"] as! Int32
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildTaskLogs") && dict["BuildTaskLogs"] != nil {
            var tmp : [ListArtifactBuildTaskLogResponseBody.BuildTaskLogs] = []
            for v in dict["BuildTaskLogs"] as! [Any] {
                var model = ListArtifactBuildTaskLogResponseBody.BuildTaskLogs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.buildTaskLogs = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListArtifactBuildTaskLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChainId") && dict["ChainId"] != nil {
                self.chainId = dict["ChainId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ScopeExclude") && dict["ScopeExclude"] != nil {
                self.scopeExclude = dict["ScopeExclude"] as! [String]
            }
            if dict.keys.contains("ScopeId") && dict["ScopeId"] != nil {
                self.scopeId = dict["ScopeId"] as! String
            }
            if dict.keys.contains("ScopeType") && dict["ScopeType"] != nil {
                self.scopeType = dict["ScopeType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Chains") && dict["Chains"] != nil {
            var tmp : [ListChainResponseBody.Chains] = []
            for v in dict["Chains"] as! [Any] {
                var model = ListChainResponseBody.Chains()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.chains = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListChainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChainId") && dict["ChainId"] != nil {
                    self.chainId = dict["ChainId"] as! String
                }
                if dict.keys.contains("ChainName") && dict["ChainName"] != nil {
                    self.chainName = dict["ChainName"] as! String
                }
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Chain") && dict["Chain"] != nil {
                var model = ListChainInstanceResponseBody.ChainInstances.Chain()
                model.fromMap(dict["Chain"] as! [String: Any])
                self.chain = model
            }
            if dict.keys.contains("ChainInstanceId") && dict["ChainInstanceId"] != nil {
                self.chainInstanceId = dict["ChainInstanceId"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
                self.repoName = dict["RepoName"] as! String
            }
            if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
                self.repoNamespaceName = dict["RepoNamespaceName"] as! String
            }
            if dict.keys.contains("Result") && dict["Result"] != nil {
                self.result = dict["Result"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChainInstances") && dict["ChainInstances"] != nil {
            var tmp : [ListChainInstanceResponseBody.ChainInstances] = []
            for v in dict["ChainInstances"] as! [Any] {
                var model = ListChainInstanceResponseBody.ChainInstances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.chainInstances = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListChainInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
        }
        if dict.keys.contains("NamespaceStatus") && dict["NamespaceStatus"] != nil {
            self.namespaceStatus = dict["NamespaceStatus"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoCreateRepo") && dict["AutoCreateRepo"] != nil {
                self.autoCreateRepo = dict["AutoCreateRepo"] as! Bool
            }
            if dict.keys.contains("DefaultRepoType") && dict["DefaultRepoType"] != nil {
                self.defaultRepoType = dict["DefaultRepoType"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("NamespaceId") && dict["NamespaceId"] != nil {
                self.namespaceId = dict["NamespaceId"] as! String
            }
            if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
                self.namespaceName = dict["NamespaceName"] as! String
            }
            if dict.keys.contains("NamespaceStatus") && dict["NamespaceStatus"] != nil {
                self.namespaceStatus = dict["NamespaceStatus"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("Namespaces") && dict["Namespaces"] != nil {
            var tmp : [ListChartNamespaceResponseBody.Namespaces] = []
            for v in dict["Namespaces"] as! [Any] {
                var model = ListChartNamespaceResponseBody.Namespaces()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.namespaces = tmp
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListChartNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Chart") && dict["Chart"] != nil {
            self.chart = dict["Chart"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Chart") && dict["Chart"] != nil {
                self.chart = dict["Chart"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! Int64
            }
            if dict.keys.contains("Release") && dict["Release"] != nil {
                self.release = dict["Release"] as! String
            }
            if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
                self.repoId = dict["RepoId"] as! String
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChartReleases") && dict["ChartReleases"] != nil {
            var tmp : [ListChartReleaseResponseBody.ChartReleases] = []
            for v in dict["ChartReleases"] as! [Any] {
                var model = ListChartReleaseResponseBody.ChartReleases()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.chartReleases = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListChartReleaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
        }
        if dict.keys.contains("RepoStatus") && dict["RepoStatus"] != nil {
            self.repoStatus = dict["RepoStatus"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! Int64
            }
            if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
                self.repoId = dict["RepoId"] as! String
            }
            if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
                self.repoName = dict["RepoName"] as! String
            }
            if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
                self.repoNamespaceName = dict["RepoNamespaceName"] as! String
            }
            if dict.keys.contains("RepoStatus") && dict["RepoStatus"] != nil {
                self.repoStatus = dict["RepoStatus"] as! String
            }
            if dict.keys.contains("RepoType") && dict["RepoType"] != nil {
                self.repoType = dict["RepoType"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Summary") && dict["Summary"] != nil {
                self.summary = dict["Summary"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Repositories") && dict["Repositories"] != nil {
            var tmp : [ListChartRepositoryResponseBody.Repositories] = []
            for v in dict["Repositories"] as! [Any] {
                var model = ListChartRepositoryResponseBody.Repositories()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.repositories = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListChartRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventType") && dict["EventType"] != nil {
            self.eventType = dict["EventType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("EventChannel") && dict["EventChannel"] != nil {
                self.eventChannel = dict["EventChannel"] as! String
            }
            if dict.keys.contains("EventNotifyId") && dict["EventNotifyId"] != nil {
                self.eventNotifyId = dict["EventNotifyId"] as! String
            }
            if dict.keys.contains("EventNotifyMethod") && dict["EventNotifyMethod"] != nil {
                self.eventNotifyMethod = dict["EventNotifyMethod"] as! String
            }
            if dict.keys.contains("EventType") && dict["EventType"] != nil {
                self.eventType = dict["EventType"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
                self.namespace = dict["Namespace"] as! String
            }
            if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
                self.recordId = dict["RecordId"] as! String
            }
            if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
                self.repoName = dict["RepoName"] as! String
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Records") && dict["Records"] != nil {
            var tmp : [ListEventCenterRecordResponseBody.Records] = []
            for v in dict["Records"] as! [Any] {
                var model = ListEventCenterRecordResponseBody.Records()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.records = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListEventCenterRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleNames") && dict["RuleNames"] != nil {
            var tmp : [ListEventCenterRuleNameResponseBody.RuleNames] = []
            for v in dict["RuleNames"] as! [Any] {
                var model = ListEventCenterRuleNameResponseBody.RuleNames()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListEventCenterRuleNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("InstanceStatus") && dict["InstanceStatus"] != nil {
            self.instanceStatus = dict["InstanceStatus"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceIssue") && dict["InstanceIssue"] != nil {
                self.instanceIssue = dict["InstanceIssue"] as! String
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("InstanceSpecification") && dict["InstanceSpecification"] != nil {
                self.instanceSpecification = dict["InstanceSpecification"] as! String
            }
            if dict.keys.contains("InstanceStatus") && dict["InstanceStatus"] != nil {
                self.instanceStatus = dict["InstanceStatus"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListInstanceResponseBody.Instances.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListInstanceResponseBody.Instances.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Instances") && dict["Instances"] != nil {
            var tmp : [ListInstanceResponseBody.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = ListInstanceResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
        }
        if dict.keys.contains("Summary") && dict["Summary"] != nil {
            self.summary = dict["Summary"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Entry") && dict["Entry"] != nil {
                    self.entry = dict["Entry"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Domain") && dict["Domain"] != nil {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclEnable") && dict["AclEnable"] != nil {
                self.aclEnable = dict["AclEnable"] as! Bool
            }
            if dict.keys.contains("AclEntries") && dict["AclEntries"] != nil {
                var tmp : [ListInstanceEndpointResponseBody.Endpoints.AclEntries] = []
                for v in dict["AclEntries"] as! [Any] {
                    var model = ListInstanceEndpointResponseBody.Endpoints.AclEntries()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.aclEntries = tmp
            }
            if dict.keys.contains("Domains") && dict["Domains"] != nil {
                var tmp : [ListInstanceEndpointResponseBody.Endpoints.Domains] = []
                for v in dict["Domains"] as! [Any] {
                    var model = ListInstanceEndpointResponseBody.Endpoints.Domains()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domains = tmp
            }
            if dict.keys.contains("Enable") && dict["Enable"] != nil {
                self.enable = dict["Enable"] as! Bool
            }
            if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
                self.endpointType = dict["EndpointType"] as! String
            }
            if dict.keys.contains("LinkedVpcs") && dict["LinkedVpcs"] != nil {
                var tmp : [ListInstanceEndpointResponseBody.Endpoints.LinkedVpcs] = []
                for v in dict["LinkedVpcs"] as! [Any] {
                    var model = ListInstanceEndpointResponseBody.Endpoints.LinkedVpcs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.linkedVpcs = tmp
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Endpoints") && dict["Endpoints"] != nil {
            var tmp : [ListInstanceEndpointResponseBody.Endpoints] = []
            for v in dict["Endpoints"] as! [Any] {
                var model = ListInstanceEndpointResponseBody.Endpoints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.endpoints = tmp
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListInstanceEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var tmp : [ListInstanceRegionResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = ListInstanceRegionResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListInstanceRegionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
        }
        if dict.keys.contains("NamespaceStatus") && dict["NamespaceStatus"] != nil {
            self.namespaceStatus = dict["NamespaceStatus"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListNamespaceResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoCreateRepo") && dict["AutoCreateRepo"] != nil {
                self.autoCreateRepo = dict["AutoCreateRepo"] as! Bool
            }
            if dict.keys.contains("DefaultRepoType") && dict["DefaultRepoType"] != nil {
                self.defaultRepoType = dict["DefaultRepoType"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("NamespaceId") && dict["NamespaceId"] != nil {
                self.namespaceId = dict["NamespaceId"] as! String
            }
            if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
                self.namespaceName = dict["NamespaceName"] as! String
            }
            if dict.keys.contains("NamespaceStatus") && dict["NamespaceStatus"] != nil {
                self.namespaceStatus = dict["NamespaceStatus"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("Namespaces") && dict["Namespaces"] != nil {
            var tmp : [ListNamespaceResponseBody.Namespaces] = []
            for v in dict["Namespaces"] as! [Any] {
                var model = ListNamespaceResponseBody.Namespaces()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.namespaces = tmp
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ImageTag") && dict["ImageTag"] != nil {
                    self.imageTag = dict["ImageTag"] as! String
                }
                if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
                    self.repoId = dict["RepoId"] as! String
                }
                if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
                    self.repoName = dict["RepoName"] as! String
                }
                if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
                    self.repoNamespaceName = dict["RepoNamespaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BuildRecordId") && dict["BuildRecordId"] != nil {
                self.buildRecordId = dict["BuildRecordId"] as! String
            }
            if dict.keys.contains("BuildStatus") && dict["BuildStatus"] != nil {
                self.buildStatus = dict["BuildStatus"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Image") && dict["Image"] != nil {
                var model = ListRepoBuildRecordResponseBody.BuildRecords.Image()
                model.fromMap(dict["Image"] as! [String: Any])
                self.image = model
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRecords") && dict["BuildRecords"] != nil {
            var tmp : [ListRepoBuildRecordResponseBody.BuildRecords] = []
            for v in dict["BuildRecords"] as! [Any] {
                var model = ListRepoBuildRecordResponseBody.BuildRecords()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.buildRecords = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListRepoBuildRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRecordId") && dict["BuildRecordId"] != nil {
            self.buildRecordId = dict["BuildRecordId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Offset") && dict["Offset"] != nil {
            self.offset = dict["Offset"] as! Int32
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BuildStage") && dict["BuildStage"] != nil {
                self.buildStage = dict["BuildStage"] as! String
            }
            if dict.keys.contains("LineNumber") && dict["LineNumber"] != nil {
                self.lineNumber = dict["LineNumber"] as! Int32
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRecordLogs") && dict["BuildRecordLogs"] != nil {
            var tmp : [ListRepoBuildRecordLogResponseBody.BuildRecordLogs] = []
            for v in dict["BuildRecordLogs"] as! [Any] {
                var model = ListRepoBuildRecordLogResponseBody.BuildRecordLogs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.buildRecordLogs = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListRepoBuildRecordLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BuildArgs") && dict["BuildArgs"] != nil {
                self.buildArgs = dict["BuildArgs"] as! [String]
            }
            if dict.keys.contains("BuildRuleId") && dict["BuildRuleId"] != nil {
                self.buildRuleId = dict["BuildRuleId"] as! String
            }
            if dict.keys.contains("DockerfileLocation") && dict["DockerfileLocation"] != nil {
                self.dockerfileLocation = dict["DockerfileLocation"] as! String
            }
            if dict.keys.contains("DockerfileName") && dict["DockerfileName"] != nil {
                self.dockerfileName = dict["DockerfileName"] as! String
            }
            if dict.keys.contains("ImageTag") && dict["ImageTag"] != nil {
                self.imageTag = dict["ImageTag"] as! String
            }
            if dict.keys.contains("Platforms") && dict["Platforms"] != nil {
                self.platforms = dict["Platforms"] as! [String]
            }
            if dict.keys.contains("PushName") && dict["PushName"] != nil {
                self.pushName = dict["PushName"] as! String
            }
            if dict.keys.contains("PushType") && dict["PushType"] != nil {
                self.pushType = dict["PushType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRules") && dict["BuildRules"] != nil {
            var tmp : [ListRepoBuildRuleResponseBody.BuildRules] = []
            for v in dict["BuildRules"] as! [Any] {
                var model = ListRepoBuildRuleResponseBody.BuildRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.buildRules = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListRepoBuildRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("TargetInstanceId") && dict["TargetInstanceId"] != nil {
            self.targetInstanceId = dict["TargetInstanceId"] as! String
        }
        if dict.keys.contains("TargetRegionId") && dict["TargetRegionId"] != nil {
            self.targetRegionId = dict["TargetRegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("CrossUser") && dict["CrossUser"] != nil {
                self.crossUser = dict["CrossUser"] as! Bool
            }
            if dict.keys.contains("LocalInstanceId") && dict["LocalInstanceId"] != nil {
                self.localInstanceId = dict["LocalInstanceId"] as! String
            }
            if dict.keys.contains("LocalNamespaceName") && dict["LocalNamespaceName"] != nil {
                self.localNamespaceName = dict["LocalNamespaceName"] as! String
            }
            if dict.keys.contains("LocalRegionId") && dict["LocalRegionId"] != nil {
                self.localRegionId = dict["LocalRegionId"] as! String
            }
            if dict.keys.contains("LocalRepoName") && dict["LocalRepoName"] != nil {
                self.localRepoName = dict["LocalRepoName"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! Int64
            }
            if dict.keys.contains("SyncDirection") && dict["SyncDirection"] != nil {
                self.syncDirection = dict["SyncDirection"] as! String
            }
            if dict.keys.contains("SyncRuleId") && dict["SyncRuleId"] != nil {
                self.syncRuleId = dict["SyncRuleId"] as! String
            }
            if dict.keys.contains("SyncRuleName") && dict["SyncRuleName"] != nil {
                self.syncRuleName = dict["SyncRuleName"] as! String
            }
            if dict.keys.contains("SyncScope") && dict["SyncScope"] != nil {
                self.syncScope = dict["SyncScope"] as! String
            }
            if dict.keys.contains("SyncTrigger") && dict["SyncTrigger"] != nil {
                self.syncTrigger = dict["SyncTrigger"] as! String
            }
            if dict.keys.contains("TagFilter") && dict["TagFilter"] != nil {
                self.tagFilter = dict["TagFilter"] as! String
            }
            if dict.keys.contains("TargetInstanceId") && dict["TargetInstanceId"] != nil {
                self.targetInstanceId = dict["TargetInstanceId"] as! String
            }
            if dict.keys.contains("TargetNamespaceName") && dict["TargetNamespaceName"] != nil {
                self.targetNamespaceName = dict["TargetNamespaceName"] as! String
            }
            if dict.keys.contains("TargetRegionId") && dict["TargetRegionId"] != nil {
                self.targetRegionId = dict["TargetRegionId"] as! String
            }
            if dict.keys.contains("TargetRepoName") && dict["TargetRepoName"] != nil {
                self.targetRepoName = dict["TargetRepoName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SyncRules") && dict["SyncRules"] != nil {
            var tmp : [ListRepoSyncRuleResponseBody.SyncRules] = []
            for v in dict["SyncRules"] as! [Any] {
                var model = ListRepoSyncRuleResponseBody.SyncRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.syncRules = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListRepoSyncRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
        }
        if dict.keys.contains("SyncRecordId") && dict["SyncRecordId"] != nil {
            self.syncRecordId = dict["SyncRecordId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ImageTag") && dict["ImageTag"] != nil {
                    self.imageTag = dict["ImageTag"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
                    self.repoName = dict["RepoName"] as! String
                }
                if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
                    self.repoNamespaceName = dict["RepoNamespaceName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ImageTag") && dict["ImageTag"] != nil {
                    self.imageTag = dict["ImageTag"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
                    self.repoName = dict["RepoName"] as! String
                }
                if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
                    self.repoNamespaceName = dict["RepoNamespaceName"] as! String
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
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskTrigger != nil {
                map["TaskTrigger"] = self.taskTrigger!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("CrossUser") && dict["CrossUser"] != nil {
                self.crossUser = dict["CrossUser"] as! Bool
            }
            if dict.keys.contains("CustomLink") && dict["CustomLink"] != nil {
                self.customLink = dict["CustomLink"] as! Bool
            }
            if dict.keys.contains("ImageFrom") && dict["ImageFrom"] != nil {
                var model = ListRepoSyncTaskResponseBody.SyncTasks.ImageFrom()
                model.fromMap(dict["ImageFrom"] as! [String: Any])
                self.imageFrom = model
            }
            if dict.keys.contains("ImageTo") && dict["ImageTo"] != nil {
                var model = ListRepoSyncTaskResponseBody.SyncTasks.ImageTo()
                model.fromMap(dict["ImageTo"] as! [String: Any])
                self.imageTo = model
            }
            if dict.keys.contains("ModifedTime") && dict["ModifedTime"] != nil {
                self.modifedTime = dict["ModifedTime"] as! Int64
            }
            if dict.keys.contains("SyncBatchTaskId") && dict["SyncBatchTaskId"] != nil {
                self.syncBatchTaskId = dict["SyncBatchTaskId"] as! String
            }
            if dict.keys.contains("SyncRuleId") && dict["SyncRuleId"] != nil {
                self.syncRuleId = dict["SyncRuleId"] as! String
            }
            if dict.keys.contains("SyncTaskId") && dict["SyncTaskId"] != nil {
                self.syncTaskId = dict["SyncTaskId"] as! String
            }
            if dict.keys.contains("SyncTransAccelerate") && dict["SyncTransAccelerate"] != nil {
                self.syncTransAccelerate = dict["SyncTransAccelerate"] as! Bool
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskTrigger") && dict["TaskTrigger"] != nil {
                self.taskTrigger = dict["TaskTrigger"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SyncTasks") && dict["SyncTasks"] != nil {
            var tmp : [ListRepoSyncTaskResponseBody.SyncTasks] = []
            for v in dict["SyncTasks"] as! [Any] {
                var model = ListRepoSyncTaskResponseBody.SyncTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.syncTasks = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListRepoSyncTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Digest") && dict["Digest"] != nil {
                self.digest = dict["Digest"] as! String
            }
            if dict.keys.contains("ImageCreate") && dict["ImageCreate"] != nil {
                self.imageCreate = dict["ImageCreate"] as! String
            }
            if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageSize") && dict["ImageSize"] != nil {
                self.imageSize = dict["ImageSize"] as! Int64
            }
            if dict.keys.contains("ImageUpdate") && dict["ImageUpdate"] != nil {
                self.imageUpdate = dict["ImageUpdate"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                self.tag = dict["Tag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Images") && dict["Images"] != nil {
            var tmp : [ListRepoTagResponseBody.Images] = []
            for v in dict["Images"] as! [Any] {
                var model = ListRepoTagResponseBody.Images()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.images = tmp
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListRepoTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Digest") && dict["Digest"] != nil {
            self.digest = dict["Digest"] as! String
        }
        if dict.keys.contains("FilterValue") && dict["FilterValue"] != nil {
            self.filterValue = dict["FilterValue"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("ScanTaskId") && dict["ScanTaskId"] != nil {
            self.scanTaskId = dict["ScanTaskId"] as! String
        }
        if dict.keys.contains("ScanType") && dict["ScanType"] != nil {
            self.scanType = dict["ScanType"] as! String
        }
        if dict.keys.contains("Severity") && dict["Severity"] != nil {
            self.severity = dict["Severity"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("VulQueryKey") && dict["VulQueryKey"] != nil {
            self.vulQueryKey = dict["VulQueryKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddedBy") && dict["AddedBy"] != nil {
                self.addedBy = dict["AddedBy"] as! String
            }
            if dict.keys.contains("AliasName") && dict["AliasName"] != nil {
                self.aliasName = dict["AliasName"] as! String
            }
            if dict.keys.contains("CveLink") && dict["CveLink"] != nil {
                self.cveLink = dict["CveLink"] as! String
            }
            if dict.keys.contains("CveLocation") && dict["CveLocation"] != nil {
                self.cveLocation = dict["CveLocation"] as! String
            }
            if dict.keys.contains("CveName") && dict["CveName"] != nil {
                self.cveName = dict["CveName"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Feature") && dict["Feature"] != nil {
                self.feature = dict["Feature"] as! String
            }
            if dict.keys.contains("FixCmd") && dict["FixCmd"] != nil {
                self.fixCmd = dict["FixCmd"] as! String
            }
            if dict.keys.contains("ScanType") && dict["ScanType"] != nil {
                self.scanType = dict["ScanType"] as! String
            }
            if dict.keys.contains("Severity") && dict["Severity"] != nil {
                self.severity = dict["Severity"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VersionFixed") && dict["VersionFixed"] != nil {
                self.versionFixed = dict["VersionFixed"] as! String
            }
            if dict.keys.contains("VersionFormat") && dict["VersionFormat"] != nil {
                self.versionFormat = dict["VersionFormat"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Vulnerabilities") && dict["Vulnerabilities"] != nil {
            var tmp : [ListRepoTagScanResultResponseBody.Vulnerabilities] = []
            for v in dict["Vulnerabilities"] as! [Any] {
                var model = ListRepoTagScanResultResponseBody.Vulnerabilities()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListRepoTagScanResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RepoEvent") && dict["RepoEvent"] != nil {
                self.repoEvent = dict["RepoEvent"] as! String
            }
            if dict.keys.contains("TriggerId") && dict["TriggerId"] != nil {
                self.triggerId = dict["TriggerId"] as! String
            }
            if dict.keys.contains("TriggerName") && dict["TriggerName"] != nil {
                self.triggerName = dict["TriggerName"] as! String
            }
            if dict.keys.contains("TriggerTag") && dict["TriggerTag"] != nil {
                self.triggerTag = dict["TriggerTag"] as! String
            }
            if dict.keys.contains("TriggerType") && dict["TriggerType"] != nil {
                self.triggerType = dict["TriggerType"] as! String
            }
            if dict.keys.contains("TriggerUrl") && dict["TriggerUrl"] != nil {
                self.triggerUrl = dict["TriggerUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Triggers") && dict["Triggers"] != nil {
            var tmp : [ListRepoTriggerResponseBody.Triggers] = []
            for v in dict["Triggers"] as! [Any] {
                var model = ListRepoTriggerResponseBody.Triggers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListRepoTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
        }
        if dict.keys.contains("RepoStatus") && dict["RepoStatus"] != nil {
            self.repoStatus = dict["RepoStatus"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! Int64
            }
            if dict.keys.contains("RepoBuildType") && dict["RepoBuildType"] != nil {
                self.repoBuildType = dict["RepoBuildType"] as! String
            }
            if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
                self.repoId = dict["RepoId"] as! String
            }
            if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
                self.repoName = dict["RepoName"] as! String
            }
            if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
                self.repoNamespaceName = dict["RepoNamespaceName"] as! String
            }
            if dict.keys.contains("RepoStatus") && dict["RepoStatus"] != nil {
                self.repoStatus = dict["RepoStatus"] as! String
            }
            if dict.keys.contains("RepoType") && dict["RepoType"] != nil {
                self.repoType = dict["RepoType"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Summary") && dict["Summary"] != nil {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("TagImmutability") && dict["TagImmutability"] != nil {
                self.tagImmutability = dict["TagImmutability"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Repositories") && dict["Repositories"] != nil {
            var tmp : [ListRepositoryResponseBody.Repositories] = []
            for v in dict["Repositories"] as! [Any] {
                var model = ListRepositoryResponseBody.Repositories()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.repositories = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Digest") && dict["Digest"] != nil {
            self.digest = dict["Digest"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Level") && dict["Level"] != nil {
            self.level = dict["Level"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("ScanTaskId") && dict["ScanTaskId"] != nil {
            self.scanTaskId = dict["ScanTaskId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BaselineClassAlias") && dict["BaselineClassAlias"] != nil {
                self.baselineClassAlias = dict["BaselineClassAlias"] as! String
            }
            if dict.keys.contains("BaselineDetailAdvice") && dict["BaselineDetailAdvice"] != nil {
                self.baselineDetailAdvice = dict["BaselineDetailAdvice"] as! String
            }
            if dict.keys.contains("BaselineDetailDescription") && dict["BaselineDetailDescription"] != nil {
                self.baselineDetailDescription = dict["BaselineDetailDescription"] as! String
            }
            if dict.keys.contains("BaselineDetailPrompt") && dict["BaselineDetailPrompt"] != nil {
                self.baselineDetailPrompt = dict["BaselineDetailPrompt"] as! String
            }
            if dict.keys.contains("BaselineItemCount") && dict["BaselineItemCount"] != nil {
                self.baselineItemCount = dict["BaselineItemCount"] as! Int32
            }
            if dict.keys.contains("BaselineNameAlias") && dict["BaselineNameAlias"] != nil {
                self.baselineNameAlias = dict["BaselineNameAlias"] as! String
            }
            if dict.keys.contains("BaselineNameKey") && dict["BaselineNameKey"] != nil {
                self.baselineNameKey = dict["BaselineNameKey"] as! String
            }
            if dict.keys.contains("BaselineNameLevel") && dict["BaselineNameLevel"] != nil {
                self.baselineNameLevel = dict["BaselineNameLevel"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("FirstScanTime") && dict["FirstScanTime"] != nil {
                self.firstScanTime = dict["FirstScanTime"] as! Int64
            }
            if dict.keys.contains("HighRiskItemCount") && dict["HighRiskItemCount"] != nil {
                self.highRiskItemCount = dict["HighRiskItemCount"] as! Int32
            }
            if dict.keys.contains("LowRiskItemCount") && dict["LowRiskItemCount"] != nil {
                self.lowRiskItemCount = dict["LowRiskItemCount"] as! Int32
            }
            if dict.keys.contains("MiddleRiskItemCount") && dict["MiddleRiskItemCount"] != nil {
                self.middleRiskItemCount = dict["MiddleRiskItemCount"] as! Int32
            }
            if dict.keys.contains("ScanTaskId") && dict["ScanTaskId"] != nil {
                self.scanTaskId = dict["ScanTaskId"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScanBaselines") && dict["ScanBaselines"] != nil {
            var tmp : [ListScanBaselineByTaskResponseBody.ScanBaselines] = []
            for v in dict["ScanBaselines"] as! [Any] {
                var model = ListScanBaselineByTaskResponseBody.ScanBaselines()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.scanBaselines = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListScanBaselineByTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Digest") && dict["Digest"] != nil {
            self.digest = dict["Digest"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Level") && dict["Level"] != nil {
            self.level = dict["Level"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("ScanTaskId") && dict["ScanTaskId"] != nil {
            self.scanTaskId = dict["ScanTaskId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("FilePath") && dict["FilePath"] != nil {
                self.filePath = dict["FilePath"] as! String
            }
            if dict.keys.contains("FirstScanTime") && dict["FirstScanTime"] != nil {
                self.firstScanTime = dict["FirstScanTime"] as! Int64
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("MaliciousMd5") && dict["MaliciousMd5"] != nil {
                self.maliciousMd5 = dict["MaliciousMd5"] as! String
            }
            if dict.keys.contains("MaliciousName") && dict["MaliciousName"] != nil {
                self.maliciousName = dict["MaliciousName"] as! String
            }
            if dict.keys.contains("ScanTaskId") && dict["ScanTaskId"] != nil {
                self.scanTaskId = dict["ScanTaskId"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScanMaliciousFiles") && dict["ScanMaliciousFiles"] != nil {
            var tmp : [ListScanMaliciousFileByTaskResponseBody.ScanMaliciousFiles] = []
            for v in dict["ScanMaliciousFiles"] as! [Any] {
                var model = ListScanMaliciousFileByTaskResponseBody.ScanMaliciousFiles()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.scanMaliciousFiles = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListScanMaliciousFileByTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagResource") && dict["TagResource"] != nil {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in dict["TagResource"] as! [Any] {
                    var model = ListTagResourcesResponseBody.TagResources.TagResource()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(dict["TagResources"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResetLoginPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChainConfig") && dict["ChainConfig"] != nil {
            self.chainConfig = dict["ChainConfig"] as! String
        }
        if dict.keys.contains("ChainId") && dict["ChainId"] != nil {
            self.chainId = dict["ChainId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ScopeExclude") && dict["ScopeExclude"] != nil {
            self.scopeExclude = dict["ScopeExclude"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateChainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoCreateRepo") && dict["AutoCreateRepo"] != nil {
            self.autoCreateRepo = dict["AutoCreateRepo"] as! Bool
        }
        if dict.keys.contains("DefaultRepoType") && dict["DefaultRepoType"] != nil {
            self.defaultRepoType = dict["DefaultRepoType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateChartNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
        }
        if dict.keys.contains("RepoType") && dict["RepoType"] != nil {
            self.repoType = dict["RepoType"] as! String
        }
        if dict.keys.contains("Summary") && dict["Summary"] != nil {
            self.summary = dict["Summary"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateChartRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventChannel") && dict["EventChannel"] != nil {
            self.eventChannel = dict["EventChannel"] as! String
        }
        if dict.keys.contains("EventConfig") && dict["EventConfig"] != nil {
            self.eventConfig = dict["EventConfig"] as! String
        }
        if dict.keys.contains("EventScope") && dict["EventScope"] != nil {
            self.eventScope = dict["EventScope"] as! String
        }
        if dict.keys.contains("EventType") && dict["EventType"] != nil {
            self.eventType = dict["EventType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Namespaces") && dict["Namespaces"] != nil {
            self.namespaces = dict["Namespaces"] as! [String]
        }
        if dict.keys.contains("RepoNames") && dict["RepoNames"] != nil {
            self.repoNames = dict["RepoNames"] as! [String]
        }
        if dict.keys.contains("RepoTagFilterPattern") && dict["RepoTagFilterPattern"] != nil {
            self.repoTagFilterPattern = dict["RepoTagFilterPattern"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
            self.ruleName = dict["RuleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventChannel") && dict["EventChannel"] != nil {
            self.eventChannel = dict["EventChannel"] as! String
        }
        if dict.keys.contains("EventConfig") && dict["EventConfig"] != nil {
            self.eventConfig = dict["EventConfig"] as! String
        }
        if dict.keys.contains("EventScope") && dict["EventScope"] != nil {
            self.eventScope = dict["EventScope"] as! String
        }
        if dict.keys.contains("EventType") && dict["EventType"] != nil {
            self.eventType = dict["EventType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Namespaces") && dict["Namespaces"] != nil {
            self.namespacesShrink = dict["Namespaces"] as! String
        }
        if dict.keys.contains("RepoNames") && dict["RepoNames"] != nil {
            self.repoNamesShrink = dict["RepoNames"] as! String
        }
        if dict.keys.contains("RepoTagFilterPattern") && dict["RepoTagFilterPattern"] != nil {
            self.repoTagFilterPattern = dict["RepoTagFilterPattern"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
            self.ruleName = dict["RuleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateEventCenterRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Enable") && dict["Enable"] != nil {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
            self.endpointType = dict["EndpointType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateInstanceEndpointStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateNamespaceRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoCreateRepo") && dict["AutoCreateRepo"] != nil {
            self.autoCreateRepo = dict["AutoCreateRepo"] as! Bool
        }
        if dict.keys.contains("DefaultRepoType") && dict["DefaultRepoType"] != nil {
            self.defaultRepoType = dict["DefaultRepoType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NamespaceName") && dict["NamespaceName"] != nil {
            self.namespaceName = dict["NamespaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateNamespaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildArgs") && dict["BuildArgs"] != nil {
            self.buildArgs = dict["BuildArgs"] as! [String]
        }
        if dict.keys.contains("BuildRuleId") && dict["BuildRuleId"] != nil {
            self.buildRuleId = dict["BuildRuleId"] as! String
        }
        if dict.keys.contains("DockerfileLocation") && dict["DockerfileLocation"] != nil {
            self.dockerfileLocation = dict["DockerfileLocation"] as! String
        }
        if dict.keys.contains("DockerfileName") && dict["DockerfileName"] != nil {
            self.dockerfileName = dict["DockerfileName"] as! String
        }
        if dict.keys.contains("ImageTag") && dict["ImageTag"] != nil {
            self.imageTag = dict["ImageTag"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Platforms") && dict["Platforms"] != nil {
            self.platforms = dict["Platforms"] as! [String]
        }
        if dict.keys.contains("PushName") && dict["PushName"] != nil {
            self.pushName = dict["PushName"] as! String
        }
        if dict.keys.contains("PushType") && dict["PushType"] != nil {
            self.pushType = dict["PushType"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuildRuleId") && dict["BuildRuleId"] != nil {
            self.buildRuleId = dict["BuildRuleId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateRepoBuildRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
            self.autoBuild = dict["AutoBuild"] as! String
        }
        if dict.keys.contains("CodeRepoId") && dict["CodeRepoId"] != nil {
            self.codeRepoId = dict["CodeRepoId"] as! String
        }
        if dict.keys.contains("CodeRepoName") && dict["CodeRepoName"] != nil {
            self.codeRepoName = dict["CodeRepoName"] as! String
        }
        if dict.keys.contains("CodeRepoNamespaceName") && dict["CodeRepoNamespaceName"] != nil {
            self.codeRepoNamespaceName = dict["CodeRepoNamespaceName"] as! String
        }
        if dict.keys.contains("CodeRepoType") && dict["CodeRepoType"] != nil {
            self.codeRepoType = dict["CodeRepoType"] as! String
        }
        if dict.keys.contains("DisableCacheBuild") && dict["DisableCacheBuild"] != nil {
            self.disableCacheBuild = dict["DisableCacheBuild"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OverseaBuild") && dict["OverseaBuild"] != nil {
            self.overseaBuild = dict["OverseaBuild"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateRepoSourceCodeRepoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("TriggerId") && dict["TriggerId"] != nil {
            self.triggerId = dict["TriggerId"] as! String
        }
        if dict.keys.contains("TriggerName") && dict["TriggerName"] != nil {
            self.triggerName = dict["TriggerName"] as! String
        }
        if dict.keys.contains("TriggerTag") && dict["TriggerTag"] != nil {
            self.triggerTag = dict["TriggerTag"] as! String
        }
        if dict.keys.contains("TriggerType") && dict["TriggerType"] != nil {
            self.triggerType = dict["TriggerType"] as! String
        }
        if dict.keys.contains("TriggerUrl") && dict["TriggerUrl"] != nil {
            self.triggerUrl = dict["TriggerUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateRepoTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RepoId") && dict["RepoId"] != nil {
            self.repoId = dict["RepoId"] as! String
        }
        if dict.keys.contains("RepoName") && dict["RepoName"] != nil {
            self.repoName = dict["RepoName"] as! String
        }
        if dict.keys.contains("RepoNamespaceName") && dict["RepoNamespaceName"] != nil {
            self.repoNamespaceName = dict["RepoNamespaceName"] as! String
        }
        if dict.keys.contains("RepoType") && dict["RepoType"] != nil {
            self.repoType = dict["RepoType"] as! String
        }
        if dict.keys.contains("Summary") && dict["Summary"] != nil {
            self.summary = dict["Summary"] as! String
        }
        if dict.keys.contains("TagImmutability") && dict["TagImmutability"] != nil {
            self.tagImmutability = dict["TagImmutability"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsSuccess") && dict["IsSuccess"] != nil {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
