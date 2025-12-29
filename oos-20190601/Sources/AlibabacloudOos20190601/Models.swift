import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AnalyzeGitRepositoryRequest : Tea.TeaModel {
    public var branch: String?

    public var clientToken: String?

    public var orgId: String?

    public var owner: String?

    public var platform: String?

    public var regionId: String?

    public var repoFullName: String?

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
        if self.branch != nil {
            map["Branch"] = self.branch!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.repoFullName != nil {
            map["RepoFullName"] = self.repoFullName!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Branch"] as? String {
            self.branch = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RepoFullName"] as? String {
            self.repoFullName = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class AnalyzeGitRepositoryResponseBody : Tea.TeaModel {
    public class AnalysisResults : Tea.TeaModel {
        public class BuildFiles : Tea.TeaModel {
            public var fileType: String?

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
                if self.fileType != nil {
                    map["FileType"] = self.fileType!
                }
                if self.paths != nil {
                    map["Paths"] = self.paths!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileType"] as? String {
                    self.fileType = value
                }
                if let value = dict["Paths"] as? [String] {
                    self.paths = value
                }
            }
        }
        public var buildFiles: [AnalyzeGitRepositoryResponseBody.AnalysisResults.BuildFiles]?

        public var buildType: String?

        public var runtimeType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildFiles != nil {
                var tmp : [Any] = []
                for k in self.buildFiles! {
                    tmp.append(k.toMap())
                }
                map["BuildFiles"] = tmp
            }
            if self.buildType != nil {
                map["BuildType"] = self.buildType!
            }
            if self.runtimeType != nil {
                map["RuntimeType"] = self.runtimeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BuildFiles"] as? [Any?] {
                var tmp : [AnalyzeGitRepositoryResponseBody.AnalysisResults.BuildFiles] = []
                for v in value {
                    if v != nil {
                        var model = AnalyzeGitRepositoryResponseBody.AnalysisResults.BuildFiles()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.buildFiles = tmp
            }
            if let value = dict["BuildType"] as? String {
                self.buildType = value
            }
            if let value = dict["RuntimeType"] as? String {
                self.runtimeType = value
            }
        }
    }
    public var analysisResults: [AnalyzeGitRepositoryResponseBody.AnalysisResults]?

    public var count: Int32?

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
        if self.analysisResults != nil {
            var tmp : [Any] = []
            for k in self.analysisResults! {
                tmp.append(k.toMap())
            }
            map["AnalysisResults"] = tmp
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AnalysisResults"] as? [Any?] {
            var tmp : [AnalyzeGitRepositoryResponseBody.AnalysisResults] = []
            for v in value {
                if v != nil {
                    var model = AnalyzeGitRepositoryResponseBody.AnalysisResults()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.analysisResults = tmp
        }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AnalyzeGitRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AnalyzeGitRepositoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AnalyzeGitRepositoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelExecutionRequest : Tea.TeaModel {
    public var executionId: String?

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
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutionId"] as? String {
            self.executionId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CancelExecutionResponseBody : Tea.TeaModel {
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

public class CancelExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelExecutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var newResourceGroupId: String?

    public var regionId: String?

    public var resourceId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

public class CheckGitRepoFileExistsRequest : Tea.TeaModel {
    public var branch: String?

    public var clientToken: String?

    public var filePath: String?

    public var orgId: String?

    public var owner: String?

    public var platform: String?

    public var regionId: String?

    public var repoFullName: String?

    public var repoId: Int64?

    public override init() {
        super.init()
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
            map["Branch"] = self.branch!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.repoFullName != nil {
            map["RepoFullName"] = self.repoFullName!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Branch"] as? String {
            self.branch = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RepoFullName"] as? String {
            self.repoFullName = value
        }
        if let value = dict["RepoId"] as? Int64 {
            self.repoId = value
        }
    }
}

public class CheckGitRepoFileExistsResponseBody : Tea.TeaModel {
    public var fileExists: Bool?

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
        if self.fileExists != nil {
            map["FileExists"] = self.fileExists!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileExists"] as? Bool {
            self.fileExists = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckGitRepoFileExistsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckGitRepoFileExistsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckGitRepoFileExistsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckGitRepositoryExistsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var orgId: String?

    public var owner: String?

    public var platform: String?

    public var regionId: String?

    public var repoFullName: String?

    public var repoId: Int64?

    public override init() {
        super.init()
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
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.repoFullName != nil {
            map["RepoFullName"] = self.repoFullName!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RepoFullName"] as? String {
            self.repoFullName = value
        }
        if let value = dict["RepoId"] as? Int64 {
            self.repoId = value
        }
    }
}

public class CheckGitRepositoryExistsResponseBody : Tea.TeaModel {
    public var repoExists: Bool?

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
        if self.repoExists != nil {
            map["RepoExists"] = self.repoExists!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RepoExists"] as? Bool {
            self.repoExists = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckGitRepositoryExistsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckGitRepositoryExistsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckGitRepositoryExistsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ContinueDeployApplicationGroupRequest : Tea.TeaModel {
    public var applicationName: String?

    public var deployParameters: String?

    public var name: String?

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
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.deployParameters != nil {
            map["DeployParameters"] = self.deployParameters!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["DeployParameters"] as? String {
            self.deployParameters = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ContinueDeployApplicationGroupResponseBody : Tea.TeaModel {
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

public class ContinueDeployApplicationGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContinueDeployApplicationGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ContinueDeployApplicationGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateApplicationRequest : Tea.TeaModel {
    public class AlarmConfig : Tea.TeaModel {
        public var contactGroups: [String]?

        public var healthCheckUrl: String?

        public var templateIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactGroups != nil {
                map["ContactGroups"] = self.contactGroups!
            }
            if self.healthCheckUrl != nil {
                map["HealthCheckUrl"] = self.healthCheckUrl!
            }
            if self.templateIds != nil {
                map["TemplateIds"] = self.templateIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactGroups"] as? [String] {
                self.contactGroups = value
            }
            if let value = dict["HealthCheckUrl"] as? String {
                self.healthCheckUrl = value
            }
            if let value = dict["TemplateIds"] as? [String] {
                self.templateIds = value
            }
        }
    }
    public var alarmConfig: CreateApplicationRequest.AlarmConfig?

    public var applicationSource: String?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var tags: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.alarmConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmConfig != nil {
            map["AlarmConfig"] = self.alarmConfig?.toMap()
        }
        if self.applicationSource != nil {
            map["ApplicationSource"] = self.applicationSource!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmConfig"] as? [String: Any?] {
            var model = CreateApplicationRequest.AlarmConfig()
            model.fromMap(value)
            self.alarmConfig = model
        }
        if let value = dict["ApplicationSource"] as? String {
            self.applicationSource = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
    }
}

public class CreateApplicationShrinkRequest : Tea.TeaModel {
    public var alarmConfigShrink: String?

    public var applicationSource: String?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serviceId: String?

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
        if self.alarmConfigShrink != nil {
            map["AlarmConfig"] = self.alarmConfigShrink!
        }
        if self.applicationSource != nil {
            map["ApplicationSource"] = self.applicationSource!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmConfig"] as? String {
            self.alarmConfigShrink = value
        }
        if let value = dict["ApplicationSource"] as? String {
            self.applicationSource = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class CreateApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public var createDate: String?

        public var description_: String?

        public var name: String?

        public var tags: [String: String]?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Tags"] as? [String: String] {
                self.tags = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var application: CreateApplicationResponseBody.Application?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Application"] as? [String: Any?] {
            var model = CreateApplicationResponseBody.Application()
            model.fromMap(value)
            self.application = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateApplicationGroupRequest : Tea.TeaModel {
    public var applicationName: String?

    public var clientToken: String?

    public var cmsGroupId: String?

    public var deployRegionId: String?

    public var description_: String?

    public var importTagKey: String?

    public var importTagValue: String?

    public var name: String?

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
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.cmsGroupId != nil {
            map["CmsGroupId"] = self.cmsGroupId!
        }
        if self.deployRegionId != nil {
            map["DeployRegionId"] = self.deployRegionId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.importTagKey != nil {
            map["ImportTagKey"] = self.importTagKey!
        }
        if self.importTagValue != nil {
            map["ImportTagValue"] = self.importTagValue!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CmsGroupId"] as? String {
            self.cmsGroupId = value
        }
        if let value = dict["DeployRegionId"] as? String {
            self.deployRegionId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ImportTagKey"] as? String {
            self.importTagKey = value
        }
        if let value = dict["ImportTagValue"] as? String {
            self.importTagValue = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateApplicationGroupResponseBody : Tea.TeaModel {
    public class ApplicationGroup : Tea.TeaModel {
        public var applicationName: String?

        public var cmsGroupId: String?

        public var createDate: String?

        public var deployRegionId: String?

        public var description_: String?

        public var importTagKey: String?

        public var importTagValue: String?

        public var name: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
            }
            if self.cmsGroupId != nil {
                map["CmsGroupId"] = self.cmsGroupId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.deployRegionId != nil {
                map["DeployRegionId"] = self.deployRegionId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.importTagKey != nil {
                map["ImportTagKey"] = self.importTagKey!
            }
            if self.importTagValue != nil {
                map["ImportTagValue"] = self.importTagValue!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicationName"] as? String {
                self.applicationName = value
            }
            if let value = dict["CmsGroupId"] as? String {
                self.cmsGroupId = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DeployRegionId"] as? String {
                self.deployRegionId = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ImportTagKey"] as? String {
                self.importTagKey = value
            }
            if let value = dict["ImportTagValue"] as? String {
                self.importTagValue = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var applicationGroup: CreateApplicationGroupResponseBody.ApplicationGroup?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationGroup != nil {
            map["ApplicationGroup"] = self.applicationGroup?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationGroup"] as? [String: Any?] {
            var model = CreateApplicationGroupResponseBody.ApplicationGroup()
            model.fromMap(value)
            self.applicationGroup = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateApplicationGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateApplicationGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateGitRepositoryRequest : Tea.TeaModel {
    public var clientToken: String?

    public var isPrivate: Bool?

    public var orgId: String?

    public var owner: String?

    public var platform: String?

    public var regionId: String?

    public var sourceRepoBranch: String?

    public var sourceRepoName: String?

    public var sourceRepoOwner: String?

    public var targetRepoName: String?

    public var targetRepoOwner: String?

    public override init() {
        super.init()
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
        if self.isPrivate != nil {
            map["IsPrivate"] = self.isPrivate!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceRepoBranch != nil {
            map["SourceRepoBranch"] = self.sourceRepoBranch!
        }
        if self.sourceRepoName != nil {
            map["SourceRepoName"] = self.sourceRepoName!
        }
        if self.sourceRepoOwner != nil {
            map["SourceRepoOwner"] = self.sourceRepoOwner!
        }
        if self.targetRepoName != nil {
            map["TargetRepoName"] = self.targetRepoName!
        }
        if self.targetRepoOwner != nil {
            map["TargetRepoOwner"] = self.targetRepoOwner!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["IsPrivate"] as? Bool {
            self.isPrivate = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SourceRepoBranch"] as? String {
            self.sourceRepoBranch = value
        }
        if let value = dict["SourceRepoName"] as? String {
            self.sourceRepoName = value
        }
        if let value = dict["SourceRepoOwner"] as? String {
            self.sourceRepoOwner = value
        }
        if let value = dict["TargetRepoName"] as? String {
            self.targetRepoName = value
        }
        if let value = dict["TargetRepoOwner"] as? String {
            self.targetRepoOwner = value
        }
    }
}

public class CreateGitRepositoryResponseBody : Tea.TeaModel {
    public class GitRepo : Tea.TeaModel {
        public var description_: String?

        public var fullName: String?

        public var htmlUrl: String?

        public var isPrivate: String?

        public override init() {
            super.init()
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
            if self.fullName != nil {
                map["FullName"] = self.fullName!
            }
            if self.htmlUrl != nil {
                map["HtmlUrl"] = self.htmlUrl!
            }
            if self.isPrivate != nil {
                map["IsPrivate"] = self.isPrivate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FullName"] as? String {
                self.fullName = value
            }
            if let value = dict["HtmlUrl"] as? String {
                self.htmlUrl = value
            }
            if let value = dict["IsPrivate"] as? String {
                self.isPrivate = value
            }
        }
    }
    public var gitRepo: CreateGitRepositoryResponseBody.GitRepo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gitRepo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gitRepo != nil {
            map["GitRepo"] = self.gitRepo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GitRepo"] as? [String: Any?] {
            var model = CreateGitRepositoryResponseBody.GitRepo()
            model.fromMap(value)
            self.gitRepo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateGitRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGitRepositoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateGitRepositoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOpsItemRequest : Tea.TeaModel {
    public var category: String?

    public var clientToken: String?

    public var dedupString: String?

    public var description_: String?

    public var priority: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resources: String?

    public var severity: String?

    public var solutions: String?

    public var source: String?

    public var tags: [String: Any]?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dedupString != nil {
            map["DedupString"] = self.dedupString!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.solutions != nil {
            map["Solutions"] = self.solutions!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DedupString"] as? String {
            self.dedupString = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Resources"] as? String {
            self.resources = value
        }
        if let value = dict["Severity"] as? String {
            self.severity = value
        }
        if let value = dict["Solutions"] as? String {
            self.solutions = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class CreateOpsItemShrinkRequest : Tea.TeaModel {
    public var category: String?

    public var clientToken: String?

    public var dedupString: String?

    public var description_: String?

    public var priority: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resources: String?

    public var severity: String?

    public var solutions: String?

    public var source: String?

    public var tagsShrink: String?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dedupString != nil {
            map["DedupString"] = self.dedupString!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.solutions != nil {
            map["Solutions"] = self.solutions!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DedupString"] as? String {
            self.dedupString = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Resources"] as? String {
            self.resources = value
        }
        if let value = dict["Severity"] as? String {
            self.severity = value
        }
        if let value = dict["Solutions"] as? String {
            self.solutions = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class CreateOpsItemResponseBody : Tea.TeaModel {
    public class OpsItem : Tea.TeaModel {
        public var attributes: String?

        public var category: String?

        public var createDate: String?

        public var createdBy: String?

        public var description_: String?

        public var lastModifiedBy: String?

        public var opsItemId: String?

        public var priority: Int32?

        public var resourceGroupId: String?

        public var resources: String?

        public var severity: String?

        public var solutions: String?

        public var source: String?

        public var status: String?

        public var tags: [String: Any]?

        public var title: String?

        public var updateDate: String?

        public override init() {
            super.init()
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
                map["Attributes"] = self.attributes!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.lastModifiedBy != nil {
                map["LastModifiedBy"] = self.lastModifiedBy!
            }
            if self.opsItemId != nil {
                map["OpsItemId"] = self.opsItemId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.solutions != nil {
                map["Solutions"] = self.solutions!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? String {
                self.attributes = value
            }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["LastModifiedBy"] as? String {
                self.lastModifiedBy = value
            }
            if let value = dict["OpsItemId"] as? String {
                self.opsItemId = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Resources"] as? String {
                self.resources = value
            }
            if let value = dict["Severity"] as? String {
                self.severity = value
            }
            if let value = dict["Solutions"] as? String {
                self.solutions = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var opsItem: CreateOpsItemResponseBody.OpsItem?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.opsItem?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opsItem != nil {
            map["OpsItem"] = self.opsItem?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OpsItem"] as? [String: Any?] {
            var model = CreateOpsItemResponseBody.OpsItem()
            model.fromMap(value)
            self.opsItem = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateOpsItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOpsItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateOpsItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateParameterRequest : Tea.TeaModel {
    public var clientToken: String?

    public var constraints: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: [String: Any]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.constraints != nil {
            map["Constraints"] = self.constraints!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Constraints"] as? String {
            self.constraints = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class CreateParameterShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var constraints: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tagsShrink: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.constraints != nil {
            map["Constraints"] = self.constraints!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Constraints"] as? String {
            self.constraints = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class CreateParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Constraints"] as? String {
                self.constraints = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParameterVersion"] as? Int32 {
                self.parameterVersion = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var parameter: CreateParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Parameter"] as? [String: Any?] {
            var model = CreateParameterResponseBody.Parameter()
            model.fromMap(value)
            self.parameter = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateParameterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePatchBaselineRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
    public var approvalRules: String?

    public var approvedPatches: [String]?

    public var approvedPatchesEnableNonSecurity: Bool?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var operationSystem: String?

    public var regionId: String?

    public var rejectedPatches: [String]?

    public var rejectedPatchesAction: String?

    public var resourceGroupId: String?

    public var sources: [String]?

    public var tags: [CreatePatchBaselineRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalRules != nil {
            map["ApprovalRules"] = self.approvalRules!
        }
        if self.approvedPatches != nil {
            map["ApprovedPatches"] = self.approvedPatches!
        }
        if self.approvedPatchesEnableNonSecurity != nil {
            map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operationSystem != nil {
            map["OperationSystem"] = self.operationSystem!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rejectedPatches != nil {
            map["RejectedPatches"] = self.rejectedPatches!
        }
        if self.rejectedPatchesAction != nil {
            map["RejectedPatchesAction"] = self.rejectedPatchesAction!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sources != nil {
            map["Sources"] = self.sources!
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
        if let value = dict["ApprovalRules"] as? String {
            self.approvalRules = value
        }
        if let value = dict["ApprovedPatches"] as? [String] {
            self.approvedPatches = value
        }
        if let value = dict["ApprovedPatchesEnableNonSecurity"] as? Bool {
            self.approvedPatchesEnableNonSecurity = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OperationSystem"] as? String {
            self.operationSystem = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RejectedPatches"] as? [String] {
            self.rejectedPatches = value
        }
        if let value = dict["RejectedPatchesAction"] as? String {
            self.rejectedPatchesAction = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Sources"] as? [String] {
            self.sources = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreatePatchBaselineRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreatePatchBaselineRequest.Tags()
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

public class CreatePatchBaselineShrinkRequest : Tea.TeaModel {
    public var approvalRules: String?

    public var approvedPatchesShrink: String?

    public var approvedPatchesEnableNonSecurity: Bool?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var operationSystem: String?

    public var regionId: String?

    public var rejectedPatchesShrink: String?

    public var rejectedPatchesAction: String?

    public var resourceGroupId: String?

    public var sourcesShrink: String?

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
        if self.approvalRules != nil {
            map["ApprovalRules"] = self.approvalRules!
        }
        if self.approvedPatchesShrink != nil {
            map["ApprovedPatches"] = self.approvedPatchesShrink!
        }
        if self.approvedPatchesEnableNonSecurity != nil {
            map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operationSystem != nil {
            map["OperationSystem"] = self.operationSystem!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rejectedPatchesShrink != nil {
            map["RejectedPatches"] = self.rejectedPatchesShrink!
        }
        if self.rejectedPatchesAction != nil {
            map["RejectedPatchesAction"] = self.rejectedPatchesAction!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourcesShrink != nil {
            map["Sources"] = self.sourcesShrink!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApprovalRules"] as? String {
            self.approvalRules = value
        }
        if let value = dict["ApprovedPatches"] as? String {
            self.approvedPatchesShrink = value
        }
        if let value = dict["ApprovedPatchesEnableNonSecurity"] as? Bool {
            self.approvedPatchesEnableNonSecurity = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OperationSystem"] as? String {
            self.operationSystem = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RejectedPatches"] as? String {
            self.rejectedPatchesShrink = value
        }
        if let value = dict["RejectedPatchesAction"] as? String {
            self.rejectedPatchesAction = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Sources"] as? String {
            self.sourcesShrink = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class CreatePatchBaselineResponseBody : Tea.TeaModel {
    public class PatchBaseline : Tea.TeaModel {
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
        public var approvalRules: String?

        public var approvedPatches: [String]?

        public var approvedPatchesEnableNonSecurity: Bool?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var operationSystem: String?

        public var rejectedPatches: [String]?

        public var rejectedPatchesAction: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var sources: [String]?

        public var tags: [CreatePatchBaselineResponseBody.PatchBaseline.Tags]?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvalRules != nil {
                map["ApprovalRules"] = self.approvalRules!
            }
            if self.approvedPatches != nil {
                map["ApprovedPatches"] = self.approvedPatches!
            }
            if self.approvedPatchesEnableNonSecurity != nil {
                map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.rejectedPatches != nil {
                map["RejectedPatches"] = self.rejectedPatches!
            }
            if self.rejectedPatchesAction != nil {
                map["RejectedPatchesAction"] = self.rejectedPatchesAction!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.sources != nil {
                map["Sources"] = self.sources!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApprovalRules"] as? String {
                self.approvalRules = value
            }
            if let value = dict["ApprovedPatches"] as? [String] {
                self.approvedPatches = value
            }
            if let value = dict["ApprovedPatchesEnableNonSecurity"] as? Bool {
                self.approvedPatchesEnableNonSecurity = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OperationSystem"] as? String {
                self.operationSystem = value
            }
            if let value = dict["RejectedPatches"] as? [String] {
                self.rejectedPatches = value
            }
            if let value = dict["RejectedPatchesAction"] as? String {
                self.rejectedPatchesAction = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Sources"] as? [String] {
                self.sources = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [CreatePatchBaselineResponseBody.PatchBaseline.Tags] = []
                for v in value {
                    if v != nil {
                        var model = CreatePatchBaselineResponseBody.PatchBaseline.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var patchBaseline: CreatePatchBaselineResponseBody.PatchBaseline?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.patchBaseline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.patchBaseline != nil {
            map["PatchBaseline"] = self.patchBaseline?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PatchBaseline"] as? [String: Any?] {
            var model = CreatePatchBaselineResponseBody.PatchBaseline()
            model.fromMap(value)
            self.patchBaseline = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePatchBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePatchBaselineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePatchBaselineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSecretParameterRequest : Tea.TeaModel {
    public var clientToken: String?

    public var constraints: String?

    public var DKMSInstanceId: String?

    public var description_: String?

    public var keyId: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: [String: Any]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.constraints != nil {
            map["Constraints"] = self.constraints!
        }
        if self.DKMSInstanceId != nil {
            map["DKMSInstanceId"] = self.DKMSInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Constraints"] as? String {
            self.constraints = value
        }
        if let value = dict["DKMSInstanceId"] as? String {
            self.DKMSInstanceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class CreateSecretParameterShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var constraints: String?

    public var DKMSInstanceId: String?

    public var description_: String?

    public var keyId: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tagsShrink: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.constraints != nil {
            map["Constraints"] = self.constraints!
        }
        if self.DKMSInstanceId != nil {
            map["DKMSInstanceId"] = self.DKMSInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Constraints"] as? String {
            self.constraints = value
        }
        if let value = dict["DKMSInstanceId"] as? String {
            self.DKMSInstanceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class CreateSecretParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var DKMSInstanceId: String?

        public var description_: String?

        public var id: String?

        public var keyId: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.DKMSInstanceId != nil {
                map["DKMSInstanceId"] = self.DKMSInstanceId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Constraints"] as? String {
                self.constraints = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["DKMSInstanceId"] as? String {
                self.DKMSInstanceId = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["KeyId"] as? String {
                self.keyId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParameterVersion"] as? Int32 {
                self.parameterVersion = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var parameter: CreateSecretParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Parameter"] as? [String: Any?] {
            var model = CreateSecretParameterResponseBody.Parameter()
            model.fromMap(value)
            self.parameter = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateSecretParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSecretParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSecretParameterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateStateConfigurationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configureMode: String?

    public var description_: String?

    public var parameters: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var scheduleExpression: String?

    public var scheduleType: String?

    public var tags: [String: Any]?

    public var targets: String?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
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
        if self.configureMode != nil {
            map["ConfigureMode"] = self.configureMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.scheduleExpression != nil {
            map["ScheduleExpression"] = self.scheduleExpression!
        }
        if self.scheduleType != nil {
            map["ScheduleType"] = self.scheduleType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.targets != nil {
            map["Targets"] = self.targets!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConfigureMode"] as? String {
            self.configureMode = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ScheduleExpression"] as? String {
            self.scheduleExpression = value
        }
        if let value = dict["ScheduleType"] as? String {
            self.scheduleType = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["Targets"] as? String {
            self.targets = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
    }
}

public class CreateStateConfigurationShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configureMode: String?

    public var description_: String?

    public var parameters: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var scheduleExpression: String?

    public var scheduleType: String?

    public var tagsShrink: String?

    public var targets: String?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
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
        if self.configureMode != nil {
            map["ConfigureMode"] = self.configureMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.scheduleExpression != nil {
            map["ScheduleExpression"] = self.scheduleExpression!
        }
        if self.scheduleType != nil {
            map["ScheduleType"] = self.scheduleType!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.targets != nil {
            map["Targets"] = self.targets!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConfigureMode"] as? String {
            self.configureMode = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ScheduleExpression"] as? String {
            self.scheduleExpression = value
        }
        if let value = dict["ScheduleType"] as? String {
            self.scheduleType = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["Targets"] as? String {
            self.targets = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
    }
}

public class CreateStateConfigurationResponseBody : Tea.TeaModel {
    public class StateConfiguration : Tea.TeaModel {
        public var configureMode: String?

        public var createTime: String?

        public var description_: String?

        public var parameters: [String: Any]?

        public var resourceGroupId: String?

        public var scheduleExpression: String?

        public var scheduleType: String?

        public var stateConfigurationId: String?

        public var tags: [String: Any]?

        public var targets: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configureMode != nil {
                map["ConfigureMode"] = self.configureMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.scheduleExpression != nil {
                map["ScheduleExpression"] = self.scheduleExpression!
            }
            if self.scheduleType != nil {
                map["ScheduleType"] = self.scheduleType!
            }
            if self.stateConfigurationId != nil {
                map["StateConfigurationId"] = self.stateConfigurationId!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.targets != nil {
                map["Targets"] = self.targets!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigureMode"] as? String {
                self.configureMode = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Parameters"] as? [String: Any] {
                self.parameters = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ScheduleExpression"] as? String {
                self.scheduleExpression = value
            }
            if let value = dict["ScheduleType"] as? String {
                self.scheduleType = value
            }
            if let value = dict["StateConfigurationId"] as? String {
                self.stateConfigurationId = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Targets"] as? String {
                self.targets = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
        }
    }
    public var requestId: String?

    public var stateConfiguration: CreateStateConfigurationResponseBody.StateConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stateConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stateConfiguration != nil {
            map["StateConfiguration"] = self.stateConfiguration?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StateConfiguration"] as? [String: Any?] {
            var model = CreateStateConfigurationResponseBody.StateConfiguration()
            model.fromMap(value)
            self.stateConfiguration = model
        }
    }
}

public class CreateStateConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateStateConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateStateConfigurationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTemplateRequest : Tea.TeaModel {
    public var content: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: [String: Any]?

    public var templateName: String?

    public var versionName: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class CreateTemplateShrinkRequest : Tea.TeaModel {
    public var content: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tagsShrink: String?

    public var templateName: String?

    public var versionName: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class CreateTemplateResponseBody : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hasTrigger: Bool?

        public var hash: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hasTrigger != nil {
                map["HasTrigger"] = self.hasTrigger!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["HasTrigger"] as? Bool {
                self.hasTrigger = value
            }
            if let value = dict["Hash"] as? String {
                self.hash = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["TemplateFormat"] as? String {
                self.templateFormat = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var requestId: String?

    public var template: CreateTemplateResponseBody.Template?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Template"] as? [String: Any?] {
            var model = CreateTemplateResponseBody.Template()
            model.fromMap(value)
            self.template = model
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
    }
}

public class CreateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteApplicationRequest : Tea.TeaModel {
    public var force: Bool?

    public var name: String?

    public var regionId: String?

    public var retainResource: Bool?

    public override init() {
        super.init()
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
            map["Force"] = self.force!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.retainResource != nil {
            map["RetainResource"] = self.retainResource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Force"] as? Bool {
            self.force = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RetainResource"] as? Bool {
            self.retainResource = value
        }
    }
}

public class DeleteApplicationResponseBody : Tea.TeaModel {
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

public class DeleteApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteApplicationGroupRequest : Tea.TeaModel {
    public var applicationName: String?

    public var name: String?

    public var regionId: String?

    public var retainResource: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.retainResource != nil {
            map["RetainResource"] = self.retainResource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RetainResource"] as? Bool {
            self.retainResource = value
        }
    }
}

public class DeleteApplicationGroupResponseBody : Tea.TeaModel {
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

public class DeleteApplicationGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplicationGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteApplicationGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteExecutionsRequest : Tea.TeaModel {
    public var executionIds: String?

    public var force: Bool?

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
        if self.executionIds != nil {
            map["ExecutionIds"] = self.executionIds!
        }
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutionIds"] as? String {
            self.executionIds = value
        }
        if let value = dict["Force"] as? Bool {
            self.force = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteExecutionsResponseBody : Tea.TeaModel {
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

public class DeleteExecutionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteExecutionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteExecutionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteOpsItemsRequest : Tea.TeaModel {
    public var opsItemIds: [String]?

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
        if self.opsItemIds != nil {
            map["OpsItemIds"] = self.opsItemIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OpsItemIds"] as? [String] {
            self.opsItemIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteOpsItemsResponseBody : Tea.TeaModel {
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

public class DeleteOpsItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOpsItemsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteOpsItemsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteParameterRequest : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteParameterResponseBody : Tea.TeaModel {
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

public class DeleteParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteParameterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePatchBaselineRequest : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeletePatchBaselineResponseBody : Tea.TeaModel {
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

public class DeletePatchBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePatchBaselineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePatchBaselineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSecretParameterRequest : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteSecretParameterResponseBody : Tea.TeaModel {
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

public class DeleteSecretParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSecretParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSecretParameterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteStateConfigurationsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var stateConfigurationIds: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.stateConfigurationIds != nil {
            map["StateConfigurationIds"] = self.stateConfigurationIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StateConfigurationIds"] as? String {
            self.stateConfigurationIds = value
        }
    }
}

public class DeleteStateConfigurationsResponseBody : Tea.TeaModel {
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

public class DeleteStateConfigurationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteStateConfigurationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteStateConfigurationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTemplateRequest : Tea.TeaModel {
    public var autoDeleteExecutions: Bool?

    public var regionId: String?

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
        if self.autoDeleteExecutions != nil {
            map["AutoDeleteExecutions"] = self.autoDeleteExecutions!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoDeleteExecutions"] as? Bool {
            self.autoDeleteExecutions = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class DeleteTemplateResponseBody : Tea.TeaModel {
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

public class DeleteTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTemplatesRequest : Tea.TeaModel {
    public var autoDeleteExecutions: Bool?

    public var regionId: String?

    public var templateNames: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoDeleteExecutions != nil {
            map["AutoDeleteExecutions"] = self.autoDeleteExecutions!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateNames != nil {
            map["TemplateNames"] = self.templateNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoDeleteExecutions"] as? Bool {
            self.autoDeleteExecutions = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateNames"] as? String {
            self.templateNames = value
        }
    }
}

public class DeleteTemplatesResponseBody : Tea.TeaModel {
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

public class DeleteTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeployApplicationGroupRequest : Tea.TeaModel {
    public var applicationName: String?

    public var deployParameters: String?

    public var name: String?

    public var regionId: String?

    public var revisionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.deployParameters != nil {
            map["DeployParameters"] = self.deployParameters!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.revisionId != nil {
            map["RevisionId"] = self.revisionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["DeployParameters"] as? String {
            self.deployParameters = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RevisionId"] as? String {
            self.revisionId = value
        }
    }
}

public class DeployApplicationGroupResponseBody : Tea.TeaModel {
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

public class DeployApplicationGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployApplicationGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeployApplicationGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeApplicationGroupBillRequest : Tea.TeaModel {
    public var applicationName: String?

    public var billingCycle: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var regionId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["BillingCycle"] as? String {
            self.billingCycle = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class DescribeApplicationGroupBillResponseBody : Tea.TeaModel {
    public class ApplicationGroupConsume : Tea.TeaModel {
        public var amount: Double?

        public var creationTime: String?

        public var currency: String?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceType: String?

        public var optimization: String?

        public var peakType: String?

        public var performance: String?

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
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.optimization != nil {
                map["Optimization"] = self.optimization!
            }
            if self.peakType != nil {
                map["PeakType"] = self.peakType!
            }
            if self.performance != nil {
                map["Performance"] = self.performance!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Amount"] as? Double {
                self.amount = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Optimization"] as? String {
                self.optimization = value
            }
            if let value = dict["PeakType"] as? String {
                self.peakType = value
            }
            if let value = dict["Performance"] as? String {
                self.performance = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var applicationGroupConsume: [DescribeApplicationGroupBillResponseBody.ApplicationGroupConsume]?

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
        if self.applicationGroupConsume != nil {
            var tmp : [Any] = []
            for k in self.applicationGroupConsume! {
                tmp.append(k.toMap())
            }
            map["ApplicationGroupConsume"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationGroupConsume"] as? [Any?] {
            var tmp : [DescribeApplicationGroupBillResponseBody.ApplicationGroupConsume] = []
            for v in value {
                if v != nil {
                    var model = DescribeApplicationGroupBillResponseBody.ApplicationGroupConsume()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.applicationGroupConsume = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeApplicationGroupBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApplicationGroupBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeApplicationGroupBillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

        public var regionEndpoint: String?

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
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
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
            if let value = dict["RegionEndpoint"] as? String {
                self.regionEndpoint = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var regions: [DescribeRegionsResponseBody.Regions]?

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
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Regions()
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

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateExecutionPolicyRequest : Tea.TeaModel {
    public var ramRole: String?

    public var regionId: String?

    public var templateContent: String?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ramRole != nil {
            map["RamRole"] = self.ramRole!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RamRole"] as? String {
            self.ramRole = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateContent"] as? String {
            self.templateContent = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
    }
}

public class GenerateExecutionPolicyResponseBody : Tea.TeaModel {
    public var missingPolicy: String?

    public var policy: String?

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
        if self.missingPolicy != nil {
            map["MissingPolicy"] = self.missingPolicy!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MissingPolicy"] as? String {
            self.missingPolicy = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateExecutionPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateExecutionPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateExecutionPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateOpsItemRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configurationId: String?

    public var data: String?

    public var dataSource: String?

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
        if self.configurationId != nil {
            map["ConfigurationId"] = self.configurationId!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataSource != nil {
            map["DataSource"] = self.dataSource!
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
        if let value = dict["ConfigurationId"] as? String {
            self.configurationId = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["DataSource"] as? String {
            self.dataSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GenerateOpsItemResponseBody : Tea.TeaModel {
    public var opsItemIds: [String]?

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
        if self.opsItemIds != nil {
            map["OpsItemIds"] = self.opsItemIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OpsItemIds"] as? [String] {
            self.opsItemIds = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateOpsItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateOpsItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateOpsItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApplicationRequest : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public class AlarmConfig : Tea.TeaModel {
            public var contactGroups: [String]?

            public var healthCheckUrl: String?

            public var templateIds: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.contactGroups != nil {
                    map["ContactGroups"] = self.contactGroups!
                }
                if self.healthCheckUrl != nil {
                    map["HealthCheckUrl"] = self.healthCheckUrl!
                }
                if self.templateIds != nil {
                    map["TemplateIds"] = self.templateIds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ContactGroups"] as? [String] {
                    self.contactGroups = value
                }
                if let value = dict["HealthCheckUrl"] as? String {
                    self.healthCheckUrl = value
                }
                if let value = dict["TemplateIds"] as? [String] {
                    self.templateIds = value
                }
            }
        }
        public var alarmConfig: GetApplicationResponseBody.Application.AlarmConfig?

        public var applicationSource: String?

        public var applicationType: String?

        public var createDate: String?

        public var description_: String?

        public var name: String?

        public var resourceGroupId: String?

        public var serviceId: String?

        public var tags: [String: Any]?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.alarmConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alarmConfig != nil {
                map["AlarmConfig"] = self.alarmConfig?.toMap()
            }
            if self.applicationSource != nil {
                map["ApplicationSource"] = self.applicationSource!
            }
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmConfig"] as? [String: Any?] {
                var model = GetApplicationResponseBody.Application.AlarmConfig()
                model.fromMap(value)
                self.alarmConfig = model
            }
            if let value = dict["ApplicationSource"] as? String {
                self.applicationSource = value
            }
            if let value = dict["ApplicationType"] as? String {
                self.applicationType = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var application: GetApplicationResponseBody.Application?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Application"] as? [String: Any?] {
            var model = GetApplicationResponseBody.Application()
            model.fromMap(value)
            self.application = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetApplicationGroupRequest : Tea.TeaModel {
    public var applicationName: String?

    public var name: String?

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
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetApplicationGroupResponseBody : Tea.TeaModel {
    public class ApplicationGroup : Tea.TeaModel {
        public var applicationName: String?

        public var applicationSource: String?

        public var cmsGroupId: String?

        public var createDate: String?

        public var deployOutputs: String?

        public var deployParameters: String?

        public var deployRegionId: String?

        public var deployedRevisionIds: String?

        public var description_: String?

        public var errorDetail: String?

        public var errorType: String?

        public var executionId: String?

        public var importTagKey: String?

        public var importTagValue: String?

        public var name: String?

        public var operationMetadata: String?

        public var progress: String?

        public var status: String?

        public var statusReason: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
            }
            if self.applicationSource != nil {
                map["ApplicationSource"] = self.applicationSource!
            }
            if self.cmsGroupId != nil {
                map["CmsGroupId"] = self.cmsGroupId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.deployOutputs != nil {
                map["DeployOutputs"] = self.deployOutputs!
            }
            if self.deployParameters != nil {
                map["DeployParameters"] = self.deployParameters!
            }
            if self.deployRegionId != nil {
                map["DeployRegionId"] = self.deployRegionId!
            }
            if self.deployedRevisionIds != nil {
                map["DeployedRevisionIds"] = self.deployedRevisionIds!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.errorDetail != nil {
                map["ErrorDetail"] = self.errorDetail!
            }
            if self.errorType != nil {
                map["ErrorType"] = self.errorType!
            }
            if self.executionId != nil {
                map["ExecutionId"] = self.executionId!
            }
            if self.importTagKey != nil {
                map["ImportTagKey"] = self.importTagKey!
            }
            if self.importTagValue != nil {
                map["ImportTagValue"] = self.importTagValue!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationMetadata != nil {
                map["OperationMetadata"] = self.operationMetadata!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicationName"] as? String {
                self.applicationName = value
            }
            if let value = dict["ApplicationSource"] as? String {
                self.applicationSource = value
            }
            if let value = dict["CmsGroupId"] as? String {
                self.cmsGroupId = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DeployOutputs"] as? String {
                self.deployOutputs = value
            }
            if let value = dict["DeployParameters"] as? String {
                self.deployParameters = value
            }
            if let value = dict["DeployRegionId"] as? String {
                self.deployRegionId = value
            }
            if let value = dict["DeployedRevisionIds"] as? String {
                self.deployedRevisionIds = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ErrorDetail"] as? String {
                self.errorDetail = value
            }
            if let value = dict["ErrorType"] as? String {
                self.errorType = value
            }
            if let value = dict["ExecutionId"] as? String {
                self.executionId = value
            }
            if let value = dict["ImportTagKey"] as? String {
                self.importTagKey = value
            }
            if let value = dict["ImportTagValue"] as? String {
                self.importTagValue = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OperationMetadata"] as? String {
                self.operationMetadata = value
            }
            if let value = dict["Progress"] as? String {
                self.progress = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var applicationGroup: GetApplicationGroupResponseBody.ApplicationGroup?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationGroup != nil {
            map["ApplicationGroup"] = self.applicationGroup?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationGroup"] as? [String: Any?] {
            var model = GetApplicationGroupResponseBody.ApplicationGroup()
            model.fromMap(value)
            self.applicationGroup = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetApplicationGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApplicationGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetApplicationGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExecutionTemplateRequest : Tea.TeaModel {
    public var executionId: String?

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
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutionId"] as? String {
            self.executionId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetExecutionTemplateResponseBody : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hash: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Hash"] as? String {
                self.hash = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["TemplateFormat"] as? String {
                self.templateFormat = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var content: String?

    public var requestId: String?

    public var template: GetExecutionTemplateResponseBody.Template?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Template"] as? [String: Any?] {
            var model = GetExecutionTemplateResponseBody.Template()
            model.fromMap(value)
            self.template = model
        }
    }
}

public class GetExecutionTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExecutionTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetExecutionTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetGitBranchRequest : Tea.TeaModel {
    public var branch: String?

    public var orgId: String?

    public var owner: String?

    public var platform: String?

    public var regionId: String?

    public var repoFullName: String?

    public var repoId: Int64?

    public override init() {
        super.init()
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
            map["Branch"] = self.branch!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.repoFullName != nil {
            map["RepoFullName"] = self.repoFullName!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Branch"] as? String {
            self.branch = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RepoFullName"] as? String {
            self.repoFullName = value
        }
        if let value = dict["RepoId"] as? Int64 {
            self.repoId = value
        }
    }
}

public class GetGitBranchResponseBody : Tea.TeaModel {
    public class Commit : Tea.TeaModel {
        public var message: String?

        public var sha: String?

        public override init() {
            super.init()
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
            if self.sha != nil {
                map["Sha"] = self.sha!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Sha"] as? String {
                self.sha = value
            }
        }
    }
    public var commit: GetGitBranchResponseBody.Commit?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.commit?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commit != nil {
            map["Commit"] = self.commit?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Commit"] as? [String: Any?] {
            var model = GetGitBranchResponseBody.Commit()
            model.fromMap(value)
            self.commit = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetGitBranchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGitBranchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGitBranchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetGitRepositoryRequest : Tea.TeaModel {
    public var orgId: String?

    public var owner: String?

    public var platform: String?

    public var regionId: String?

    public var repoFullName: String?

    public var repoId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.repoFullName != nil {
            map["RepoFullName"] = self.repoFullName!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RepoFullName"] as? String {
            self.repoFullName = value
        }
        if let value = dict["RepoId"] as? Int64 {
            self.repoId = value
        }
    }
}

public class GetGitRepositoryResponseBody : Tea.TeaModel {
    public var description_: String?

    public var htmlUrl: String?

    public var isPrivate: Bool?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.htmlUrl != nil {
            map["HtmlUrl"] = self.htmlUrl!
        }
        if self.isPrivate != nil {
            map["IsPrivate"] = self.isPrivate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["HtmlUrl"] as? String {
            self.htmlUrl = value
        }
        if let value = dict["IsPrivate"] as? Bool {
            self.isPrivate = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetGitRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGitRepositoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGitRepositoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInventorySchemaRequest : Tea.TeaModel {
    public var aggregator: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var typeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregator != nil {
            map["Aggregator"] = self.aggregator!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.typeName != nil {
            map["TypeName"] = self.typeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Aggregator"] as? Bool {
            self.aggregator = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TypeName"] as? String {
            self.typeName = value
        }
    }
}

public class GetInventorySchemaResponseBody : Tea.TeaModel {
    public class Schemas : Tea.TeaModel {
        public class Attributes : Tea.TeaModel {
            public var dataType: String?

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
                if self.dataType != nil {
                    map["DataType"] = self.dataType!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataType"] as? String {
                    self.dataType = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var attributes: [GetInventorySchemaResponseBody.Schemas.Attributes]?

        public var typeName: String?

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
            if self.attributes != nil {
                var tmp : [Any] = []
                for k in self.attributes! {
                    tmp.append(k.toMap())
                }
                map["Attributes"] = tmp
            }
            if self.typeName != nil {
                map["TypeName"] = self.typeName!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [Any?] {
                var tmp : [GetInventorySchemaResponseBody.Schemas.Attributes] = []
                for v in value {
                    if v != nil {
                        var model = GetInventorySchemaResponseBody.Schemas.Attributes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.attributes = tmp
            }
            if let value = dict["TypeName"] as? String {
                self.typeName = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var maxResults: String?

    public var nextToken: String?

    public var requestId: String?

    public var schemas: [GetInventorySchemaResponseBody.Schemas]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schemas != nil {
            var tmp : [Any] = []
            for k in self.schemas! {
                tmp.append(k.toMap())
            }
            map["Schemas"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Schemas"] as? [Any?] {
            var tmp : [GetInventorySchemaResponseBody.Schemas] = []
            for v in value {
                if v != nil {
                    var model = GetInventorySchemaResponseBody.Schemas()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.schemas = tmp
        }
    }
}

public class GetInventorySchemaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInventorySchemaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInventorySchemaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOpsItemRequest : Tea.TeaModel {
    public var opsItemId: String?

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
        if self.opsItemId != nil {
            map["OpsItemId"] = self.opsItemId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OpsItemId"] as? String {
            self.opsItemId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetOpsItemResponseBody : Tea.TeaModel {
    public class OpsItem : Tea.TeaModel {
        public var attributes: [String: Any]?

        public var category: String?

        public var createBy: String?

        public var createDate: String?

        public var description_: String?

        public var lastModifiedBy: String?

        public var opsItemId: String?

        public var priority: Int32?

        public var resourceGroupId: String?

        public var resources: [String]?

        public var severity: String?

        public var solutions: [[String: Any]]?

        public var source: String?

        public var status: String?

        public var tags: [String: Any]?

        public var title: String?

        public var updateDate: String?

        public override init() {
            super.init()
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
                map["Attributes"] = self.attributes!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createBy != nil {
                map["CreateBy"] = self.createBy!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.lastModifiedBy != nil {
                map["LastModifiedBy"] = self.lastModifiedBy!
            }
            if self.opsItemId != nil {
                map["OpsItemId"] = self.opsItemId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.solutions != nil {
                map["Solutions"] = self.solutions!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [String: Any] {
                self.attributes = value
            }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["CreateBy"] as? String {
                self.createBy = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["LastModifiedBy"] as? String {
                self.lastModifiedBy = value
            }
            if let value = dict["OpsItemId"] as? String {
                self.opsItemId = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Resources"] as? [String] {
                self.resources = value
            }
            if let value = dict["Severity"] as? String {
                self.severity = value
            }
            if let value = dict["Solutions"] as? [[String: Any]] {
                self.solutions = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var opsItem: GetOpsItemResponseBody.OpsItem?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.opsItem?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opsItem != nil {
            map["OpsItem"] = self.opsItem?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OpsItem"] as? [String: Any?] {
            var model = GetOpsItemResponseBody.OpsItem()
            model.fromMap(value)
            self.opsItem = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetOpsItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOpsItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetOpsItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetParameterRequest : Tea.TeaModel {
    public var name: String?

    public var parameterVersion: Int32?

    public var regionId: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parameterVersion != nil {
            map["ParameterVersion"] = self.parameterVersion!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ParameterVersion"] as? Int32 {
            self.parameterVersion = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class GetParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

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
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Constraints"] as? String {
                self.constraints = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParameterVersion"] as? Int32 {
                self.parameterVersion = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var parameter: GetParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Parameter"] as? [String: Any?] {
            var model = GetParameterResponseBody.Parameter()
            model.fromMap(value)
            self.parameter = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetParameterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetParametersRequest : Tea.TeaModel {
    public var names: String?

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
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Names"] as? String {
            self.names = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetParametersResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

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
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Constraints"] as? String {
                self.constraints = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParameterVersion"] as? Int32 {
                self.parameterVersion = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var invalidParameters: [String]?

    public var parameters: [GetParametersResponseBody.Parameters]?

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
        if self.invalidParameters != nil {
            map["InvalidParameters"] = self.invalidParameters!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InvalidParameters"] as? [String] {
            self.invalidParameters = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [GetParametersResponseBody.Parameters] = []
            for v in value {
                if v != nil {
                    var model = GetParametersResponseBody.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetParametersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetParametersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetParametersByPathRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var path: String?

    public var recursive: Bool?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["Recursive"] as? Bool {
            self.recursive = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetParametersByPathResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

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
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Constraints"] as? String {
                self.constraints = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParameterVersion"] as? Int32 {
                self.parameterVersion = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var parameters: [GetParametersByPathResponseBody.Parameters]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [GetParametersByPathResponseBody.Parameters] = []
            for v in value {
                if v != nil {
                    var model = GetParametersByPathResponseBody.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class GetParametersByPathResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetParametersByPathResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetParametersByPathResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPatchBaselineRequest : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetPatchBaselineResponseBody : Tea.TeaModel {
    public class PatchBaseline : Tea.TeaModel {
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
        public var approvalRules: String?

        public var approvedPatches: [String]?

        public var approvedPatchesEnableNonSecurity: Bool?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var isDefault: Bool?

        public var name: String?

        public var operationSystem: String?

        public var rejectedPatches: [String]?

        public var rejectedPatchesAction: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var sources: [String]?

        public var tags: [GetPatchBaselineResponseBody.PatchBaseline.Tags]?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvalRules != nil {
                map["ApprovalRules"] = self.approvalRules!
            }
            if self.approvedPatches != nil {
                map["ApprovedPatches"] = self.approvedPatches!
            }
            if self.approvedPatchesEnableNonSecurity != nil {
                map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.rejectedPatches != nil {
                map["RejectedPatches"] = self.rejectedPatches!
            }
            if self.rejectedPatchesAction != nil {
                map["RejectedPatchesAction"] = self.rejectedPatchesAction!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.sources != nil {
                map["Sources"] = self.sources!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApprovalRules"] as? String {
                self.approvalRules = value
            }
            if let value = dict["ApprovedPatches"] as? [String] {
                self.approvedPatches = value
            }
            if let value = dict["ApprovedPatchesEnableNonSecurity"] as? Bool {
                self.approvedPatchesEnableNonSecurity = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OperationSystem"] as? String {
                self.operationSystem = value
            }
            if let value = dict["RejectedPatches"] as? [String] {
                self.rejectedPatches = value
            }
            if let value = dict["RejectedPatchesAction"] as? String {
                self.rejectedPatchesAction = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Sources"] as? [String] {
                self.sources = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetPatchBaselineResponseBody.PatchBaseline.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetPatchBaselineResponseBody.PatchBaseline.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var patchBaseline: GetPatchBaselineResponseBody.PatchBaseline?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.patchBaseline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.patchBaseline != nil {
            map["PatchBaseline"] = self.patchBaseline?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PatchBaseline"] as? [String: Any?] {
            var model = GetPatchBaselineResponseBody.PatchBaseline()
            model.fromMap(value)
            self.patchBaseline = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPatchBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPatchBaselineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPatchBaselineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSecretParameterRequest : Tea.TeaModel {
    public var name: String?

    public var parameterVersion: Int32?

    public var regionId: String?

    public var withDecryption: Bool?

    public override init() {
        super.init()
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
        if self.parameterVersion != nil {
            map["ParameterVersion"] = self.parameterVersion!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.withDecryption != nil {
            map["WithDecryption"] = self.withDecryption!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ParameterVersion"] as? Int32 {
            self.parameterVersion = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WithDecryption"] as? Bool {
            self.withDecryption = value
        }
    }
}

public class GetSecretParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var DKMSInstanceId: String?

        public var description_: String?

        public var id: String?

        public var keyId: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

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
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.DKMSInstanceId != nil {
                map["DKMSInstanceId"] = self.DKMSInstanceId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Constraints"] as? String {
                self.constraints = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["DKMSInstanceId"] as? String {
                self.DKMSInstanceId = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["KeyId"] as? String {
                self.keyId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParameterVersion"] as? Int32 {
                self.parameterVersion = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var parameter: GetSecretParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Parameter"] as? [String: Any?] {
            var model = GetSecretParameterResponseBody.Parameter()
            model.fromMap(value)
            self.parameter = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetSecretParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSecretParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSecretParameterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSecretParametersRequest : Tea.TeaModel {
    public var names: String?

    public var regionId: String?

    public var withDecryption: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.withDecryption != nil {
            map["WithDecryption"] = self.withDecryption!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Names"] as? String {
            self.names = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WithDecryption"] as? Bool {
            self.withDecryption = value
        }
    }
}

public class GetSecretParametersResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var keyId: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

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
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Constraints"] as? String {
                self.constraints = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["KeyId"] as? String {
                self.keyId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParameterVersion"] as? Int32 {
                self.parameterVersion = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var invalidParameters: [String]?

    public var parameters: [GetSecretParametersResponseBody.Parameters]?

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
        if self.invalidParameters != nil {
            map["InvalidParameters"] = self.invalidParameters!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InvalidParameters"] as? [String] {
            self.invalidParameters = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [GetSecretParametersResponseBody.Parameters] = []
            for v in value {
                if v != nil {
                    var model = GetSecretParametersResponseBody.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetSecretParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSecretParametersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSecretParametersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSecretParametersByPathRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var path: String?

    public var recursive: Bool?

    public var regionId: String?

    public var withDecryption: Bool?

    public override init() {
        super.init()
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
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.withDecryption != nil {
            map["WithDecryption"] = self.withDecryption!
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
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["Recursive"] as? Bool {
            self.recursive = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WithDecryption"] as? Bool {
            self.withDecryption = value
        }
    }
}

public class GetSecretParametersByPathResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var keyId: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var shareType: String?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

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
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Constraints"] as? String {
                self.constraints = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["KeyId"] as? String {
                self.keyId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParameterVersion"] as? Int32 {
                self.parameterVersion = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var parameters: [GetSecretParametersByPathResponseBody.Parameters]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [GetSecretParametersByPathResponseBody.Parameters] = []
            for v in value {
                if v != nil {
                    var model = GetSecretParametersByPathResponseBody.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class GetSecretParametersByPathResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSecretParametersByPathResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSecretParametersByPathResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceSettingsRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetServiceSettingsResponseBody : Tea.TeaModel {
    public class ServiceSettings : Tea.TeaModel {
        public var deliveryOssBucketName: String?

        public var deliveryOssEnabled: Bool?

        public var deliveryOssKeyPrefix: String?

        public var deliverySlsEnabled: Bool?

        public var deliverySlsProjectName: String?

        public var rdcEnterpriseId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deliveryOssBucketName != nil {
                map["DeliveryOssBucketName"] = self.deliveryOssBucketName!
            }
            if self.deliveryOssEnabled != nil {
                map["DeliveryOssEnabled"] = self.deliveryOssEnabled!
            }
            if self.deliveryOssKeyPrefix != nil {
                map["DeliveryOssKeyPrefix"] = self.deliveryOssKeyPrefix!
            }
            if self.deliverySlsEnabled != nil {
                map["DeliverySlsEnabled"] = self.deliverySlsEnabled!
            }
            if self.deliverySlsProjectName != nil {
                map["DeliverySlsProjectName"] = self.deliverySlsProjectName!
            }
            if self.rdcEnterpriseId != nil {
                map["RdcEnterpriseId"] = self.rdcEnterpriseId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeliveryOssBucketName"] as? String {
                self.deliveryOssBucketName = value
            }
            if let value = dict["DeliveryOssEnabled"] as? Bool {
                self.deliveryOssEnabled = value
            }
            if let value = dict["DeliveryOssKeyPrefix"] as? String {
                self.deliveryOssKeyPrefix = value
            }
            if let value = dict["DeliverySlsEnabled"] as? Bool {
                self.deliverySlsEnabled = value
            }
            if let value = dict["DeliverySlsProjectName"] as? String {
                self.deliverySlsProjectName = value
            }
            if let value = dict["RdcEnterpriseId"] as? String {
                self.rdcEnterpriseId = value
            }
        }
    }
    public var requestId: String?

    public var serviceSettings: [GetServiceSettingsResponseBody.ServiceSettings]?

    public override init() {
        super.init()
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
        if self.serviceSettings != nil {
            var tmp : [Any] = []
            for k in self.serviceSettings! {
                tmp.append(k.toMap())
            }
            map["ServiceSettings"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceSettings"] as? [Any?] {
            var tmp : [GetServiceSettingsResponseBody.ServiceSettings] = []
            for v in value {
                if v != nil {
                    var model = GetServiceSettingsResponseBody.ServiceSettings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceSettings = tmp
        }
    }
}

public class GetServiceSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceSettingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTemplateRequest : Tea.TeaModel {
    public var regionId: String?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
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
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
    }
}

public class GetTemplateResponseBody : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hasTrigger: Bool?

        public var hash: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var sharedAccounts: String?

        public var tags: [String: Any]?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateType: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public var versionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hasTrigger != nil {
                map["HasTrigger"] = self.hasTrigger!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.sharedAccounts != nil {
                map["SharedAccounts"] = self.sharedAccounts!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
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
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["HasTrigger"] as? Bool {
                self.hasTrigger = value
            }
            if let value = dict["Hash"] as? String {
                self.hash = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["SharedAccounts"] as? String {
                self.sharedAccounts = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["TemplateFormat"] as? String {
                self.templateFormat = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateType"] as? String {
                self.templateType = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
        }
    }
    public var content: String?

    public var requestId: String?

    public var template: GetTemplateResponseBody.Template?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Template"] as? [String: Any?] {
            var model = GetTemplateResponseBody.Template()
            model.fromMap(value)
            self.template = model
        }
    }
}

public class GetTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTemplateParameterConstraintsRequest : Tea.TeaModel {
    public var parameters: String?

    public var regionId: String?

    public var templateContent: String?

    public var templateName: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateContent"] as? String {
            self.templateContent = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
    }
}

public class GetTemplateParameterConstraintsResponseBody : Tea.TeaModel {
    public var parameterConstraints: [String: Any]?

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
        if self.parameterConstraints != nil {
            map["ParameterConstraints"] = self.parameterConstraints!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ParameterConstraints"] as? [String: Any] {
            self.parameterConstraints = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetTemplateParameterConstraintsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTemplateParameterConstraintsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTemplateParameterConstraintsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListActionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var OOSActionName: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.OOSActionName != nil {
            map["OOSActionName"] = self.OOSActionName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if let value = dict["OOSActionName"] as? String {
            self.OOSActionName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListActionsResponseBody : Tea.TeaModel {
    public class Actions : Tea.TeaModel {
        public var actionType: String?

        public var createdDate: String?

        public var description_: String?

        public var OOSActionName: String?

        public var popularity: Int32?

        public var properties: String?

        public var templateVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.OOSActionName != nil {
                map["OOSActionName"] = self.OOSActionName!
            }
            if self.popularity != nil {
                map["Popularity"] = self.popularity!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionType"] as? String {
                self.actionType = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["OOSActionName"] as? String {
                self.OOSActionName = value
            }
            if let value = dict["Popularity"] as? Int32 {
                self.popularity = value
            }
            if let value = dict["Properties"] as? String {
                self.properties = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
        }
    }
    public var actions: [ListActionsResponseBody.Actions]?

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
        if self.actions != nil {
            var tmp : [Any] = []
            for k in self.actions! {
                tmp.append(k.toMap())
            }
            map["Actions"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Actions"] as? [Any?] {
            var tmp : [ListActionsResponseBody.Actions] = []
            for v in value {
                if v != nil {
                    var model = ListActionsResponseBody.Actions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.actions = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListActionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListActionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListActionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListApplicationGroupsRequest : Tea.TeaModel {
    public var applicationName: String?

    public var deployRegionId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceId: String?

    public var resourceProduct: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.deployRegionId != nil {
            map["DeployRegionId"] = self.deployRegionId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceProduct != nil {
            map["ResourceProduct"] = self.resourceProduct!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["DeployRegionId"] as? String {
            self.deployRegionId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceProduct"] as? String {
            self.resourceProduct = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ListApplicationGroupsResponseBody : Tea.TeaModel {
    public class ApplicationGroups : Tea.TeaModel {
        public var applicationName: String?

        public var cmsGroupId: String?

        public var createDate: String?

        public var deployParameters: String?

        public var deployRegionId: String?

        public var deployedRevisionIds: String?

        public var description_: String?

        public var errorDetail: String?

        public var errorType: String?

        public var executionId: String?

        public var importTagKey: String?

        public var importTagValue: String?

        public var name: String?

        public var status: String?

        public var statusReason: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
            }
            if self.cmsGroupId != nil {
                map["CmsGroupId"] = self.cmsGroupId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.deployParameters != nil {
                map["DeployParameters"] = self.deployParameters!
            }
            if self.deployRegionId != nil {
                map["DeployRegionId"] = self.deployRegionId!
            }
            if self.deployedRevisionIds != nil {
                map["DeployedRevisionIds"] = self.deployedRevisionIds!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.errorDetail != nil {
                map["ErrorDetail"] = self.errorDetail!
            }
            if self.errorType != nil {
                map["ErrorType"] = self.errorType!
            }
            if self.executionId != nil {
                map["ExecutionId"] = self.executionId!
            }
            if self.importTagKey != nil {
                map["ImportTagKey"] = self.importTagKey!
            }
            if self.importTagValue != nil {
                map["ImportTagValue"] = self.importTagValue!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicationName"] as? String {
                self.applicationName = value
            }
            if let value = dict["CmsGroupId"] as? String {
                self.cmsGroupId = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DeployParameters"] as? String {
                self.deployParameters = value
            }
            if let value = dict["DeployRegionId"] as? String {
                self.deployRegionId = value
            }
            if let value = dict["DeployedRevisionIds"] as? String {
                self.deployedRevisionIds = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ErrorDetail"] as? String {
                self.errorDetail = value
            }
            if let value = dict["ErrorType"] as? String {
                self.errorType = value
            }
            if let value = dict["ExecutionId"] as? String {
                self.executionId = value
            }
            if let value = dict["ImportTagKey"] as? String {
                self.importTagKey = value
            }
            if let value = dict["ImportTagValue"] as? String {
                self.importTagValue = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var applicationGroups: [ListApplicationGroupsResponseBody.ApplicationGroups]?

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
        if self.applicationGroups != nil {
            var tmp : [Any] = []
            for k in self.applicationGroups! {
                tmp.append(k.toMap())
            }
            map["ApplicationGroups"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationGroups"] as? [Any?] {
            var tmp : [ListApplicationGroupsResponseBody.ApplicationGroups] = []
            for v in value {
                if v != nil {
                    var model = ListApplicationGroupsResponseBody.ApplicationGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.applicationGroups = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListApplicationGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListApplicationGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListApplicationsRequest : Tea.TeaModel {
    public var applicationType: String?

    public var maxResults: Int32?

    public var name: String?

    public var names: String?

    public var nextToken: String?

    public var regionId: String?

    public var tags: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationType"] as? String {
            self.applicationType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Names"] as? String {
            self.names = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
    }
}

public class ListApplicationsShrinkRequest : Tea.TeaModel {
    public var applicationType: String?

    public var maxResults: Int32?

    public var name: String?

    public var names: String?

    public var nextToken: String?

    public var regionId: String?

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
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationType"] as? String {
            self.applicationType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Names"] as? String {
            self.names = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class ListApplicationsResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public var applicationType: String?

        public var createDate: String?

        public var description_: String?

        public var name: String?

        public var resourceGroupId: String?

        public var tags: [String: Any]?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicationType"] as? String {
                self.applicationType = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var applications: [ListApplicationsResponseBody.Applications]?

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
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["Applications"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Applications"] as? [Any?] {
            var tmp : [ListApplicationsResponseBody.Applications] = []
            for v in value {
                if v != nil {
                    var model = ListApplicationsResponseBody.Applications()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.applications = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListApplicationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExecutionLogsRequest : Tea.TeaModel {
    public var executionId: String?

    public var logType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var taskExecutionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskExecutionId != nil {
            map["TaskExecutionId"] = self.taskExecutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutionId"] as? String {
            self.executionId = value
        }
        if let value = dict["LogType"] as? String {
            self.logType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TaskExecutionId"] as? String {
            self.taskExecutionId = value
        }
    }
}

public class ListExecutionLogsResponseBody : Tea.TeaModel {
    public class ExecutionLogs : Tea.TeaModel {
        public var logType: String?

        public var message: String?

        public var taskExecutionId: String?

        public var timestamp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logType != nil {
                map["LogType"] = self.logType!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.taskExecutionId != nil {
                map["TaskExecutionId"] = self.taskExecutionId!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LogType"] as? String {
                self.logType = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["TaskExecutionId"] as? String {
                self.taskExecutionId = value
            }
            if let value = dict["Timestamp"] as? String {
                self.timestamp = value
            }
        }
    }
    public var executionLogs: [ListExecutionLogsResponseBody.ExecutionLogs]?

    public var isTruncated: Bool?

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
        if self.executionLogs != nil {
            var tmp : [Any] = []
            for k in self.executionLogs! {
                tmp.append(k.toMap())
            }
            map["ExecutionLogs"] = tmp
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutionLogs"] as? [Any?] {
            var tmp : [ListExecutionLogsResponseBody.ExecutionLogs] = []
            for v in value {
                if v != nil {
                    var model = ListExecutionLogsResponseBody.ExecutionLogs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.executionLogs = tmp
        }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListExecutionLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExecutionLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListExecutionLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExecutionRiskyTasksRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class ListExecutionRiskyTasksResponseBody : Tea.TeaModel {
    public class RiskyTasks : Tea.TeaModel {
        public var API: String?

        public var service: String?

        public var task: [String]?

        public var template: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.API != nil {
                map["API"] = self.API!
            }
            if self.service != nil {
                map["Service"] = self.service!
            }
            if self.task != nil {
                map["Task"] = self.task!
            }
            if self.template != nil {
                map["Template"] = self.template!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["API"] as? String {
                self.API = value
            }
            if let value = dict["Service"] as? String {
                self.service = value
            }
            if let value = dict["Task"] as? [String] {
                self.task = value
            }
            if let value = dict["Template"] as? [String] {
                self.template = value
            }
        }
    }
    public var requestId: String?

    public var riskyTasks: [ListExecutionRiskyTasksResponseBody.RiskyTasks]?

    public override init() {
        super.init()
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
        if self.riskyTasks != nil {
            var tmp : [Any] = []
            for k in self.riskyTasks! {
                tmp.append(k.toMap())
            }
            map["RiskyTasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RiskyTasks"] as? [Any?] {
            var tmp : [ListExecutionRiskyTasksResponseBody.RiskyTasks] = []
            for v in value {
                if v != nil {
                    var model = ListExecutionRiskyTasksResponseBody.RiskyTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.riskyTasks = tmp
        }
    }
}

public class ListExecutionRiskyTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExecutionRiskyTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListExecutionRiskyTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExecutionsRequest : Tea.TeaModel {
    public var categories: String?

    public var category: String?

    public var depth: String?

    public var description_: String?

    public var endDateAfter: String?

    public var endDateBefore: String?

    public var executedBy: String?

    public var executionId: String?

    public var includeChildExecution: Bool?

    public var maxResults: Int32?

    public var mode: String?

    public var nextToken: String?

    public var parentExecutionId: String?

    public var ramRole: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceTemplateName: String?

    public var sortField: String?

    public var sortOrder: String?

    public var startDateAfter: String?

    public var startDateBefore: String?

    public var status: String?

    public var tags: [String: Any]?

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
        if self.categories != nil {
            map["Categories"] = self.categories!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.depth != nil {
            map["Depth"] = self.depth!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endDateAfter != nil {
            map["EndDateAfter"] = self.endDateAfter!
        }
        if self.endDateBefore != nil {
            map["EndDateBefore"] = self.endDateBefore!
        }
        if self.executedBy != nil {
            map["ExecutedBy"] = self.executedBy!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.includeChildExecution != nil {
            map["IncludeChildExecution"] = self.includeChildExecution!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parentExecutionId != nil {
            map["ParentExecutionId"] = self.parentExecutionId!
        }
        if self.ramRole != nil {
            map["RamRole"] = self.ramRole!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceTemplateName != nil {
            map["ResourceTemplateName"] = self.resourceTemplateName!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startDateAfter != nil {
            map["StartDateAfter"] = self.startDateAfter!
        }
        if self.startDateBefore != nil {
            map["StartDateBefore"] = self.startDateBefore!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Categories"] as? String {
            self.categories = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["Depth"] as? String {
            self.depth = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EndDateAfter"] as? String {
            self.endDateAfter = value
        }
        if let value = dict["EndDateBefore"] as? String {
            self.endDateBefore = value
        }
        if let value = dict["ExecutedBy"] as? String {
            self.executedBy = value
        }
        if let value = dict["ExecutionId"] as? String {
            self.executionId = value
        }
        if let value = dict["IncludeChildExecution"] as? Bool {
            self.includeChildExecution = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ParentExecutionId"] as? String {
            self.parentExecutionId = value
        }
        if let value = dict["RamRole"] as? String {
            self.ramRole = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceTemplateName"] as? String {
            self.resourceTemplateName = value
        }
        if let value = dict["SortField"] as? String {
            self.sortField = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["StartDateAfter"] as? String {
            self.startDateAfter = value
        }
        if let value = dict["StartDateBefore"] as? String {
            self.startDateBefore = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class ListExecutionsShrinkRequest : Tea.TeaModel {
    public var categories: String?

    public var category: String?

    public var depth: String?

    public var description_: String?

    public var endDateAfter: String?

    public var endDateBefore: String?

    public var executedBy: String?

    public var executionId: String?

    public var includeChildExecution: Bool?

    public var maxResults: Int32?

    public var mode: String?

    public var nextToken: String?

    public var parentExecutionId: String?

    public var ramRole: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceTemplateName: String?

    public var sortField: String?

    public var sortOrder: String?

    public var startDateAfter: String?

    public var startDateBefore: String?

    public var status: String?

    public var tagsShrink: String?

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
        if self.categories != nil {
            map["Categories"] = self.categories!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.depth != nil {
            map["Depth"] = self.depth!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endDateAfter != nil {
            map["EndDateAfter"] = self.endDateAfter!
        }
        if self.endDateBefore != nil {
            map["EndDateBefore"] = self.endDateBefore!
        }
        if self.executedBy != nil {
            map["ExecutedBy"] = self.executedBy!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.includeChildExecution != nil {
            map["IncludeChildExecution"] = self.includeChildExecution!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parentExecutionId != nil {
            map["ParentExecutionId"] = self.parentExecutionId!
        }
        if self.ramRole != nil {
            map["RamRole"] = self.ramRole!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceTemplateName != nil {
            map["ResourceTemplateName"] = self.resourceTemplateName!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startDateAfter != nil {
            map["StartDateAfter"] = self.startDateAfter!
        }
        if self.startDateBefore != nil {
            map["StartDateBefore"] = self.startDateBefore!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Categories"] as? String {
            self.categories = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["Depth"] as? String {
            self.depth = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EndDateAfter"] as? String {
            self.endDateAfter = value
        }
        if let value = dict["EndDateBefore"] as? String {
            self.endDateBefore = value
        }
        if let value = dict["ExecutedBy"] as? String {
            self.executedBy = value
        }
        if let value = dict["ExecutionId"] as? String {
            self.executionId = value
        }
        if let value = dict["IncludeChildExecution"] as? Bool {
            self.includeChildExecution = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ParentExecutionId"] as? String {
            self.parentExecutionId = value
        }
        if let value = dict["RamRole"] as? String {
            self.ramRole = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceTemplateName"] as? String {
            self.resourceTemplateName = value
        }
        if let value = dict["SortField"] as? String {
            self.sortField = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["StartDateAfter"] as? String {
            self.startDateAfter = value
        }
        if let value = dict["StartDateBefore"] as? String {
            self.startDateBefore = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class ListExecutionsResponseBody : Tea.TeaModel {
    public class Executions : Tea.TeaModel {
        public class CurrentTasks : Tea.TeaModel {
            public var taskAction: String?

            public var taskExecutionId: String?

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
                if self.taskAction != nil {
                    map["TaskAction"] = self.taskAction!
                }
                if self.taskExecutionId != nil {
                    map["TaskExecutionId"] = self.taskExecutionId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TaskAction"] as? String {
                    self.taskAction = value
                }
                if let value = dict["TaskExecutionId"] as? String {
                    self.taskExecutionId = value
                }
                if let value = dict["TaskName"] as? String {
                    self.taskName = value
                }
            }
        }
        public var category: String?

        public var counters: [String: Any]?

        public var createDate: String?

        public var currentTasks: [ListExecutionsResponseBody.Executions.CurrentTasks]?

        public var description_: String?

        public var endDate: String?

        public var executedBy: String?

        public var executionId: String?

        public var isParent: Bool?

        public var lastSuccessfulTriggerTime: String?

        public var lastTriggerOutputs: String?

        public var lastTriggerStatus: String?

        public var lastTriggerStatusMessage: String?

        public var lastTriggerTime: String?

        public var mode: String?

        public var nextScheduleTime: String?

        public var outputs: String?

        public var parameters: [String: Any]?

        public var parentExecutionId: String?

        public var ramRole: String?

        public var resourceGroupId: String?

        public var resourceStatus: String?

        public var safetyCheck: String?

        public var startDate: String?

        public var status: String?

        public var statusMessage: String?

        public var statusReason: String?

        public var tags: [String: Any]?

        public var targets: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updateDate: String?

        public var waitingStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.counters != nil {
                map["Counters"] = self.counters!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.currentTasks != nil {
                var tmp : [Any] = []
                for k in self.currentTasks! {
                    tmp.append(k.toMap())
                }
                map["CurrentTasks"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.executedBy != nil {
                map["ExecutedBy"] = self.executedBy!
            }
            if self.executionId != nil {
                map["ExecutionId"] = self.executionId!
            }
            if self.isParent != nil {
                map["IsParent"] = self.isParent!
            }
            if self.lastSuccessfulTriggerTime != nil {
                map["LastSuccessfulTriggerTime"] = self.lastSuccessfulTriggerTime!
            }
            if self.lastTriggerOutputs != nil {
                map["LastTriggerOutputs"] = self.lastTriggerOutputs!
            }
            if self.lastTriggerStatus != nil {
                map["LastTriggerStatus"] = self.lastTriggerStatus!
            }
            if self.lastTriggerStatusMessage != nil {
                map["LastTriggerStatusMessage"] = self.lastTriggerStatusMessage!
            }
            if self.lastTriggerTime != nil {
                map["LastTriggerTime"] = self.lastTriggerTime!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.nextScheduleTime != nil {
                map["NextScheduleTime"] = self.nextScheduleTime!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.parentExecutionId != nil {
                map["ParentExecutionId"] = self.parentExecutionId!
            }
            if self.ramRole != nil {
                map["RamRole"] = self.ramRole!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
            }
            if self.safetyCheck != nil {
                map["SafetyCheck"] = self.safetyCheck!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.targets != nil {
                map["Targets"] = self.targets!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.waitingStatus != nil {
                map["WaitingStatus"] = self.waitingStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["Counters"] as? [String: Any] {
                self.counters = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["CurrentTasks"] as? [Any?] {
                var tmp : [ListExecutionsResponseBody.Executions.CurrentTasks] = []
                for v in value {
                    if v != nil {
                        var model = ListExecutionsResponseBody.Executions.CurrentTasks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.currentTasks = tmp
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EndDate"] as? String {
                self.endDate = value
            }
            if let value = dict["ExecutedBy"] as? String {
                self.executedBy = value
            }
            if let value = dict["ExecutionId"] as? String {
                self.executionId = value
            }
            if let value = dict["IsParent"] as? Bool {
                self.isParent = value
            }
            if let value = dict["LastSuccessfulTriggerTime"] as? String {
                self.lastSuccessfulTriggerTime = value
            }
            if let value = dict["LastTriggerOutputs"] as? String {
                self.lastTriggerOutputs = value
            }
            if let value = dict["LastTriggerStatus"] as? String {
                self.lastTriggerStatus = value
            }
            if let value = dict["LastTriggerStatusMessage"] as? String {
                self.lastTriggerStatusMessage = value
            }
            if let value = dict["LastTriggerTime"] as? String {
                self.lastTriggerTime = value
            }
            if let value = dict["Mode"] as? String {
                self.mode = value
            }
            if let value = dict["NextScheduleTime"] as? String {
                self.nextScheduleTime = value
            }
            if let value = dict["Outputs"] as? String {
                self.outputs = value
            }
            if let value = dict["Parameters"] as? [String: Any] {
                self.parameters = value
            }
            if let value = dict["ParentExecutionId"] as? String {
                self.parentExecutionId = value
            }
            if let value = dict["RamRole"] as? String {
                self.ramRole = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceStatus"] as? String {
                self.resourceStatus = value
            }
            if let value = dict["SafetyCheck"] as? String {
                self.safetyCheck = value
            }
            if let value = dict["StartDate"] as? String {
                self.startDate = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusMessage"] as? String {
                self.statusMessage = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Targets"] as? String {
                self.targets = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
            if let value = dict["WaitingStatus"] as? String {
                self.waitingStatus = value
            }
        }
    }
    public var executions: [ListExecutionsResponseBody.Executions]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.executions != nil {
            var tmp : [Any] = []
            for k in self.executions! {
                tmp.append(k.toMap())
            }
            map["Executions"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["Executions"] as? [Any?] {
            var tmp : [ListExecutionsResponseBody.Executions] = []
            for v in value {
                if v != nil {
                    var model = ListExecutionsResponseBody.Executions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.executions = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListExecutionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExecutionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListExecutionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGitAccountsRequest : Tea.TeaModel {
    public var bindType: String?

    public var clientToken: String?

    public var platform: String?

    public var regionId: String?

    public var roleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindType != nil {
            map["BindType"] = self.bindType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindType"] as? String {
            self.bindType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
    }
}

public class ListGitAccountsResponseBody : Tea.TeaModel {
    public class GitAccounts : Tea.TeaModel {
        public var isActive: Bool?

        public var owner: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isActive != nil {
                map["IsActive"] = self.isActive!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsActive"] as? Bool {
                self.isActive = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
        }
    }
    public var count: Int32?

    public var gitAccounts: [ListGitAccountsResponseBody.GitAccounts]?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.gitAccounts != nil {
            var tmp : [Any] = []
            for k in self.gitAccounts! {
                tmp.append(k.toMap())
            }
            map["GitAccounts"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["GitAccounts"] as? [Any?] {
            var tmp : [ListGitAccountsResponseBody.GitAccounts] = []
            for v in value {
                if v != nil {
                    var model = ListGitAccountsResponseBody.GitAccounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.gitAccounts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListGitAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGitAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListGitAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGitBranchesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var orgId: String?

    public var owner: String?

    public var platform: String?

    public var regionId: String?

    public var repoFullName: String?

    public var repoId: Int64?

    public override init() {
        super.init()
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
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.repoFullName != nil {
            map["RepoFullName"] = self.repoFullName!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RepoFullName"] as? String {
            self.repoFullName = value
        }
        if let value = dict["RepoId"] as? Int64 {
            self.repoId = value
        }
    }
}

public class ListGitBranchesResponseBody : Tea.TeaModel {
    public class GitBranches : Tea.TeaModel {
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
    public var count: Int32?

    public var gitBranches: [ListGitBranchesResponseBody.GitBranches]?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.gitBranches != nil {
            var tmp : [Any] = []
            for k in self.gitBranches! {
                tmp.append(k.toMap())
            }
            map["GitBranches"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["GitBranches"] as? [Any?] {
            var tmp : [ListGitBranchesResponseBody.GitBranches] = []
            for v in value {
                if v != nil {
                    var model = ListGitBranchesResponseBody.GitBranches()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.gitBranches = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListGitBranchesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGitBranchesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListGitBranchesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGitOrganizationsRequest : Tea.TeaModel {
    public var bindType: String?

    public var clientToken: String?

    public var owner: String?

    public var platform: String?

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
        if self.bindType != nil {
            map["BindType"] = self.bindType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindType"] as? String {
            self.bindType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListGitOrganizationsResponseBody : Tea.TeaModel {
    public class GitOrgs : Tea.TeaModel {
        public var orgId: String?

        public var orgName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orgId != nil {
                map["OrgId"] = self.orgId!
            }
            if self.orgName != nil {
                map["OrgName"] = self.orgName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrgId"] as? String {
                self.orgId = value
            }
            if let value = dict["OrgName"] as? String {
                self.orgName = value
            }
        }
    }
    public var count: Int32?

    public var gitOrgs: [ListGitOrganizationsResponseBody.GitOrgs]?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.gitOrgs != nil {
            var tmp : [Any] = []
            for k in self.gitOrgs! {
                tmp.append(k.toMap())
            }
            map["GitOrgs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["GitOrgs"] as? [Any?] {
            var tmp : [ListGitOrganizationsResponseBody.GitOrgs] = []
            for v in value {
                if v != nil {
                    var model = ListGitOrganizationsResponseBody.GitOrgs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.gitOrgs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListGitOrganizationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGitOrganizationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListGitOrganizationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGitRepositoriesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var orgId: String?

    public var orgName: String?

    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var platform: String?

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
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
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
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListGitRepositoriesResponseBody : Tea.TeaModel {
    public class GitRepos : Tea.TeaModel {
        public var description_: String?

        public var fullName: String?

        public var htmlUrl: String?

        public var isPrivate: Bool?

        public var repoId: Int64?

        public override init() {
            super.init()
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
            if self.fullName != nil {
                map["FullName"] = self.fullName!
            }
            if self.htmlUrl != nil {
                map["HtmlUrl"] = self.htmlUrl!
            }
            if self.isPrivate != nil {
                map["IsPrivate"] = self.isPrivate!
            }
            if self.repoId != nil {
                map["RepoId"] = self.repoId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FullName"] as? String {
                self.fullName = value
            }
            if let value = dict["HtmlUrl"] as? String {
                self.htmlUrl = value
            }
            if let value = dict["IsPrivate"] as? Bool {
                self.isPrivate = value
            }
            if let value = dict["RepoId"] as? Int64 {
                self.repoId = value
            }
        }
    }
    public var count: Int32?

    public var gitRepos: [ListGitRepositoriesResponseBody.GitRepos]?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.gitRepos != nil {
            var tmp : [Any] = []
            for k in self.gitRepos! {
                tmp.append(k.toMap())
            }
            map["GitRepos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["GitRepos"] as? [Any?] {
            var tmp : [ListGitRepositoriesResponseBody.GitRepos] = []
            for v in value {
                if v != nil {
                    var model = ListGitRepositoriesResponseBody.GitRepos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.gitRepos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListGitRepositoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGitRepositoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListGitRepositoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGitRepositoryContentsRequest : Tea.TeaModel {
    public var branch: String?

    public var clientToken: String?

    public var contentType: String?

    public var orgId: String?

    public var owner: String?

    public var path: String?

    public var platform: String?

    public var regionId: String?

    public var repoFullName: String?

    public var repoId: Int64?

    public override init() {
        super.init()
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
            map["Branch"] = self.branch!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.repoFullName != nil {
            map["RepoFullName"] = self.repoFullName!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Branch"] as? String {
            self.branch = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ContentType"] as? String {
            self.contentType = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RepoFullName"] as? String {
            self.repoFullName = value
        }
        if let value = dict["RepoId"] as? Int64 {
            self.repoId = value
        }
    }
}

public class ListGitRepositoryContentsResponseBody : Tea.TeaModel {
    public class Contents : Tea.TeaModel {
        public var content: String?

        public var name: String?

        public var path: String?

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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var contents: [ListGitRepositoryContentsResponseBody.Contents]?

    public var count: Int32?

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
        if self.contents != nil {
            var tmp : [Any] = []
            for k in self.contents! {
                tmp.append(k.toMap())
            }
            map["Contents"] = tmp
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Contents"] as? [Any?] {
            var tmp : [ListGitRepositoryContentsResponseBody.Contents] = []
            for v in value {
                if v != nil {
                    var model = ListGitRepositoryContentsResponseBody.Contents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.contents = tmp
        }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListGitRepositoryContentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGitRepositoryContentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListGitRepositoryContentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancePackageStatesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var templateNames: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateNames != nil {
            map["TemplateNames"] = self.templateNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateNames"] as? String {
            self.templateNames = value
        }
    }
}

public class ListInstancePackageStatesResponseBody : Tea.TeaModel {
    public class PackageStates : Tea.TeaModel {
        public var configurationInfo: String?

        public var description_: String?

        public var parameters: String?

        public var publisher: String?

        public var templateCategory: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var templateVersionName: String?

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
            if self.configurationInfo != nil {
                map["ConfigurationInfo"] = self.configurationInfo!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.publisher != nil {
                map["Publisher"] = self.publisher!
            }
            if self.templateCategory != nil {
                map["TemplateCategory"] = self.templateCategory!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.templateVersionName != nil {
                map["TemplateVersionName"] = self.templateVersionName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigurationInfo"] as? String {
                self.configurationInfo = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Parameters"] as? String {
                self.parameters = value
            }
            if let value = dict["Publisher"] as? String {
                self.publisher = value
            }
            if let value = dict["TemplateCategory"] as? String {
                self.templateCategory = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["TemplateVersionName"] as? String {
                self.templateVersionName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var maxResults: String?

    public var nextToken: String?

    public var packageStates: [ListInstancePackageStatesResponseBody.PackageStates]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.packageStates != nil {
            var tmp : [Any] = []
            for k in self.packageStates! {
                tmp.append(k.toMap())
            }
            map["PackageStates"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PackageStates"] as? [Any?] {
            var tmp : [ListInstancePackageStatesResponseBody.PackageStates] = []
            for v in value {
                if v != nil {
                    var model = ListInstancePackageStatesResponseBody.PackageStates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.packageStates = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListInstancePackageStatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancePackageStatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstancePackageStatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancePatchStatesRequest : Tea.TeaModel {
    public var instanceIds: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListInstancePatchStatesResponseBody : Tea.TeaModel {
    public class InstancePatchStates : Tea.TeaModel {
        public var baselineId: String?

        public var failedCount: String?

        public var installedCount: String?

        public var installedOtherCount: String?

        public var installedPendingRebootCount: String?

        public var installedRejectedCount: String?

        public var instanceId: String?

        public var missingCount: String?

        public var operationEndTime: String?

        public var operationStartTime: String?

        public var operationType: String?

        public var ownerInformation: String?

        public var patchGroup: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.baselineId != nil {
                map["BaselineId"] = self.baselineId!
            }
            if self.failedCount != nil {
                map["FailedCount"] = self.failedCount!
            }
            if self.installedCount != nil {
                map["InstalledCount"] = self.installedCount!
            }
            if self.installedOtherCount != nil {
                map["InstalledOtherCount"] = self.installedOtherCount!
            }
            if self.installedPendingRebootCount != nil {
                map["InstalledPendingRebootCount"] = self.installedPendingRebootCount!
            }
            if self.installedRejectedCount != nil {
                map["InstalledRejectedCount"] = self.installedRejectedCount!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.missingCount != nil {
                map["MissingCount"] = self.missingCount!
            }
            if self.operationEndTime != nil {
                map["OperationEndTime"] = self.operationEndTime!
            }
            if self.operationStartTime != nil {
                map["OperationStartTime"] = self.operationStartTime!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.ownerInformation != nil {
                map["OwnerInformation"] = self.ownerInformation!
            }
            if self.patchGroup != nil {
                map["PatchGroup"] = self.patchGroup!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BaselineId"] as? String {
                self.baselineId = value
            }
            if let value = dict["FailedCount"] as? String {
                self.failedCount = value
            }
            if let value = dict["InstalledCount"] as? String {
                self.installedCount = value
            }
            if let value = dict["InstalledOtherCount"] as? String {
                self.installedOtherCount = value
            }
            if let value = dict["InstalledPendingRebootCount"] as? String {
                self.installedPendingRebootCount = value
            }
            if let value = dict["InstalledRejectedCount"] as? String {
                self.installedRejectedCount = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MissingCount"] as? String {
                self.missingCount = value
            }
            if let value = dict["OperationEndTime"] as? String {
                self.operationEndTime = value
            }
            if let value = dict["OperationStartTime"] as? String {
                self.operationStartTime = value
            }
            if let value = dict["OperationType"] as? String {
                self.operationType = value
            }
            if let value = dict["OwnerInformation"] as? String {
                self.ownerInformation = value
            }
            if let value = dict["PatchGroup"] as? String {
                self.patchGroup = value
            }
        }
    }
    public var instancePatchStates: [ListInstancePatchStatesResponseBody.InstancePatchStates]?

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
        if self.instancePatchStates != nil {
            var tmp : [Any] = []
            for k in self.instancePatchStates! {
                tmp.append(k.toMap())
            }
            map["InstancePatchStates"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstancePatchStates"] as? [Any?] {
            var tmp : [ListInstancePatchStatesResponseBody.InstancePatchStates] = []
            for v in value {
                if v != nil {
                    var model = ListInstancePatchStatesResponseBody.InstancePatchStates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instancePatchStates = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListInstancePatchStatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancePatchStatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstancePatchStatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancePatchesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var patchStatuses: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.patchStatuses != nil {
            map["PatchStatuses"] = self.patchStatuses!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PatchStatuses"] as? String {
            self.patchStatuses = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListInstancePatchesResponseBody : Tea.TeaModel {
    public class Patches : Tea.TeaModel {
        public var classification: String?

        public var installedTime: String?

        public var KBId: String?

        public var severity: String?

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
            if self.classification != nil {
                map["Classification"] = self.classification!
            }
            if self.installedTime != nil {
                map["InstalledTime"] = self.installedTime!
            }
            if self.KBId != nil {
                map["KBId"] = self.KBId!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Classification"] as? String {
                self.classification = value
            }
            if let value = dict["InstalledTime"] as? String {
                self.installedTime = value
            }
            if let value = dict["KBId"] as? String {
                self.KBId = value
            }
            if let value = dict["Severity"] as? String {
                self.severity = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var patches: [ListInstancePatchesResponseBody.Patches]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.patches != nil {
            var tmp : [Any] = []
            for k in self.patches! {
                tmp.append(k.toMap())
            }
            map["Patches"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["Patches"] as? [Any?] {
            var tmp : [ListInstancePatchesResponseBody.Patches] = []
            for v in value {
                if v != nil {
                    var model = ListInstancePatchesResponseBody.Patches()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.patches = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListInstancePatchesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancePatchesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstancePatchesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInventoryEntriesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var operator_: String?

        public var value: [String]?

        public override init() {
            super.init()
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
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
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
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [ListInventoryEntriesRequest.Filter]?

    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var typeName: String?

    public override init() {
        super.init()
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
            map["Filter"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.typeName != nil {
            map["TypeName"] = self.typeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListInventoryEntriesRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListInventoryEntriesRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TypeName"] as? String {
            self.typeName = value
        }
    }
}

public class ListInventoryEntriesResponseBody : Tea.TeaModel {
    public var captureTime: String?

    public var entries: [[String: Any]]?

    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var schemaVersion: String?

    public var typeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.captureTime != nil {
            map["CaptureTime"] = self.captureTime!
        }
        if self.entries != nil {
            map["Entries"] = self.entries!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.typeName != nil {
            map["TypeName"] = self.typeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CaptureTime"] as? String {
            self.captureTime = value
        }
        if let value = dict["Entries"] as? [[String: Any]] {
            self.entries = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SchemaVersion"] as? String {
            self.schemaVersion = value
        }
        if let value = dict["TypeName"] as? String {
            self.typeName = value
        }
    }
}

public class ListInventoryEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInventoryEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInventoryEntriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOpsItemsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var operator_: String?

        public var value: [String]?

        public override init() {
            super.init()
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
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
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
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [ListOpsItemsRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceTags: [String: Any]?

    public var tags: [String: Any]?

    public override init() {
        super.init()
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
            map["Filter"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceTags != nil {
            map["ResourceTags"] = self.resourceTags!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListOpsItemsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListOpsItemsRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceTags"] as? [String: Any] {
            self.resourceTags = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
    }
}

public class ListOpsItemsShrinkRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var operator_: String?

        public var value: [String]?

        public override init() {
            super.init()
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
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
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
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [ListOpsItemsShrinkRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceTagsShrink: String?

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
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceTagsShrink != nil {
            map["ResourceTags"] = self.resourceTagsShrink!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListOpsItemsShrinkRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListOpsItemsShrinkRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceTags"] as? String {
            self.resourceTagsShrink = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class ListOpsItemsResponseBody : Tea.TeaModel {
    public class OpsItems : Tea.TeaModel {
        public var category: String?

        public var createDate: String?

        public var opsItemId: String?

        public var priority: Int32?

        public var resources: [String]?

        public var severity: String?

        public var source: String?

        public var status: String?

        public var tags: [String: Any]?

        public var title: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.opsItemId != nil {
                map["OpsItemId"] = self.opsItemId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["OpsItemId"] as? String {
                self.opsItemId = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["Resources"] as? [String] {
                self.resources = value
            }
            if let value = dict["Severity"] as? String {
                self.severity = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var opsItems: [ListOpsItemsResponseBody.OpsItems]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.opsItems != nil {
            var tmp : [Any] = []
            for k in self.opsItems! {
                tmp.append(k.toMap())
            }
            map["OpsItems"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OpsItems"] as? [Any?] {
            var tmp : [ListOpsItemsResponseBody.OpsItems] = []
            for v in value {
                if v != nil {
                    var model = ListOpsItemsResponseBody.OpsItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.opsItems = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListOpsItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOpsItemsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOpsItemsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListParameterVersionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var regionId: String?

    public var shareType: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
    }
}

public class ListParameterVersionsResponseBody : Tea.TeaModel {
    public class ParameterVersions : Tea.TeaModel {
        public var parameterVersion: Int32?

        public var updatedBy: String?

        public var updatedDate: String?

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
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterVersion"] as? Int32 {
                self.parameterVersion = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var createdBy: String?

    public var createdDate: String?

    public var description_: String?

    public var id: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var parameterVersions: [ListParameterVersionsResponseBody.ParameterVersions]?

    public var requestId: String?

    public var totalCount: Int32?

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
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.createdDate != nil {
            map["CreatedDate"] = self.createdDate!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parameterVersions != nil {
            var tmp : [Any] = []
            for k in self.parameterVersions! {
                tmp.append(k.toMap())
            }
            map["ParameterVersions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["CreatedDate"] as? String {
            self.createdDate = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ParameterVersions"] as? [Any?] {
            var tmp : [ListParameterVersionsResponseBody.ParameterVersions] = []
            for v in value {
                if v != nil {
                    var model = ListParameterVersionsResponseBody.ParameterVersions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameterVersions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListParameterVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListParameterVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListParameterVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListParametersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var path: String?

    public var recursive: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

    public var shareType: String?

    public var sortField: String?

    public var sortOrder: String?

    public var tags: [String: Any]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["Recursive"] as? Bool {
            self.recursive = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["SortField"] as? String {
            self.sortField = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListParametersShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var path: String?

    public var recursive: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

    public var shareType: String?

    public var sortField: String?

    public var sortOrder: String?

    public var tagsShrink: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["Recursive"] as? Bool {
            self.recursive = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["SortField"] as? String {
            self.sortField = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListParametersResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParameterVersion"] as? String {
                self.parameterVersion = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var parameters: [ListParametersResponseBody.Parameters]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [ListParametersResponseBody.Parameters] = []
            for v in value {
                if v != nil {
                    var model = ListParametersResponseBody.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListParametersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListParametersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPatchBaselinesRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
    public var approvedPatches: [String]?

    public var approvedPatchesEnableNonSecurity: Bool?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var operationSystem: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var shareType: String?

    public var sources: [String]?

    public var tags: [ListPatchBaselinesRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvedPatches != nil {
            map["ApprovedPatches"] = self.approvedPatches!
        }
        if self.approvedPatchesEnableNonSecurity != nil {
            map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.operationSystem != nil {
            map["OperationSystem"] = self.operationSystem!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sources != nil {
            map["Sources"] = self.sources!
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
        if let value = dict["ApprovedPatches"] as? [String] {
            self.approvedPatches = value
        }
        if let value = dict["ApprovedPatchesEnableNonSecurity"] as? Bool {
            self.approvedPatchesEnableNonSecurity = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OperationSystem"] as? String {
            self.operationSystem = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["Sources"] as? [String] {
            self.sources = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [ListPatchBaselinesRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListPatchBaselinesRequest.Tags()
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

public class ListPatchBaselinesShrinkRequest : Tea.TeaModel {
    public var approvedPatchesShrink: String?

    public var approvedPatchesEnableNonSecurity: Bool?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var operationSystem: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var shareType: String?

    public var sourcesShrink: String?

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
        if self.approvedPatchesShrink != nil {
            map["ApprovedPatches"] = self.approvedPatchesShrink!
        }
        if self.approvedPatchesEnableNonSecurity != nil {
            map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.operationSystem != nil {
            map["OperationSystem"] = self.operationSystem!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sourcesShrink != nil {
            map["Sources"] = self.sourcesShrink!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApprovedPatches"] as? String {
            self.approvedPatchesShrink = value
        }
        if let value = dict["ApprovedPatchesEnableNonSecurity"] as? Bool {
            self.approvedPatchesEnableNonSecurity = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OperationSystem"] as? String {
            self.operationSystem = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["Sources"] as? String {
            self.sourcesShrink = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class ListPatchBaselinesResponseBody : Tea.TeaModel {
    public class PatchBaselines : Tea.TeaModel {
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
        public var approvedPatches: [String]?

        public var approvedPatchesEnableNonSecurity: Bool?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var isDefault: Bool?

        public var name: String?

        public var operationSystem: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var sources: [String]?

        public var tags: [ListPatchBaselinesResponseBody.PatchBaselines.Tags]?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvedPatches != nil {
                map["ApprovedPatches"] = self.approvedPatches!
            }
            if self.approvedPatchesEnableNonSecurity != nil {
                map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.sources != nil {
                map["Sources"] = self.sources!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApprovedPatches"] as? [String] {
                self.approvedPatches = value
            }
            if let value = dict["ApprovedPatchesEnableNonSecurity"] as? Bool {
                self.approvedPatchesEnableNonSecurity = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OperationSystem"] as? String {
                self.operationSystem = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Sources"] as? [String] {
                self.sources = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListPatchBaselinesResponseBody.PatchBaselines.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListPatchBaselinesResponseBody.PatchBaselines.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var patchBaselines: [ListPatchBaselinesResponseBody.PatchBaselines]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.patchBaselines != nil {
            var tmp : [Any] = []
            for k in self.patchBaselines! {
                tmp.append(k.toMap())
            }
            map["PatchBaselines"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["PatchBaselines"] as? [Any?] {
            var tmp : [ListPatchBaselinesResponseBody.PatchBaselines] = []
            for v in value {
                if v != nil {
                    var model = ListPatchBaselinesResponseBody.PatchBaselines()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.patchBaselines = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPatchBaselinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPatchBaselinesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPatchBaselinesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceExecutionStatusRequest : Tea.TeaModel {
    public var executionId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutionId"] as? String {
            self.executionId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListResourceExecutionStatusResponseBody : Tea.TeaModel {
    public class ResourceExecutionStatus : Tea.TeaModel {
        public var executionId: String?

        public var executionTime: String?

        public var outputs: String?

        public var resourceId: String?

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
            if self.executionId != nil {
                map["ExecutionId"] = self.executionId!
            }
            if self.executionTime != nil {
                map["ExecutionTime"] = self.executionTime!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExecutionId"] as? String {
                self.executionId = value
            }
            if let value = dict["ExecutionTime"] as? String {
                self.executionTime = value
            }
            if let value = dict["Outputs"] as? String {
                self.outputs = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resourceExecutionStatus: [ListResourceExecutionStatusResponseBody.ResourceExecutionStatus]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceExecutionStatus != nil {
            var tmp : [Any] = []
            for k in self.resourceExecutionStatus! {
                tmp.append(k.toMap())
            }
            map["ResourceExecutionStatus"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceExecutionStatus"] as? [Any?] {
            var tmp : [ListResourceExecutionStatusResponseBody.ResourceExecutionStatus] = []
            for v in value {
                if v != nil {
                    var model = ListResourceExecutionStatusResponseBody.ResourceExecutionStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceExecutionStatus = tmp
        }
    }
}

public class ListResourceExecutionStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceExecutionStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListResourceExecutionStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSecretParameterVersionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var regionId: String?

    public var shareType: String?

    public var withDecryption: Bool?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.withDecryption != nil {
            map["WithDecryption"] = self.withDecryption!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["WithDecryption"] as? Bool {
            self.withDecryption = value
        }
    }
}

public class ListSecretParameterVersionsResponseBody : Tea.TeaModel {
    public class ParameterVersions : Tea.TeaModel {
        public var parameterVersion: Int32?

        public var updatedBy: String?

        public var updatedDate: String?

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
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterVersion"] as? Int32 {
                self.parameterVersion = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var createdBy: String?

    public var createdDate: String?

    public var description_: String?

    public var id: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var parameterVersions: [ListSecretParameterVersionsResponseBody.ParameterVersions]?

    public var requestId: String?

    public var totalCount: Int32?

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
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.createdDate != nil {
            map["CreatedDate"] = self.createdDate!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parameterVersions != nil {
            var tmp : [Any] = []
            for k in self.parameterVersions! {
                tmp.append(k.toMap())
            }
            map["ParameterVersions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["CreatedDate"] as? String {
            self.createdDate = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ParameterVersions"] as? [Any?] {
            var tmp : [ListSecretParameterVersionsResponseBody.ParameterVersions] = []
            for v in value {
                if v != nil {
                    var model = ListSecretParameterVersionsResponseBody.ParameterVersions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameterVersions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListSecretParameterVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSecretParameterVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSecretParameterVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSecretParametersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var path: String?

    public var recursive: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sortField: String?

    public var sortOrder: String?

    public var tags: [String: Any]?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["Recursive"] as? Bool {
            self.recursive = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SortField"] as? String {
            self.sortField = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
    }
}

public class ListSecretParametersShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var path: String?

    public var recursive: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sortField: String?

    public var sortOrder: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["Recursive"] as? Bool {
            self.recursive = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SortField"] as? String {
            self.sortField = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class ListSecretParametersResponseBody : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var keyId: String?

        public var name: String?

        public var parameterVersion: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["KeyId"] as? String {
                self.keyId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParameterVersion"] as? String {
                self.parameterVersion = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var parameters: [ListSecretParametersResponseBody.Parameters]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [ListSecretParametersResponseBody.Parameters] = []
            for v in value {
                if v != nil {
                    var model = ListSecretParametersResponseBody.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListSecretParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSecretParametersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSecretParametersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListStateConfigurationsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var stateConfigurationIds: String?

    public var tags: [String: Any]?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.stateConfigurationIds != nil {
            map["StateConfigurationIds"] = self.stateConfigurationIds!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StateConfigurationIds"] as? String {
            self.stateConfigurationIds = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
    }
}

public class ListStateConfigurationsShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var stateConfigurationIds: String?

    public var tagsShrink: String?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.stateConfigurationIds != nil {
            map["StateConfigurationIds"] = self.stateConfigurationIds!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StateConfigurationIds"] as? String {
            self.stateConfigurationIds = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
    }
}

public class ListStateConfigurationsResponseBody : Tea.TeaModel {
    public class StateConfigurations : Tea.TeaModel {
        public var configureMode: String?

        public var createTime: String?

        public var description_: String?

        public var parameters: String?

        public var resourceGroupId: String?

        public var scheduleExpression: String?

        public var scheduleType: String?

        public var stateConfigurationId: String?

        public var tags: [String: Any]?

        public var targets: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

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
            if self.configureMode != nil {
                map["ConfigureMode"] = self.configureMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.scheduleExpression != nil {
                map["ScheduleExpression"] = self.scheduleExpression!
            }
            if self.scheduleType != nil {
                map["ScheduleType"] = self.scheduleType!
            }
            if self.stateConfigurationId != nil {
                map["StateConfigurationId"] = self.stateConfigurationId!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.targets != nil {
                map["Targets"] = self.targets!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigureMode"] as? String {
                self.configureMode = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Parameters"] as? String {
                self.parameters = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ScheduleExpression"] as? String {
                self.scheduleExpression = value
            }
            if let value = dict["ScheduleType"] as? String {
                self.scheduleType = value
            }
            if let value = dict["StateConfigurationId"] as? String {
                self.stateConfigurationId = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Targets"] as? String {
                self.targets = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var stateConfigurations: [ListStateConfigurationsResponseBody.StateConfigurations]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stateConfigurations != nil {
            var tmp : [Any] = []
            for k in self.stateConfigurations! {
                tmp.append(k.toMap())
            }
            map["StateConfigurations"] = tmp
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
        if let value = dict["StateConfigurations"] as? [Any?] {
            var tmp : [ListStateConfigurationsResponseBody.StateConfigurations] = []
            for v in value {
                if v != nil {
                    var model = ListStateConfigurationsResponseBody.StateConfigurations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.stateConfigurations = tmp
        }
    }
}

public class ListStateConfigurationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListStateConfigurationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListStateConfigurationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagKeysRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceType: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ListTagKeysResponseBody : Tea.TeaModel {
    public var keys: [String]?

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
        if self.keys != nil {
            map["Keys"] = self.keys!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keys"] as? [String] {
            self.keys = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListTagKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagKeysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
    public var nextToken: String?

    public var regionId: String?

    public var resourceIds: [String: Any]?

    public var resourceType: String?

    public var tags: [String: Any]?

    public override init() {
        super.init()
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
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
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
        if let value = dict["ResourceIds"] as? [String: Any] {
            self.resourceIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
    }
}

public class ListTagResourcesShrinkRequest : Tea.TeaModel {
    public var nextToken: String?

    public var regionId: String?

    public var resourceIdsShrink: String?

    public var resourceType: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIdsShrink != nil {
            map["ResourceIds"] = self.resourceIdsShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
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
        if let value = dict["ResourceIds"] as? String {
            self.resourceIdsShrink = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
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

public class ListTagValuesRequest : Tea.TeaModel {
    public var key: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceType: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ListTagValuesResponseBody : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var values: [String]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.values != nil {
            map["Values"] = self.values!
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Values"] as? [String] {
            self.values = value
        }
    }
}

public class ListTagValuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagValuesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagValuesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTaskExecutionsRequest : Tea.TeaModel {
    public var endDateAfter: String?

    public var endDateBefore: String?

    public var executionId: String?

    public var includeChildTaskExecution: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var parentTaskExecutionId: String?

    public var regionId: String?

    public var sortField: String?

    public var sortOrder: String?

    public var startDateAfter: String?

    public var startDateBefore: String?

    public var status: String?

    public var taskAction: String?

    public var taskExecutionId: String?

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
        if self.endDateAfter != nil {
            map["EndDateAfter"] = self.endDateAfter!
        }
        if self.endDateBefore != nil {
            map["EndDateBefore"] = self.endDateBefore!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.includeChildTaskExecution != nil {
            map["IncludeChildTaskExecution"] = self.includeChildTaskExecution!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parentTaskExecutionId != nil {
            map["ParentTaskExecutionId"] = self.parentTaskExecutionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.startDateAfter != nil {
            map["StartDateAfter"] = self.startDateAfter!
        }
        if self.startDateBefore != nil {
            map["StartDateBefore"] = self.startDateBefore!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskAction != nil {
            map["TaskAction"] = self.taskAction!
        }
        if self.taskExecutionId != nil {
            map["TaskExecutionId"] = self.taskExecutionId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndDateAfter"] as? String {
            self.endDateAfter = value
        }
        if let value = dict["EndDateBefore"] as? String {
            self.endDateBefore = value
        }
        if let value = dict["ExecutionId"] as? String {
            self.executionId = value
        }
        if let value = dict["IncludeChildTaskExecution"] as? Bool {
            self.includeChildTaskExecution = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ParentTaskExecutionId"] as? String {
            self.parentTaskExecutionId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SortField"] as? String {
            self.sortField = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["StartDateAfter"] as? String {
            self.startDateAfter = value
        }
        if let value = dict["StartDateBefore"] as? String {
            self.startDateBefore = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskAction"] as? String {
            self.taskAction = value
        }
        if let value = dict["TaskExecutionId"] as? String {
            self.taskExecutionId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
    }
}

public class ListTaskExecutionsResponseBody : Tea.TeaModel {
    public class TaskExecutions : Tea.TeaModel {
        public var childExecutionId: String?

        public var createDate: String?

        public var endDate: String?

        public var executionId: String?

        public var extraData: [String: Any]?

        public var loop: [String: Any]?

        public var loopBatchNumber: Int32?

        public var loopItem: String?

        public var outputs: String?

        public var parentTaskExecutionId: String?

        public var properties: String?

        public var startDate: String?

        public var status: String?

        public var statusMessage: String?

        public var taskAction: String?

        public var taskExecutionId: String?

        public var taskName: String?

        public var templateId: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.childExecutionId != nil {
                map["ChildExecutionId"] = self.childExecutionId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.executionId != nil {
                map["ExecutionId"] = self.executionId!
            }
            if self.extraData != nil {
                map["ExtraData"] = self.extraData!
            }
            if self.loop != nil {
                map["Loop"] = self.loop!
            }
            if self.loopBatchNumber != nil {
                map["LoopBatchNumber"] = self.loopBatchNumber!
            }
            if self.loopItem != nil {
                map["LoopItem"] = self.loopItem!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.parentTaskExecutionId != nil {
                map["ParentTaskExecutionId"] = self.parentTaskExecutionId!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            if self.taskAction != nil {
                map["TaskAction"] = self.taskAction!
            }
            if self.taskExecutionId != nil {
                map["TaskExecutionId"] = self.taskExecutionId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChildExecutionId"] as? String {
                self.childExecutionId = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["EndDate"] as? String {
                self.endDate = value
            }
            if let value = dict["ExecutionId"] as? String {
                self.executionId = value
            }
            if let value = dict["ExtraData"] as? [String: Any] {
                self.extraData = value
            }
            if let value = dict["Loop"] as? [String: Any] {
                self.loop = value
            }
            if let value = dict["LoopBatchNumber"] as? Int32 {
                self.loopBatchNumber = value
            }
            if let value = dict["LoopItem"] as? String {
                self.loopItem = value
            }
            if let value = dict["Outputs"] as? String {
                self.outputs = value
            }
            if let value = dict["ParentTaskExecutionId"] as? String {
                self.parentTaskExecutionId = value
            }
            if let value = dict["Properties"] as? String {
                self.properties = value
            }
            if let value = dict["StartDate"] as? String {
                self.startDate = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusMessage"] as? String {
                self.statusMessage = value
            }
            if let value = dict["TaskAction"] as? String {
                self.taskAction = value
            }
            if let value = dict["TaskExecutionId"] as? String {
                self.taskExecutionId = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var taskExecutions: [ListTaskExecutionsResponseBody.TaskExecutions]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskExecutions != nil {
            var tmp : [Any] = []
            for k in self.taskExecutions! {
                tmp.append(k.toMap())
            }
            map["TaskExecutions"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskExecutions"] as? [Any?] {
            var tmp : [ListTaskExecutionsResponseBody.TaskExecutions] = []
            for v in value {
                if v != nil {
                    var model = ListTaskExecutionsResponseBody.TaskExecutions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskExecutions = tmp
        }
    }
}

public class ListTaskExecutionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTaskExecutionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTaskExecutionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTemplateVersionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var shareType: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class ListTemplateVersionsResponseBody : Tea.TeaModel {
    public class TemplateVersions : Tea.TeaModel {
        public var description_: String?

        public var templateFormat: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public var versionName: String?

        public override init() {
            super.init()
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
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["TemplateFormat"] as? String {
                self.templateFormat = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var templateVersions: [ListTemplateVersionsResponseBody.TemplateVersions]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateVersions != nil {
            var tmp : [Any] = []
            for k in self.templateVersions! {
                tmp.append(k.toMap())
            }
            map["TemplateVersions"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateVersions"] as? [Any?] {
            var tmp : [ListTemplateVersionsResponseBody.TemplateVersions] = []
            for v in value {
                if v != nil {
                    var model = ListTemplateVersionsResponseBody.TemplateVersions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.templateVersions = tmp
        }
    }
}

public class ListTemplateVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTemplateVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTemplateVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTemplatesRequest : Tea.TeaModel {
    public var category: String?

    public var createdBy: String?

    public var createdDateAfter: String?

    public var createdDateBefore: String?

    public var hasTrigger: Bool?

    public var isExample: Bool?

    public var isFavorite: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var shareType: String?

    public var sortField: String?

    public var sortOrder: String?

    public var tags: [String: Any]?

    public var templateFormat: String?

    public var templateName: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.createdDateAfter != nil {
            map["CreatedDateAfter"] = self.createdDateAfter!
        }
        if self.createdDateBefore != nil {
            map["CreatedDateBefore"] = self.createdDateBefore!
        }
        if self.hasTrigger != nil {
            map["HasTrigger"] = self.hasTrigger!
        }
        if self.isExample != nil {
            map["IsExample"] = self.isExample!
        }
        if self.isFavorite != nil {
            map["IsFavorite"] = self.isFavorite!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateFormat != nil {
            map["TemplateFormat"] = self.templateFormat!
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
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["CreatedBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["CreatedDateAfter"] as? String {
            self.createdDateAfter = value
        }
        if let value = dict["CreatedDateBefore"] as? String {
            self.createdDateBefore = value
        }
        if let value = dict["HasTrigger"] as? Bool {
            self.hasTrigger = value
        }
        if let value = dict["IsExample"] as? Bool {
            self.isExample = value
        }
        if let value = dict["IsFavorite"] as? Bool {
            self.isFavorite = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["SortField"] as? String {
            self.sortField = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["TemplateFormat"] as? String {
            self.templateFormat = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
    }
}

public class ListTemplatesShrinkRequest : Tea.TeaModel {
    public var category: String?

    public var createdBy: String?

    public var createdDateAfter: String?

    public var createdDateBefore: String?

    public var hasTrigger: Bool?

    public var isExample: Bool?

    public var isFavorite: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var shareType: String?

    public var sortField: String?

    public var sortOrder: String?

    public var tagsShrink: String?

    public var templateFormat: String?

    public var templateName: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.createdDateAfter != nil {
            map["CreatedDateAfter"] = self.createdDateAfter!
        }
        if self.createdDateBefore != nil {
            map["CreatedDateBefore"] = self.createdDateBefore!
        }
        if self.hasTrigger != nil {
            map["HasTrigger"] = self.hasTrigger!
        }
        if self.isExample != nil {
            map["IsExample"] = self.isExample!
        }
        if self.isFavorite != nil {
            map["IsFavorite"] = self.isFavorite!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.templateFormat != nil {
            map["TemplateFormat"] = self.templateFormat!
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
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["CreatedBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["CreatedDateAfter"] as? String {
            self.createdDateAfter = value
        }
        if let value = dict["CreatedDateBefore"] as? String {
            self.createdDateBefore = value
        }
        if let value = dict["HasTrigger"] as? Bool {
            self.hasTrigger = value
        }
        if let value = dict["IsExample"] as? Bool {
            self.isExample = value
        }
        if let value = dict["IsFavorite"] as? Bool {
            self.isFavorite = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["SortField"] as? String {
            self.sortField = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["TemplateFormat"] as? String {
            self.templateFormat = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
    }
}

public class ListTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
        public var category: String?

        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hasTrigger: Bool?

        public var hash: String?

        public var isFavorite: Bool?

        public var popularity: Int32?

        public var publisher: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateType: String?

        public var templateVersion: String?

        public var totalExecutionCount: Int32?

        public var updatedBy: String?

        public var updatedDate: String?

        public var versionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hasTrigger != nil {
                map["HasTrigger"] = self.hasTrigger!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.isFavorite != nil {
                map["IsFavorite"] = self.isFavorite!
            }
            if self.popularity != nil {
                map["Popularity"] = self.popularity!
            }
            if self.publisher != nil {
                map["Publisher"] = self.publisher!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
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
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.totalExecutionCount != nil {
                map["TotalExecutionCount"] = self.totalExecutionCount!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["Constraints"] as? String {
                self.constraints = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["HasTrigger"] as? Bool {
                self.hasTrigger = value
            }
            if let value = dict["Hash"] as? String {
                self.hash = value
            }
            if let value = dict["IsFavorite"] as? Bool {
                self.isFavorite = value
            }
            if let value = dict["Popularity"] as? Int32 {
                self.popularity = value
            }
            if let value = dict["Publisher"] as? String {
                self.publisher = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["TemplateFormat"] as? String {
                self.templateFormat = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateType"] as? String {
                self.templateType = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["TotalExecutionCount"] as? Int32 {
                self.totalExecutionCount = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var templates: [ListTemplatesResponseBody.Templates]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templates != nil {
            var tmp : [Any] = []
            for k in self.templates! {
                tmp.append(k.toMap())
            }
            map["Templates"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Templates"] as? [Any?] {
            var tmp : [ListTemplatesResponseBody.Templates] = []
            for v in value {
                if v != nil {
                    var model = ListTemplatesResponseBody.Templates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.templates = tmp
        }
    }
}

public class ListTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class NotifyExecutionRequest : Tea.TeaModel {
    public var executionId: String?

    public var executionStatus: String?

    public var loopItem: String?

    public var notifyNote: String?

    public var notifyType: String?

    public var parameters: String?

    public var regionId: String?

    public var taskExecutionId: String?

    public var taskExecutionIds: String?

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
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.executionStatus != nil {
            map["ExecutionStatus"] = self.executionStatus!
        }
        if self.loopItem != nil {
            map["LoopItem"] = self.loopItem!
        }
        if self.notifyNote != nil {
            map["NotifyNote"] = self.notifyNote!
        }
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskExecutionId != nil {
            map["TaskExecutionId"] = self.taskExecutionId!
        }
        if self.taskExecutionIds != nil {
            map["TaskExecutionIds"] = self.taskExecutionIds!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutionId"] as? String {
            self.executionId = value
        }
        if let value = dict["ExecutionStatus"] as? String {
            self.executionStatus = value
        }
        if let value = dict["LoopItem"] as? String {
            self.loopItem = value
        }
        if let value = dict["NotifyNote"] as? String {
            self.notifyNote = value
        }
        if let value = dict["NotifyType"] as? String {
            self.notifyType = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TaskExecutionId"] as? String {
            self.taskExecutionId = value
        }
        if let value = dict["TaskExecutionIds"] as? String {
            self.taskExecutionIds = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
    }
}

public class NotifyExecutionResponseBody : Tea.TeaModel {
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

public class NotifyExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: NotifyExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = NotifyExecutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RegisterDefaultPatchBaselineRequest : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class RegisterDefaultPatchBaselineResponseBody : Tea.TeaModel {
    public class PatchBaseline : Tea.TeaModel {
        public var approvalRules: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var operationSystem: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvalRules != nil {
                map["ApprovalRules"] = self.approvalRules!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApprovalRules"] as? String {
                self.approvalRules = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OperationSystem"] as? String {
                self.operationSystem = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var patchBaseline: RegisterDefaultPatchBaselineResponseBody.PatchBaseline?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.patchBaseline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.patchBaseline != nil {
            map["PatchBaseline"] = self.patchBaseline?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PatchBaseline"] as? [String: Any?] {
            var model = RegisterDefaultPatchBaselineResponseBody.PatchBaseline()
            model.fromMap(value)
            self.patchBaseline = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RegisterDefaultPatchBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterDefaultPatchBaselineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RegisterDefaultPatchBaselineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchInventoryRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

        public var operator_: String?

        public var value: [String]?

        public override init() {
            super.init()
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
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
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
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var aggregator: [String]?

    public var filter: [SearchInventoryRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.aggregator != nil {
            map["Aggregator"] = self.aggregator!
        }
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Aggregator"] as? [String] {
            self.aggregator = value
        }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [SearchInventoryRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = SearchInventoryRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class SearchInventoryResponseBody : Tea.TeaModel {
    public var entities: [[String: Any]]?

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
        if self.entities != nil {
            map["Entities"] = self.entities!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Entities"] as? [[String: Any]] {
            self.entities = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SearchInventoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchInventoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SearchInventoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetServiceSettingsRequest : Tea.TeaModel {
    public var deliveryOssBucketName: String?

    public var deliveryOssEnabled: Bool?

    public var deliveryOssKeyPrefix: String?

    public var deliverySlsEnabled: Bool?

    public var deliverySlsProjectName: String?

    public var rdcEnterpriseId: String?

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
        if self.deliveryOssBucketName != nil {
            map["DeliveryOssBucketName"] = self.deliveryOssBucketName!
        }
        if self.deliveryOssEnabled != nil {
            map["DeliveryOssEnabled"] = self.deliveryOssEnabled!
        }
        if self.deliveryOssKeyPrefix != nil {
            map["DeliveryOssKeyPrefix"] = self.deliveryOssKeyPrefix!
        }
        if self.deliverySlsEnabled != nil {
            map["DeliverySlsEnabled"] = self.deliverySlsEnabled!
        }
        if self.deliverySlsProjectName != nil {
            map["DeliverySlsProjectName"] = self.deliverySlsProjectName!
        }
        if self.rdcEnterpriseId != nil {
            map["RdcEnterpriseId"] = self.rdcEnterpriseId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliveryOssBucketName"] as? String {
            self.deliveryOssBucketName = value
        }
        if let value = dict["DeliveryOssEnabled"] as? Bool {
            self.deliveryOssEnabled = value
        }
        if let value = dict["DeliveryOssKeyPrefix"] as? String {
            self.deliveryOssKeyPrefix = value
        }
        if let value = dict["DeliverySlsEnabled"] as? Bool {
            self.deliverySlsEnabled = value
        }
        if let value = dict["DeliverySlsProjectName"] as? String {
            self.deliverySlsProjectName = value
        }
        if let value = dict["RdcEnterpriseId"] as? String {
            self.rdcEnterpriseId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class SetServiceSettingsResponseBody : Tea.TeaModel {
    public class ServiceSettings : Tea.TeaModel {
        public var deliveryOssBucketName: String?

        public var deliveryOssEnabled: Bool?

        public var deliveryOssKeyPrefix: String?

        public var deliverySlsEnabled: Bool?

        public var deliverySlsProjectName: String?

        public var rdcEnterpriseId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deliveryOssBucketName != nil {
                map["DeliveryOssBucketName"] = self.deliveryOssBucketName!
            }
            if self.deliveryOssEnabled != nil {
                map["DeliveryOssEnabled"] = self.deliveryOssEnabled!
            }
            if self.deliveryOssKeyPrefix != nil {
                map["DeliveryOssKeyPrefix"] = self.deliveryOssKeyPrefix!
            }
            if self.deliverySlsEnabled != nil {
                map["DeliverySlsEnabled"] = self.deliverySlsEnabled!
            }
            if self.deliverySlsProjectName != nil {
                map["DeliverySlsProjectName"] = self.deliverySlsProjectName!
            }
            if self.rdcEnterpriseId != nil {
                map["RdcEnterpriseId"] = self.rdcEnterpriseId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeliveryOssBucketName"] as? String {
                self.deliveryOssBucketName = value
            }
            if let value = dict["DeliveryOssEnabled"] as? Bool {
                self.deliveryOssEnabled = value
            }
            if let value = dict["DeliveryOssKeyPrefix"] as? String {
                self.deliveryOssKeyPrefix = value
            }
            if let value = dict["DeliverySlsEnabled"] as? Bool {
                self.deliverySlsEnabled = value
            }
            if let value = dict["DeliverySlsProjectName"] as? String {
                self.deliverySlsProjectName = value
            }
            if let value = dict["RdcEnterpriseId"] as? String {
                self.rdcEnterpriseId = value
            }
        }
    }
    public var requestId: String?

    public var serviceSettings: [SetServiceSettingsResponseBody.ServiceSettings]?

    public override init() {
        super.init()
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
        if self.serviceSettings != nil {
            var tmp : [Any] = []
            for k in self.serviceSettings! {
                tmp.append(k.toMap())
            }
            map["ServiceSettings"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceSettings"] as? [Any?] {
            var tmp : [SetServiceSettingsResponseBody.ServiceSettings] = []
            for v in value {
                if v != nil {
                    var model = SetServiceSettingsResponseBody.ServiceSettings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceSettings = tmp
        }
    }
}

public class SetServiceSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetServiceSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetServiceSettingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartDebugExecutionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var properties: String?

    public var regionId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.properties != nil {
            map["Properties"] = self.properties!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Properties"] as? String {
            self.properties = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class StartDebugExecutionResponseBody : Tea.TeaModel {
    public var executionId: String?

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
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutionId"] as? String {
            self.executionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartDebugExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDebugExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartDebugExecutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartExecutionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var loopMode: String?

    public var mode: String?

    public var parameters: String?

    public var parentExecutionId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var safetyCheck: String?

    public var tags: [String: Any]?

    public var templateContent: String?

    public var templateName: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.loopMode != nil {
            map["LoopMode"] = self.loopMode!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.parentExecutionId != nil {
            map["ParentExecutionId"] = self.parentExecutionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.safetyCheck != nil {
            map["SafetyCheck"] = self.safetyCheck!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["LoopMode"] as? String {
            self.loopMode = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["ParentExecutionId"] as? String {
            self.parentExecutionId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SafetyCheck"] as? String {
            self.safetyCheck = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["TemplateContent"] as? String {
            self.templateContent = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
    }
}

public class StartExecutionShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var loopMode: String?

    public var mode: String?

    public var parameters: String?

    public var parentExecutionId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var safetyCheck: String?

    public var tagsShrink: String?

    public var templateContent: String?

    public var templateName: String?

    public var templateURL: String?

    public var templateVersion: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.loopMode != nil {
            map["LoopMode"] = self.loopMode!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.parentExecutionId != nil {
            map["ParentExecutionId"] = self.parentExecutionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.safetyCheck != nil {
            map["SafetyCheck"] = self.safetyCheck!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["LoopMode"] as? String {
            self.loopMode = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["ParentExecutionId"] as? String {
            self.parentExecutionId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SafetyCheck"] as? String {
            self.safetyCheck = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["TemplateContent"] as? String {
            self.templateContent = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
    }
}

public class StartExecutionResponseBody : Tea.TeaModel {
    public class Execution : Tea.TeaModel {
        public class CurrentTasks : Tea.TeaModel {
            public var taskAction: String?

            public var taskExecutionId: String?

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
                if self.taskAction != nil {
                    map["TaskAction"] = self.taskAction!
                }
                if self.taskExecutionId != nil {
                    map["TaskExecutionId"] = self.taskExecutionId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TaskAction"] as? String {
                    self.taskAction = value
                }
                if let value = dict["TaskExecutionId"] as? String {
                    self.taskExecutionId = value
                }
                if let value = dict["TaskName"] as? String {
                    self.taskName = value
                }
            }
        }
        public var counters: [String: Any]?

        public var createDate: String?

        public var currentTasks: [StartExecutionResponseBody.Execution.CurrentTasks]?

        public var description_: String?

        public var endDate: String?

        public var executedBy: String?

        public var executionId: String?

        public var isParent: Bool?

        public var loopMode: String?

        public var mode: String?

        public var outputs: String?

        public var parameters: String?

        public var parentExecutionId: String?

        public var ramRole: String?

        public var resourceGroupId: String?

        public var safetyCheck: String?

        public var startDate: String?

        public var status: String?

        public var statusMessage: String?

        public var tags: [String: Any]?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.counters != nil {
                map["Counters"] = self.counters!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.currentTasks != nil {
                var tmp : [Any] = []
                for k in self.currentTasks! {
                    tmp.append(k.toMap())
                }
                map["CurrentTasks"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.executedBy != nil {
                map["ExecutedBy"] = self.executedBy!
            }
            if self.executionId != nil {
                map["ExecutionId"] = self.executionId!
            }
            if self.isParent != nil {
                map["IsParent"] = self.isParent!
            }
            if self.loopMode != nil {
                map["LoopMode"] = self.loopMode!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.parentExecutionId != nil {
                map["ParentExecutionId"] = self.parentExecutionId!
            }
            if self.ramRole != nil {
                map["RamRole"] = self.ramRole!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.safetyCheck != nil {
                map["SafetyCheck"] = self.safetyCheck!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Counters"] as? [String: Any] {
                self.counters = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["CurrentTasks"] as? [Any?] {
                var tmp : [StartExecutionResponseBody.Execution.CurrentTasks] = []
                for v in value {
                    if v != nil {
                        var model = StartExecutionResponseBody.Execution.CurrentTasks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.currentTasks = tmp
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EndDate"] as? String {
                self.endDate = value
            }
            if let value = dict["ExecutedBy"] as? String {
                self.executedBy = value
            }
            if let value = dict["ExecutionId"] as? String {
                self.executionId = value
            }
            if let value = dict["IsParent"] as? Bool {
                self.isParent = value
            }
            if let value = dict["LoopMode"] as? String {
                self.loopMode = value
            }
            if let value = dict["Mode"] as? String {
                self.mode = value
            }
            if let value = dict["Outputs"] as? String {
                self.outputs = value
            }
            if let value = dict["Parameters"] as? String {
                self.parameters = value
            }
            if let value = dict["ParentExecutionId"] as? String {
                self.parentExecutionId = value
            }
            if let value = dict["RamRole"] as? String {
                self.ramRole = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["SafetyCheck"] as? String {
                self.safetyCheck = value
            }
            if let value = dict["StartDate"] as? String {
                self.startDate = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusMessage"] as? String {
                self.statusMessage = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var execution: StartExecutionResponseBody.Execution?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.execution?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.execution != nil {
            map["Execution"] = self.execution?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Execution"] as? [String: Any?] {
            var model = StartExecutionResponseBody.Execution()
            model.fromMap(value)
            self.execution = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartExecutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceIds: [String: Any]?

    public var resourceType: String?

    public var tags: [String: Any]?

    public override init() {
        super.init()
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
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceIds"] as? [String: Any] {
            self.resourceIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
    }
}

public class TagResourcesShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceIdsShrink: String?

    public var resourceType: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIdsShrink != nil {
            map["ResourceIds"] = self.resourceIdsShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceIds"] as? String {
            self.resourceIdsShrink = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
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

public class TriggerExecutionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var content: String?

    public var executionId: String?

    public var regionId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["ExecutionId"] as? String {
            self.executionId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class TriggerExecutionResponseBody : Tea.TeaModel {
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

public class TriggerExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TriggerExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TriggerExecutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceIds: [String: Any]?

    public var resourceType: String?

    public var tagKeys: [String: Any]?

    public override init() {
        super.init()
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
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
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
        if let value = dict["ResourceIds"] as? [String: Any] {
            self.resourceIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKeys"] as? [String: Any] {
            self.tagKeys = value
        }
    }
}

public class UntagResourcesShrinkRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceIdsShrink: String?

    public var resourceType: String?

    public var tagKeysShrink: String?

    public override init() {
        super.init()
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
        if self.resourceIdsShrink != nil {
            map["ResourceIds"] = self.resourceIdsShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKeysShrink != nil {
            map["TagKeys"] = self.tagKeysShrink!
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
        if let value = dict["ResourceIds"] as? String {
            self.resourceIdsShrink = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKeys"] as? String {
            self.tagKeysShrink = value
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

public class UpdateApplicationRequest : Tea.TeaModel {
    public class AlarmConfig : Tea.TeaModel {
        public var contactGroups: [String]?

        public var healthCheckUrl: String?

        public var templateIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactGroups != nil {
                map["ContactGroups"] = self.contactGroups!
            }
            if self.healthCheckUrl != nil {
                map["HealthCheckUrl"] = self.healthCheckUrl!
            }
            if self.templateIds != nil {
                map["TemplateIds"] = self.templateIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactGroups"] as? [String] {
                self.contactGroups = value
            }
            if let value = dict["HealthCheckUrl"] as? String {
                self.healthCheckUrl = value
            }
            if let value = dict["TemplateIds"] as? [String] {
                self.templateIds = value
            }
        }
    }
    public var alarmConfig: UpdateApplicationRequest.AlarmConfig?

    public var deleteAlarmRulesBeforeUpdate: Bool?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var tags: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.alarmConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmConfig != nil {
            map["AlarmConfig"] = self.alarmConfig?.toMap()
        }
        if self.deleteAlarmRulesBeforeUpdate != nil {
            map["DeleteAlarmRulesBeforeUpdate"] = self.deleteAlarmRulesBeforeUpdate!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmConfig"] as? [String: Any?] {
            var model = UpdateApplicationRequest.AlarmConfig()
            model.fromMap(value)
            self.alarmConfig = model
        }
        if let value = dict["DeleteAlarmRulesBeforeUpdate"] as? Bool {
            self.deleteAlarmRulesBeforeUpdate = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
    }
}

public class UpdateApplicationShrinkRequest : Tea.TeaModel {
    public var alarmConfigShrink: String?

    public var deleteAlarmRulesBeforeUpdate: Bool?

    public var description_: String?

    public var name: String?

    public var regionId: String?

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
        if self.alarmConfigShrink != nil {
            map["AlarmConfig"] = self.alarmConfigShrink!
        }
        if self.deleteAlarmRulesBeforeUpdate != nil {
            map["DeleteAlarmRulesBeforeUpdate"] = self.deleteAlarmRulesBeforeUpdate!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmConfig"] as? String {
            self.alarmConfigShrink = value
        }
        if let value = dict["DeleteAlarmRulesBeforeUpdate"] as? Bool {
            self.deleteAlarmRulesBeforeUpdate = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class UpdateApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public var createdDate: String?

        public var description_: String?

        public var name: String?

        public var resourceGroupId: String?

        public var tags: [String: Any]?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var application: UpdateApplicationResponseBody.Application?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Application"] as? [String: Any?] {
            var model = UpdateApplicationResponseBody.Application()
            model.fromMap(value)
            self.application = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateApplicationGroupRequest : Tea.TeaModel {
    public var applicationName: String?

    public var deployedRevisionId: String?

    public var name: String?

    public var newName: String?

    public var operationName: String?

    public var parameters: [String: Any]?

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
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.deployedRevisionId != nil {
            map["DeployedRevisionId"] = self.deployedRevisionId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newName != nil {
            map["NewName"] = self.newName!
        }
        if self.operationName != nil {
            map["OperationName"] = self.operationName!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["DeployedRevisionId"] as? String {
            self.deployedRevisionId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NewName"] as? String {
            self.newName = value
        }
        if let value = dict["OperationName"] as? String {
            self.operationName = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateApplicationGroupShrinkRequest : Tea.TeaModel {
    public var applicationName: String?

    public var deployedRevisionId: String?

    public var name: String?

    public var newName: String?

    public var operationName: String?

    public var parametersShrink: String?

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
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.deployedRevisionId != nil {
            map["DeployedRevisionId"] = self.deployedRevisionId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newName != nil {
            map["NewName"] = self.newName!
        }
        if self.operationName != nil {
            map["OperationName"] = self.operationName!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationName"] as? String {
            self.applicationName = value
        }
        if let value = dict["DeployedRevisionId"] as? String {
            self.deployedRevisionId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NewName"] as? String {
            self.newName = value
        }
        if let value = dict["OperationName"] as? String {
            self.operationName = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateApplicationGroupResponseBody : Tea.TeaModel {
    public class ApplicationGroup : Tea.TeaModel {
        public var applicationName: String?

        public var createdDate: String?

        public var deployRegionId: String?

        public var description_: String?

        public var importTagKey: String?

        public var importTagValue: String?

        public var name: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.deployRegionId != nil {
                map["DeployRegionId"] = self.deployRegionId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.importTagKey != nil {
                map["ImportTagKey"] = self.importTagKey!
            }
            if self.importTagValue != nil {
                map["ImportTagValue"] = self.importTagValue!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicationName"] as? String {
                self.applicationName = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["DeployRegionId"] as? String {
                self.deployRegionId = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ImportTagKey"] as? String {
                self.importTagKey = value
            }
            if let value = dict["ImportTagValue"] as? String {
                self.importTagValue = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var applicationGroup: UpdateApplicationGroupResponseBody.ApplicationGroup?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationGroup != nil {
            map["ApplicationGroup"] = self.applicationGroup?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationGroup"] as? [String: Any?] {
            var model = UpdateApplicationGroupResponseBody.ApplicationGroup()
            model.fromMap(value)
            self.applicationGroup = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateApplicationGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateApplicationGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateExecutionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var executionId: String?

    public var parameters: String?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executionId != nil {
            map["ExecutionId"] = self.executionId!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExecutionId"] as? String {
            self.executionId = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
    }
}

public class UpdateExecutionResponseBody : Tea.TeaModel {
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

public class UpdateExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateExecutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateExecutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstancePackageStateRequest : Tea.TeaModel {
    public var configurationInfo: String?

    public var configureAction: String?

    public var instanceId: String?

    public var parameters: [String: Any]?

    public var regionId: String?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configurationInfo != nil {
            map["ConfigurationInfo"] = self.configurationInfo!
        }
        if self.configureAction != nil {
            map["ConfigureAction"] = self.configureAction!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigurationInfo"] as? String {
            self.configurationInfo = value
        }
        if let value = dict["ConfigureAction"] as? String {
            self.configureAction = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
    }
}

public class UpdateInstancePackageStateShrinkRequest : Tea.TeaModel {
    public var configurationInfo: String?

    public var configureAction: String?

    public var instanceId: String?

    public var parametersShrink: String?

    public var regionId: String?

    public var templateName: String?

    public var templateVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configurationInfo != nil {
            map["ConfigurationInfo"] = self.configurationInfo!
        }
        if self.configureAction != nil {
            map["ConfigureAction"] = self.configureAction!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateVersion != nil {
            map["TemplateVersion"] = self.templateVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigurationInfo"] as? String {
            self.configurationInfo = value
        }
        if let value = dict["ConfigureAction"] as? String {
            self.configureAction = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateVersion"] as? String {
            self.templateVersion = value
        }
    }
}

public class UpdateInstancePackageStateResponseBody : Tea.TeaModel {
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

public class UpdateInstancePackageStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstancePackageStateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateInstancePackageStateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateOpsItemRequest : Tea.TeaModel {
    public var category: String?

    public var clientToken: String?

    public var dedupString: String?

    public var description_: String?

    public var opsItemId: String?

    public var priority: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resources: String?

    public var severity: String?

    public var solutions: String?

    public var source: String?

    public var status: String?

    public var tags: [String: Any]?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dedupString != nil {
            map["DedupString"] = self.dedupString!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.opsItemId != nil {
            map["OpsItemId"] = self.opsItemId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.solutions != nil {
            map["Solutions"] = self.solutions!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DedupString"] as? String {
            self.dedupString = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["OpsItemId"] as? String {
            self.opsItemId = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Resources"] as? String {
            self.resources = value
        }
        if let value = dict["Severity"] as? String {
            self.severity = value
        }
        if let value = dict["Solutions"] as? String {
            self.solutions = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class UpdateOpsItemShrinkRequest : Tea.TeaModel {
    public var category: String?

    public var clientToken: String?

    public var dedupString: String?

    public var description_: String?

    public var opsItemId: String?

    public var priority: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resources: String?

    public var severity: String?

    public var solutions: String?

    public var source: String?

    public var status: String?

    public var tagsShrink: String?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dedupString != nil {
            map["DedupString"] = self.dedupString!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.opsItemId != nil {
            map["OpsItemId"] = self.opsItemId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.solutions != nil {
            map["Solutions"] = self.solutions!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DedupString"] as? String {
            self.dedupString = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["OpsItemId"] as? String {
            self.opsItemId = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Resources"] as? String {
            self.resources = value
        }
        if let value = dict["Severity"] as? String {
            self.severity = value
        }
        if let value = dict["Solutions"] as? String {
            self.solutions = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class UpdateOpsItemResponseBody : Tea.TeaModel {
    public class OpsItem : Tea.TeaModel {
        public var attributes: String?

        public var category: String?

        public var createDate: String?

        public var createdBy: String?

        public var description_: String?

        public var lastModifiedBy: String?

        public var opsItemId: String?

        public var priority: Int32?

        public var resourceGroupId: String?

        public var resources: [String]?

        public var severity: String?

        public var solutions: [String]?

        public var source: String?

        public var status: String?

        public var tags: [String: Any]?

        public var title: String?

        public var updateDate: String?

        public override init() {
            super.init()
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
                map["Attributes"] = self.attributes!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.lastModifiedBy != nil {
                map["LastModifiedBy"] = self.lastModifiedBy!
            }
            if self.opsItemId != nil {
                map["OpsItemId"] = self.opsItemId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.solutions != nil {
                map["Solutions"] = self.solutions!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? String {
                self.attributes = value
            }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["LastModifiedBy"] as? String {
                self.lastModifiedBy = value
            }
            if let value = dict["OpsItemId"] as? String {
                self.opsItemId = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Resources"] as? [String] {
                self.resources = value
            }
            if let value = dict["Severity"] as? String {
                self.severity = value
            }
            if let value = dict["Solutions"] as? [String] {
                self.solutions = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var opsItem: UpdateOpsItemResponseBody.OpsItem?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.opsItem?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opsItem != nil {
            map["OpsItem"] = self.opsItem?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OpsItem"] as? [String: Any?] {
            var model = UpdateOpsItemResponseBody.OpsItem()
            model.fromMap(value)
            self.opsItem = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateOpsItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOpsItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateOpsItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateParameterRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.value != nil {
            map["Value"] = self.value!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class UpdateParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: String?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Constraints"] as? String {
                self.constraints = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParameterVersion"] as? Int32 {
                self.parameterVersion = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? String {
                self.tags = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var parameter: UpdateParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Parameter"] as? [String: Any?] {
            var model = UpdateParameterResponseBody.Parameter()
            model.fromMap(value)
            self.parameter = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateParameterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePatchBaselineRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
    public var approvalRules: String?

    public var approvedPatches: [String]?

    public var approvedPatchesEnableNonSecurity: Bool?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var rejectedPatches: [String]?

    public var rejectedPatchesAction: String?

    public var resourceGroupId: String?

    public var sources: [String]?

    public var tags: [UpdatePatchBaselineRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalRules != nil {
            map["ApprovalRules"] = self.approvalRules!
        }
        if self.approvedPatches != nil {
            map["ApprovedPatches"] = self.approvedPatches!
        }
        if self.approvedPatchesEnableNonSecurity != nil {
            map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rejectedPatches != nil {
            map["RejectedPatches"] = self.rejectedPatches!
        }
        if self.rejectedPatchesAction != nil {
            map["RejectedPatchesAction"] = self.rejectedPatchesAction!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sources != nil {
            map["Sources"] = self.sources!
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
        if let value = dict["ApprovalRules"] as? String {
            self.approvalRules = value
        }
        if let value = dict["ApprovedPatches"] as? [String] {
            self.approvedPatches = value
        }
        if let value = dict["ApprovedPatchesEnableNonSecurity"] as? Bool {
            self.approvedPatchesEnableNonSecurity = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RejectedPatches"] as? [String] {
            self.rejectedPatches = value
        }
        if let value = dict["RejectedPatchesAction"] as? String {
            self.rejectedPatchesAction = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Sources"] as? [String] {
            self.sources = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [UpdatePatchBaselineRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = UpdatePatchBaselineRequest.Tags()
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

public class UpdatePatchBaselineShrinkRequest : Tea.TeaModel {
    public var approvalRules: String?

    public var approvedPatchesShrink: String?

    public var approvedPatchesEnableNonSecurity: Bool?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var rejectedPatchesShrink: String?

    public var rejectedPatchesAction: String?

    public var resourceGroupId: String?

    public var sourcesShrink: String?

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
        if self.approvalRules != nil {
            map["ApprovalRules"] = self.approvalRules!
        }
        if self.approvedPatchesShrink != nil {
            map["ApprovedPatches"] = self.approvedPatchesShrink!
        }
        if self.approvedPatchesEnableNonSecurity != nil {
            map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rejectedPatchesShrink != nil {
            map["RejectedPatches"] = self.rejectedPatchesShrink!
        }
        if self.rejectedPatchesAction != nil {
            map["RejectedPatchesAction"] = self.rejectedPatchesAction!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourcesShrink != nil {
            map["Sources"] = self.sourcesShrink!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApprovalRules"] as? String {
            self.approvalRules = value
        }
        if let value = dict["ApprovedPatches"] as? String {
            self.approvedPatchesShrink = value
        }
        if let value = dict["ApprovedPatchesEnableNonSecurity"] as? Bool {
            self.approvedPatchesEnableNonSecurity = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RejectedPatches"] as? String {
            self.rejectedPatchesShrink = value
        }
        if let value = dict["RejectedPatchesAction"] as? String {
            self.rejectedPatchesAction = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Sources"] as? String {
            self.sourcesShrink = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class UpdatePatchBaselineResponseBody : Tea.TeaModel {
    public class PatchBaseline : Tea.TeaModel {
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
        public var approvalRules: String?

        public var approvedPatches: [String]?

        public var approvedPatchesEnableNonSecurity: Bool?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var operationSystem: String?

        public var rejectedPatches: [String]?

        public var rejectedPatchesAction: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var sources: [String]?

        public var tags: [UpdatePatchBaselineResponseBody.PatchBaseline.Tags]?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvalRules != nil {
                map["ApprovalRules"] = self.approvalRules!
            }
            if self.approvedPatches != nil {
                map["ApprovedPatches"] = self.approvedPatches!
            }
            if self.approvedPatchesEnableNonSecurity != nil {
                map["ApprovedPatchesEnableNonSecurity"] = self.approvedPatchesEnableNonSecurity!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operationSystem != nil {
                map["OperationSystem"] = self.operationSystem!
            }
            if self.rejectedPatches != nil {
                map["RejectedPatches"] = self.rejectedPatches!
            }
            if self.rejectedPatchesAction != nil {
                map["RejectedPatchesAction"] = self.rejectedPatchesAction!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.sources != nil {
                map["Sources"] = self.sources!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApprovalRules"] as? String {
                self.approvalRules = value
            }
            if let value = dict["ApprovedPatches"] as? [String] {
                self.approvedPatches = value
            }
            if let value = dict["ApprovedPatchesEnableNonSecurity"] as? Bool {
                self.approvedPatchesEnableNonSecurity = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OperationSystem"] as? String {
                self.operationSystem = value
            }
            if let value = dict["RejectedPatches"] as? [String] {
                self.rejectedPatches = value
            }
            if let value = dict["RejectedPatchesAction"] as? String {
                self.rejectedPatchesAction = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Sources"] as? [String] {
                self.sources = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [UpdatePatchBaselineResponseBody.PatchBaseline.Tags] = []
                for v in value {
                    if v != nil {
                        var model = UpdatePatchBaselineResponseBody.PatchBaseline.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var patchBaseline: UpdatePatchBaselineResponseBody.PatchBaseline?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.patchBaseline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.patchBaseline != nil {
            map["PatchBaseline"] = self.patchBaseline?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PatchBaseline"] as? [String: Any?] {
            var model = UpdatePatchBaselineResponseBody.PatchBaseline()
            model.fromMap(value)
            self.patchBaseline = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdatePatchBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePatchBaselineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePatchBaselineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSecretParameterRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: [String: Any]?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.value != nil {
            map["Value"] = self.value!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class UpdateSecretParameterShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tagsShrink: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.value != nil {
            map["Value"] = self.value!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class UpdateSecretParameterResponseBody : Tea.TeaModel {
    public class Parameter : Tea.TeaModel {
        public var constraints: String?

        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var id: String?

        public var keyId: String?

        public var name: String?

        public var parameterVersion: Int32?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: String?

        public var type: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.constraints != nil {
                map["Constraints"] = self.constraints!
            }
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterVersion != nil {
                map["ParameterVersion"] = self.parameterVersion!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Constraints"] as? String {
                self.constraints = value
            }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["KeyId"] as? String {
                self.keyId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParameterVersion"] as? Int32 {
                self.parameterVersion = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? String {
                self.tags = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var parameter: UpdateSecretParameterResponseBody.Parameter?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Parameter"] as? [String: Any?] {
            var model = UpdateSecretParameterResponseBody.Parameter()
            model.fromMap(value)
            self.parameter = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateSecretParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSecretParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSecretParameterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateStateConfigurationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configureMode: String?

    public var description_: String?

    public var parameters: [String: Any]?

    public var regionId: String?

    public var resourceGroupId: String?

    public var scheduleExpression: String?

    public var scheduleType: String?

    public var stateConfigurationId: String?

    public var tags: [String: Any]?

    public var targets: String?

    public override init() {
        super.init()
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
        if self.configureMode != nil {
            map["ConfigureMode"] = self.configureMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.scheduleExpression != nil {
            map["ScheduleExpression"] = self.scheduleExpression!
        }
        if self.scheduleType != nil {
            map["ScheduleType"] = self.scheduleType!
        }
        if self.stateConfigurationId != nil {
            map["StateConfigurationId"] = self.stateConfigurationId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.targets != nil {
            map["Targets"] = self.targets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConfigureMode"] as? String {
            self.configureMode = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ScheduleExpression"] as? String {
            self.scheduleExpression = value
        }
        if let value = dict["ScheduleType"] as? String {
            self.scheduleType = value
        }
        if let value = dict["StateConfigurationId"] as? String {
            self.stateConfigurationId = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["Targets"] as? String {
            self.targets = value
        }
    }
}

public class UpdateStateConfigurationShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var configureMode: String?

    public var description_: String?

    public var parametersShrink: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var scheduleExpression: String?

    public var scheduleType: String?

    public var stateConfigurationId: String?

    public var tagsShrink: String?

    public var targets: String?

    public override init() {
        super.init()
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
        if self.configureMode != nil {
            map["ConfigureMode"] = self.configureMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.scheduleExpression != nil {
            map["ScheduleExpression"] = self.scheduleExpression!
        }
        if self.scheduleType != nil {
            map["ScheduleType"] = self.scheduleType!
        }
        if self.stateConfigurationId != nil {
            map["StateConfigurationId"] = self.stateConfigurationId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.targets != nil {
            map["Targets"] = self.targets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConfigureMode"] as? String {
            self.configureMode = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ScheduleExpression"] as? String {
            self.scheduleExpression = value
        }
        if let value = dict["ScheduleType"] as? String {
            self.scheduleType = value
        }
        if let value = dict["StateConfigurationId"] as? String {
            self.stateConfigurationId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["Targets"] as? String {
            self.targets = value
        }
    }
}

public class UpdateStateConfigurationResponseBody : Tea.TeaModel {
    public class StateConfiguration : Tea.TeaModel {
        public var configureMode: String?

        public var createTime: String?

        public var description_: String?

        public var parameters: String?

        public var resourceGroupId: String?

        public var scheduleExpression: String?

        public var scheduleType: String?

        public var stateConfigurationId: String?

        public var tags: [String: Any]?

        public var targets: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

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
            if self.configureMode != nil {
                map["ConfigureMode"] = self.configureMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.scheduleExpression != nil {
                map["ScheduleExpression"] = self.scheduleExpression!
            }
            if self.scheduleType != nil {
                map["ScheduleType"] = self.scheduleType!
            }
            if self.stateConfigurationId != nil {
                map["StateConfigurationId"] = self.stateConfigurationId!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.targets != nil {
                map["Targets"] = self.targets!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigureMode"] as? String {
                self.configureMode = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Parameters"] as? String {
                self.parameters = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ScheduleExpression"] as? String {
                self.scheduleExpression = value
            }
            if let value = dict["ScheduleType"] as? String {
                self.scheduleType = value
            }
            if let value = dict["StateConfigurationId"] as? String {
                self.stateConfigurationId = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["Targets"] as? String {
                self.targets = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var requestId: String?

    public var stateConfiguration: [UpdateStateConfigurationResponseBody.StateConfiguration]?

    public override init() {
        super.init()
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
        if self.stateConfiguration != nil {
            var tmp : [Any] = []
            for k in self.stateConfiguration! {
                tmp.append(k.toMap())
            }
            map["StateConfiguration"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StateConfiguration"] as? [Any?] {
            var tmp : [UpdateStateConfigurationResponseBody.StateConfiguration] = []
            for v in value {
                if v != nil {
                    var model = UpdateStateConfigurationResponseBody.StateConfiguration()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.stateConfiguration = tmp
        }
    }
}

public class UpdateStateConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateStateConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateStateConfigurationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTemplateRequest : Tea.TeaModel {
    public var content: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: [String: Any]?

    public var templateName: String?

    public var versionName: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class UpdateTemplateShrinkRequest : Tea.TeaModel {
    public var content: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tagsShrink: String?

    public var templateName: String?

    public var versionName: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class UpdateTemplateResponseBody : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var createdBy: String?

        public var createdDate: String?

        public var description_: String?

        public var hasTrigger: Bool?

        public var hash: String?

        public var resourceGroupId: String?

        public var shareType: String?

        public var tags: [String: Any]?

        public var templateFormat: String?

        public var templateId: String?

        public var templateName: String?

        public var templateVersion: String?

        public var updatedBy: String?

        public var updatedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdBy != nil {
                map["CreatedBy"] = self.createdBy!
            }
            if self.createdDate != nil {
                map["CreatedDate"] = self.createdDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.hasTrigger != nil {
                map["HasTrigger"] = self.hasTrigger!
            }
            if self.hash != nil {
                map["Hash"] = self.hash!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.templateFormat != nil {
                map["TemplateFormat"] = self.templateFormat!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateVersion != nil {
                map["TemplateVersion"] = self.templateVersion!
            }
            if self.updatedBy != nil {
                map["UpdatedBy"] = self.updatedBy!
            }
            if self.updatedDate != nil {
                map["UpdatedDate"] = self.updatedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["CreatedDate"] as? String {
                self.createdDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["HasTrigger"] as? Bool {
                self.hasTrigger = value
            }
            if let value = dict["Hash"] as? String {
                self.hash = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["TemplateFormat"] as? String {
                self.templateFormat = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateVersion"] as? String {
                self.templateVersion = value
            }
            if let value = dict["UpdatedBy"] as? String {
                self.updatedBy = value
            }
            if let value = dict["UpdatedDate"] as? String {
                self.updatedDate = value
            }
        }
    }
    public var requestId: String?

    public var template: UpdateTemplateResponseBody.Template?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Template"] as? [String: Any?] {
            var model = UpdateTemplateResponseBody.Template()
            model.fromMap(value)
            self.template = model
        }
    }
}

public class UpdateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidateTemplateContentRequest : Tea.TeaModel {
    public var content: String?

    public var regionId: String?

    public var templateURL: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templateURL != nil {
            map["TemplateURL"] = self.templateURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplateURL"] as? String {
            self.templateURL = value
        }
    }
}

public class ValidateTemplateContentResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var outputs: String?

        public var properties: String?

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
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.outputs != nil {
                map["Outputs"] = self.outputs!
            }
            if self.properties != nil {
                map["Properties"] = self.properties!
            }
            if self.type != nil {
                map["Type"] = self.type!
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
            if let value = dict["Outputs"] as? String {
                self.outputs = value
            }
            if let value = dict["Properties"] as? String {
                self.properties = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var outputs: String?

    public var parameters: String?

    public var ramRole: String?

    public var requestId: String?

    public var tasks: [ValidateTemplateContentResponseBody.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outputs != nil {
            map["Outputs"] = self.outputs!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.ramRole != nil {
            map["RamRole"] = self.ramRole!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Outputs"] as? String {
            self.outputs = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["RamRole"] as? String {
            self.ramRole = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [ValidateTemplateContentResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = ValidateTemplateContentResponseBody.Tasks()
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

public class ValidateTemplateContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateTemplateContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ValidateTemplateContentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
