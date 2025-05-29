import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddServiceSharedAccountsRequest : Tea.TeaModel {
    public class SharedAccounts : Tea.TeaModel {
        public var permission: String?

        public var userAliUid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.permission != nil {
                map["Permission"] = self.permission!
            }
            if self.userAliUid != nil {
                map["UserAliUid"] = self.userAliUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Permission"] as? String {
                self.permission = value
            }
            if let value = dict["UserAliUid"] as? String {
                self.userAliUid = value
            }
        }
    }
    public var clientToken: String?

    public var regionId: String?

    public var serviceId: String?

    public var sharedAccounts: [AddServiceSharedAccountsRequest.SharedAccounts]?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.sharedAccounts != nil {
            var tmp : [Any] = []
            for k in self.sharedAccounts! {
                tmp.append(k.toMap())
            }
            map["SharedAccounts"] = tmp
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["SharedAccounts"] as? [Any?] {
            var tmp : [AddServiceSharedAccountsRequest.SharedAccounts] = []
            for v in value {
                if v != nil {
                    var model = AddServiceSharedAccountsRequest.SharedAccounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sharedAccounts = tmp
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class AddServiceSharedAccountsResponseBody : Tea.TeaModel {
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

public class AddServiceSharedAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddServiceSharedAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddServiceSharedAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ApproveServiceUsageRequest : Tea.TeaModel {
    public var clientToken: String?

    public var comments: String?

    public var regionId: String?

    public var serviceId: String?

    public var type: Int32?

    public var userAliUid: Int64?

    public override init() {
        super.init()
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
        if self.comments != nil {
            map["Comments"] = self.comments!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userAliUid != nil {
            map["UserAliUid"] = self.userAliUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Comments"] as? String {
            self.comments = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
        if let value = dict["UserAliUid"] as? Int64 {
            self.userAliUid = value
        }
    }
}

public class ApproveServiceUsageResponseBody : Tea.TeaModel {
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

public class ApproveServiceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApproveServiceUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ApproveServiceUsageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelServiceRegistrationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var registrationId: String?

    public override init() {
        super.init()
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
        if self.registrationId != nil {
            map["RegistrationId"] = self.registrationId!
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
        if let value = dict["RegistrationId"] as? String {
            self.registrationId = value
        }
    }
}

public class CancelServiceRegistrationResponseBody : Tea.TeaModel {
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

public class CancelServiceRegistrationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelServiceRegistrationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelServiceRegistrationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ContinueDeployServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var parameters: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class ContinueDeployServiceInstanceResponseBody : Tea.TeaModel {
    public class DryRunResult : Tea.TeaModel {
        public var parametersAllowedToBeModified: [String]?

        public var parametersConditionallyAllowedToBeModified: [String]?

        public var parametersNotAllowedToBeModified: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parametersAllowedToBeModified != nil {
                map["ParametersAllowedToBeModified"] = self.parametersAllowedToBeModified!
            }
            if self.parametersConditionallyAllowedToBeModified != nil {
                map["ParametersConditionallyAllowedToBeModified"] = self.parametersConditionallyAllowedToBeModified!
            }
            if self.parametersNotAllowedToBeModified != nil {
                map["ParametersNotAllowedToBeModified"] = self.parametersNotAllowedToBeModified!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParametersAllowedToBeModified"] as? [String] {
                self.parametersAllowedToBeModified = value
            }
            if let value = dict["ParametersConditionallyAllowedToBeModified"] as? [String] {
                self.parametersConditionallyAllowedToBeModified = value
            }
            if let value = dict["ParametersNotAllowedToBeModified"] as? [String] {
                self.parametersNotAllowedToBeModified = value
            }
        }
    }
    public var dryRunResult: ContinueDeployServiceInstanceResponseBody.DryRunResult?

    public var requestId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dryRunResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRunResult != nil {
            map["DryRunResult"] = self.dryRunResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRunResult"] as? [String: Any?] {
            var model = ContinueDeployServiceInstanceResponseBody.DryRunResult()
            model.fromMap(value)
            self.dryRunResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class ContinueDeployServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContinueDeployServiceInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ContinueDeployServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateArtifactRequest : Tea.TeaModel {
    public class ArtifactBuildProperty : Tea.TeaModel {
        public class BuildArgs : Tea.TeaModel {
            public var argumentName: String?

            public var argumentValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.argumentName != nil {
                    map["ArgumentName"] = self.argumentName!
                }
                if self.argumentValue != nil {
                    map["ArgumentValue"] = self.argumentValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArgumentName"] as? String {
                    self.argumentName = value
                }
                if let value = dict["ArgumentValue"] as? String {
                    self.argumentValue = value
                }
            }
        }
        public class CodeRepo : Tea.TeaModel {
            public var branch: String?

            public var endpoint: String?

            public var orgId: String?

            public var owner: String?

            public var platform: String?

            public var repoId: Int64?

            public var repoName: String?

            public override init() {
                super.init()
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
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
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
                if self.repoId != nil {
                    map["RepoId"] = self.repoId!
                }
                if self.repoName != nil {
                    map["RepoName"] = self.repoName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Branch"] as? String {
                    self.branch = value
                }
                if let value = dict["Endpoint"] as? String {
                    self.endpoint = value
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
                if let value = dict["RepoId"] as? Int64 {
                    self.repoId = value
                }
                if let value = dict["RepoName"] as? String {
                    self.repoName = value
                }
            }
        }
        public var buildArgs: [CreateArtifactRequest.ArtifactBuildProperty.BuildArgs]?

        public var codeRepo: CreateArtifactRequest.ArtifactBuildProperty.CodeRepo?

        public var commandContent: String?

        public var commandType: String?

        public var dockerfilePath: String?

        public var regionId: String?

        public var sourceContainerImage: String?

        public var sourceImageId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.codeRepo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildArgs != nil {
                var tmp : [Any] = []
                for k in self.buildArgs! {
                    tmp.append(k.toMap())
                }
                map["BuildArgs"] = tmp
            }
            if self.codeRepo != nil {
                map["CodeRepo"] = self.codeRepo?.toMap()
            }
            if self.commandContent != nil {
                map["CommandContent"] = self.commandContent!
            }
            if self.commandType != nil {
                map["CommandType"] = self.commandType!
            }
            if self.dockerfilePath != nil {
                map["DockerfilePath"] = self.dockerfilePath!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.sourceContainerImage != nil {
                map["SourceContainerImage"] = self.sourceContainerImage!
            }
            if self.sourceImageId != nil {
                map["SourceImageId"] = self.sourceImageId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BuildArgs"] as? [Any?] {
                var tmp : [CreateArtifactRequest.ArtifactBuildProperty.BuildArgs] = []
                for v in value {
                    if v != nil {
                        var model = CreateArtifactRequest.ArtifactBuildProperty.BuildArgs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.buildArgs = tmp
            }
            if let value = dict["CodeRepo"] as? [String: Any?] {
                var model = CreateArtifactRequest.ArtifactBuildProperty.CodeRepo()
                model.fromMap(value)
                self.codeRepo = model
            }
            if let value = dict["CommandContent"] as? String {
                self.commandContent = value
            }
            if let value = dict["CommandType"] as? String {
                self.commandType = value
            }
            if let value = dict["DockerfilePath"] as? String {
                self.dockerfilePath = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SourceContainerImage"] as? String {
                self.sourceContainerImage = value
            }
            if let value = dict["SourceImageId"] as? String {
                self.sourceImageId = value
            }
        }
    }
    public class ArtifactProperty : Tea.TeaModel {
        public var commodityCode: String?

        public var commodityVersion: String?

        public var imageId: String?

        public var regionId: String?

        public var repoId: String?

        public var repoName: String?

        public var repoType: String?

        public var tag: String?

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
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.commodityVersion != nil {
                map["CommodityVersion"] = self.commodityVersion!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.repoId != nil {
                map["RepoId"] = self.repoId!
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.repoType != nil {
                map["RepoType"] = self.repoType!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CommodityVersion"] as? String {
                self.commodityVersion = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RepoId"] as? String {
                self.repoId = value
            }
            if let value = dict["RepoName"] as? String {
                self.repoName = value
            }
            if let value = dict["RepoType"] as? String {
                self.repoType = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
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
    public var artifactBuildProperty: CreateArtifactRequest.ArtifactBuildProperty?

    public var artifactBuildType: String?

    public var artifactId: String?

    public var artifactProperty: CreateArtifactRequest.ArtifactProperty?

    public var artifactType: String?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var resourceGroupId: String?

    public var supportRegionIds: [String]?

    public var tag: [CreateArtifactRequest.Tag]?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.artifactBuildProperty?.validate()
        try self.artifactProperty?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactBuildProperty != nil {
            map["ArtifactBuildProperty"] = self.artifactBuildProperty?.toMap()
        }
        if self.artifactBuildType != nil {
            map["ArtifactBuildType"] = self.artifactBuildType!
        }
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactProperty != nil {
            map["ArtifactProperty"] = self.artifactProperty?.toMap()
        }
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.supportRegionIds != nil {
            map["SupportRegionIds"] = self.supportRegionIds!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactBuildProperty"] as? [String: Any?] {
            var model = CreateArtifactRequest.ArtifactBuildProperty()
            model.fromMap(value)
            self.artifactBuildProperty = model
        }
        if let value = dict["ArtifactBuildType"] as? String {
            self.artifactBuildType = value
        }
        if let value = dict["ArtifactId"] as? String {
            self.artifactId = value
        }
        if let value = dict["ArtifactProperty"] as? [String: Any?] {
            var model = CreateArtifactRequest.ArtifactProperty()
            model.fromMap(value)
            self.artifactProperty = model
        }
        if let value = dict["ArtifactType"] as? String {
            self.artifactType = value
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SupportRegionIds"] as? [String] {
            self.supportRegionIds = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateArtifactRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateArtifactRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class CreateArtifactShrinkRequest : Tea.TeaModel {
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
    public var artifactBuildPropertyShrink: String?

    public var artifactBuildType: String?

    public var artifactId: String?

    public var artifactPropertyShrink: String?

    public var artifactType: String?

    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var resourceGroupId: String?

    public var supportRegionIds: [String]?

    public var tag: [CreateArtifactShrinkRequest.Tag]?

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
        if self.artifactBuildPropertyShrink != nil {
            map["ArtifactBuildProperty"] = self.artifactBuildPropertyShrink!
        }
        if self.artifactBuildType != nil {
            map["ArtifactBuildType"] = self.artifactBuildType!
        }
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactPropertyShrink != nil {
            map["ArtifactProperty"] = self.artifactPropertyShrink!
        }
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.supportRegionIds != nil {
            map["SupportRegionIds"] = self.supportRegionIds!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactBuildProperty"] as? String {
            self.artifactBuildPropertyShrink = value
        }
        if let value = dict["ArtifactBuildType"] as? String {
            self.artifactBuildType = value
        }
        if let value = dict["ArtifactId"] as? String {
            self.artifactId = value
        }
        if let value = dict["ArtifactProperty"] as? String {
            self.artifactPropertyShrink = value
        }
        if let value = dict["ArtifactType"] as? String {
            self.artifactType = value
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SupportRegionIds"] as? [String] {
            self.supportRegionIds = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateArtifactShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateArtifactShrinkRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class CreateArtifactResponseBody : Tea.TeaModel {
    public var artifactBuildProperty: String?

    public var artifactBuildType: String?

    public var artifactId: String?

    public var artifactProperty: String?

    public var artifactType: String?

    public var artifactVersion: String?

    public var description_: String?

    public var gmtModified: String?

    public var maxVersion: Int64?

    public var name: String?

    public var requestId: String?

    public var status: String?

    public var statusDetail: String?

    public var supportRegionIds: String?

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
        if self.artifactBuildProperty != nil {
            map["ArtifactBuildProperty"] = self.artifactBuildProperty!
        }
        if self.artifactBuildType != nil {
            map["ArtifactBuildType"] = self.artifactBuildType!
        }
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactProperty != nil {
            map["ArtifactProperty"] = self.artifactProperty!
        }
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
        }
        if self.artifactVersion != nil {
            map["ArtifactVersion"] = self.artifactVersion!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.maxVersion != nil {
            map["MaxVersion"] = self.maxVersion!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusDetail != nil {
            map["StatusDetail"] = self.statusDetail!
        }
        if self.supportRegionIds != nil {
            map["SupportRegionIds"] = self.supportRegionIds!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactBuildProperty"] as? String {
            self.artifactBuildProperty = value
        }
        if let value = dict["ArtifactBuildType"] as? String {
            self.artifactBuildType = value
        }
        if let value = dict["ArtifactId"] as? String {
            self.artifactId = value
        }
        if let value = dict["ArtifactProperty"] as? String {
            self.artifactProperty = value
        }
        if let value = dict["ArtifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["ArtifactVersion"] as? String {
            self.artifactVersion = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["MaxVersion"] as? Int64 {
            self.maxVersion = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusDetail"] as? String {
            self.statusDetail = value
        }
        if let value = dict["SupportRegionIds"] as? String {
            self.supportRegionIds = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class CreateArtifactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateArtifactResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateArtifactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceRequest : Tea.TeaModel {
    public class ComplianceMetadata : Tea.TeaModel {
        public var compliancePacks: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compliancePacks != nil {
                map["CompliancePacks"] = self.compliancePacks!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompliancePacks"] as? [String] {
                self.compliancePacks = value
            }
        }
    }
    public class ServiceInfo : Tea.TeaModel {
        public class Agreements : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public class Softwares : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var agreements: [CreateServiceRequest.ServiceInfo.Agreements]?

        public var image: String?

        public var locale: String?

        public var longDescriptionUrl: String?

        public var name: String?

        public var shortDescription: String?

        public var softwares: [CreateServiceRequest.ServiceInfo.Softwares]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agreements != nil {
                var tmp : [Any] = []
                for k in self.agreements! {
                    tmp.append(k.toMap())
                }
                map["Agreements"] = tmp
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.locale != nil {
                map["Locale"] = self.locale!
            }
            if self.longDescriptionUrl != nil {
                map["LongDescriptionUrl"] = self.longDescriptionUrl!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.shortDescription != nil {
                map["ShortDescription"] = self.shortDescription!
            }
            if self.softwares != nil {
                var tmp : [Any] = []
                for k in self.softwares! {
                    tmp.append(k.toMap())
                }
                map["Softwares"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Agreements"] as? [Any?] {
                var tmp : [CreateServiceRequest.ServiceInfo.Agreements] = []
                for v in value {
                    if v != nil {
                        var model = CreateServiceRequest.ServiceInfo.Agreements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agreements = tmp
            }
            if let value = dict["Image"] as? String {
                self.image = value
            }
            if let value = dict["Locale"] as? String {
                self.locale = value
            }
            if let value = dict["LongDescriptionUrl"] as? String {
                self.longDescriptionUrl = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ShortDescription"] as? String {
                self.shortDescription = value
            }
            if let value = dict["Softwares"] as? [Any?] {
                var tmp : [CreateServiceRequest.ServiceInfo.Softwares] = []
                for v in value {
                    if v != nil {
                        var model = CreateServiceRequest.ServiceInfo.Softwares()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.softwares = tmp
            }
        }
    }
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
    public var alarmMetadata: String?

    public var approvalType: String?

    public var buildParameters: String?

    public var clientToken: String?

    public var complianceMetadata: CreateServiceRequest.ComplianceMetadata?

    public var deployMetadata: String?

    public var deployType: String?

    public var dryRun: Bool?

    public var duration: Int64?

    public var isSupportOperated: Bool?

    public var licenseMetadata: String?

    public var logMetadata: String?

    public var operationMetadata: String?

    public var policyNames: String?

    public var regionId: String?

    public var resellable: Bool?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var serviceInfo: [CreateServiceRequest.ServiceInfo]?

    public var serviceType: String?

    public var shareType: String?

    public var sourceServiceId: String?

    public var sourceServiceVersion: String?

    public var tag: [CreateServiceRequest.Tag]?

    public var tenantType: String?

    public var trialDuration: Int64?

    public var upgradeMetadata: String?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.complianceMetadata?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmMetadata != nil {
            map["AlarmMetadata"] = self.alarmMetadata!
        }
        if self.approvalType != nil {
            map["ApprovalType"] = self.approvalType!
        }
        if self.buildParameters != nil {
            map["BuildParameters"] = self.buildParameters!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.complianceMetadata != nil {
            map["ComplianceMetadata"] = self.complianceMetadata?.toMap()
        }
        if self.deployMetadata != nil {
            map["DeployMetadata"] = self.deployMetadata!
        }
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.isSupportOperated != nil {
            map["IsSupportOperated"] = self.isSupportOperated!
        }
        if self.licenseMetadata != nil {
            map["LicenseMetadata"] = self.licenseMetadata!
        }
        if self.logMetadata != nil {
            map["LogMetadata"] = self.logMetadata!
        }
        if self.operationMetadata != nil {
            map["OperationMetadata"] = self.operationMetadata!
        }
        if self.policyNames != nil {
            map["PolicyNames"] = self.policyNames!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resellable != nil {
            map["Resellable"] = self.resellable!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInfo != nil {
            var tmp : [Any] = []
            for k in self.serviceInfo! {
                tmp.append(k.toMap())
            }
            map["ServiceInfo"] = tmp
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sourceServiceId != nil {
            map["SourceServiceId"] = self.sourceServiceId!
        }
        if self.sourceServiceVersion != nil {
            map["SourceServiceVersion"] = self.sourceServiceVersion!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.tenantType != nil {
            map["TenantType"] = self.tenantType!
        }
        if self.trialDuration != nil {
            map["TrialDuration"] = self.trialDuration!
        }
        if self.upgradeMetadata != nil {
            map["UpgradeMetadata"] = self.upgradeMetadata!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmMetadata"] as? String {
            self.alarmMetadata = value
        }
        if let value = dict["ApprovalType"] as? String {
            self.approvalType = value
        }
        if let value = dict["BuildParameters"] as? String {
            self.buildParameters = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ComplianceMetadata"] as? [String: Any?] {
            var model = CreateServiceRequest.ComplianceMetadata()
            model.fromMap(value)
            self.complianceMetadata = model
        }
        if let value = dict["DeployMetadata"] as? String {
            self.deployMetadata = value
        }
        if let value = dict["DeployType"] as? String {
            self.deployType = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["Duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["IsSupportOperated"] as? Bool {
            self.isSupportOperated = value
        }
        if let value = dict["LicenseMetadata"] as? String {
            self.licenseMetadata = value
        }
        if let value = dict["LogMetadata"] as? String {
            self.logMetadata = value
        }
        if let value = dict["OperationMetadata"] as? String {
            self.operationMetadata = value
        }
        if let value = dict["PolicyNames"] as? String {
            self.policyNames = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Resellable"] as? Bool {
            self.resellable = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInfo"] as? [Any?] {
            var tmp : [CreateServiceRequest.ServiceInfo] = []
            for v in value {
                if v != nil {
                    var model = CreateServiceRequest.ServiceInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceInfo = tmp
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["SourceServiceId"] as? String {
            self.sourceServiceId = value
        }
        if let value = dict["SourceServiceVersion"] as? String {
            self.sourceServiceVersion = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateServiceRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateServiceRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TenantType"] as? String {
            self.tenantType = value
        }
        if let value = dict["TrialDuration"] as? Int64 {
            self.trialDuration = value
        }
        if let value = dict["UpgradeMetadata"] as? String {
            self.upgradeMetadata = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class CreateServiceShrinkRequest : Tea.TeaModel {
    public class ServiceInfo : Tea.TeaModel {
        public class Agreements : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public class Softwares : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var agreements: [CreateServiceShrinkRequest.ServiceInfo.Agreements]?

        public var image: String?

        public var locale: String?

        public var longDescriptionUrl: String?

        public var name: String?

        public var shortDescription: String?

        public var softwares: [CreateServiceShrinkRequest.ServiceInfo.Softwares]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agreements != nil {
                var tmp : [Any] = []
                for k in self.agreements! {
                    tmp.append(k.toMap())
                }
                map["Agreements"] = tmp
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.locale != nil {
                map["Locale"] = self.locale!
            }
            if self.longDescriptionUrl != nil {
                map["LongDescriptionUrl"] = self.longDescriptionUrl!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.shortDescription != nil {
                map["ShortDescription"] = self.shortDescription!
            }
            if self.softwares != nil {
                var tmp : [Any] = []
                for k in self.softwares! {
                    tmp.append(k.toMap())
                }
                map["Softwares"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Agreements"] as? [Any?] {
                var tmp : [CreateServiceShrinkRequest.ServiceInfo.Agreements] = []
                for v in value {
                    if v != nil {
                        var model = CreateServiceShrinkRequest.ServiceInfo.Agreements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agreements = tmp
            }
            if let value = dict["Image"] as? String {
                self.image = value
            }
            if let value = dict["Locale"] as? String {
                self.locale = value
            }
            if let value = dict["LongDescriptionUrl"] as? String {
                self.longDescriptionUrl = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ShortDescription"] as? String {
                self.shortDescription = value
            }
            if let value = dict["Softwares"] as? [Any?] {
                var tmp : [CreateServiceShrinkRequest.ServiceInfo.Softwares] = []
                for v in value {
                    if v != nil {
                        var model = CreateServiceShrinkRequest.ServiceInfo.Softwares()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.softwares = tmp
            }
        }
    }
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
    public var alarmMetadata: String?

    public var approvalType: String?

    public var buildParameters: String?

    public var clientToken: String?

    public var complianceMetadataShrink: String?

    public var deployMetadata: String?

    public var deployType: String?

    public var dryRun: Bool?

    public var duration: Int64?

    public var isSupportOperated: Bool?

    public var licenseMetadata: String?

    public var logMetadata: String?

    public var operationMetadata: String?

    public var policyNames: String?

    public var regionId: String?

    public var resellable: Bool?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var serviceInfo: [CreateServiceShrinkRequest.ServiceInfo]?

    public var serviceType: String?

    public var shareType: String?

    public var sourceServiceId: String?

    public var sourceServiceVersion: String?

    public var tag: [CreateServiceShrinkRequest.Tag]?

    public var tenantType: String?

    public var trialDuration: Int64?

    public var upgradeMetadata: String?

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
        if self.alarmMetadata != nil {
            map["AlarmMetadata"] = self.alarmMetadata!
        }
        if self.approvalType != nil {
            map["ApprovalType"] = self.approvalType!
        }
        if self.buildParameters != nil {
            map["BuildParameters"] = self.buildParameters!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.complianceMetadataShrink != nil {
            map["ComplianceMetadata"] = self.complianceMetadataShrink!
        }
        if self.deployMetadata != nil {
            map["DeployMetadata"] = self.deployMetadata!
        }
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.isSupportOperated != nil {
            map["IsSupportOperated"] = self.isSupportOperated!
        }
        if self.licenseMetadata != nil {
            map["LicenseMetadata"] = self.licenseMetadata!
        }
        if self.logMetadata != nil {
            map["LogMetadata"] = self.logMetadata!
        }
        if self.operationMetadata != nil {
            map["OperationMetadata"] = self.operationMetadata!
        }
        if self.policyNames != nil {
            map["PolicyNames"] = self.policyNames!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resellable != nil {
            map["Resellable"] = self.resellable!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInfo != nil {
            var tmp : [Any] = []
            for k in self.serviceInfo! {
                tmp.append(k.toMap())
            }
            map["ServiceInfo"] = tmp
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.sourceServiceId != nil {
            map["SourceServiceId"] = self.sourceServiceId!
        }
        if self.sourceServiceVersion != nil {
            map["SourceServiceVersion"] = self.sourceServiceVersion!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.tenantType != nil {
            map["TenantType"] = self.tenantType!
        }
        if self.trialDuration != nil {
            map["TrialDuration"] = self.trialDuration!
        }
        if self.upgradeMetadata != nil {
            map["UpgradeMetadata"] = self.upgradeMetadata!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmMetadata"] as? String {
            self.alarmMetadata = value
        }
        if let value = dict["ApprovalType"] as? String {
            self.approvalType = value
        }
        if let value = dict["BuildParameters"] as? String {
            self.buildParameters = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ComplianceMetadata"] as? String {
            self.complianceMetadataShrink = value
        }
        if let value = dict["DeployMetadata"] as? String {
            self.deployMetadata = value
        }
        if let value = dict["DeployType"] as? String {
            self.deployType = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["Duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["IsSupportOperated"] as? Bool {
            self.isSupportOperated = value
        }
        if let value = dict["LicenseMetadata"] as? String {
            self.licenseMetadata = value
        }
        if let value = dict["LogMetadata"] as? String {
            self.logMetadata = value
        }
        if let value = dict["OperationMetadata"] as? String {
            self.operationMetadata = value
        }
        if let value = dict["PolicyNames"] as? String {
            self.policyNames = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Resellable"] as? Bool {
            self.resellable = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInfo"] as? [Any?] {
            var tmp : [CreateServiceShrinkRequest.ServiceInfo] = []
            for v in value {
                if v != nil {
                    var model = CreateServiceShrinkRequest.ServiceInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceInfo = tmp
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["SourceServiceId"] as? String {
            self.sourceServiceId = value
        }
        if let value = dict["SourceServiceVersion"] as? String {
            self.sourceServiceVersion = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateServiceShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateServiceShrinkRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TenantType"] as? String {
            self.tenantType = value
        }
        if let value = dict["TrialDuration"] as? Int64 {
            self.trialDuration = value
        }
        if let value = dict["UpgradeMetadata"] as? String {
            self.upgradeMetadata = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class CreateServiceResponseBody : Tea.TeaModel {
    public class DryRunResult : Tea.TeaModel {
        public class RolePolicy : Tea.TeaModel {
            public class MissingPolicy : Tea.TeaModel {
                public var action: [String]?

                public var resource: String?

                public var serviceName: String?

                public override init() {
                    super.init()
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
                    if self.resource != nil {
                        map["Resource"] = self.resource!
                    }
                    if self.serviceName != nil {
                        map["ServiceName"] = self.serviceName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Action"] as? [String] {
                        self.action = value
                    }
                    if let value = dict["Resource"] as? String {
                        self.resource = value
                    }
                    if let value = dict["ServiceName"] as? String {
                        self.serviceName = value
                    }
                }
            }
            public var missingPolicy: [CreateServiceResponseBody.DryRunResult.RolePolicy.MissingPolicy]?

            public var policy: String?

            public override init() {
                super.init()
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
                    var tmp : [Any] = []
                    for k in self.missingPolicy! {
                        tmp.append(k.toMap())
                    }
                    map["MissingPolicy"] = tmp
                }
                if self.policy != nil {
                    map["Policy"] = self.policy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MissingPolicy"] as? [Any?] {
                    var tmp : [CreateServiceResponseBody.DryRunResult.RolePolicy.MissingPolicy] = []
                    for v in value {
                        if v != nil {
                            var model = CreateServiceResponseBody.DryRunResult.RolePolicy.MissingPolicy()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.missingPolicy = tmp
                }
                if let value = dict["Policy"] as? String {
                    self.policy = value
                }
            }
        }
        public var rolePolicy: CreateServiceResponseBody.DryRunResult.RolePolicy?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.rolePolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rolePolicy != nil {
                map["RolePolicy"] = self.rolePolicy?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RolePolicy"] as? [String: Any?] {
                var model = CreateServiceResponseBody.DryRunResult.RolePolicy()
                model.fromMap(value)
                self.rolePolicy = model
            }
        }
    }
    public var dryRunResult: CreateServiceResponseBody.DryRunResult?

    public var requestId: String?

    public var serviceId: String?

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
        try self.dryRunResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRunResult != nil {
            map["DryRunResult"] = self.dryRunResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
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
        if let value = dict["DryRunResult"] as? [String: Any?] {
            var model = CreateServiceResponseBody.DryRunResult()
            model.fromMap(value)
            self.dryRunResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class CreateServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceInstanceRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var dryRun: Bool?

    public var endTime: String?

    public var name: String?

    public var parameters: [String: Any]?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public var specificationName: String?

    public var tag: [CreateServiceInstanceRequest.Tag]?

    public var templateName: String?

    public var userId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.specificationName != nil {
            map["SpecificationName"] = self.specificationName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
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
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["SpecificationName"] as? String {
            self.specificationName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateServiceInstanceRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateServiceInstanceRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class CreateServiceInstanceShrinkRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var dryRun: Bool?

    public var endTime: String?

    public var name: String?

    public var parametersShrink: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public var specificationName: String?

    public var tag: [CreateServiceInstanceShrinkRequest.Tag]?

    public var templateName: String?

    public var userId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.specificationName != nil {
            map["SpecificationName"] = self.specificationName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
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
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["SpecificationName"] as? String {
            self.specificationName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateServiceInstanceShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateServiceInstanceShrinkRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class CreateServiceInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serviceInstanceId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CreateServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceTestCaseRequest : Tea.TeaModel {
    public var regionId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public var templateName: String?

    public var testCaseName: String?

    public var testConfig: String?

    public override init() {
        super.init()
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.testCaseName != nil {
            map["TestCaseName"] = self.testCaseName!
        }
        if self.testConfig != nil {
            map["TestConfig"] = self.testConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TestCaseName"] as? String {
            self.testCaseName = value
        }
        if let value = dict["TestConfig"] as? String {
            self.testConfig = value
        }
    }
}

public class CreateServiceTestCaseResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var testCaseId: String?

    public override init() {
        super.init()
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
        if self.testCaseId != nil {
            map["TestCaseId"] = self.testCaseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TestCaseId"] as? String {
            self.testCaseId = value
        }
    }
}

public class CreateServiceTestCaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceTestCaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateServiceTestCaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceTestTaskRequest : Tea.TeaModel {
    public var regionId: String?

    public var taskName: String?

    public var taskRegionId: String?

    public var testCaseIds: [String]?

    public override init() {
        super.init()
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
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskRegionId != nil {
            map["TaskRegionId"] = self.taskRegionId!
        }
        if self.testCaseIds != nil {
            map["TestCaseIds"] = self.testCaseIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TaskRegionId"] as? String {
            self.taskRegionId = value
        }
        if let value = dict["TestCaseIds"] as? [String] {
            self.testCaseIds = value
        }
    }
}

public class CreateServiceTestTaskResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateServiceTestTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceTestTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateServiceTestTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceUsageRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceId: String?

    public override init() {
        super.init()
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
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
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
    }
}

public class CreateServiceUsageResponseBody : Tea.TeaModel {
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

public class CreateServiceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateServiceUsageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSupplierRegistrationRequest : Tea.TeaModel {
    public var contactEmail: String?

    public var contactNumber: String?

    public var contactPerson: String?

    public var contactPersonTitle: String?

    public var enableResellerMode: Bool?

    public var productAnnualRevenue: String?

    public var productBusiness: String?

    public var productDeliveryTypes: [String]?

    public var productPublishTime: String?

    public var productSellTypes: [String]?

    public var regionId: String?

    public var resellBusinessDesc: String?

    public var suggestion: String?

    public var supplierDesc: String?

    public var supplierLogo: String?

    public var supplierName: String?

    public var supplierNameEn: String?

    public var supplierUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactEmail != nil {
            map["ContactEmail"] = self.contactEmail!
        }
        if self.contactNumber != nil {
            map["ContactNumber"] = self.contactNumber!
        }
        if self.contactPerson != nil {
            map["ContactPerson"] = self.contactPerson!
        }
        if self.contactPersonTitle != nil {
            map["ContactPersonTitle"] = self.contactPersonTitle!
        }
        if self.enableResellerMode != nil {
            map["EnableResellerMode"] = self.enableResellerMode!
        }
        if self.productAnnualRevenue != nil {
            map["ProductAnnualRevenue"] = self.productAnnualRevenue!
        }
        if self.productBusiness != nil {
            map["ProductBusiness"] = self.productBusiness!
        }
        if self.productDeliveryTypes != nil {
            map["ProductDeliveryTypes"] = self.productDeliveryTypes!
        }
        if self.productPublishTime != nil {
            map["ProductPublishTime"] = self.productPublishTime!
        }
        if self.productSellTypes != nil {
            map["ProductSellTypes"] = self.productSellTypes!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resellBusinessDesc != nil {
            map["ResellBusinessDesc"] = self.resellBusinessDesc!
        }
        if self.suggestion != nil {
            map["Suggestion"] = self.suggestion!
        }
        if self.supplierDesc != nil {
            map["SupplierDesc"] = self.supplierDesc!
        }
        if self.supplierLogo != nil {
            map["SupplierLogo"] = self.supplierLogo!
        }
        if self.supplierName != nil {
            map["SupplierName"] = self.supplierName!
        }
        if self.supplierNameEn != nil {
            map["SupplierNameEn"] = self.supplierNameEn!
        }
        if self.supplierUrl != nil {
            map["SupplierUrl"] = self.supplierUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactEmail"] as? String {
            self.contactEmail = value
        }
        if let value = dict["ContactNumber"] as? String {
            self.contactNumber = value
        }
        if let value = dict["ContactPerson"] as? String {
            self.contactPerson = value
        }
        if let value = dict["ContactPersonTitle"] as? String {
            self.contactPersonTitle = value
        }
        if let value = dict["EnableResellerMode"] as? Bool {
            self.enableResellerMode = value
        }
        if let value = dict["ProductAnnualRevenue"] as? String {
            self.productAnnualRevenue = value
        }
        if let value = dict["ProductBusiness"] as? String {
            self.productBusiness = value
        }
        if let value = dict["ProductDeliveryTypes"] as? [String] {
            self.productDeliveryTypes = value
        }
        if let value = dict["ProductPublishTime"] as? String {
            self.productPublishTime = value
        }
        if let value = dict["ProductSellTypes"] as? [String] {
            self.productSellTypes = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResellBusinessDesc"] as? String {
            self.resellBusinessDesc = value
        }
        if let value = dict["Suggestion"] as? String {
            self.suggestion = value
        }
        if let value = dict["SupplierDesc"] as? String {
            self.supplierDesc = value
        }
        if let value = dict["SupplierLogo"] as? String {
            self.supplierLogo = value
        }
        if let value = dict["SupplierName"] as? String {
            self.supplierName = value
        }
        if let value = dict["SupplierNameEn"] as? String {
            self.supplierNameEn = value
        }
        if let value = dict["SupplierUrl"] as? String {
            self.supplierUrl = value
        }
    }
}

public class CreateSupplierRegistrationResponseBody : Tea.TeaModel {
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

public class CreateSupplierRegistrationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSupplierRegistrationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSupplierRegistrationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteArtifactRequest : Tea.TeaModel {
    public var artifactId: String?

    public var artifactVersion: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactVersion != nil {
            map["ArtifactVersion"] = self.artifactVersion!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactId"] as? String {
            self.artifactId = value
        }
        if let value = dict["ArtifactVersion"] as? String {
            self.artifactVersion = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class DeleteArtifactResponseBody : Tea.TeaModel {
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

public class DeleteArtifactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteArtifactResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteArtifactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public override init() {
        super.init()
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
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
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
    }
}

public class DeleteServiceResponseBody : Tea.TeaModel {
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

public class DeleteServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceInstancesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceInstanceId: [String]?

    public override init() {
        super.init()
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
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
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
        if let value = dict["ServiceInstanceId"] as? [String] {
            self.serviceInstanceId = value
        }
    }
}

public class DeleteServiceInstancesResponseBody : Tea.TeaModel {
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

public class DeleteServiceInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteServiceInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceTestCaseRequest : Tea.TeaModel {
    public var regionId: String?

    public var testCaseId: String?

    public override init() {
        super.init()
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
        if self.testCaseId != nil {
            map["TestCaseId"] = self.testCaseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TestCaseId"] as? String {
            self.testCaseId = value
        }
    }
}

public class DeleteServiceTestCaseResponseBody : Tea.TeaModel {
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

public class DeleteServiceTestCaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceTestCaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteServiceTestCaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeployServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
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
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
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
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class DeployServiceInstanceResponseBody : Tea.TeaModel {
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

public class DeployServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployServiceInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeployServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateDefaultServiceTestConfigRequest : Tea.TeaModel {
    public var serviceId: String?

    public var serviceVersion: String?

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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class GenerateDefaultServiceTestConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var testConfig: String?

    public override init() {
        super.init()
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
        if self.testConfig != nil {
            map["TestConfig"] = self.testConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TestConfig"] as? String {
            self.testConfig = value
        }
    }
}

public class GenerateDefaultServiceTestConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateDefaultServiceTestConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateDefaultServiceTestConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateServicePolicyRequest : Tea.TeaModel {
    public var operationTypes: [String]?

    public var regionId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public var templateName: String?

    public var trialType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationTypes != nil {
            map["OperationTypes"] = self.operationTypes!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationTypes"] as? [String] {
            self.operationTypes = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TrialType"] as? String {
            self.trialType = value
        }
    }
}

public class GenerateServicePolicyResponseBody : Tea.TeaModel {
    public class MissingPolicy : Tea.TeaModel {
        public var action: [String]?

        public var resource: String?

        public var serviceName: String?

        public override init() {
            super.init()
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
            if self.resource != nil {
                map["Resource"] = self.resource!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Action"] as? [String] {
                self.action = value
            }
            if let value = dict["Resource"] as? String {
                self.resource = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
        }
    }
    public var missingPolicy: [GenerateServicePolicyResponseBody.MissingPolicy]?

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
            var tmp : [Any] = []
            for k in self.missingPolicy! {
                tmp.append(k.toMap())
            }
            map["MissingPolicy"] = tmp
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
        if let value = dict["MissingPolicy"] as? [Any?] {
            var tmp : [GenerateServicePolicyResponseBody.MissingPolicy] = []
            for v in value {
                if v != nil {
                    var model = GenerateServicePolicyResponseBody.MissingPolicy()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.missingPolicy = tmp
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateServicePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateServicePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateServicePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetArtifactRequest : Tea.TeaModel {
    public var artifactId: String?

    public var artifactName: String?

    public var artifactVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactName != nil {
            map["ArtifactName"] = self.artifactName!
        }
        if self.artifactVersion != nil {
            map["ArtifactVersion"] = self.artifactVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactId"] as? String {
            self.artifactId = value
        }
        if let value = dict["ArtifactName"] as? String {
            self.artifactName = value
        }
        if let value = dict["ArtifactVersion"] as? String {
            self.artifactVersion = value
        }
    }
}

public class GetArtifactResponseBody : Tea.TeaModel {
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
    public var artifactBuildProperty: String?

    public var artifactBuildType: String?

    public var artifactId: String?

    public var artifactProperty: String?

    public var artifactType: String?

    public var artifactVersion: String?

    public var description_: String?

    public var gmtModified: String?

    public var maxVersion: Int64?

    public var name: String?

    public var permissionType: String?

    public var progress: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var status: String?

    public var statusDetail: String?

    public var supportRegionIds: String?

    public var tags: [GetArtifactResponseBody.Tags]?

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
        if self.artifactBuildProperty != nil {
            map["ArtifactBuildProperty"] = self.artifactBuildProperty!
        }
        if self.artifactBuildType != nil {
            map["ArtifactBuildType"] = self.artifactBuildType!
        }
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactProperty != nil {
            map["ArtifactProperty"] = self.artifactProperty!
        }
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
        }
        if self.artifactVersion != nil {
            map["ArtifactVersion"] = self.artifactVersion!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.maxVersion != nil {
            map["MaxVersion"] = self.maxVersion!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.permissionType != nil {
            map["PermissionType"] = self.permissionType!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusDetail != nil {
            map["StatusDetail"] = self.statusDetail!
        }
        if self.supportRegionIds != nil {
            map["SupportRegionIds"] = self.supportRegionIds!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactBuildProperty"] as? String {
            self.artifactBuildProperty = value
        }
        if let value = dict["ArtifactBuildType"] as? String {
            self.artifactBuildType = value
        }
        if let value = dict["ArtifactId"] as? String {
            self.artifactId = value
        }
        if let value = dict["ArtifactProperty"] as? String {
            self.artifactProperty = value
        }
        if let value = dict["ArtifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["ArtifactVersion"] as? String {
            self.artifactVersion = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["MaxVersion"] as? Int64 {
            self.maxVersion = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PermissionType"] as? String {
            self.permissionType = value
        }
        if let value = dict["Progress"] as? String {
            self.progress = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusDetail"] as? String {
            self.statusDetail = value
        }
        if let value = dict["SupportRegionIds"] as? String {
            self.supportRegionIds = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetArtifactResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetArtifactResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class GetArtifactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetArtifactResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetArtifactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetArtifactRepositoryCredentialsRequest : Tea.TeaModel {
    public var artifactType: String?

    public var deployRegionId: String?

    public override init() {
        super.init()
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
        if self.deployRegionId != nil {
            map["DeployRegionId"] = self.deployRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["DeployRegionId"] as? String {
            self.deployRegionId = value
        }
    }
}

public class GetArtifactRepositoryCredentialsResponseBody : Tea.TeaModel {
    public class AvailableResources : Tea.TeaModel {
        public var path: String?

        public var regionId: String?

        public var repositoryName: String?

        public override init() {
            super.init()
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
                map["Path"] = self.path!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.repositoryName != nil {
                map["RepositoryName"] = self.repositoryName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RepositoryName"] as? String {
                self.repositoryName = value
            }
        }
    }
    public class Credentials : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var password: String?

        public var securityToken: String?

        public var username: String?

        public override init() {
            super.init()
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
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            if self.username != nil {
                map["Username"] = self.username!
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
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
            }
            if let value = dict["Username"] as? String {
                self.username = value
            }
        }
    }
    public var availableResources: [GetArtifactRepositoryCredentialsResponseBody.AvailableResources]?

    public var credentials: GetArtifactRepositoryCredentialsResponseBody.Credentials?

    public var expireDate: String?

    public var requestId: String?

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
        if self.availableResources != nil {
            var tmp : [Any] = []
            for k in self.availableResources! {
                tmp.append(k.toMap())
            }
            map["AvailableResources"] = tmp
        }
        if self.credentials != nil {
            map["Credentials"] = self.credentials?.toMap()
        }
        if self.expireDate != nil {
            map["ExpireDate"] = self.expireDate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableResources"] as? [Any?] {
            var tmp : [GetArtifactRepositoryCredentialsResponseBody.AvailableResources] = []
            for v in value {
                if v != nil {
                    var model = GetArtifactRepositoryCredentialsResponseBody.AvailableResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.availableResources = tmp
        }
        if let value = dict["Credentials"] as? [String: Any?] {
            var model = GetArtifactRepositoryCredentialsResponseBody.Credentials()
            model.fromMap(value)
            self.credentials = model
        }
        if let value = dict["ExpireDate"] as? String {
            self.expireDate = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetArtifactRepositoryCredentialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetArtifactRepositoryCredentialsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetArtifactRepositoryCredentialsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceRequest : Tea.TeaModel {
    public var filterAliUid: Bool?

    public var regionId: String?

    public var serviceId: String?

    public var serviceInstanceId: String?

    public var serviceName: String?

    public var serviceVersion: String?

    public var sharedAccountType: String?

    public var showDetail: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterAliUid != nil {
            map["FilterAliUid"] = self.filterAliUid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.sharedAccountType != nil {
            map["SharedAccountType"] = self.sharedAccountType!
        }
        if self.showDetail != nil {
            map["ShowDetail"] = self.showDetail!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FilterAliUid"] as? Bool {
            self.filterAliUid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["SharedAccountType"] as? String {
            self.sharedAccountType = value
        }
        if let value = dict["ShowDetail"] as? [String] {
            self.showDetail = value
        }
    }
}

public class GetServiceResponseBody : Tea.TeaModel {
    public class Commodity : Tea.TeaModel {
        public class CssMetadata : Tea.TeaModel {
            public class ComponentsMappings : Tea.TeaModel {
                public var mappings: [String: String]?

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
                    if self.mappings != nil {
                        map["Mappings"] = self.mappings!
                    }
                    if self.templateName != nil {
                        map["TemplateName"] = self.templateName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Mappings"] as? [String: String] {
                        self.mappings = value
                    }
                    if let value = dict["TemplateName"] as? String {
                        self.templateName = value
                    }
                }
            }
            public class MeteringEntityExtraInfos : Tea.TeaModel {
                public var entityId: String?

                public var metricName: String?

                public var promql: String?

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
                    if self.entityId != nil {
                        map["EntityId"] = self.entityId!
                    }
                    if self.metricName != nil {
                        map["MetricName"] = self.metricName!
                    }
                    if self.promql != nil {
                        map["Promql"] = self.promql!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EntityId"] as? String {
                        self.entityId = value
                    }
                    if let value = dict["MetricName"] as? String {
                        self.metricName = value
                    }
                    if let value = dict["Promql"] as? String {
                        self.promql = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public class MeteringEntityMappings : Tea.TeaModel {
                public var entityIds: String?

                public var specificationName: String?

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
                    if self.entityIds != nil {
                        map["EntityIds"] = self.entityIds!
                    }
                    if self.specificationName != nil {
                        map["SpecificationName"] = self.specificationName!
                    }
                    if self.templateName != nil {
                        map["TemplateName"] = self.templateName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EntityIds"] as? String {
                        self.entityIds = value
                    }
                    if let value = dict["SpecificationName"] as? String {
                        self.specificationName = value
                    }
                    if let value = dict["TemplateName"] as? String {
                        self.templateName = value
                    }
                }
            }
            public var componentsMappings: [GetServiceResponseBody.Commodity.CssMetadata.ComponentsMappings]?

            public var meteringEntityExtraInfos: [GetServiceResponseBody.Commodity.CssMetadata.MeteringEntityExtraInfos]?

            public var meteringEntityMappings: [GetServiceResponseBody.Commodity.CssMetadata.MeteringEntityMappings]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.componentsMappings != nil {
                    var tmp : [Any] = []
                    for k in self.componentsMappings! {
                        tmp.append(k.toMap())
                    }
                    map["ComponentsMappings"] = tmp
                }
                if self.meteringEntityExtraInfos != nil {
                    var tmp : [Any] = []
                    for k in self.meteringEntityExtraInfos! {
                        tmp.append(k.toMap())
                    }
                    map["MeteringEntityExtraInfos"] = tmp
                }
                if self.meteringEntityMappings != nil {
                    var tmp : [Any] = []
                    for k in self.meteringEntityMappings! {
                        tmp.append(k.toMap())
                    }
                    map["MeteringEntityMappings"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentsMappings"] as? [Any?] {
                    var tmp : [GetServiceResponseBody.Commodity.CssMetadata.ComponentsMappings] = []
                    for v in value {
                        if v != nil {
                            var model = GetServiceResponseBody.Commodity.CssMetadata.ComponentsMappings()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.componentsMappings = tmp
                }
                if let value = dict["MeteringEntityExtraInfos"] as? [Any?] {
                    var tmp : [GetServiceResponseBody.Commodity.CssMetadata.MeteringEntityExtraInfos] = []
                    for v in value {
                        if v != nil {
                            var model = GetServiceResponseBody.Commodity.CssMetadata.MeteringEntityExtraInfos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.meteringEntityExtraInfos = tmp
                }
                if let value = dict["MeteringEntityMappings"] as? [Any?] {
                    var tmp : [GetServiceResponseBody.Commodity.CssMetadata.MeteringEntityMappings] = []
                    for v in value {
                        if v != nil {
                            var model = GetServiceResponseBody.Commodity.CssMetadata.MeteringEntityMappings()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.meteringEntityMappings = tmp
                }
            }
        }
        public class MarketplaceMetadata : Tea.TeaModel {
            public class MeteringEntityExtraInfos : Tea.TeaModel {
                public var entityId: String?

                public var metricName: String?

                public var promql: String?

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
                    if self.entityId != nil {
                        map["EntityId"] = self.entityId!
                    }
                    if self.metricName != nil {
                        map["MetricName"] = self.metricName!
                    }
                    if self.promql != nil {
                        map["Promql"] = self.promql!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EntityId"] as? String {
                        self.entityId = value
                    }
                    if let value = dict["MetricName"] as? String {
                        self.metricName = value
                    }
                    if let value = dict["Promql"] as? String {
                        self.promql = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public class MeteringEntityMappings : Tea.TeaModel {
                public var entityIds: String?

                public var specificationName: String?

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
                    if self.entityIds != nil {
                        map["EntityIds"] = self.entityIds!
                    }
                    if self.specificationName != nil {
                        map["SpecificationName"] = self.specificationName!
                    }
                    if self.templateName != nil {
                        map["TemplateName"] = self.templateName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EntityIds"] as? String {
                        self.entityIds = value
                    }
                    if let value = dict["SpecificationName"] as? String {
                        self.specificationName = value
                    }
                    if let value = dict["TemplateName"] as? String {
                        self.templateName = value
                    }
                }
            }
            public class SpecificationMappings : Tea.TeaModel {
                public var specificationCode: String?

                public var specificationName: String?

                public var templateName: String?

                public var trialType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.specificationCode != nil {
                        map["SpecificationCode"] = self.specificationCode!
                    }
                    if self.specificationName != nil {
                        map["SpecificationName"] = self.specificationName!
                    }
                    if self.templateName != nil {
                        map["TemplateName"] = self.templateName!
                    }
                    if self.trialType != nil {
                        map["TrialType"] = self.trialType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SpecificationCode"] as? String {
                        self.specificationCode = value
                    }
                    if let value = dict["SpecificationName"] as? String {
                        self.specificationName = value
                    }
                    if let value = dict["TemplateName"] as? String {
                        self.templateName = value
                    }
                    if let value = dict["TrialType"] as? String {
                        self.trialType = value
                    }
                }
            }
            public var meteringEntityExtraInfos: [GetServiceResponseBody.Commodity.MarketplaceMetadata.MeteringEntityExtraInfos]?

            public var meteringEntityMappings: [GetServiceResponseBody.Commodity.MarketplaceMetadata.MeteringEntityMappings]?

            public var specificationMappings: [GetServiceResponseBody.Commodity.MarketplaceMetadata.SpecificationMappings]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.meteringEntityExtraInfos != nil {
                    var tmp : [Any] = []
                    for k in self.meteringEntityExtraInfos! {
                        tmp.append(k.toMap())
                    }
                    map["MeteringEntityExtraInfos"] = tmp
                }
                if self.meteringEntityMappings != nil {
                    var tmp : [Any] = []
                    for k in self.meteringEntityMappings! {
                        tmp.append(k.toMap())
                    }
                    map["MeteringEntityMappings"] = tmp
                }
                if self.specificationMappings != nil {
                    var tmp : [Any] = []
                    for k in self.specificationMappings! {
                        tmp.append(k.toMap())
                    }
                    map["SpecificationMappings"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MeteringEntityExtraInfos"] as? [Any?] {
                    var tmp : [GetServiceResponseBody.Commodity.MarketplaceMetadata.MeteringEntityExtraInfos] = []
                    for v in value {
                        if v != nil {
                            var model = GetServiceResponseBody.Commodity.MarketplaceMetadata.MeteringEntityExtraInfos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.meteringEntityExtraInfos = tmp
                }
                if let value = dict["MeteringEntityMappings"] as? [Any?] {
                    var tmp : [GetServiceResponseBody.Commodity.MarketplaceMetadata.MeteringEntityMappings] = []
                    for v in value {
                        if v != nil {
                            var model = GetServiceResponseBody.Commodity.MarketplaceMetadata.MeteringEntityMappings()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.meteringEntityMappings = tmp
                }
                if let value = dict["SpecificationMappings"] as? [Any?] {
                    var tmp : [GetServiceResponseBody.Commodity.MarketplaceMetadata.SpecificationMappings] = []
                    for v in value {
                        if v != nil {
                            var model = GetServiceResponseBody.Commodity.MarketplaceMetadata.SpecificationMappings()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.specificationMappings = tmp
                }
            }
        }
        public class MeteringEntities : Tea.TeaModel {
            public var entityId: String?

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
                if self.entityId != nil {
                    map["EntityId"] = self.entityId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EntityId"] as? String {
                    self.entityId = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class Specifications : Tea.TeaModel {
            public var code: String?

            public var name: String?

            public var times: [String]?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.times != nil {
                    map["Times"] = self.times!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Times"] as? [String] {
                    self.times = value
                }
            }
        }
        public var chargeType: String?

        public var commodityCode: String?

        public var components: [String]?

        public var cssMetadata: GetServiceResponseBody.Commodity.CssMetadata?

        public var marketplaceMetadata: GetServiceResponseBody.Commodity.MarketplaceMetadata?

        public var meteringEntities: [GetServiceResponseBody.Commodity.MeteringEntities]?

        public var saasBoostMetadata: String?

        public var specifications: [GetServiceResponseBody.Commodity.Specifications]?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cssMetadata?.validate()
            try self.marketplaceMetadata?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.components != nil {
                map["Components"] = self.components!
            }
            if self.cssMetadata != nil {
                map["CssMetadata"] = self.cssMetadata?.toMap()
            }
            if self.marketplaceMetadata != nil {
                map["MarketplaceMetadata"] = self.marketplaceMetadata?.toMap()
            }
            if self.meteringEntities != nil {
                var tmp : [Any] = []
                for k in self.meteringEntities! {
                    tmp.append(k.toMap())
                }
                map["MeteringEntities"] = tmp
            }
            if self.saasBoostMetadata != nil {
                map["SaasBoostMetadata"] = self.saasBoostMetadata!
            }
            if self.specifications != nil {
                var tmp : [Any] = []
                for k in self.specifications! {
                    tmp.append(k.toMap())
                }
                map["Specifications"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["Components"] as? [String] {
                self.components = value
            }
            if let value = dict["CssMetadata"] as? [String: Any?] {
                var model = GetServiceResponseBody.Commodity.CssMetadata()
                model.fromMap(value)
                self.cssMetadata = model
            }
            if let value = dict["MarketplaceMetadata"] as? [String: Any?] {
                var model = GetServiceResponseBody.Commodity.MarketplaceMetadata()
                model.fromMap(value)
                self.marketplaceMetadata = model
            }
            if let value = dict["MeteringEntities"] as? [Any?] {
                var tmp : [GetServiceResponseBody.Commodity.MeteringEntities] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceResponseBody.Commodity.MeteringEntities()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.meteringEntities = tmp
            }
            if let value = dict["SaasBoostMetadata"] as? String {
                self.saasBoostMetadata = value
            }
            if let value = dict["Specifications"] as? [Any?] {
                var tmp : [GetServiceResponseBody.Commodity.Specifications] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceResponseBody.Commodity.Specifications()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.specifications = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class ComplianceMetadata : Tea.TeaModel {
        public var compliancePacks: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compliancePacks != nil {
                map["CompliancePacks"] = self.compliancePacks!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompliancePacks"] as? [String] {
                self.compliancePacks = value
            }
        }
    }
    public class ServiceDocumentInfos : Tea.TeaModel {
        public var documentUrl: String?

        public var locale: String?

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
            if self.documentUrl != nil {
                map["DocumentUrl"] = self.documentUrl!
            }
            if self.locale != nil {
                map["Locale"] = self.locale!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DocumentUrl"] as? String {
                self.documentUrl = value
            }
            if let value = dict["Locale"] as? String {
                self.locale = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
        }
    }
    public class ServiceInfos : Tea.TeaModel {
        public class Agreements : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public class Softwares : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var agreements: [GetServiceResponseBody.ServiceInfos.Agreements]?

        public var image: String?

        public var locale: String?

        public var longDescriptionUrl: String?

        public var name: String?

        public var shortDescription: String?

        public var softwares: [GetServiceResponseBody.ServiceInfos.Softwares]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agreements != nil {
                var tmp : [Any] = []
                for k in self.agreements! {
                    tmp.append(k.toMap())
                }
                map["Agreements"] = tmp
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.locale != nil {
                map["Locale"] = self.locale!
            }
            if self.longDescriptionUrl != nil {
                map["LongDescriptionUrl"] = self.longDescriptionUrl!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.shortDescription != nil {
                map["ShortDescription"] = self.shortDescription!
            }
            if self.softwares != nil {
                var tmp : [Any] = []
                for k in self.softwares! {
                    tmp.append(k.toMap())
                }
                map["Softwares"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Agreements"] as? [Any?] {
                var tmp : [GetServiceResponseBody.ServiceInfos.Agreements] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceResponseBody.ServiceInfos.Agreements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agreements = tmp
            }
            if let value = dict["Image"] as? String {
                self.image = value
            }
            if let value = dict["Locale"] as? String {
                self.locale = value
            }
            if let value = dict["LongDescriptionUrl"] as? String {
                self.longDescriptionUrl = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ShortDescription"] as? String {
                self.shortDescription = value
            }
            if let value = dict["Softwares"] as? [Any?] {
                var tmp : [GetServiceResponseBody.ServiceInfos.Softwares] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceResponseBody.ServiceInfos.Softwares()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.softwares = tmp
            }
        }
    }
    public class Statistic : Tea.TeaModel {
        public var accumulativeInstanceCount: Int32?

        public var accumulativePocAmount: Double?

        public var accumulativeUserCount: Int32?

        public var averagePocAmount: Double?

        public var averagePocDuration: Double?

        public var averagePocUnitAmount: Double?

        public var deployedServiceInstanceCount: Int32?

        public var deployedUserCount: Int32?

        public var submittedUsageCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accumulativeInstanceCount != nil {
                map["AccumulativeInstanceCount"] = self.accumulativeInstanceCount!
            }
            if self.accumulativePocAmount != nil {
                map["AccumulativePocAmount"] = self.accumulativePocAmount!
            }
            if self.accumulativeUserCount != nil {
                map["AccumulativeUserCount"] = self.accumulativeUserCount!
            }
            if self.averagePocAmount != nil {
                map["AveragePocAmount"] = self.averagePocAmount!
            }
            if self.averagePocDuration != nil {
                map["AveragePocDuration"] = self.averagePocDuration!
            }
            if self.averagePocUnitAmount != nil {
                map["AveragePocUnitAmount"] = self.averagePocUnitAmount!
            }
            if self.deployedServiceInstanceCount != nil {
                map["DeployedServiceInstanceCount"] = self.deployedServiceInstanceCount!
            }
            if self.deployedUserCount != nil {
                map["DeployedUserCount"] = self.deployedUserCount!
            }
            if self.submittedUsageCount != nil {
                map["SubmittedUsageCount"] = self.submittedUsageCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccumulativeInstanceCount"] as? Int32 {
                self.accumulativeInstanceCount = value
            }
            if let value = dict["AccumulativePocAmount"] as? Double {
                self.accumulativePocAmount = value
            }
            if let value = dict["AccumulativeUserCount"] as? Int32 {
                self.accumulativeUserCount = value
            }
            if let value = dict["AveragePocAmount"] as? Double {
                self.averagePocAmount = value
            }
            if let value = dict["AveragePocDuration"] as? Double {
                self.averagePocDuration = value
            }
            if let value = dict["AveragePocUnitAmount"] as? Double {
                self.averagePocUnitAmount = value
            }
            if let value = dict["DeployedServiceInstanceCount"] as? Int32 {
                self.deployedServiceInstanceCount = value
            }
            if let value = dict["DeployedUserCount"] as? Int32 {
                self.deployedUserCount = value
            }
            if let value = dict["SubmittedUsageCount"] as? Int32 {
                self.submittedUsageCount = value
            }
        }
    }
    public class SupportContacts : Tea.TeaModel {
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
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
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
    public var alarmMetadata: String?

    public var approvalType: String?

    public var buildInfo: String?

    public var buildParameters: String?

    public var categories: String?

    public var commodity: GetServiceResponseBody.Commodity?

    public var complianceMetadata: GetServiceResponseBody.ComplianceMetadata?

    public var createTime: String?

    public var crossRegionConnectionStatus: String?

    public var deployMetadata: String?

    public var deployType: String?

    public var duration: Int64?

    public var entitySource: [String: String]?

    public var isSupportOperated: Bool?

    public var licenseMetadata: String?

    public var logMetadata: String?

    public var operationMetadata: String?

    public var payFromType: String?

    public var permission: String?

    public var policyNames: String?

    public var progress: Int64?

    public var publishTime: String?

    public var registrationId: String?

    public var requestId: String?

    public var resellable: Bool?

    public var resourceGroupId: String?

    public var serviceAuditDocumentUrl: String?

    public var serviceDiscoverable: String?

    public var serviceDocumentInfos: [GetServiceResponseBody.ServiceDocumentInfos]?

    public var serviceId: String?

    public var serviceInfos: [GetServiceResponseBody.ServiceInfos]?

    public var serviceProductUrl: String?

    public var serviceType: String?

    public var shareType: String?

    public var shareTypeStatus: String?

    public var sourceServiceId: String?

    public var sourceServiceVersion: String?

    public var sourceSupplierName: String?

    public var statistic: GetServiceResponseBody.Statistic?

    public var status: String?

    public var statusDetail: String?

    public var supplierName: String?

    public var supplierUrl: String?

    public var supportContacts: [GetServiceResponseBody.SupportContacts]?

    public var tags: [GetServiceResponseBody.Tags]?

    public var tenantType: String?

    public var testStatus: String?

    public var trialDuration: Int64?

    public var trialType: String?

    public var updateTime: String?

    public var upgradeMetadata: String?

    public var version: String?

    public var versionName: String?

    public var virtualInternetService: String?

    public var virtualInternetServiceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.commodity?.validate()
        try self.complianceMetadata?.validate()
        try self.statistic?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmMetadata != nil {
            map["AlarmMetadata"] = self.alarmMetadata!
        }
        if self.approvalType != nil {
            map["ApprovalType"] = self.approvalType!
        }
        if self.buildInfo != nil {
            map["BuildInfo"] = self.buildInfo!
        }
        if self.buildParameters != nil {
            map["BuildParameters"] = self.buildParameters!
        }
        if self.categories != nil {
            map["Categories"] = self.categories!
        }
        if self.commodity != nil {
            map["Commodity"] = self.commodity?.toMap()
        }
        if self.complianceMetadata != nil {
            map["ComplianceMetadata"] = self.complianceMetadata?.toMap()
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.crossRegionConnectionStatus != nil {
            map["CrossRegionConnectionStatus"] = self.crossRegionConnectionStatus!
        }
        if self.deployMetadata != nil {
            map["DeployMetadata"] = self.deployMetadata!
        }
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.entitySource != nil {
            map["EntitySource"] = self.entitySource!
        }
        if self.isSupportOperated != nil {
            map["IsSupportOperated"] = self.isSupportOperated!
        }
        if self.licenseMetadata != nil {
            map["LicenseMetadata"] = self.licenseMetadata!
        }
        if self.logMetadata != nil {
            map["LogMetadata"] = self.logMetadata!
        }
        if self.operationMetadata != nil {
            map["OperationMetadata"] = self.operationMetadata!
        }
        if self.payFromType != nil {
            map["PayFromType"] = self.payFromType!
        }
        if self.permission != nil {
            map["Permission"] = self.permission!
        }
        if self.policyNames != nil {
            map["PolicyNames"] = self.policyNames!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.publishTime != nil {
            map["PublishTime"] = self.publishTime!
        }
        if self.registrationId != nil {
            map["RegistrationId"] = self.registrationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resellable != nil {
            map["Resellable"] = self.resellable!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceAuditDocumentUrl != nil {
            map["ServiceAuditDocumentUrl"] = self.serviceAuditDocumentUrl!
        }
        if self.serviceDiscoverable != nil {
            map["ServiceDiscoverable"] = self.serviceDiscoverable!
        }
        if self.serviceDocumentInfos != nil {
            var tmp : [Any] = []
            for k in self.serviceDocumentInfos! {
                tmp.append(k.toMap())
            }
            map["ServiceDocumentInfos"] = tmp
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInfos != nil {
            var tmp : [Any] = []
            for k in self.serviceInfos! {
                tmp.append(k.toMap())
            }
            map["ServiceInfos"] = tmp
        }
        if self.serviceProductUrl != nil {
            map["ServiceProductUrl"] = self.serviceProductUrl!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.shareTypeStatus != nil {
            map["ShareTypeStatus"] = self.shareTypeStatus!
        }
        if self.sourceServiceId != nil {
            map["SourceServiceId"] = self.sourceServiceId!
        }
        if self.sourceServiceVersion != nil {
            map["SourceServiceVersion"] = self.sourceServiceVersion!
        }
        if self.sourceSupplierName != nil {
            map["SourceSupplierName"] = self.sourceSupplierName!
        }
        if self.statistic != nil {
            map["Statistic"] = self.statistic?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusDetail != nil {
            map["StatusDetail"] = self.statusDetail!
        }
        if self.supplierName != nil {
            map["SupplierName"] = self.supplierName!
        }
        if self.supplierUrl != nil {
            map["SupplierUrl"] = self.supplierUrl!
        }
        if self.supportContacts != nil {
            var tmp : [Any] = []
            for k in self.supportContacts! {
                tmp.append(k.toMap())
            }
            map["SupportContacts"] = tmp
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.tenantType != nil {
            map["TenantType"] = self.tenantType!
        }
        if self.testStatus != nil {
            map["TestStatus"] = self.testStatus!
        }
        if self.trialDuration != nil {
            map["TrialDuration"] = self.trialDuration!
        }
        if self.trialType != nil {
            map["TrialType"] = self.trialType!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.upgradeMetadata != nil {
            map["UpgradeMetadata"] = self.upgradeMetadata!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        if self.virtualInternetService != nil {
            map["VirtualInternetService"] = self.virtualInternetService!
        }
        if self.virtualInternetServiceId != nil {
            map["VirtualInternetServiceId"] = self.virtualInternetServiceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmMetadata"] as? String {
            self.alarmMetadata = value
        }
        if let value = dict["ApprovalType"] as? String {
            self.approvalType = value
        }
        if let value = dict["BuildInfo"] as? String {
            self.buildInfo = value
        }
        if let value = dict["BuildParameters"] as? String {
            self.buildParameters = value
        }
        if let value = dict["Categories"] as? String {
            self.categories = value
        }
        if let value = dict["Commodity"] as? [String: Any?] {
            var model = GetServiceResponseBody.Commodity()
            model.fromMap(value)
            self.commodity = model
        }
        if let value = dict["ComplianceMetadata"] as? [String: Any?] {
            var model = GetServiceResponseBody.ComplianceMetadata()
            model.fromMap(value)
            self.complianceMetadata = model
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CrossRegionConnectionStatus"] as? String {
            self.crossRegionConnectionStatus = value
        }
        if let value = dict["DeployMetadata"] as? String {
            self.deployMetadata = value
        }
        if let value = dict["DeployType"] as? String {
            self.deployType = value
        }
        if let value = dict["Duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["EntitySource"] as? [String: String] {
            self.entitySource = value
        }
        if let value = dict["IsSupportOperated"] as? Bool {
            self.isSupportOperated = value
        }
        if let value = dict["LicenseMetadata"] as? String {
            self.licenseMetadata = value
        }
        if let value = dict["LogMetadata"] as? String {
            self.logMetadata = value
        }
        if let value = dict["OperationMetadata"] as? String {
            self.operationMetadata = value
        }
        if let value = dict["PayFromType"] as? String {
            self.payFromType = value
        }
        if let value = dict["Permission"] as? String {
            self.permission = value
        }
        if let value = dict["PolicyNames"] as? String {
            self.policyNames = value
        }
        if let value = dict["Progress"] as? Int64 {
            self.progress = value
        }
        if let value = dict["PublishTime"] as? String {
            self.publishTime = value
        }
        if let value = dict["RegistrationId"] as? String {
            self.registrationId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resellable"] as? Bool {
            self.resellable = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceAuditDocumentUrl"] as? String {
            self.serviceAuditDocumentUrl = value
        }
        if let value = dict["ServiceDiscoverable"] as? String {
            self.serviceDiscoverable = value
        }
        if let value = dict["ServiceDocumentInfos"] as? [Any?] {
            var tmp : [GetServiceResponseBody.ServiceDocumentInfos] = []
            for v in value {
                if v != nil {
                    var model = GetServiceResponseBody.ServiceDocumentInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceDocumentInfos = tmp
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInfos"] as? [Any?] {
            var tmp : [GetServiceResponseBody.ServiceInfos] = []
            for v in value {
                if v != nil {
                    var model = GetServiceResponseBody.ServiceInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceInfos = tmp
        }
        if let value = dict["ServiceProductUrl"] as? String {
            self.serviceProductUrl = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["ShareTypeStatus"] as? String {
            self.shareTypeStatus = value
        }
        if let value = dict["SourceServiceId"] as? String {
            self.sourceServiceId = value
        }
        if let value = dict["SourceServiceVersion"] as? String {
            self.sourceServiceVersion = value
        }
        if let value = dict["SourceSupplierName"] as? String {
            self.sourceSupplierName = value
        }
        if let value = dict["Statistic"] as? [String: Any?] {
            var model = GetServiceResponseBody.Statistic()
            model.fromMap(value)
            self.statistic = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusDetail"] as? String {
            self.statusDetail = value
        }
        if let value = dict["SupplierName"] as? String {
            self.supplierName = value
        }
        if let value = dict["SupplierUrl"] as? String {
            self.supplierUrl = value
        }
        if let value = dict["SupportContacts"] as? [Any?] {
            var tmp : [GetServiceResponseBody.SupportContacts] = []
            for v in value {
                if v != nil {
                    var model = GetServiceResponseBody.SupportContacts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.supportContacts = tmp
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetServiceResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetServiceResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TenantType"] as? String {
            self.tenantType = value
        }
        if let value = dict["TestStatus"] as? String {
            self.testStatus = value
        }
        if let value = dict["TrialDuration"] as? Int64 {
            self.trialDuration = value
        }
        if let value = dict["TrialType"] as? String {
            self.trialType = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["UpgradeMetadata"] as? String {
            self.upgradeMetadata = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
        if let value = dict["VirtualInternetService"] as? String {
            self.virtualInternetService = value
        }
        if let value = dict["VirtualInternetServiceId"] as? String {
            self.virtualInternetServiceId = value
        }
    }
}

public class GetServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceEstimateCostRequest : Tea.TeaModel {
    public class Commodity : Tea.TeaModel {
        public var payPeriod: Int32?

        public var payPeriodUnit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.payPeriod != nil {
                map["PayPeriod"] = self.payPeriod!
            }
            if self.payPeriodUnit != nil {
                map["PayPeriodUnit"] = self.payPeriodUnit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PayPeriod"] as? Int32 {
                self.payPeriod = value
            }
            if let value = dict["PayPeriodUnit"] as? String {
                self.payPeriodUnit = value
            }
        }
    }
    public var clientToken: String?

    public var commodity: GetServiceEstimateCostRequest.Commodity?

    public var parameters: [String: Any]?

    public var regionId: String?

    public var serviceId: String?

    public var serviceInstanceId: String?

    public var serviceVersion: String?

    public var specificationName: String?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.commodity?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodity != nil {
            map["Commodity"] = self.commodity?.toMap()
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.specificationName != nil {
            map["SpecificationName"] = self.specificationName!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Commodity"] as? [String: Any?] {
            var model = GetServiceEstimateCostRequest.Commodity()
            model.fromMap(value)
            self.commodity = model
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["SpecificationName"] as? String {
            self.specificationName = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class GetServiceEstimateCostShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var commodityShrink: String?

    public var parametersShrink: String?

    public var regionId: String?

    public var serviceId: String?

    public var serviceInstanceId: String?

    public var serviceVersion: String?

    public var specificationName: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodityShrink != nil {
            map["Commodity"] = self.commodityShrink!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.specificationName != nil {
            map["SpecificationName"] = self.specificationName!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Commodity"] as? String {
            self.commodityShrink = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["SpecificationName"] as? String {
            self.specificationName = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class GetServiceEstimateCostResponseBody : Tea.TeaModel {
    public var commodity: [String: Any]?

    public var requestId: String?

    public var resources: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commodity != nil {
            map["Commodity"] = self.commodity!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Commodity"] as? [String: Any] {
            self.commodity = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [String: Any] {
            self.resources = value
        }
    }
}

public class GetServiceEstimateCostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceEstimateCostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceEstimateCostResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceInstanceRequest : Tea.TeaModel {
    public var regionId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
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
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class GetServiceInstanceResponseBody : Tea.TeaModel {
    public class NetworkConfig : Tea.TeaModel {
        public class PrivateVpcConnections : Tea.TeaModel {
            public class ConnectionConfigs : Tea.TeaModel {
                public var connectBandwidth: Int32?

                public var domainName: String?

                public var endpointIps: [String]?

                public var ingressEndpointStatus: String?

                public var networkServiceStatus: String?

                public var securityGroups: [String]?

                public var vSwitches: [String]?

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
                    if self.connectBandwidth != nil {
                        map["ConnectBandwidth"] = self.connectBandwidth!
                    }
                    if self.domainName != nil {
                        map["DomainName"] = self.domainName!
                    }
                    if self.endpointIps != nil {
                        map["EndpointIps"] = self.endpointIps!
                    }
                    if self.ingressEndpointStatus != nil {
                        map["IngressEndpointStatus"] = self.ingressEndpointStatus!
                    }
                    if self.networkServiceStatus != nil {
                        map["NetworkServiceStatus"] = self.networkServiceStatus!
                    }
                    if self.securityGroups != nil {
                        map["SecurityGroups"] = self.securityGroups!
                    }
                    if self.vSwitches != nil {
                        map["VSwitches"] = self.vSwitches!
                    }
                    if self.vpcId != nil {
                        map["VpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConnectBandwidth"] as? Int32 {
                        self.connectBandwidth = value
                    }
                    if let value = dict["DomainName"] as? String {
                        self.domainName = value
                    }
                    if let value = dict["EndpointIps"] as? [String] {
                        self.endpointIps = value
                    }
                    if let value = dict["IngressEndpointStatus"] as? String {
                        self.ingressEndpointStatus = value
                    }
                    if let value = dict["NetworkServiceStatus"] as? String {
                        self.networkServiceStatus = value
                    }
                    if let value = dict["SecurityGroups"] as? [String] {
                        self.securityGroups = value
                    }
                    if let value = dict["VSwitches"] as? [String] {
                        self.vSwitches = value
                    }
                    if let value = dict["VpcId"] as? String {
                        self.vpcId = value
                    }
                }
            }
            public var connectionConfigs: [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections.ConnectionConfigs]?

            public var endpointId: String?

            public var endpointServiceId: String?

            public var privateZoneName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectionConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.connectionConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["ConnectionConfigs"] = tmp
                }
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                if self.endpointServiceId != nil {
                    map["EndpointServiceId"] = self.endpointServiceId!
                }
                if self.privateZoneName != nil {
                    map["PrivateZoneName"] = self.privateZoneName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectionConfigs"] as? [Any?] {
                    var tmp : [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections.ConnectionConfigs] = []
                    for v in value {
                        if v != nil {
                            var model = GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections.ConnectionConfigs()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.connectionConfigs = tmp
                }
                if let value = dict["EndpointId"] as? String {
                    self.endpointId = value
                }
                if let value = dict["EndpointServiceId"] as? String {
                    self.endpointServiceId = value
                }
                if let value = dict["PrivateZoneName"] as? String {
                    self.privateZoneName = value
                }
            }
        }
        public class ReversePrivateVpcConnections : Tea.TeaModel {
            public var endpointId: String?

            public var endpointServiceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpointId != nil {
                    map["EndpointId"] = self.endpointId!
                }
                if self.endpointServiceId != nil {
                    map["EndpointServiceId"] = self.endpointServiceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndpointId"] as? String {
                    self.endpointId = value
                }
                if let value = dict["EndpointServiceId"] as? String {
                    self.endpointServiceId = value
                }
            }
        }
        public var endpointId: String?

        public var endpointServiceId: String?

        public var privateVpcConnections: [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections]?

        public var reversePrivateVpcConnections: [GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.endpointServiceId != nil {
                map["EndpointServiceId"] = self.endpointServiceId!
            }
            if self.privateVpcConnections != nil {
                var tmp : [Any] = []
                for k in self.privateVpcConnections! {
                    tmp.append(k.toMap())
                }
                map["PrivateVpcConnections"] = tmp
            }
            if self.reversePrivateVpcConnections != nil {
                var tmp : [Any] = []
                for k in self.reversePrivateVpcConnections! {
                    tmp.append(k.toMap())
                }
                map["ReversePrivateVpcConnections"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndpointId"] as? String {
                self.endpointId = value
            }
            if let value = dict["EndpointServiceId"] as? String {
                self.endpointServiceId = value
            }
            if let value = dict["PrivateVpcConnections"] as? [Any?] {
                var tmp : [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.privateVpcConnections = tmp
            }
            if let value = dict["ReversePrivateVpcConnections"] as? [Any?] {
                var tmp : [GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.reversePrivateVpcConnections = tmp
            }
        }
    }
    public class Service : Tea.TeaModel {
        public class ServiceInfos : Tea.TeaModel {
            public var image: String?

            public var locale: String?

            public var name: String?

            public var shortDescription: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.image != nil {
                    map["Image"] = self.image!
                }
                if self.locale != nil {
                    map["Locale"] = self.locale!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.shortDescription != nil {
                    map["ShortDescription"] = self.shortDescription!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Image"] as? String {
                    self.image = value
                }
                if let value = dict["Locale"] as? String {
                    self.locale = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ShortDescription"] as? String {
                    self.shortDescription = value
                }
            }
        }
        public class UpgradableServiceInfos : Tea.TeaModel {
            public var version: String?

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
                if self.version != nil {
                    map["Version"] = self.version!
                }
                if self.versionName != nil {
                    map["VersionName"] = self.versionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
                if let value = dict["VersionName"] as? String {
                    self.versionName = value
                }
            }
        }
        public var deployMetadata: String?

        public var deployType: String?

        public var publishTime: String?

        public var serviceDocUrl: String?

        public var serviceId: String?

        public var serviceInfos: [GetServiceInstanceResponseBody.Service.ServiceInfos]?

        public var serviceProductUrl: String?

        public var serviceType: String?

        public var status: String?

        public var supplierName: String?

        public var supplierUrl: String?

        public var upgradableServiceInfos: [GetServiceInstanceResponseBody.Service.UpgradableServiceInfos]?

        public var upgradableServiceVersions: [String]?

        public var version: String?

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
            if self.deployMetadata != nil {
                map["DeployMetadata"] = self.deployMetadata!
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.publishTime != nil {
                map["PublishTime"] = self.publishTime!
            }
            if self.serviceDocUrl != nil {
                map["ServiceDocUrl"] = self.serviceDocUrl!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.serviceInfos != nil {
                var tmp : [Any] = []
                for k in self.serviceInfos! {
                    tmp.append(k.toMap())
                }
                map["ServiceInfos"] = tmp
            }
            if self.serviceProductUrl != nil {
                map["ServiceProductUrl"] = self.serviceProductUrl!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supplierName != nil {
                map["SupplierName"] = self.supplierName!
            }
            if self.supplierUrl != nil {
                map["SupplierUrl"] = self.supplierUrl!
            }
            if self.upgradableServiceInfos != nil {
                var tmp : [Any] = []
                for k in self.upgradableServiceInfos! {
                    tmp.append(k.toMap())
                }
                map["UpgradableServiceInfos"] = tmp
            }
            if self.upgradableServiceVersions != nil {
                map["UpgradableServiceVersions"] = self.upgradableServiceVersions!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeployMetadata"] as? String {
                self.deployMetadata = value
            }
            if let value = dict["DeployType"] as? String {
                self.deployType = value
            }
            if let value = dict["PublishTime"] as? String {
                self.publishTime = value
            }
            if let value = dict["ServiceDocUrl"] as? String {
                self.serviceDocUrl = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["ServiceInfos"] as? [Any?] {
                var tmp : [GetServiceInstanceResponseBody.Service.ServiceInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceInstanceResponseBody.Service.ServiceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.serviceInfos = tmp
            }
            if let value = dict["ServiceProductUrl"] as? String {
                self.serviceProductUrl = value
            }
            if let value = dict["ServiceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SupplierName"] as? String {
                self.supplierName = value
            }
            if let value = dict["SupplierUrl"] as? String {
                self.supplierUrl = value
            }
            if let value = dict["UpgradableServiceInfos"] as? [Any?] {
                var tmp : [GetServiceInstanceResponseBody.Service.UpgradableServiceInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceInstanceResponseBody.Service.UpgradableServiceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.upgradableServiceInfos = tmp
            }
            if let value = dict["UpgradableServiceVersions"] as? [String] {
                self.upgradableServiceVersions = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
        }
    }
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
    public var bizStatus: String?

    public var createTime: String?

    public var enableInstanceOps: Bool?

    public var enableUserPrometheus: Bool?

    public var endTime: String?

    public var grafanaDashBoardUrl: String?

    public var isOperated: Bool?

    public var licenseMetadata: String?

    public var name: String?

    public var networkConfig: GetServiceInstanceResponseBody.NetworkConfig?

    public var operatedServiceInstanceId: String?

    public var operationEndTime: String?

    public var operationExtraInfo: String?

    public var operationStartTime: String?

    public var outputs: String?

    public var parameters: String?

    public var payType: String?

    public var predefinedParameterName: String?

    public var progress: Int64?

    public var rdAccountLoginUrl: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var resources: String?

    public var service: GetServiceInstanceResponseBody.Service?

    public var serviceInstanceId: String?

    public var serviceType: String?

    public var source: String?

    public var status: String?

    public var statusDetail: String?

    public var supplierUid: Int64?

    public var tags: [GetServiceInstanceResponseBody.Tags]?

    public var templateName: String?

    public var updateTime: String?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkConfig?.validate()
        try self.service?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizStatus != nil {
            map["BizStatus"] = self.bizStatus!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.enableInstanceOps != nil {
            map["EnableInstanceOps"] = self.enableInstanceOps!
        }
        if self.enableUserPrometheus != nil {
            map["EnableUserPrometheus"] = self.enableUserPrometheus!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.grafanaDashBoardUrl != nil {
            map["GrafanaDashBoardUrl"] = self.grafanaDashBoardUrl!
        }
        if self.isOperated != nil {
            map["IsOperated"] = self.isOperated!
        }
        if self.licenseMetadata != nil {
            map["LicenseMetadata"] = self.licenseMetadata!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.networkConfig != nil {
            map["NetworkConfig"] = self.networkConfig?.toMap()
        }
        if self.operatedServiceInstanceId != nil {
            map["OperatedServiceInstanceId"] = self.operatedServiceInstanceId!
        }
        if self.operationEndTime != nil {
            map["OperationEndTime"] = self.operationEndTime!
        }
        if self.operationExtraInfo != nil {
            map["OperationExtraInfo"] = self.operationExtraInfo!
        }
        if self.operationStartTime != nil {
            map["OperationStartTime"] = self.operationStartTime!
        }
        if self.outputs != nil {
            map["Outputs"] = self.outputs!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.predefinedParameterName != nil {
            map["PredefinedParameterName"] = self.predefinedParameterName!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.rdAccountLoginUrl != nil {
            map["RdAccountLoginUrl"] = self.rdAccountLoginUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        if self.service != nil {
            map["Service"] = self.service?.toMap()
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusDetail != nil {
            map["StatusDetail"] = self.statusDetail!
        }
        if self.supplierUid != nil {
            map["SupplierUid"] = self.supplierUid!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizStatus"] as? String {
            self.bizStatus = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["EnableInstanceOps"] as? Bool {
            self.enableInstanceOps = value
        }
        if let value = dict["EnableUserPrometheus"] as? Bool {
            self.enableUserPrometheus = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["GrafanaDashBoardUrl"] as? String {
            self.grafanaDashBoardUrl = value
        }
        if let value = dict["IsOperated"] as? Bool {
            self.isOperated = value
        }
        if let value = dict["LicenseMetadata"] as? String {
            self.licenseMetadata = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NetworkConfig"] as? [String: Any?] {
            var model = GetServiceInstanceResponseBody.NetworkConfig()
            model.fromMap(value)
            self.networkConfig = model
        }
        if let value = dict["OperatedServiceInstanceId"] as? String {
            self.operatedServiceInstanceId = value
        }
        if let value = dict["OperationEndTime"] as? String {
            self.operationEndTime = value
        }
        if let value = dict["OperationExtraInfo"] as? String {
            self.operationExtraInfo = value
        }
        if let value = dict["OperationStartTime"] as? String {
            self.operationStartTime = value
        }
        if let value = dict["Outputs"] as? String {
            self.outputs = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PredefinedParameterName"] as? String {
            self.predefinedParameterName = value
        }
        if let value = dict["Progress"] as? Int64 {
            self.progress = value
        }
        if let value = dict["RdAccountLoginUrl"] as? String {
            self.rdAccountLoginUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Resources"] as? String {
            self.resources = value
        }
        if let value = dict["Service"] as? [String: Any?] {
            var model = GetServiceInstanceResponseBody.Service()
            model.fromMap(value)
            self.service = model
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusDetail"] as? String {
            self.statusDetail = value
        }
        if let value = dict["SupplierUid"] as? Int64 {
            self.supplierUid = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetServiceInstanceResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetServiceInstanceResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class GetServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceProvisionsRequest : Tea.TeaModel {
    public var parameters: [String: Any]?

    public var regionId: String?

    public var serviceId: String?

    public var serviceVersion: String?

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
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class GetServiceProvisionsShrinkRequest : Tea.TeaModel {
    public var parametersShrink: String?

    public var regionId: String?

    public var serviceId: String?

    public var serviceVersion: String?

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
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class GetServiceProvisionsResponseBody : Tea.TeaModel {
    public class ServiceProvisions : Tea.TeaModel {
        public class CommodityProvisions : Tea.TeaModel {
            public var commodityCode: String?

            public var enableURL: String?

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
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.enableURL != nil {
                    map["EnableURL"] = self.enableURL!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommodityCode"] as? String {
                    self.commodityCode = value
                }
                if let value = dict["EnableURL"] as? String {
                    self.enableURL = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class RoleProvision : Tea.TeaModel {
            public class Roles : Tea.TeaModel {
                public class ApiForCreation : Tea.TeaModel {
                    public var apiName: String?

                    public var apiProductId: String?

                    public var apiType: String?

                    public var parameters: [String: Any]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.apiName != nil {
                            map["ApiName"] = self.apiName!
                        }
                        if self.apiProductId != nil {
                            map["ApiProductId"] = self.apiProductId!
                        }
                        if self.apiType != nil {
                            map["ApiType"] = self.apiType!
                        }
                        if self.parameters != nil {
                            map["Parameters"] = self.parameters!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ApiName"] as? String {
                            self.apiName = value
                        }
                        if let value = dict["ApiProductId"] as? String {
                            self.apiProductId = value
                        }
                        if let value = dict["ApiType"] as? String {
                            self.apiType = value
                        }
                        if let value = dict["Parameters"] as? [String: Any] {
                            self.parameters = value
                        }
                    }
                }
                public var apiForCreation: GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles.ApiForCreation?

                public var created: Bool?

                public var function: String?

                public var roleName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.apiForCreation?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.apiForCreation != nil {
                        map["ApiForCreation"] = self.apiForCreation?.toMap()
                    }
                    if self.created != nil {
                        map["Created"] = self.created!
                    }
                    if self.function != nil {
                        map["Function"] = self.function!
                    }
                    if self.roleName != nil {
                        map["RoleName"] = self.roleName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApiForCreation"] as? [String: Any?] {
                        var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles.ApiForCreation()
                        model.fromMap(value)
                        self.apiForCreation = model
                    }
                    if let value = dict["Created"] as? Bool {
                        self.created = value
                    }
                    if let value = dict["Function"] as? String {
                        self.function = value
                    }
                    if let value = dict["RoleName"] as? String {
                        self.roleName = value
                    }
                }
            }
            public var authorizationURL: String?

            public var roles: [GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authorizationURL != nil {
                    map["AuthorizationURL"] = self.authorizationURL!
                }
                if self.roles != nil {
                    var tmp : [Any] = []
                    for k in self.roles! {
                        tmp.append(k.toMap())
                    }
                    map["Roles"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthorizationURL"] as? String {
                    self.authorizationURL = value
                }
                if let value = dict["Roles"] as? [Any?] {
                    var tmp : [GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles] = []
                    for v in value {
                        if v != nil {
                            var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision.Roles()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.roles = tmp
                }
            }
        }
        public var autoEnableService: Bool?

        public var commodityProvisions: [GetServiceProvisionsResponseBody.ServiceProvisions.CommodityProvisions]?

        public var enableURL: String?

        public var roleProvision: GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision?

        public var serviceName: String?

        public var status: String?

        public var statusReason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.roleProvision?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoEnableService != nil {
                map["AutoEnableService"] = self.autoEnableService!
            }
            if self.commodityProvisions != nil {
                var tmp : [Any] = []
                for k in self.commodityProvisions! {
                    tmp.append(k.toMap())
                }
                map["CommodityProvisions"] = tmp
            }
            if self.enableURL != nil {
                map["EnableURL"] = self.enableURL!
            }
            if self.roleProvision != nil {
                map["RoleProvision"] = self.roleProvision?.toMap()
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoEnableService"] as? Bool {
                self.autoEnableService = value
            }
            if let value = dict["CommodityProvisions"] as? [Any?] {
                var tmp : [GetServiceProvisionsResponseBody.ServiceProvisions.CommodityProvisions] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceProvisionsResponseBody.ServiceProvisions.CommodityProvisions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.commodityProvisions = tmp
            }
            if let value = dict["EnableURL"] as? String {
                self.enableURL = value
            }
            if let value = dict["RoleProvision"] as? [String: Any?] {
                var model = GetServiceProvisionsResponseBody.ServiceProvisions.RoleProvision()
                model.fromMap(value)
                self.roleProvision = model
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
            }
        }
    }
    public var requestId: String?

    public var serviceProvisions: [GetServiceProvisionsResponseBody.ServiceProvisions]?

    public override init() {
        super.init()
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
        if self.serviceProvisions != nil {
            var tmp : [Any] = []
            for k in self.serviceProvisions! {
                tmp.append(k.toMap())
            }
            map["ServiceProvisions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceProvisions"] as? [Any?] {
            var tmp : [GetServiceProvisionsResponseBody.ServiceProvisions] = []
            for v in value {
                if v != nil {
                    var model = GetServiceProvisionsResponseBody.ServiceProvisions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceProvisions = tmp
        }
    }
}

public class GetServiceProvisionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceProvisionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceProvisionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceRegistrationRequest : Tea.TeaModel {
    public var regionId: String?

    public var registrationId: String?

    public override init() {
        super.init()
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
        if self.registrationId != nil {
            map["RegistrationId"] = self.registrationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegistrationId"] as? String {
            self.registrationId = value
        }
    }
}

public class GetServiceRegistrationResponseBody : Tea.TeaModel {
    public class Detail : Tea.TeaModel {
        public var atRisk: Bool?

        public var hasRelatedArtifact: Bool?

        public var reports: String?

        public var templateDiffUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.atRisk != nil {
                map["AtRisk"] = self.atRisk!
            }
            if self.hasRelatedArtifact != nil {
                map["HasRelatedArtifact"] = self.hasRelatedArtifact!
            }
            if self.reports != nil {
                map["Reports"] = self.reports!
            }
            if self.templateDiffUrl != nil {
                map["TemplateDiffUrl"] = self.templateDiffUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AtRisk"] as? Bool {
                self.atRisk = value
            }
            if let value = dict["HasRelatedArtifact"] as? Bool {
                self.hasRelatedArtifact = value
            }
            if let value = dict["Reports"] as? String {
                self.reports = value
            }
            if let value = dict["TemplateDiffUrl"] as? String {
                self.templateDiffUrl = value
            }
        }
    }
    public class ServiceInfo : Tea.TeaModel {
        public var serviceType: String?

        public var trialType: String?

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
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.trialType != nil {
                map["TrialType"] = self.trialType!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ServiceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["TrialType"] as? String {
                self.trialType = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
        }
    }
    public var comment: String?

    public var detail: GetServiceRegistrationResponseBody.Detail?

    public var finishTime: String?

    public var registrationId: String?

    public var requestId: String?

    public var serviceId: String?

    public var serviceInfo: GetServiceRegistrationResponseBody.ServiceInfo?

    public var serviceVersion: String?

    public var status: String?

    public var submitTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.detail?.validate()
        try self.serviceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.detail != nil {
            map["Detail"] = self.detail?.toMap()
        }
        if self.finishTime != nil {
            map["FinishTime"] = self.finishTime!
        }
        if self.registrationId != nil {
            map["RegistrationId"] = self.registrationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInfo != nil {
            map["ServiceInfo"] = self.serviceInfo?.toMap()
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.submitTime != nil {
            map["SubmitTime"] = self.submitTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["Detail"] as? [String: Any?] {
            var model = GetServiceRegistrationResponseBody.Detail()
            model.fromMap(value)
            self.detail = model
        }
        if let value = dict["FinishTime"] as? String {
            self.finishTime = value
        }
        if let value = dict["RegistrationId"] as? String {
            self.registrationId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInfo"] as? [String: Any?] {
            var model = GetServiceRegistrationResponseBody.ServiceInfo()
            model.fromMap(value)
            self.serviceInfo = model
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubmitTime"] as? String {
            self.submitTime = value
        }
    }
}

public class GetServiceRegistrationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceRegistrationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceRegistrationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceTemplateParameterConstraintsRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
            }
        }
    }
    public var clientToken: String?

    public var deployRegionId: String?

    public var enablePrivateVpcConnection: Bool?

    public var parameters: [GetServiceTemplateParameterConstraintsRequest.Parameters]?

    public var regionId: String?

    public var serviceId: String?

    public var serviceInstanceId: String?

    public var serviceVersion: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deployRegionId != nil {
            map["DeployRegionId"] = self.deployRegionId!
        }
        if self.enablePrivateVpcConnection != nil {
            map["EnablePrivateVpcConnection"] = self.enablePrivateVpcConnection!
        }
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeployRegionId"] as? String {
            self.deployRegionId = value
        }
        if let value = dict["EnablePrivateVpcConnection"] as? Bool {
            self.enablePrivateVpcConnection = value
        }
        if let value = dict["Parameters"] as? [Any?] {
            var tmp : [GetServiceTemplateParameterConstraintsRequest.Parameters] = []
            for v in value {
                if v != nil {
                    var model = GetServiceTemplateParameterConstraintsRequest.Parameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameters = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class GetServiceTemplateParameterConstraintsResponseBody : Tea.TeaModel {
    public class ParameterConstraints : Tea.TeaModel {
        public class OriginalConstraints : Tea.TeaModel {
            public var allowedValues: [String]?

            public var propertyName: String?

            public var resourceName: String?

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
                if self.allowedValues != nil {
                    map["AllowedValues"] = self.allowedValues!
                }
                if self.propertyName != nil {
                    map["PropertyName"] = self.propertyName!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowedValues"] as? [String] {
                    self.allowedValues = value
                }
                if let value = dict["PropertyName"] as? String {
                    self.propertyName = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
            }
        }
        public var allowedValues: [String]?

        public var associationParameterNames: [String]?

        public var behavior: String?

        public var behaviorReason: String?

        public var originalConstraints: [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints]?

        public var parameterKey: String?

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
            if self.allowedValues != nil {
                map["AllowedValues"] = self.allowedValues!
            }
            if self.associationParameterNames != nil {
                map["AssociationParameterNames"] = self.associationParameterNames!
            }
            if self.behavior != nil {
                map["Behavior"] = self.behavior!
            }
            if self.behaviorReason != nil {
                map["BehaviorReason"] = self.behaviorReason!
            }
            if self.originalConstraints != nil {
                var tmp : [Any] = []
                for k in self.originalConstraints! {
                    tmp.append(k.toMap())
                }
                map["OriginalConstraints"] = tmp
            }
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowedValues"] as? [String] {
                self.allowedValues = value
            }
            if let value = dict["AssociationParameterNames"] as? [String] {
                self.associationParameterNames = value
            }
            if let value = dict["Behavior"] as? String {
                self.behavior = value
            }
            if let value = dict["BehaviorReason"] as? String {
                self.behaviorReason = value
            }
            if let value = dict["OriginalConstraints"] as? [Any?] {
                var tmp : [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints] = []
                for v in value {
                    if v != nil {
                        var model = GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.originalConstraints = tmp
            }
            if let value = dict["ParameterKey"] as? String {
                self.parameterKey = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var familyConstraints: [String]?

    public var parameterConstraints: [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints]?

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
        if self.familyConstraints != nil {
            map["FamilyConstraints"] = self.familyConstraints!
        }
        if self.parameterConstraints != nil {
            var tmp : [Any] = []
            for k in self.parameterConstraints! {
                tmp.append(k.toMap())
            }
            map["ParameterConstraints"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FamilyConstraints"] as? [String] {
            self.familyConstraints = value
        }
        if let value = dict["ParameterConstraints"] as? [Any?] {
            var tmp : [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints] = []
            for v in value {
                if v != nil {
                    var model = GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parameterConstraints = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetServiceTemplateParameterConstraintsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceTemplateParameterConstraintsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceTemplateParameterConstraintsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceTestTaskRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetServiceTestTaskResponseBody : Tea.TeaModel {
    public class ExecutionDetails : Tea.TeaModel {
        public var caseName: String?

        public var executionReport: String?

        public var status: String?

        public var subTaskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.caseName != nil {
                map["CaseName"] = self.caseName!
            }
            if self.executionReport != nil {
                map["ExecutionReport"] = self.executionReport!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subTaskId != nil {
                map["SubTaskId"] = self.subTaskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CaseName"] as? String {
                self.caseName = value
            }
            if let value = dict["ExecutionReport"] as? String {
                self.executionReport = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubTaskId"] as? String {
                self.subTaskId = value
            }
        }
    }
    public var executionDetails: [GetServiceTestTaskResponseBody.ExecutionDetails]?

    public var requestId: String?

    public var status: String?

    public var taskName: String?

    public var taskRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executionDetails != nil {
            var tmp : [Any] = []
            for k in self.executionDetails! {
                tmp.append(k.toMap())
            }
            map["ExecutionDetails"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskRegionId != nil {
            map["TaskRegionId"] = self.taskRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutionDetails"] as? [Any?] {
            var tmp : [GetServiceTestTaskResponseBody.ExecutionDetails] = []
            for v in value {
                if v != nil {
                    var model = GetServiceTestTaskResponseBody.ExecutionDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.executionDetails = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TaskRegionId"] as? String {
            self.taskRegionId = value
        }
    }
}

public class GetServiceTestTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceTestTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceTestTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSupplierInformationRequest : Tea.TeaModel {
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

public class GetSupplierInformationResponseBody : Tea.TeaModel {
    public class DeliverySettings : Tea.TeaModel {
        public var ossBucketName: String?

        public var ossEnabled: Bool?

        public var ossExpirationDays: Int64?

        public var ossPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ossBucketName != nil {
                map["OssBucketName"] = self.ossBucketName!
            }
            if self.ossEnabled != nil {
                map["OssEnabled"] = self.ossEnabled!
            }
            if self.ossExpirationDays != nil {
                map["OssExpirationDays"] = self.ossExpirationDays!
            }
            if self.ossPath != nil {
                map["OssPath"] = self.ossPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OssBucketName"] as? String {
                self.ossBucketName = value
            }
            if let value = dict["OssEnabled"] as? Bool {
                self.ossEnabled = value
            }
            if let value = dict["OssExpirationDays"] as? Int64 {
                self.ossExpirationDays = value
            }
            if let value = dict["OssPath"] as? String {
                self.ossPath = value
            }
        }
    }
    public class SupportContacts : Tea.TeaModel {
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
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var acrNamespace: String?

    public var deliverySettings: GetSupplierInformationResponseBody.DeliverySettings?

    public var enableReseller: Bool?

    public var operationIp: String?

    public var operationMfaPresent: Bool?

    public var requestId: String?

    public var supplierDesc: String?

    public var supplierLogo: String?

    public var supplierName: String?

    public var supplierUrl: String?

    public var supportContacts: [GetSupplierInformationResponseBody.SupportContacts]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliverySettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acrNamespace != nil {
            map["AcrNamespace"] = self.acrNamespace!
        }
        if self.deliverySettings != nil {
            map["DeliverySettings"] = self.deliverySettings?.toMap()
        }
        if self.enableReseller != nil {
            map["EnableReseller"] = self.enableReseller!
        }
        if self.operationIp != nil {
            map["OperationIp"] = self.operationIp!
        }
        if self.operationMfaPresent != nil {
            map["OperationMfaPresent"] = self.operationMfaPresent!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.supplierDesc != nil {
            map["SupplierDesc"] = self.supplierDesc!
        }
        if self.supplierLogo != nil {
            map["SupplierLogo"] = self.supplierLogo!
        }
        if self.supplierName != nil {
            map["SupplierName"] = self.supplierName!
        }
        if self.supplierUrl != nil {
            map["SupplierUrl"] = self.supplierUrl!
        }
        if self.supportContacts != nil {
            var tmp : [Any] = []
            for k in self.supportContacts! {
                tmp.append(k.toMap())
            }
            map["SupportContacts"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcrNamespace"] as? String {
            self.acrNamespace = value
        }
        if let value = dict["DeliverySettings"] as? [String: Any?] {
            var model = GetSupplierInformationResponseBody.DeliverySettings()
            model.fromMap(value)
            self.deliverySettings = model
        }
        if let value = dict["EnableReseller"] as? Bool {
            self.enableReseller = value
        }
        if let value = dict["OperationIp"] as? String {
            self.operationIp = value
        }
        if let value = dict["OperationMfaPresent"] as? Bool {
            self.operationMfaPresent = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SupplierDesc"] as? String {
            self.supplierDesc = value
        }
        if let value = dict["SupplierLogo"] as? String {
            self.supplierLogo = value
        }
        if let value = dict["SupplierName"] as? String {
            self.supplierName = value
        }
        if let value = dict["SupplierUrl"] as? String {
            self.supplierUrl = value
        }
        if let value = dict["SupportContacts"] as? [Any?] {
            var tmp : [GetSupplierInformationResponseBody.SupportContacts] = []
            for v in value {
                if v != nil {
                    var model = GetSupplierInformationResponseBody.SupportContacts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.supportContacts = tmp
        }
    }
}

public class GetSupplierInformationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSupplierInformationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSupplierInformationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUploadCredentialsRequest : Tea.TeaModel {
    public var fileName: String?

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
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["Visibility"] as? String {
            self.visibility = value
        }
    }
}

public class GetUploadCredentialsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var bucketName: String?

        public var expireDate: String?

        public var key: String?

        public var regionId: String?

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
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.expireDate != nil {
                map["ExpireDate"] = self.expireDate!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
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
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["ExpireDate"] as? String {
                self.expireDate = value
            }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
            }
        }
    }
    public var code: String?

    public var data: GetUploadCredentialsResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetUploadCredentialsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class GetUploadCredentialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUploadCredentialsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUploadCredentialsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LaunchServiceRequest : Tea.TeaModel {
    public var categories: [String]?

    public var clientToken: String?

    public var recommend: Bool?

    public var regionId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.recommend != nil {
            map["Recommend"] = self.recommend!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Categories"] as? [String] {
            self.categories = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Recommend"] as? Bool {
            self.recommend = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
    }
}

public class LaunchServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serviceLaunchResultType: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceLaunchResultType != nil {
            map["ServiceLaunchResultType"] = self.serviceLaunchResultType!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceLaunchResultType"] as? String {
            self.serviceLaunchResultType = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class LaunchServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LaunchServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = LaunchServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAcrImageRepositoriesRequest : Tea.TeaModel {
    public var artifactType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var repoName: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.repoName != nil {
            map["RepoName"] = self.repoName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RepoName"] as? String {
            self.repoName = value
        }
    }
}

public class ListAcrImageRepositoriesResponseBody : Tea.TeaModel {
    public class Repositories : Tea.TeaModel {
        public var createTime: String?

        public var modifiedTime: String?

        public var namespace: String?

        public var repoId: String?

        public var repoName: String?

        public var repoType: String?

        public override init() {
            super.init()
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
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.repoId != nil {
                map["RepoId"] = self.repoId!
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.repoType != nil {
                map["RepoType"] = self.repoType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["RepoId"] as? String {
                self.repoId = value
            }
            if let value = dict["RepoName"] as? String {
                self.repoName = value
            }
            if let value = dict["RepoType"] as? String {
                self.repoType = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var repositories: [ListAcrImageRepositoriesResponseBody.Repositories]?

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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Repositories"] as? [Any?] {
            var tmp : [ListAcrImageRepositoriesResponseBody.Repositories] = []
            for v in value {
                if v != nil {
                    var model = ListAcrImageRepositoriesResponseBody.Repositories()
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListAcrImageRepositoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAcrImageRepositoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAcrImageRepositoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAcrImageTagsRequest : Tea.TeaModel {
    public var artifactType: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.repoId != nil {
            map["RepoId"] = self.repoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RepoId"] as? String {
            self.repoId = value
        }
    }
}

public class ListAcrImageTagsResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public var createTime: String?

        public var imageSize: String?

        public var modifiedTime: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.imageSize != nil {
                map["ImageSize"] = self.imageSize!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ImageSize"] as? String {
                self.imageSize = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
        }
    }
    public var images: [ListAcrImageTagsResponseBody.Images]?

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
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
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
        if let value = dict["Images"] as? [Any?] {
            var tmp : [ListAcrImageTagsResponseBody.Images] = []
            for v in value {
                if v != nil {
                    var model = ListAcrImageTagsResponseBody.Images()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.images = tmp
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

public class ListAcrImageTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAcrImageTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAcrImageTagsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListArtifactRisksRequest : Tea.TeaModel {
    public var artifactId: String?

    public var artifactVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactVersion != nil {
            map["ArtifactVersion"] = self.artifactVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactId"] as? String {
            self.artifactId = value
        }
        if let value = dict["ArtifactVersion"] as? String {
            self.artifactVersion = value
        }
    }
}

public class ListArtifactRisksResponseBody : Tea.TeaModel {
    public class ArtifactRiskList : Tea.TeaModel {
        public var cveNos: String?

        public var extendInfo: String?

        public var level: String?

        public var riskName: String?

        public var riskType: String?

        public var riskTypeName: String?

        public var solution: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cveNos != nil {
                map["CveNos"] = self.cveNos!
            }
            if self.extendInfo != nil {
                map["ExtendInfo"] = self.extendInfo!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.riskName != nil {
                map["RiskName"] = self.riskName!
            }
            if self.riskType != nil {
                map["RiskType"] = self.riskType!
            }
            if self.riskTypeName != nil {
                map["RiskTypeName"] = self.riskTypeName!
            }
            if self.solution != nil {
                map["Solution"] = self.solution!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CveNos"] as? String {
                self.cveNos = value
            }
            if let value = dict["ExtendInfo"] as? String {
                self.extendInfo = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["RiskName"] as? String {
                self.riskName = value
            }
            if let value = dict["RiskType"] as? String {
                self.riskType = value
            }
            if let value = dict["RiskTypeName"] as? String {
                self.riskTypeName = value
            }
            if let value = dict["Solution"] as? String {
                self.solution = value
            }
        }
    }
    public var artifactRiskList: [ListArtifactRisksResponseBody.ArtifactRiskList]?

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
        if self.artifactRiskList != nil {
            var tmp : [Any] = []
            for k in self.artifactRiskList! {
                tmp.append(k.toMap())
            }
            map["ArtifactRiskList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactRiskList"] as? [Any?] {
            var tmp : [ListArtifactRisksResponseBody.ArtifactRiskList] = []
            for v in value {
                if v != nil {
                    var model = ListArtifactRisksResponseBody.ArtifactRiskList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.artifactRiskList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListArtifactRisksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListArtifactRisksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListArtifactRisksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListArtifactVersionsRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
    public var artifactId: String?

    public var filters: [ListArtifactVersionsRequest.Filters]?

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
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactId"] as? String {
            self.artifactId = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [ListArtifactVersionsRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = ListArtifactVersionsRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListArtifactVersionsShrinkRequest : Tea.TeaModel {
    public var artifactId: String?

    public var filtersShrink: String?

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
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.filtersShrink != nil {
            map["Filters"] = self.filtersShrink!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactId"] as? String {
            self.artifactId = value
        }
        if let value = dict["Filters"] as? String {
            self.filtersShrink = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListArtifactVersionsResponseBody : Tea.TeaModel {
    public class Artifacts : Tea.TeaModel {
        public var artifactBuildProperty: String?

        public var artifactBuildType: String?

        public var artifactId: String?

        public var artifactProperty: String?

        public var artifactType: String?

        public var artifactVersion: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var imageDelivery: [String: String]?

        public var progress: String?

        public var resultFile: String?

        public var securityAuditResult: String?

        public var status: String?

        public var statusDetail: String?

        public var supportRegionIds: String?

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
            if self.artifactBuildProperty != nil {
                map["ArtifactBuildProperty"] = self.artifactBuildProperty!
            }
            if self.artifactBuildType != nil {
                map["ArtifactBuildType"] = self.artifactBuildType!
            }
            if self.artifactId != nil {
                map["ArtifactId"] = self.artifactId!
            }
            if self.artifactProperty != nil {
                map["ArtifactProperty"] = self.artifactProperty!
            }
            if self.artifactType != nil {
                map["ArtifactType"] = self.artifactType!
            }
            if self.artifactVersion != nil {
                map["ArtifactVersion"] = self.artifactVersion!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.imageDelivery != nil {
                map["ImageDelivery"] = self.imageDelivery!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.resultFile != nil {
                map["ResultFile"] = self.resultFile!
            }
            if self.securityAuditResult != nil {
                map["SecurityAuditResult"] = self.securityAuditResult!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusDetail != nil {
                map["StatusDetail"] = self.statusDetail!
            }
            if self.supportRegionIds != nil {
                map["SupportRegionIds"] = self.supportRegionIds!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArtifactBuildProperty"] as? String {
                self.artifactBuildProperty = value
            }
            if let value = dict["ArtifactBuildType"] as? String {
                self.artifactBuildType = value
            }
            if let value = dict["ArtifactId"] as? String {
                self.artifactId = value
            }
            if let value = dict["ArtifactProperty"] as? String {
                self.artifactProperty = value
            }
            if let value = dict["ArtifactType"] as? String {
                self.artifactType = value
            }
            if let value = dict["ArtifactVersion"] as? String {
                self.artifactVersion = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["ImageDelivery"] as? [String: String] {
                self.imageDelivery = value
            }
            if let value = dict["Progress"] as? String {
                self.progress = value
            }
            if let value = dict["ResultFile"] as? String {
                self.resultFile = value
            }
            if let value = dict["SecurityAuditResult"] as? String {
                self.securityAuditResult = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusDetail"] as? String {
                self.statusDetail = value
            }
            if let value = dict["SupportRegionIds"] as? String {
                self.supportRegionIds = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
        }
    }
    public var artifacts: [ListArtifactVersionsResponseBody.Artifacts]?

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
        if self.artifacts != nil {
            var tmp : [Any] = []
            for k in self.artifacts! {
                tmp.append(k.toMap())
            }
            map["Artifacts"] = tmp
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
        if let value = dict["Artifacts"] as? [Any?] {
            var tmp : [ListArtifactVersionsResponseBody.Artifacts] = []
            for v in value {
                if v != nil {
                    var model = ListArtifactVersionsResponseBody.Artifacts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.artifacts = tmp
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

public class ListArtifactVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListArtifactVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListArtifactVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListArtifactsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
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
    public var filter: [ListArtifactsRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceGroupId: String?

    public var tag: [ListArtifactsRequest.Tag]?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListArtifactsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListArtifactsRequest.Filter()
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListArtifactsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListArtifactsRequest.Tag()
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

public class ListArtifactsResponseBody : Tea.TeaModel {
    public class Artifacts : Tea.TeaModel {
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
        public var artifactBuildProperty: String?

        public var artifactId: String?

        public var artifactType: String?

        public var description_: String?

        public var gmtModified: String?

        public var maxVersion: String?

        public var name: String?

        public var permissionType: String?

        public var resourceGroupId: String?

        public var status: String?

        public var tags: [ListArtifactsResponseBody.Artifacts.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.artifactBuildProperty != nil {
                map["ArtifactBuildProperty"] = self.artifactBuildProperty!
            }
            if self.artifactId != nil {
                map["ArtifactId"] = self.artifactId!
            }
            if self.artifactType != nil {
                map["ArtifactType"] = self.artifactType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.maxVersion != nil {
                map["MaxVersion"] = self.maxVersion!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.permissionType != nil {
                map["PermissionType"] = self.permissionType!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            if let value = dict["ArtifactBuildProperty"] as? String {
                self.artifactBuildProperty = value
            }
            if let value = dict["ArtifactId"] as? String {
                self.artifactId = value
            }
            if let value = dict["ArtifactType"] as? String {
                self.artifactType = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["MaxVersion"] as? String {
                self.maxVersion = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PermissionType"] as? String {
                self.permissionType = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListArtifactsResponseBody.Artifacts.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListArtifactsResponseBody.Artifacts.Tags()
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
    public var artifacts: [ListArtifactsResponseBody.Artifacts]?

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
        if self.artifacts != nil {
            var tmp : [Any] = []
            for k in self.artifacts! {
                tmp.append(k.toMap())
            }
            map["Artifacts"] = tmp
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
        if let value = dict["Artifacts"] as? [Any?] {
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

public class ListResellersRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [ListResellersRequest.Filter]?

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
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListResellersRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListResellersRequest.Filter()
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

public class ListResellersResponseBody : Tea.TeaModel {
    public class SupplierInformation : Tea.TeaModel {
        public var supplierDesc: String?

        public var supplierLogo: String?

        public var supplierName: String?

        public var supplierUid: Int64?

        public var supplierUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.supplierDesc != nil {
                map["SupplierDesc"] = self.supplierDesc!
            }
            if self.supplierLogo != nil {
                map["SupplierLogo"] = self.supplierLogo!
            }
            if self.supplierName != nil {
                map["SupplierName"] = self.supplierName!
            }
            if self.supplierUid != nil {
                map["SupplierUid"] = self.supplierUid!
            }
            if self.supplierUrl != nil {
                map["SupplierUrl"] = self.supplierUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SupplierDesc"] as? String {
                self.supplierDesc = value
            }
            if let value = dict["SupplierLogo"] as? String {
                self.supplierLogo = value
            }
            if let value = dict["SupplierName"] as? String {
                self.supplierName = value
            }
            if let value = dict["SupplierUid"] as? Int64 {
                self.supplierUid = value
            }
            if let value = dict["SupplierUrl"] as? String {
                self.supplierUrl = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var supplierInformation: [ListResellersResponseBody.SupplierInformation]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.supplierInformation != nil {
            var tmp : [Any] = []
            for k in self.supplierInformation! {
                tmp.append(k.toMap())
            }
            map["SupplierInformation"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SupplierInformation"] as? [Any?] {
            var tmp : [ListResellersResponseBody.SupplierInformation] = []
            for v in value {
                if v != nil {
                    var model = ListResellersResponseBody.SupplierInformation()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.supplierInformation = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListResellersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResellersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListResellersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceInstanceBillRequest : Tea.TeaModel {
    public var billingCycle: String?

    public var billingDate: String?

    public var granularity: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var serviceId: String?

    public var serviceInstanceId: String?

    public var serviceVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingCycle != nil {
            map["BillingCycle"] = self.billingCycle!
        }
        if self.billingDate != nil {
            map["BillingDate"] = self.billingDate!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BillingCycle"] as? String {
            self.billingCycle = value
        }
        if let value = dict["BillingDate"] as? String {
            self.billingDate = value
        }
        if let value = dict["Granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
    }
}

public class ListServiceInstanceBillResponseBody : Tea.TeaModel {
    public class Item : Tea.TeaModel {
        public var billingCycle: String?

        public var billingDate: String?

        public var billingItem: String?

        public var billingItemCode: String?

        public var currency: String?

        public var deductedByResourcePackage: String?

        public var instanceID: String?

        public var invoiceDiscount: String?

        public var listPrice: String?

        public var listPriceUnit: String?

        public var pretaxAmount: String?

        public var pretaxGrossAmount: String?

        public var productCode: String?

        public var productDetail: String?

        public var productName: String?

        public var serviceInstanceId: String?

        public var splitBillingCycle: String?

        public var subscriptionType: String?

        public var usage: String?

        public var usageUnit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billingCycle != nil {
                map["BillingCycle"] = self.billingCycle!
            }
            if self.billingDate != nil {
                map["BillingDate"] = self.billingDate!
            }
            if self.billingItem != nil {
                map["BillingItem"] = self.billingItem!
            }
            if self.billingItemCode != nil {
                map["BillingItemCode"] = self.billingItemCode!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.deductedByResourcePackage != nil {
                map["DeductedByResourcePackage"] = self.deductedByResourcePackage!
            }
            if self.instanceID != nil {
                map["InstanceID"] = self.instanceID!
            }
            if self.invoiceDiscount != nil {
                map["InvoiceDiscount"] = self.invoiceDiscount!
            }
            if self.listPrice != nil {
                map["ListPrice"] = self.listPrice!
            }
            if self.listPriceUnit != nil {
                map["ListPriceUnit"] = self.listPriceUnit!
            }
            if self.pretaxAmount != nil {
                map["PretaxAmount"] = self.pretaxAmount!
            }
            if self.pretaxGrossAmount != nil {
                map["PretaxGrossAmount"] = self.pretaxGrossAmount!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productDetail != nil {
                map["ProductDetail"] = self.productDetail!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.serviceInstanceId != nil {
                map["ServiceInstanceId"] = self.serviceInstanceId!
            }
            if self.splitBillingCycle != nil {
                map["SplitBillingCycle"] = self.splitBillingCycle!
            }
            if self.subscriptionType != nil {
                map["SubscriptionType"] = self.subscriptionType!
            }
            if self.usage != nil {
                map["Usage"] = self.usage!
            }
            if self.usageUnit != nil {
                map["UsageUnit"] = self.usageUnit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BillingCycle"] as? String {
                self.billingCycle = value
            }
            if let value = dict["BillingDate"] as? String {
                self.billingDate = value
            }
            if let value = dict["BillingItem"] as? String {
                self.billingItem = value
            }
            if let value = dict["BillingItemCode"] as? String {
                self.billingItemCode = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DeductedByResourcePackage"] as? String {
                self.deductedByResourcePackage = value
            }
            if let value = dict["InstanceID"] as? String {
                self.instanceID = value
            }
            if let value = dict["InvoiceDiscount"] as? String {
                self.invoiceDiscount = value
            }
            if let value = dict["ListPrice"] as? String {
                self.listPrice = value
            }
            if let value = dict["ListPriceUnit"] as? String {
                self.listPriceUnit = value
            }
            if let value = dict["PretaxAmount"] as? String {
                self.pretaxAmount = value
            }
            if let value = dict["PretaxGrossAmount"] as? String {
                self.pretaxGrossAmount = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductDetail"] as? String {
                self.productDetail = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["ServiceInstanceId"] as? String {
                self.serviceInstanceId = value
            }
            if let value = dict["SplitBillingCycle"] as? String {
                self.splitBillingCycle = value
            }
            if let value = dict["SubscriptionType"] as? String {
                self.subscriptionType = value
            }
            if let value = dict["Usage"] as? String {
                self.usage = value
            }
            if let value = dict["UsageUnit"] as? String {
                self.usageUnit = value
            }
        }
    }
    public var item: [ListServiceInstanceBillResponseBody.Item]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.item != nil {
            var tmp : [Any] = []
            for k in self.item! {
                tmp.append(k.toMap())
            }
            map["Item"] = tmp
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
        if let value = dict["Item"] as? [Any?] {
            var tmp : [ListServiceInstanceBillResponseBody.Item] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceBillResponseBody.Item()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.item = tmp
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListServiceInstanceBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstanceBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceInstanceBillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceInstanceDeployDetailsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var cycleTimeZone: String?

    public var cycleType: String?

    public var dimension: [String]?

    public var endTime: String?

    public var filter: [ListServiceInstanceDeployDetailsRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.cycleTimeZone != nil {
            map["CycleTimeZone"] = self.cycleTimeZone!
        }
        if self.cycleType != nil {
            map["CycleType"] = self.cycleType!
        }
        if self.dimension != nil {
            map["Dimension"] = self.dimension!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CycleTimeZone"] as? String {
            self.cycleTimeZone = value
        }
        if let value = dict["CycleType"] as? String {
            self.cycleType = value
        }
        if let value = dict["Dimension"] as? [String] {
            self.dimension = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListServiceInstanceDeployDetailsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceDeployDetailsRequest.Filter()
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
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class ListServiceInstanceDeployDetailsResponseBody : Tea.TeaModel {
    public class DeployDetails : Tea.TeaModel {
        public var count: String?

        public var createTime: String?

        public var cycle: String?

        public var deploySucceeded: String?

        public var errorCode: String?

        public var errorDetail: String?

        public var errorType: String?

        public var serviceId: String?

        public var serviceInstanceId: String?

        public var serviceNameChn: String?

        public var serviceNameEng: String?

        public var serviceType: String?

        public var serviceVersion: String?

        public var timestamp: String?

        public var userId: String?

        public override init() {
            super.init()
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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.cycle != nil {
                map["Cycle"] = self.cycle!
            }
            if self.deploySucceeded != nil {
                map["DeploySucceeded"] = self.deploySucceeded!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorDetail != nil {
                map["ErrorDetail"] = self.errorDetail!
            }
            if self.errorType != nil {
                map["ErrorType"] = self.errorType!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.serviceInstanceId != nil {
                map["ServiceInstanceId"] = self.serviceInstanceId!
            }
            if self.serviceNameChn != nil {
                map["ServiceNameChn"] = self.serviceNameChn!
            }
            if self.serviceNameEng != nil {
                map["ServiceNameEng"] = self.serviceNameEng!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.serviceVersion != nil {
                map["ServiceVersion"] = self.serviceVersion!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? String {
                self.count = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Cycle"] as? String {
                self.cycle = value
            }
            if let value = dict["DeploySucceeded"] as? String {
                self.deploySucceeded = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorDetail"] as? String {
                self.errorDetail = value
            }
            if let value = dict["ErrorType"] as? String {
                self.errorType = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["ServiceInstanceId"] as? String {
                self.serviceInstanceId = value
            }
            if let value = dict["ServiceNameChn"] as? String {
                self.serviceNameChn = value
            }
            if let value = dict["ServiceNameEng"] as? String {
                self.serviceNameEng = value
            }
            if let value = dict["ServiceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["ServiceVersion"] as? String {
                self.serviceVersion = value
            }
            if let value = dict["Timestamp"] as? String {
                self.timestamp = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var deployDetails: [ListServiceInstanceDeployDetailsResponseBody.DeployDetails]?

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
        if self.deployDetails != nil {
            var tmp : [Any] = []
            for k in self.deployDetails! {
                tmp.append(k.toMap())
            }
            map["DeployDetails"] = tmp
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
        if let value = dict["DeployDetails"] as? [Any?] {
            var tmp : [ListServiceInstanceDeployDetailsResponseBody.DeployDetails] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceDeployDetailsResponseBody.DeployDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deployDetails = tmp
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

public class ListServiceInstanceDeployDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstanceDeployDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceInstanceDeployDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceInstanceLogsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [ListServiceInstanceLogsRequest.Filter]?

    public var logSource: String?

    public var logstore: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public var sortOrder: String?

    public override init() {
        super.init()
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
        if self.logSource != nil {
            map["LogSource"] = self.logSource!
        }
        if self.logstore != nil {
            map["Logstore"] = self.logstore!
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
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListServiceInstanceLogsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceLogsRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["LogSource"] as? String {
            self.logSource = value
        }
        if let value = dict["Logstore"] as? String {
            self.logstore = value
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
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
    }
}

public class ListServiceInstanceLogsResponseBody : Tea.TeaModel {
    public class ServiceInstancesLogs : Tea.TeaModel {
        public var compliancePackType: String?

        public var complianceRuleName: String?

        public var content: String?

        public var logType: String?

        public var resourceId: String?

        public var resourceType: String?

        public var source: String?

        public var status: String?

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
            if self.compliancePackType != nil {
                map["CompliancePackType"] = self.compliancePackType!
            }
            if self.complianceRuleName != nil {
                map["ComplianceRuleName"] = self.complianceRuleName!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.logType != nil {
                map["LogType"] = self.logType!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompliancePackType"] as? String {
                self.compliancePackType = value
            }
            if let value = dict["ComplianceRuleName"] as? String {
                self.complianceRuleName = value
            }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["LogType"] as? String {
                self.logType = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Timestamp"] as? String {
                self.timestamp = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var serviceInstancesLogs: [ListServiceInstanceLogsResponseBody.ServiceInstancesLogs]?

    public override init() {
        super.init()
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
        if self.serviceInstancesLogs != nil {
            var tmp : [Any] = []
            for k in self.serviceInstancesLogs! {
                tmp.append(k.toMap())
            }
            map["ServiceInstancesLogs"] = tmp
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
        if let value = dict["ServiceInstancesLogs"] as? [Any?] {
            var tmp : [ListServiceInstanceLogsResponseBody.ServiceInstancesLogs] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceLogsResponseBody.ServiceInstancesLogs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceInstancesLogs = tmp
        }
    }
}

public class ListServiceInstanceLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstanceLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceInstanceLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceInstanceResourcesRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
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
    public var filters: [ListServiceInstanceResourcesRequest.Filters]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public var serviceInstanceResourceType: String?

    public var tag: [ListServiceInstanceResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
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
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceInstanceResourceType != nil {
            map["ServiceInstanceResourceType"] = self.serviceInstanceResourceType!
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
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [ListServiceInstanceResourcesRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceResourcesRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
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
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceInstanceResourceType"] as? String {
            self.serviceInstanceResourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListServiceInstanceResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceResourcesRequest.Tag()
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

public class ListServiceInstanceResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var createTime: String?

        public var expireTime: String?

        public var payType: String?

        public var productCode: String?

        public var productType: String?

        public var renewStatus: String?

        public var renewalPeriod: Int32?

        public var renewalPeriodUnit: String?

        public var resourceARN: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.renewStatus != nil {
                map["RenewStatus"] = self.renewStatus!
            }
            if self.renewalPeriod != nil {
                map["RenewalPeriod"] = self.renewalPeriod!
            }
            if self.renewalPeriodUnit != nil {
                map["RenewalPeriodUnit"] = self.renewalPeriodUnit!
            }
            if self.resourceARN != nil {
                map["ResourceARN"] = self.resourceARN!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["RenewStatus"] as? String {
                self.renewStatus = value
            }
            if let value = dict["RenewalPeriod"] as? Int32 {
                self.renewalPeriod = value
            }
            if let value = dict["RenewalPeriodUnit"] as? String {
                self.renewalPeriodUnit = value
            }
            if let value = dict["ResourceARN"] as? String {
                self.resourceARN = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resources: [ListServiceInstanceResourcesResponseBody.Resources]?

    public override init() {
        super.init()
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
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
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
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [ListServiceInstanceResourcesResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceResourcesResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
    }
}

public class ListServiceInstanceResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstanceResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceInstanceResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceInstanceUpgradeHistoryRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
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
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
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
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class ListServiceInstanceUpgradeHistoryResponseBody : Tea.TeaModel {
    public class UpgradeHistory : Tea.TeaModel {
        public var endTime: String?

        public var fromVersion: String?

        public var results: String?

        public var startTime: String?

        public var status: String?

        public var toVersion: String?

        public var type: String?

        public var upgradeHistoryId: String?

        public override init() {
            super.init()
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
            if self.fromVersion != nil {
                map["FromVersion"] = self.fromVersion!
            }
            if self.results != nil {
                map["Results"] = self.results!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.toVersion != nil {
                map["ToVersion"] = self.toVersion!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.upgradeHistoryId != nil {
                map["UpgradeHistoryId"] = self.upgradeHistoryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["FromVersion"] as? String {
                self.fromVersion = value
            }
            if let value = dict["Results"] as? String {
                self.results = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["ToVersion"] as? String {
                self.toVersion = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpgradeHistoryId"] as? String {
                self.upgradeHistoryId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int64?

    public var upgradeHistory: [ListServiceInstanceUpgradeHistoryResponseBody.UpgradeHistory]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.upgradeHistory != nil {
            var tmp : [Any] = []
            for k in self.upgradeHistory! {
                tmp.append(k.toMap())
            }
            map["UpgradeHistory"] = tmp
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["UpgradeHistory"] as? [Any?] {
            var tmp : [ListServiceInstanceUpgradeHistoryResponseBody.UpgradeHistory] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstanceUpgradeHistoryResponseBody.UpgradeHistory()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.upgradeHistory = tmp
        }
    }
}

public class ListServiceInstanceUpgradeHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstanceUpgradeHistoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceInstanceUpgradeHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceInstancesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
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
    public var filter: [ListServiceInstancesRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var showDeleted: Bool?

    public var tag: [ListServiceInstancesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.showDeleted != nil {
            map["ShowDeleted"] = self.showDeleted!
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
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListServiceInstancesRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstancesRequest.Filter()
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ShowDeleted"] as? Bool {
            self.showDeleted = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListServiceInstancesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstancesRequest.Tag()
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

public class ListServiceInstancesResponseBody : Tea.TeaModel {
    public class ServiceInstances : Tea.TeaModel {
        public class Service : Tea.TeaModel {
            public class ServiceInfos : Tea.TeaModel {
                public var image: String?

                public var locale: String?

                public var name: String?

                public var shortDescription: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.image != nil {
                        map["Image"] = self.image!
                    }
                    if self.locale != nil {
                        map["Locale"] = self.locale!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.shortDescription != nil {
                        map["ShortDescription"] = self.shortDescription!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Image"] as? String {
                        self.image = value
                    }
                    if let value = dict["Locale"] as? String {
                        self.locale = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["ShortDescription"] as? String {
                        self.shortDescription = value
                    }
                }
            }
            public var deployMetadata: String?

            public var deployType: String?

            public var enablePrivateVpcConnection: Bool?

            public var publishTime: String?

            public var serviceId: String?

            public var serviceInfos: [ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos]?

            public var serviceType: String?

            public var sourceSupplierName: String?

            public var status: String?

            public var supplierName: String?

            public var supplierUrl: String?

            public var version: String?

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
                if self.deployMetadata != nil {
                    map["DeployMetadata"] = self.deployMetadata!
                }
                if self.deployType != nil {
                    map["DeployType"] = self.deployType!
                }
                if self.enablePrivateVpcConnection != nil {
                    map["EnablePrivateVpcConnection"] = self.enablePrivateVpcConnection!
                }
                if self.publishTime != nil {
                    map["PublishTime"] = self.publishTime!
                }
                if self.serviceId != nil {
                    map["ServiceId"] = self.serviceId!
                }
                if self.serviceInfos != nil {
                    var tmp : [Any] = []
                    for k in self.serviceInfos! {
                        tmp.append(k.toMap())
                    }
                    map["ServiceInfos"] = tmp
                }
                if self.serviceType != nil {
                    map["ServiceType"] = self.serviceType!
                }
                if self.sourceSupplierName != nil {
                    map["SourceSupplierName"] = self.sourceSupplierName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.supplierName != nil {
                    map["SupplierName"] = self.supplierName!
                }
                if self.supplierUrl != nil {
                    map["SupplierUrl"] = self.supplierUrl!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                if self.versionName != nil {
                    map["VersionName"] = self.versionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeployMetadata"] as? String {
                    self.deployMetadata = value
                }
                if let value = dict["DeployType"] as? String {
                    self.deployType = value
                }
                if let value = dict["EnablePrivateVpcConnection"] as? Bool {
                    self.enablePrivateVpcConnection = value
                }
                if let value = dict["PublishTime"] as? String {
                    self.publishTime = value
                }
                if let value = dict["ServiceId"] as? String {
                    self.serviceId = value
                }
                if let value = dict["ServiceInfos"] as? [Any?] {
                    var tmp : [ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos] = []
                    for v in value {
                        if v != nil {
                            var model = ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.serviceInfos = tmp
                }
                if let value = dict["ServiceType"] as? String {
                    self.serviceType = value
                }
                if let value = dict["SourceSupplierName"] as? String {
                    self.sourceSupplierName = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["SupplierName"] as? String {
                    self.supplierName = value
                }
                if let value = dict["SupplierUrl"] as? String {
                    self.supplierUrl = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
                if let value = dict["VersionName"] as? String {
                    self.versionName = value
                }
            }
        }
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
        public var bizStatus: String?

        public var createTime: String?

        public var enableInstanceOps: Bool?

        public var endTime: String?

        public var isOperated: Bool?

        public var name: String?

        public var operatedServiceInstanceId: String?

        public var operationEndTime: String?

        public var operationStartTime: String?

        public var parameters: String?

        public var payType: String?

        public var progress: Int64?

        public var resourceGroupId: String?

        public var service: ListServiceInstancesResponseBody.ServiceInstances.Service?

        public var serviceInstanceId: String?

        public var serviceType: String?

        public var source: String?

        public var status: String?

        public var statusDetail: String?

        public var tags: [ListServiceInstancesResponseBody.ServiceInstances.Tags]?

        public var templateName: String?

        public var updateTime: String?

        public var userId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.service?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizStatus != nil {
                map["BizStatus"] = self.bizStatus!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.enableInstanceOps != nil {
                map["EnableInstanceOps"] = self.enableInstanceOps!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.isOperated != nil {
                map["IsOperated"] = self.isOperated!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operatedServiceInstanceId != nil {
                map["OperatedServiceInstanceId"] = self.operatedServiceInstanceId!
            }
            if self.operationEndTime != nil {
                map["OperationEndTime"] = self.operationEndTime!
            }
            if self.operationStartTime != nil {
                map["OperationStartTime"] = self.operationStartTime!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.service != nil {
                map["Service"] = self.service?.toMap()
            }
            if self.serviceInstanceId != nil {
                map["ServiceInstanceId"] = self.serviceInstanceId!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusDetail != nil {
                map["StatusDetail"] = self.statusDetail!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizStatus"] as? String {
                self.bizStatus = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EnableInstanceOps"] as? Bool {
                self.enableInstanceOps = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["IsOperated"] as? Bool {
                self.isOperated = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OperatedServiceInstanceId"] as? String {
                self.operatedServiceInstanceId = value
            }
            if let value = dict["OperationEndTime"] as? String {
                self.operationEndTime = value
            }
            if let value = dict["OperationStartTime"] as? String {
                self.operationStartTime = value
            }
            if let value = dict["Parameters"] as? String {
                self.parameters = value
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["Progress"] as? Int64 {
                self.progress = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Service"] as? [String: Any?] {
                var model = ListServiceInstancesResponseBody.ServiceInstances.Service()
                model.fromMap(value)
                self.service = model
            }
            if let value = dict["ServiceInstanceId"] as? String {
                self.serviceInstanceId = value
            }
            if let value = dict["ServiceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusDetail"] as? String {
                self.statusDetail = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListServiceInstancesResponseBody.ServiceInstances.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListServiceInstancesResponseBody.ServiceInstances.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var serviceInstances: [ListServiceInstancesResponseBody.ServiceInstances]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceInstances != nil {
            var tmp : [Any] = []
            for k in self.serviceInstances! {
                tmp.append(k.toMap())
            }
            map["ServiceInstances"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceInstances"] as? [Any?] {
            var tmp : [ListServiceInstancesResponseBody.ServiceInstances] = []
            for v in value {
                if v != nil {
                    var model = ListServiceInstancesResponseBody.ServiceInstances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceInstances = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListServiceInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceRegistrationsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [ListServiceRegistrationsRequest.Filter]?

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
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListServiceRegistrationsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListServiceRegistrationsRequest.Filter()
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

public class ListServiceRegistrationsResponseBody : Tea.TeaModel {
    public class ServiceRegistrations : Tea.TeaModel {
        public var comment: String?

        public var finishTime: String?

        public var registrationId: String?

        public var serviceId: String?

        public var status: String?

        public var submitTime: String?

        public override init() {
            super.init()
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
            if self.finishTime != nil {
                map["FinishTime"] = self.finishTime!
            }
            if self.registrationId != nil {
                map["RegistrationId"] = self.registrationId!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.submitTime != nil {
                map["SubmitTime"] = self.submitTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["FinishTime"] as? String {
                self.finishTime = value
            }
            if let value = dict["RegistrationId"] as? String {
                self.registrationId = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubmitTime"] as? String {
                self.submitTime = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var serviceRegistrations: [ListServiceRegistrationsResponseBody.ServiceRegistrations]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceRegistrations != nil {
            var tmp : [Any] = []
            for k in self.serviceRegistrations! {
                tmp.append(k.toMap())
            }
            map["ServiceRegistrations"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceRegistrations"] as? [Any?] {
            var tmp : [ListServiceRegistrationsResponseBody.ServiceRegistrations] = []
            for v in value {
                if v != nil {
                    var model = ListServiceRegistrationsResponseBody.ServiceRegistrations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceRegistrations = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListServiceRegistrationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceRegistrationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceRegistrationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceSharedAccountsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [ListServiceSharedAccountsRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var permission: String?

    public var regionId: String?

    public var serviceId: String?

    public override init() {
        super.init()
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
        if self.permission != nil {
            map["Permission"] = self.permission!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListServiceSharedAccountsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListServiceSharedAccountsRequest.Filter()
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
        if let value = dict["Permission"] as? String {
            self.permission = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
    }
}

public class ListServiceSharedAccountsResponseBody : Tea.TeaModel {
    public class ShareAccount : Tea.TeaModel {
        public var createTime: String?

        public var logo: String?

        public var name: String?

        public var permission: String?

        public var serviceId: String?

        public var updateTime: String?

        public var userAliUid: String?

        public override init() {
            super.init()
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
            if self.logo != nil {
                map["Logo"] = self.logo!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.permission != nil {
                map["Permission"] = self.permission!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userAliUid != nil {
                map["UserAliUid"] = self.userAliUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Logo"] as? String {
                self.logo = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Permission"] as? String {
                self.permission = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserAliUid"] as? String {
                self.userAliUid = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var shareAccount: [ListServiceSharedAccountsResponseBody.ShareAccount]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.shareAccount != nil {
            var tmp : [Any] = []
            for k in self.shareAccount! {
                tmp.append(k.toMap())
            }
            map["ShareAccount"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShareAccount"] as? [Any?] {
            var tmp : [ListServiceSharedAccountsResponseBody.ShareAccount] = []
            for v in value {
                if v != nil {
                    var model = ListServiceSharedAccountsResponseBody.ShareAccount()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.shareAccount = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListServiceSharedAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceSharedAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceSharedAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceTestCasesRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filters: [ListServiceTestCasesRequest.Filters]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [ListServiceTestCasesRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = ListServiceTestCasesRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
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
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
    }
}

public class ListServiceTestCasesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var templateName: String?

        public var testCaseId: String?

        public var testCaseName: String?

        public var testConfig: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.testCaseId != nil {
                map["TestCaseId"] = self.testCaseId!
            }
            if self.testCaseName != nil {
                map["TestCaseName"] = self.testCaseName!
            }
            if self.testConfig != nil {
                map["TestConfig"] = self.testConfig!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TestCaseId"] as? String {
                self.testCaseId = value
            }
            if let value = dict["TestCaseName"] as? String {
                self.testCaseName = value
            }
            if let value = dict["TestConfig"] as? String {
                self.testConfig = value
            }
        }
    }
    public var data: [ListServiceTestCasesResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListServiceTestCasesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListServiceTestCasesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class ListServiceTestCasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceTestCasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceTestCasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceTestTaskLogsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var sortOrder: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class ListServiceTestTaskLogsResponseBody : Tea.TeaModel {
    public class TaskLogs : Tea.TeaModel {
        public var content: String?

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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["Timestamp"] as? String {
                self.timestamp = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var taskLogs: [ListServiceTestTaskLogsResponseBody.TaskLogs]?

    public override init() {
        super.init()
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
        if self.taskLogs != nil {
            var tmp : [Any] = []
            for k in self.taskLogs! {
                tmp.append(k.toMap())
            }
            map["TaskLogs"] = tmp
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
        if let value = dict["TaskLogs"] as? [Any?] {
            var tmp : [ListServiceTestTaskLogsResponseBody.TaskLogs] = []
            for v in value {
                if v != nil {
                    var model = ListServiceTestTaskLogsResponseBody.TaskLogs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskLogs = tmp
        }
    }
}

public class ListServiceTestTaskLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceTestTaskLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceTestTaskLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceTestTasksRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [ListServiceTestTasksRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public override init() {
        super.init()
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListServiceTestTasksRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListServiceTestTasksRequest.Filter()
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
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
    }
}

public class ListServiceTestTasksResponseBody : Tea.TeaModel {
    public class ServiceTestTasks : Tea.TeaModel {
        public var createTime: String?

        public var status: String?

        public var taskId: String?

        public var taskName: String?

        public var taskRegionId: String?

        public override init() {
            super.init()
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
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskRegionId != nil {
                map["TaskRegionId"] = self.taskRegionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TaskRegionId"] as? String {
                self.taskRegionId = value
            }
        }
    }
    public var count: Int32?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var serviceTestTasks: [ListServiceTestTasksResponseBody.ServiceTestTasks]?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceTestTasks != nil {
            var tmp : [Any] = []
            for k in self.serviceTestTasks! {
                tmp.append(k.toMap())
            }
            map["ServiceTestTasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Count"] as? Int32 {
            self.count = value
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
        if let value = dict["ServiceTestTasks"] as? [Any?] {
            var tmp : [ListServiceTestTasksResponseBody.ServiceTestTasks] = []
            for v in value {
                if v != nil {
                    var model = ListServiceTestTasksResponseBody.ServiceTestTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceTestTasks = tmp
        }
    }
}

public class ListServiceTestTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceTestTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceTestTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceUsagesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [ListServiceUsagesRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var supplierRole: String?

    public override init() {
        super.init()
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
        if self.supplierRole != nil {
            map["SupplierRole"] = self.supplierRole!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListServiceUsagesRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListServiceUsagesRequest.Filter()
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
        if let value = dict["SupplierRole"] as? String {
            self.supplierRole = value
        }
    }
}

public class ListServiceUsagesResponseBody : Tea.TeaModel {
    public class ServiceUsages : Tea.TeaModel {
        public var comments: String?

        public var createTime: String?

        public var serviceId: String?

        public var serviceName: String?

        public var status: String?

        public var supplierName: String?

        public var updateTime: String?

        public var userAliUid: Int64?

        public var userInformation: [String: String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supplierName != nil {
                map["SupplierName"] = self.supplierName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userAliUid != nil {
                map["UserAliUid"] = self.userAliUid!
            }
            if self.userInformation != nil {
                map["UserInformation"] = self.userInformation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comments"] as? String {
                self.comments = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SupplierName"] as? String {
                self.supplierName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserAliUid"] as? Int64 {
                self.userAliUid = value
            }
            if let value = dict["UserInformation"] as? [String: String] {
                self.userInformation = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var serviceUsages: [ListServiceUsagesResponseBody.ServiceUsages]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceUsages != nil {
            var tmp : [Any] = []
            for k in self.serviceUsages! {
                tmp.append(k.toMap())
            }
            map["ServiceUsages"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceUsages"] as? [Any?] {
            var tmp : [ListServiceUsagesResponseBody.ServiceUsages] = []
            for v in value {
                if v != nil {
                    var model = ListServiceUsagesResponseBody.ServiceUsages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceUsages = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListServiceUsagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceUsagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServiceUsagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServicesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
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
    public var allVersions: Bool?

    public var filter: [ListServicesRequest.Filter]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [ListServicesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allVersions != nil {
            map["AllVersions"] = self.allVersions!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if let value = dict["AllVersions"] as? Bool {
            self.allVersions = value
        }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListServicesRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListServicesRequest.Filter()
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListServicesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListServicesRequest.Tag()
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

public class ListServicesResponseBody : Tea.TeaModel {
    public class Services : Tea.TeaModel {
        public class Commodity : Tea.TeaModel {
            public var commodityCode: String?

            public var saasBoostMetadata: String?

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
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.saasBoostMetadata != nil {
                    map["SaasBoostMetadata"] = self.saasBoostMetadata!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommodityCode"] as? String {
                    self.commodityCode = value
                }
                if let value = dict["SaasBoostMetadata"] as? String {
                    self.saasBoostMetadata = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class ServiceInfos : Tea.TeaModel {
            public var image: String?

            public var locale: String?

            public var name: String?

            public var shortDescription: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.image != nil {
                    map["Image"] = self.image!
                }
                if self.locale != nil {
                    map["Locale"] = self.locale!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.shortDescription != nil {
                    map["ShortDescription"] = self.shortDescription!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Image"] as? String {
                    self.image = value
                }
                if let value = dict["Locale"] as? String {
                    self.locale = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ShortDescription"] as? String {
                    self.shortDescription = value
                }
            }
        }
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
        public var approvalType: String?

        public var artifactId: String?

        public var artifactVersion: String?

        public var buildInfo: String?

        public var categories: String?

        public var commodity: ListServicesResponseBody.Services.Commodity?

        public var commodityCode: String?

        public var createTime: String?

        public var defaultVersion: Bool?

        public var deployType: String?

        public var hasBeta: Bool?

        public var hasDraft: Bool?

        public var latestResellSourceServiceVersion: String?

        public var publishTime: String?

        public var relationType: String?

        public var resellApplyStatus: String?

        public var resellServiceId: String?

        public var resourceGroupId: String?

        public var serviceDiscoverable: String?

        public var serviceId: String?

        public var serviceInfos: [ListServicesResponseBody.Services.ServiceInfos]?

        public var serviceType: String?

        public var shareType: String?

        public var sourceImage: String?

        public var sourceServiceId: String?

        public var sourceServiceVersion: String?

        public var sourceSupplierName: String?

        public var status: String?

        public var supplierName: String?

        public var supplierUrl: String?

        public var tags: [ListServicesResponseBody.Services.Tags]?

        public var tenantType: String?

        public var trialType: String?

        public var updateTime: String?

        public var version: String?

        public var versionName: String?

        public var virtualInternetService: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commodity?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvalType != nil {
                map["ApprovalType"] = self.approvalType!
            }
            if self.artifactId != nil {
                map["ArtifactId"] = self.artifactId!
            }
            if self.artifactVersion != nil {
                map["ArtifactVersion"] = self.artifactVersion!
            }
            if self.buildInfo != nil {
                map["BuildInfo"] = self.buildInfo!
            }
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.commodity != nil {
                map["Commodity"] = self.commodity?.toMap()
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.defaultVersion != nil {
                map["DefaultVersion"] = self.defaultVersion!
            }
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.hasBeta != nil {
                map["HasBeta"] = self.hasBeta!
            }
            if self.hasDraft != nil {
                map["HasDraft"] = self.hasDraft!
            }
            if self.latestResellSourceServiceVersion != nil {
                map["LatestResellSourceServiceVersion"] = self.latestResellSourceServiceVersion!
            }
            if self.publishTime != nil {
                map["PublishTime"] = self.publishTime!
            }
            if self.relationType != nil {
                map["RelationType"] = self.relationType!
            }
            if self.resellApplyStatus != nil {
                map["ResellApplyStatus"] = self.resellApplyStatus!
            }
            if self.resellServiceId != nil {
                map["ResellServiceId"] = self.resellServiceId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.serviceDiscoverable != nil {
                map["ServiceDiscoverable"] = self.serviceDiscoverable!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.serviceInfos != nil {
                var tmp : [Any] = []
                for k in self.serviceInfos! {
                    tmp.append(k.toMap())
                }
                map["ServiceInfos"] = tmp
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            if self.sourceImage != nil {
                map["SourceImage"] = self.sourceImage!
            }
            if self.sourceServiceId != nil {
                map["SourceServiceId"] = self.sourceServiceId!
            }
            if self.sourceServiceVersion != nil {
                map["SourceServiceVersion"] = self.sourceServiceVersion!
            }
            if self.sourceSupplierName != nil {
                map["SourceSupplierName"] = self.sourceSupplierName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supplierName != nil {
                map["SupplierName"] = self.supplierName!
            }
            if self.supplierUrl != nil {
                map["SupplierUrl"] = self.supplierUrl!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tenantType != nil {
                map["TenantType"] = self.tenantType!
            }
            if self.trialType != nil {
                map["TrialType"] = self.trialType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            if self.virtualInternetService != nil {
                map["VirtualInternetService"] = self.virtualInternetService!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApprovalType"] as? String {
                self.approvalType = value
            }
            if let value = dict["ArtifactId"] as? String {
                self.artifactId = value
            }
            if let value = dict["ArtifactVersion"] as? String {
                self.artifactVersion = value
            }
            if let value = dict["BuildInfo"] as? String {
                self.buildInfo = value
            }
            if let value = dict["Categories"] as? String {
                self.categories = value
            }
            if let value = dict["Commodity"] as? [String: Any?] {
                var model = ListServicesResponseBody.Services.Commodity()
                model.fromMap(value)
                self.commodity = model
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DefaultVersion"] as? Bool {
                self.defaultVersion = value
            }
            if let value = dict["DeployType"] as? String {
                self.deployType = value
            }
            if let value = dict["HasBeta"] as? Bool {
                self.hasBeta = value
            }
            if let value = dict["HasDraft"] as? Bool {
                self.hasDraft = value
            }
            if let value = dict["LatestResellSourceServiceVersion"] as? String {
                self.latestResellSourceServiceVersion = value
            }
            if let value = dict["PublishTime"] as? String {
                self.publishTime = value
            }
            if let value = dict["RelationType"] as? String {
                self.relationType = value
            }
            if let value = dict["ResellApplyStatus"] as? String {
                self.resellApplyStatus = value
            }
            if let value = dict["ResellServiceId"] as? String {
                self.resellServiceId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ServiceDiscoverable"] as? String {
                self.serviceDiscoverable = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["ServiceInfos"] as? [Any?] {
                var tmp : [ListServicesResponseBody.Services.ServiceInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListServicesResponseBody.Services.ServiceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.serviceInfos = tmp
            }
            if let value = dict["ServiceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
            if let value = dict["SourceImage"] as? String {
                self.sourceImage = value
            }
            if let value = dict["SourceServiceId"] as? String {
                self.sourceServiceId = value
            }
            if let value = dict["SourceServiceVersion"] as? String {
                self.sourceServiceVersion = value
            }
            if let value = dict["SourceSupplierName"] as? String {
                self.sourceSupplierName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SupplierName"] as? String {
                self.supplierName = value
            }
            if let value = dict["SupplierUrl"] as? String {
                self.supplierUrl = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListServicesResponseBody.Services.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListServicesResponseBody.Services.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TenantType"] as? String {
                self.tenantType = value
            }
            if let value = dict["TrialType"] as? String {
                self.trialType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
            if let value = dict["VirtualInternetService"] as? String {
                self.virtualInternetService = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var services: [ListServicesResponseBody.Services]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["Services"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Services"] as? [Any?] {
            var tmp : [ListServicesResponseBody.Services] = []
            for v in value {
                if v != nil {
                    var model = ListServicesResponseBody.Services()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.services = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListServicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSupplierRegistrationsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

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
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var filter: [ListSupplierRegistrationsRequest.Filter]?

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
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [ListSupplierRegistrationsRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = ListSupplierRegistrationsRequest.Filter()
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

public class ListSupplierRegistrationsResponseBody : Tea.TeaModel {
    public class SupplierRegistrations : Tea.TeaModel {
        public var comment: String?

        public var contactEmail: String?

        public var contactNumber: String?

        public var contactPerson: String?

        public var contactPersonTitle: String?

        public var enableResellerMode: Bool?

        public var productAnnualRevenue: String?

        public var productBusiness: String?

        public var productDeliveryTypes: String?

        public var productPublishTime: String?

        public var productSellTypes: String?

        public var registrationId: String?

        public var resellBusinessDesc: String?

        public var status: String?

        public var submitTime: String?

        public var supplierDesc: String?

        public var supplierLogo: String?

        public var supplierName: String?

        public var supplierNameEn: String?

        public var supplierUid: String?

        public var supplierUrl: String?

        public override init() {
            super.init()
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
            if self.contactEmail != nil {
                map["ContactEmail"] = self.contactEmail!
            }
            if self.contactNumber != nil {
                map["ContactNumber"] = self.contactNumber!
            }
            if self.contactPerson != nil {
                map["ContactPerson"] = self.contactPerson!
            }
            if self.contactPersonTitle != nil {
                map["ContactPersonTitle"] = self.contactPersonTitle!
            }
            if self.enableResellerMode != nil {
                map["EnableResellerMode"] = self.enableResellerMode!
            }
            if self.productAnnualRevenue != nil {
                map["ProductAnnualRevenue"] = self.productAnnualRevenue!
            }
            if self.productBusiness != nil {
                map["ProductBusiness"] = self.productBusiness!
            }
            if self.productDeliveryTypes != nil {
                map["ProductDeliveryTypes"] = self.productDeliveryTypes!
            }
            if self.productPublishTime != nil {
                map["ProductPublishTime"] = self.productPublishTime!
            }
            if self.productSellTypes != nil {
                map["ProductSellTypes"] = self.productSellTypes!
            }
            if self.registrationId != nil {
                map["RegistrationId"] = self.registrationId!
            }
            if self.resellBusinessDesc != nil {
                map["ResellBusinessDesc"] = self.resellBusinessDesc!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.submitTime != nil {
                map["SubmitTime"] = self.submitTime!
            }
            if self.supplierDesc != nil {
                map["SupplierDesc"] = self.supplierDesc!
            }
            if self.supplierLogo != nil {
                map["SupplierLogo"] = self.supplierLogo!
            }
            if self.supplierName != nil {
                map["SupplierName"] = self.supplierName!
            }
            if self.supplierNameEn != nil {
                map["SupplierNameEn"] = self.supplierNameEn!
            }
            if self.supplierUid != nil {
                map["SupplierUid"] = self.supplierUid!
            }
            if self.supplierUrl != nil {
                map["SupplierUrl"] = self.supplierUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["ContactEmail"] as? String {
                self.contactEmail = value
            }
            if let value = dict["ContactNumber"] as? String {
                self.contactNumber = value
            }
            if let value = dict["ContactPerson"] as? String {
                self.contactPerson = value
            }
            if let value = dict["ContactPersonTitle"] as? String {
                self.contactPersonTitle = value
            }
            if let value = dict["EnableResellerMode"] as? Bool {
                self.enableResellerMode = value
            }
            if let value = dict["ProductAnnualRevenue"] as? String {
                self.productAnnualRevenue = value
            }
            if let value = dict["ProductBusiness"] as? String {
                self.productBusiness = value
            }
            if let value = dict["ProductDeliveryTypes"] as? String {
                self.productDeliveryTypes = value
            }
            if let value = dict["ProductPublishTime"] as? String {
                self.productPublishTime = value
            }
            if let value = dict["ProductSellTypes"] as? String {
                self.productSellTypes = value
            }
            if let value = dict["RegistrationId"] as? String {
                self.registrationId = value
            }
            if let value = dict["ResellBusinessDesc"] as? String {
                self.resellBusinessDesc = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubmitTime"] as? String {
                self.submitTime = value
            }
            if let value = dict["SupplierDesc"] as? String {
                self.supplierDesc = value
            }
            if let value = dict["SupplierLogo"] as? String {
                self.supplierLogo = value
            }
            if let value = dict["SupplierName"] as? String {
                self.supplierName = value
            }
            if let value = dict["SupplierNameEn"] as? String {
                self.supplierNameEn = value
            }
            if let value = dict["SupplierUid"] as? String {
                self.supplierUid = value
            }
            if let value = dict["SupplierUrl"] as? String {
                self.supplierUrl = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var supplierRegistrations: [ListSupplierRegistrationsResponseBody.SupplierRegistrations]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.supplierRegistrations != nil {
            var tmp : [Any] = []
            for k in self.supplierRegistrations! {
                tmp.append(k.toMap())
            }
            map["SupplierRegistrations"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SupplierRegistrations"] as? [Any?] {
            var tmp : [ListSupplierRegistrationsResponseBody.SupplierRegistrations] = []
            for v in value {
                if v != nil {
                    var model = ListSupplierRegistrationsResponseBody.SupplierRegistrations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.supplierRegistrations = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListSupplierRegistrationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSupplierRegistrationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSupplierRegistrationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagKeysRequest : Tea.TeaModel {
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
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

    public override init() {
        super.init()
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
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
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
        if let value = dict["TagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagResources = tmp
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

public class ModifyServiceInstanceResourcesRequest : Tea.TeaModel {
    public var resources: String?

    public var serviceInstanceId: String?

    public var serviceInstanceResourcesAction: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceInstanceResourcesAction != nil {
            map["ServiceInstanceResourcesAction"] = self.serviceInstanceResourcesAction!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Resources"] as? String {
            self.resources = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceInstanceResourcesAction"] as? String {
            self.serviceInstanceResourcesAction = value
        }
    }
}

public class ModifyServiceInstanceResourcesResponseBody : Tea.TeaModel {
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

public class ModifyServiceInstanceResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyServiceInstanceResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyServiceInstanceResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PreLaunchServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceId: String?

    public override init() {
        super.init()
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
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
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
    }
}

public class PreLaunchServiceResponseBody : Tea.TeaModel {
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

public class PreLaunchServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PreLaunchServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PreLaunchServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushMeteringDataRequest : Tea.TeaModel {
    public var metering: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metering != nil {
            map["Metering"] = self.metering!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Metering"] as? String {
            self.metering = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class PushMeteringDataResponseBody : Tea.TeaModel {
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

public class PushMeteringDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushMeteringDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PushMeteringDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RegisterServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceId: String?

    public override init() {
        super.init()
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
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
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
    }
}

public class RegisterServiceResponseBody : Tea.TeaModel {
    public var registrationId: String?

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
        if self.registrationId != nil {
            map["RegistrationId"] = self.registrationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegistrationId"] as? String {
            self.registrationId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RegisterServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RegisterServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RejectServiceUsageRequest : Tea.TeaModel {
    public var clientToken: String?

    public var comments: String?

    public var serviceId: String?

    public var type: Int32?

    public var userAliUid: Int64?

    public override init() {
        super.init()
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
        if self.comments != nil {
            map["Comments"] = self.comments!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userAliUid != nil {
            map["UserAliUid"] = self.userAliUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Comments"] as? String {
            self.comments = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
        if let value = dict["UserAliUid"] as? Int64 {
            self.userAliUid = value
        }
    }
}

public class RejectServiceUsageResponseBody : Tea.TeaModel {
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

public class RejectServiceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RejectServiceUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RejectServiceUsageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseArtifactRequest : Tea.TeaModel {
    public var artifactId: String?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactId"] as? String {
            self.artifactId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
    }
}

public class ReleaseArtifactResponseBody : Tea.TeaModel {
    public var artifactId: String?

    public var artifactProperty: String?

    public var artifactType: String?

    public var artifactVersion: String?

    public var description_: String?

    public var gmtModified: String?

    public var requestId: String?

    public var status: String?

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
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactProperty != nil {
            map["ArtifactProperty"] = self.artifactProperty!
        }
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
        }
        if self.artifactVersion != nil {
            map["ArtifactVersion"] = self.artifactVersion!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactId"] as? String {
            self.artifactId = value
        }
        if let value = dict["ArtifactProperty"] as? String {
            self.artifactProperty = value
        }
        if let value = dict["ArtifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["ArtifactVersion"] as? String {
            self.artifactVersion = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class ReleaseArtifactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseArtifactResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReleaseArtifactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveServiceSharedAccountsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceId: String?

    public var type: String?

    public var userAliUids: [Int64]?

    public override init() {
        super.init()
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userAliUids != nil {
            map["UserAliUids"] = self.userAliUids!
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
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UserAliUids"] as? [Int64] {
            self.userAliUids = value
        }
    }
}

public class RemoveServiceSharedAccountsResponseBody : Tea.TeaModel {
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

public class RemoveServiceSharedAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveServiceSharedAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveServiceSharedAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
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
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
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
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class RestartServiceInstanceResponseBody : Tea.TeaModel {
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

public class RestartServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartServiceInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RestartServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RollbackServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
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
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
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
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class RollbackServiceInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serviceInstanceId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class RollbackServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RollbackServiceInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RollbackServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
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
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
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
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class StartServiceInstanceResponseBody : Tea.TeaModel {
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

public class StartServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartServiceInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
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
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
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
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class StopServiceInstanceResponseBody : Tea.TeaModel {
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

public class StopServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopServiceInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopServiceInstanceResponseBody()
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

public class UnTagResourcesRequest : Tea.TeaModel {
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

public class UnTagResourcesResponseBody : Tea.TeaModel {
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

public class UnTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnTagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateArtifactRequest : Tea.TeaModel {
    public class ArtifactBuildProperty : Tea.TeaModel {
        public class BuildArgs : Tea.TeaModel {
            public var argumentName: String?

            public var argumentValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.argumentName != nil {
                    map["ArgumentName"] = self.argumentName!
                }
                if self.argumentValue != nil {
                    map["ArgumentValue"] = self.argumentValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArgumentName"] as? String {
                    self.argumentName = value
                }
                if let value = dict["ArgumentValue"] as? String {
                    self.argumentValue = value
                }
            }
        }
        public class CodeRepo : Tea.TeaModel {
            public var branch: String?

            public var endpoint: String?

            public var orgId: String?

            public var owner: String?

            public var platform: String?

            public var repoId: Int64?

            public var repoName: String?

            public override init() {
                super.init()
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
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
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
                if self.repoId != nil {
                    map["RepoId"] = self.repoId!
                }
                if self.repoName != nil {
                    map["RepoName"] = self.repoName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Branch"] as? String {
                    self.branch = value
                }
                if let value = dict["Endpoint"] as? String {
                    self.endpoint = value
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
                if let value = dict["RepoId"] as? Int64 {
                    self.repoId = value
                }
                if let value = dict["RepoName"] as? String {
                    self.repoName = value
                }
            }
        }
        public var buildArgs: [UpdateArtifactRequest.ArtifactBuildProperty.BuildArgs]?

        public var codeRepo: UpdateArtifactRequest.ArtifactBuildProperty.CodeRepo?

        public var commandContent: String?

        public var commandType: String?

        public var dockerfilePath: String?

        public var regionId: String?

        public var sourceContainerImage: String?

        public var sourceImageId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.codeRepo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildArgs != nil {
                var tmp : [Any] = []
                for k in self.buildArgs! {
                    tmp.append(k.toMap())
                }
                map["BuildArgs"] = tmp
            }
            if self.codeRepo != nil {
                map["CodeRepo"] = self.codeRepo?.toMap()
            }
            if self.commandContent != nil {
                map["CommandContent"] = self.commandContent!
            }
            if self.commandType != nil {
                map["CommandType"] = self.commandType!
            }
            if self.dockerfilePath != nil {
                map["DockerfilePath"] = self.dockerfilePath!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.sourceContainerImage != nil {
                map["SourceContainerImage"] = self.sourceContainerImage!
            }
            if self.sourceImageId != nil {
                map["SourceImageId"] = self.sourceImageId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BuildArgs"] as? [Any?] {
                var tmp : [UpdateArtifactRequest.ArtifactBuildProperty.BuildArgs] = []
                for v in value {
                    if v != nil {
                        var model = UpdateArtifactRequest.ArtifactBuildProperty.BuildArgs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.buildArgs = tmp
            }
            if let value = dict["CodeRepo"] as? [String: Any?] {
                var model = UpdateArtifactRequest.ArtifactBuildProperty.CodeRepo()
                model.fromMap(value)
                self.codeRepo = model
            }
            if let value = dict["CommandContent"] as? String {
                self.commandContent = value
            }
            if let value = dict["CommandType"] as? String {
                self.commandType = value
            }
            if let value = dict["DockerfilePath"] as? String {
                self.dockerfilePath = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SourceContainerImage"] as? String {
                self.sourceContainerImage = value
            }
            if let value = dict["SourceImageId"] as? String {
                self.sourceImageId = value
            }
        }
    }
    public class ArtifactProperty : Tea.TeaModel {
        public var commodityCode: String?

        public var commodityVersion: String?

        public var imageId: String?

        public var regionId: String?

        public var repoId: String?

        public var repoName: String?

        public var repoType: String?

        public var tag: String?

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
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.commodityVersion != nil {
                map["CommodityVersion"] = self.commodityVersion!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.repoId != nil {
                map["RepoId"] = self.repoId!
            }
            if self.repoName != nil {
                map["RepoName"] = self.repoName!
            }
            if self.repoType != nil {
                map["RepoType"] = self.repoType!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CommodityVersion"] as? String {
                self.commodityVersion = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RepoId"] as? String {
                self.repoId = value
            }
            if let value = dict["RepoName"] as? String {
                self.repoName = value
            }
            if let value = dict["RepoType"] as? String {
                self.repoType = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var artifactBuildProperty: UpdateArtifactRequest.ArtifactBuildProperty?

    public var artifactId: String?

    public var artifactProperty: UpdateArtifactRequest.ArtifactProperty?

    public var clientToken: String?

    public var description_: String?

    public var permissionType: String?

    public var supportRegionIds: [String]?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.artifactBuildProperty?.validate()
        try self.artifactProperty?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactBuildProperty != nil {
            map["ArtifactBuildProperty"] = self.artifactBuildProperty?.toMap()
        }
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactProperty != nil {
            map["ArtifactProperty"] = self.artifactProperty?.toMap()
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.permissionType != nil {
            map["PermissionType"] = self.permissionType!
        }
        if self.supportRegionIds != nil {
            map["SupportRegionIds"] = self.supportRegionIds!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactBuildProperty"] as? [String: Any?] {
            var model = UpdateArtifactRequest.ArtifactBuildProperty()
            model.fromMap(value)
            self.artifactBuildProperty = model
        }
        if let value = dict["ArtifactId"] as? String {
            self.artifactId = value
        }
        if let value = dict["ArtifactProperty"] as? [String: Any?] {
            var model = UpdateArtifactRequest.ArtifactProperty()
            model.fromMap(value)
            self.artifactProperty = model
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["PermissionType"] as? String {
            self.permissionType = value
        }
        if let value = dict["SupportRegionIds"] as? [String] {
            self.supportRegionIds = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class UpdateArtifactShrinkRequest : Tea.TeaModel {
    public var artifactBuildPropertyShrink: String?

    public var artifactId: String?

    public var artifactPropertyShrink: String?

    public var clientToken: String?

    public var description_: String?

    public var permissionType: String?

    public var supportRegionIds: [String]?

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
        if self.artifactBuildPropertyShrink != nil {
            map["ArtifactBuildProperty"] = self.artifactBuildPropertyShrink!
        }
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactPropertyShrink != nil {
            map["ArtifactProperty"] = self.artifactPropertyShrink!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.permissionType != nil {
            map["PermissionType"] = self.permissionType!
        }
        if self.supportRegionIds != nil {
            map["SupportRegionIds"] = self.supportRegionIds!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactBuildProperty"] as? String {
            self.artifactBuildPropertyShrink = value
        }
        if let value = dict["ArtifactId"] as? String {
            self.artifactId = value
        }
        if let value = dict["ArtifactProperty"] as? String {
            self.artifactPropertyShrink = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["PermissionType"] as? String {
            self.permissionType = value
        }
        if let value = dict["SupportRegionIds"] as? [String] {
            self.supportRegionIds = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class UpdateArtifactResponseBody : Tea.TeaModel {
    public var artifactBuildProperty: String?

    public var artifactBuildType: String?

    public var artifactId: String?

    public var artifactProperty: String?

    public var artifactType: String?

    public var artifactVersion: String?

    public var description_: String?

    public var gmtModified: String?

    public var requestId: String?

    public var status: String?

    public var statusDetail: String?

    public var supportRegionIds: String?

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
        if self.artifactBuildProperty != nil {
            map["ArtifactBuildProperty"] = self.artifactBuildProperty!
        }
        if self.artifactBuildType != nil {
            map["ArtifactBuildType"] = self.artifactBuildType!
        }
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactProperty != nil {
            map["ArtifactProperty"] = self.artifactProperty!
        }
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
        }
        if self.artifactVersion != nil {
            map["ArtifactVersion"] = self.artifactVersion!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.statusDetail != nil {
            map["StatusDetail"] = self.statusDetail!
        }
        if self.supportRegionIds != nil {
            map["SupportRegionIds"] = self.supportRegionIds!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArtifactBuildProperty"] as? String {
            self.artifactBuildProperty = value
        }
        if let value = dict["ArtifactBuildType"] as? String {
            self.artifactBuildType = value
        }
        if let value = dict["ArtifactId"] as? String {
            self.artifactId = value
        }
        if let value = dict["ArtifactProperty"] as? String {
            self.artifactProperty = value
        }
        if let value = dict["ArtifactType"] as? String {
            self.artifactType = value
        }
        if let value = dict["ArtifactVersion"] as? String {
            self.artifactVersion = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StatusDetail"] as? String {
            self.statusDetail = value
        }
        if let value = dict["SupportRegionIds"] as? String {
            self.supportRegionIds = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class UpdateArtifactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateArtifactResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateArtifactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceRequest : Tea.TeaModel {
    public class Commodity : Tea.TeaModel {
        public class ComponentsMappings : Tea.TeaModel {
            public var mappings: [String: String]?

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
                if self.mappings != nil {
                    map["Mappings"] = self.mappings!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Mappings"] as? [String: String] {
                    self.mappings = value
                }
                if let value = dict["TemplateName"] as? String {
                    self.templateName = value
                }
            }
        }
        public class MeteringEntityExtraInfos : Tea.TeaModel {
            public var entityId: String?

            public var metricName: String?

            public var promql: String?

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
                if self.entityId != nil {
                    map["EntityId"] = self.entityId!
                }
                if self.metricName != nil {
                    map["MetricName"] = self.metricName!
                }
                if self.promql != nil {
                    map["Promql"] = self.promql!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EntityId"] as? String {
                    self.entityId = value
                }
                if let value = dict["MetricName"] as? String {
                    self.metricName = value
                }
                if let value = dict["Promql"] as? String {
                    self.promql = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class MeteringEntityMappings : Tea.TeaModel {
            public var entityIds: [String]?

            public var specificationName: String?

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
                if self.entityIds != nil {
                    map["EntityIds"] = self.entityIds!
                }
                if self.specificationName != nil {
                    map["SpecificationName"] = self.specificationName!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EntityIds"] as? [String] {
                    self.entityIds = value
                }
                if let value = dict["SpecificationName"] as? String {
                    self.specificationName = value
                }
                if let value = dict["TemplateName"] as? String {
                    self.templateName = value
                }
            }
        }
        public class SpecificationMappings : Tea.TeaModel {
            public var specificationCode: String?

            public var specificationName: String?

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
                if self.specificationCode != nil {
                    map["SpecificationCode"] = self.specificationCode!
                }
                if self.specificationName != nil {
                    map["SpecificationName"] = self.specificationName!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SpecificationCode"] as? String {
                    self.specificationCode = value
                }
                if let value = dict["SpecificationName"] as? String {
                    self.specificationName = value
                }
                if let value = dict["TemplateName"] as? String {
                    self.templateName = value
                }
            }
        }
        public var componentsMappings: [UpdateServiceRequest.Commodity.ComponentsMappings]?

        public var meteringEntityExtraInfos: [UpdateServiceRequest.Commodity.MeteringEntityExtraInfos]?

        public var meteringEntityMappings: [UpdateServiceRequest.Commodity.MeteringEntityMappings]?

        public var saasBoostConfig: String?

        public var specificationMappings: [UpdateServiceRequest.Commodity.SpecificationMappings]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.componentsMappings != nil {
                var tmp : [Any] = []
                for k in self.componentsMappings! {
                    tmp.append(k.toMap())
                }
                map["ComponentsMappings"] = tmp
            }
            if self.meteringEntityExtraInfos != nil {
                var tmp : [Any] = []
                for k in self.meteringEntityExtraInfos! {
                    tmp.append(k.toMap())
                }
                map["MeteringEntityExtraInfos"] = tmp
            }
            if self.meteringEntityMappings != nil {
                var tmp : [Any] = []
                for k in self.meteringEntityMappings! {
                    tmp.append(k.toMap())
                }
                map["MeteringEntityMappings"] = tmp
            }
            if self.saasBoostConfig != nil {
                map["SaasBoostConfig"] = self.saasBoostConfig!
            }
            if self.specificationMappings != nil {
                var tmp : [Any] = []
                for k in self.specificationMappings! {
                    tmp.append(k.toMap())
                }
                map["SpecificationMappings"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ComponentsMappings"] as? [Any?] {
                var tmp : [UpdateServiceRequest.Commodity.ComponentsMappings] = []
                for v in value {
                    if v != nil {
                        var model = UpdateServiceRequest.Commodity.ComponentsMappings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.componentsMappings = tmp
            }
            if let value = dict["MeteringEntityExtraInfos"] as? [Any?] {
                var tmp : [UpdateServiceRequest.Commodity.MeteringEntityExtraInfos] = []
                for v in value {
                    if v != nil {
                        var model = UpdateServiceRequest.Commodity.MeteringEntityExtraInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.meteringEntityExtraInfos = tmp
            }
            if let value = dict["MeteringEntityMappings"] as? [Any?] {
                var tmp : [UpdateServiceRequest.Commodity.MeteringEntityMappings] = []
                for v in value {
                    if v != nil {
                        var model = UpdateServiceRequest.Commodity.MeteringEntityMappings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.meteringEntityMappings = tmp
            }
            if let value = dict["SaasBoostConfig"] as? String {
                self.saasBoostConfig = value
            }
            if let value = dict["SpecificationMappings"] as? [Any?] {
                var tmp : [UpdateServiceRequest.Commodity.SpecificationMappings] = []
                for v in value {
                    if v != nil {
                        var model = UpdateServiceRequest.Commodity.SpecificationMappings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.specificationMappings = tmp
            }
        }
    }
    public class ComplianceMetadata : Tea.TeaModel {
        public var compliancePacks: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compliancePacks != nil {
                map["CompliancePacks"] = self.compliancePacks!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompliancePacks"] as? [String] {
                self.compliancePacks = value
            }
        }
    }
    public class ServiceInfo : Tea.TeaModel {
        public class Agreements : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public class Softwares : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var agreements: [UpdateServiceRequest.ServiceInfo.Agreements]?

        public var image: String?

        public var locale: String?

        public var longDescriptionUrl: String?

        public var name: String?

        public var shortDescription: String?

        public var softwares: [UpdateServiceRequest.ServiceInfo.Softwares]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agreements != nil {
                var tmp : [Any] = []
                for k in self.agreements! {
                    tmp.append(k.toMap())
                }
                map["Agreements"] = tmp
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.locale != nil {
                map["Locale"] = self.locale!
            }
            if self.longDescriptionUrl != nil {
                map["LongDescriptionUrl"] = self.longDescriptionUrl!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.shortDescription != nil {
                map["ShortDescription"] = self.shortDescription!
            }
            if self.softwares != nil {
                var tmp : [Any] = []
                for k in self.softwares! {
                    tmp.append(k.toMap())
                }
                map["Softwares"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Agreements"] as? [Any?] {
                var tmp : [UpdateServiceRequest.ServiceInfo.Agreements] = []
                for v in value {
                    if v != nil {
                        var model = UpdateServiceRequest.ServiceInfo.Agreements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agreements = tmp
            }
            if let value = dict["Image"] as? String {
                self.image = value
            }
            if let value = dict["Locale"] as? String {
                self.locale = value
            }
            if let value = dict["LongDescriptionUrl"] as? String {
                self.longDescriptionUrl = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ShortDescription"] as? String {
                self.shortDescription = value
            }
            if let value = dict["Softwares"] as? [Any?] {
                var tmp : [UpdateServiceRequest.ServiceInfo.Softwares] = []
                for v in value {
                    if v != nil {
                        var model = UpdateServiceRequest.ServiceInfo.Softwares()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.softwares = tmp
            }
        }
    }
    public class UpdateOption : Tea.TeaModel {
        public var updateArtifact: Bool?

        public var updateFrom: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.updateArtifact != nil {
                map["UpdateArtifact"] = self.updateArtifact!
            }
            if self.updateFrom != nil {
                map["UpdateFrom"] = self.updateFrom!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UpdateArtifact"] as? Bool {
                self.updateArtifact = value
            }
            if let value = dict["UpdateFrom"] as? String {
                self.updateFrom = value
            }
        }
    }
    public var alarmMetadata: String?

    public var approvalType: String?

    public var buildParameters: String?

    public var clientToken: String?

    public var commodity: UpdateServiceRequest.Commodity?

    public var complianceMetadata: UpdateServiceRequest.ComplianceMetadata?

    public var deployMetadata: String?

    public var deployType: String?

    public var dryRun: Bool?

    public var duration: Int64?

    public var isSupportOperated: Bool?

    public var licenseMetadata: String?

    public var logMetadata: String?

    public var operationMetadata: String?

    public var policyNames: String?

    public var regionId: String?

    public var resellable: Bool?

    public var serviceId: String?

    public var serviceInfo: [UpdateServiceRequest.ServiceInfo]?

    public var serviceType: String?

    public var serviceVersion: String?

    public var shareType: String?

    public var tenantType: String?

    public var trialDuration: Int32?

    public var updateOption: UpdateServiceRequest.UpdateOption?

    public var upgradeMetadata: String?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.commodity?.validate()
        try self.complianceMetadata?.validate()
        try self.updateOption?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmMetadata != nil {
            map["AlarmMetadata"] = self.alarmMetadata!
        }
        if self.approvalType != nil {
            map["ApprovalType"] = self.approvalType!
        }
        if self.buildParameters != nil {
            map["BuildParameters"] = self.buildParameters!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodity != nil {
            map["Commodity"] = self.commodity?.toMap()
        }
        if self.complianceMetadata != nil {
            map["ComplianceMetadata"] = self.complianceMetadata?.toMap()
        }
        if self.deployMetadata != nil {
            map["DeployMetadata"] = self.deployMetadata!
        }
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.isSupportOperated != nil {
            map["IsSupportOperated"] = self.isSupportOperated!
        }
        if self.licenseMetadata != nil {
            map["LicenseMetadata"] = self.licenseMetadata!
        }
        if self.logMetadata != nil {
            map["LogMetadata"] = self.logMetadata!
        }
        if self.operationMetadata != nil {
            map["OperationMetadata"] = self.operationMetadata!
        }
        if self.policyNames != nil {
            map["PolicyNames"] = self.policyNames!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resellable != nil {
            map["Resellable"] = self.resellable!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInfo != nil {
            var tmp : [Any] = []
            for k in self.serviceInfo! {
                tmp.append(k.toMap())
            }
            map["ServiceInfo"] = tmp
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.tenantType != nil {
            map["TenantType"] = self.tenantType!
        }
        if self.trialDuration != nil {
            map["TrialDuration"] = self.trialDuration!
        }
        if self.updateOption != nil {
            map["UpdateOption"] = self.updateOption?.toMap()
        }
        if self.upgradeMetadata != nil {
            map["UpgradeMetadata"] = self.upgradeMetadata!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmMetadata"] as? String {
            self.alarmMetadata = value
        }
        if let value = dict["ApprovalType"] as? String {
            self.approvalType = value
        }
        if let value = dict["BuildParameters"] as? String {
            self.buildParameters = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Commodity"] as? [String: Any?] {
            var model = UpdateServiceRequest.Commodity()
            model.fromMap(value)
            self.commodity = model
        }
        if let value = dict["ComplianceMetadata"] as? [String: Any?] {
            var model = UpdateServiceRequest.ComplianceMetadata()
            model.fromMap(value)
            self.complianceMetadata = model
        }
        if let value = dict["DeployMetadata"] as? String {
            self.deployMetadata = value
        }
        if let value = dict["DeployType"] as? String {
            self.deployType = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["Duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["IsSupportOperated"] as? Bool {
            self.isSupportOperated = value
        }
        if let value = dict["LicenseMetadata"] as? String {
            self.licenseMetadata = value
        }
        if let value = dict["LogMetadata"] as? String {
            self.logMetadata = value
        }
        if let value = dict["OperationMetadata"] as? String {
            self.operationMetadata = value
        }
        if let value = dict["PolicyNames"] as? String {
            self.policyNames = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Resellable"] as? Bool {
            self.resellable = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInfo"] as? [Any?] {
            var tmp : [UpdateServiceRequest.ServiceInfo] = []
            for v in value {
                if v != nil {
                    var model = UpdateServiceRequest.ServiceInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceInfo = tmp
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["TenantType"] as? String {
            self.tenantType = value
        }
        if let value = dict["TrialDuration"] as? Int32 {
            self.trialDuration = value
        }
        if let value = dict["UpdateOption"] as? [String: Any?] {
            var model = UpdateServiceRequest.UpdateOption()
            model.fromMap(value)
            self.updateOption = model
        }
        if let value = dict["UpgradeMetadata"] as? String {
            self.upgradeMetadata = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class UpdateServiceShrinkRequest : Tea.TeaModel {
    public class ServiceInfo : Tea.TeaModel {
        public class Agreements : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public class Softwares : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var agreements: [UpdateServiceShrinkRequest.ServiceInfo.Agreements]?

        public var image: String?

        public var locale: String?

        public var longDescriptionUrl: String?

        public var name: String?

        public var shortDescription: String?

        public var softwares: [UpdateServiceShrinkRequest.ServiceInfo.Softwares]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agreements != nil {
                var tmp : [Any] = []
                for k in self.agreements! {
                    tmp.append(k.toMap())
                }
                map["Agreements"] = tmp
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.locale != nil {
                map["Locale"] = self.locale!
            }
            if self.longDescriptionUrl != nil {
                map["LongDescriptionUrl"] = self.longDescriptionUrl!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.shortDescription != nil {
                map["ShortDescription"] = self.shortDescription!
            }
            if self.softwares != nil {
                var tmp : [Any] = []
                for k in self.softwares! {
                    tmp.append(k.toMap())
                }
                map["Softwares"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Agreements"] as? [Any?] {
                var tmp : [UpdateServiceShrinkRequest.ServiceInfo.Agreements] = []
                for v in value {
                    if v != nil {
                        var model = UpdateServiceShrinkRequest.ServiceInfo.Agreements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.agreements = tmp
            }
            if let value = dict["Image"] as? String {
                self.image = value
            }
            if let value = dict["Locale"] as? String {
                self.locale = value
            }
            if let value = dict["LongDescriptionUrl"] as? String {
                self.longDescriptionUrl = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ShortDescription"] as? String {
                self.shortDescription = value
            }
            if let value = dict["Softwares"] as? [Any?] {
                var tmp : [UpdateServiceShrinkRequest.ServiceInfo.Softwares] = []
                for v in value {
                    if v != nil {
                        var model = UpdateServiceShrinkRequest.ServiceInfo.Softwares()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.softwares = tmp
            }
        }
    }
    public var alarmMetadata: String?

    public var approvalType: String?

    public var buildParameters: String?

    public var clientToken: String?

    public var commodityShrink: String?

    public var complianceMetadataShrink: String?

    public var deployMetadata: String?

    public var deployType: String?

    public var dryRun: Bool?

    public var duration: Int64?

    public var isSupportOperated: Bool?

    public var licenseMetadata: String?

    public var logMetadata: String?

    public var operationMetadata: String?

    public var policyNames: String?

    public var regionId: String?

    public var resellable: Bool?

    public var serviceId: String?

    public var serviceInfo: [UpdateServiceShrinkRequest.ServiceInfo]?

    public var serviceType: String?

    public var serviceVersion: String?

    public var shareType: String?

    public var tenantType: String?

    public var trialDuration: Int32?

    public var updateOptionShrink: String?

    public var upgradeMetadata: String?

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
        if self.alarmMetadata != nil {
            map["AlarmMetadata"] = self.alarmMetadata!
        }
        if self.approvalType != nil {
            map["ApprovalType"] = self.approvalType!
        }
        if self.buildParameters != nil {
            map["BuildParameters"] = self.buildParameters!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodityShrink != nil {
            map["Commodity"] = self.commodityShrink!
        }
        if self.complianceMetadataShrink != nil {
            map["ComplianceMetadata"] = self.complianceMetadataShrink!
        }
        if self.deployMetadata != nil {
            map["DeployMetadata"] = self.deployMetadata!
        }
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.isSupportOperated != nil {
            map["IsSupportOperated"] = self.isSupportOperated!
        }
        if self.licenseMetadata != nil {
            map["LicenseMetadata"] = self.licenseMetadata!
        }
        if self.logMetadata != nil {
            map["LogMetadata"] = self.logMetadata!
        }
        if self.operationMetadata != nil {
            map["OperationMetadata"] = self.operationMetadata!
        }
        if self.policyNames != nil {
            map["PolicyNames"] = self.policyNames!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resellable != nil {
            map["Resellable"] = self.resellable!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceInfo != nil {
            var tmp : [Any] = []
            for k in self.serviceInfo! {
                tmp.append(k.toMap())
            }
            map["ServiceInfo"] = tmp
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.shareType != nil {
            map["ShareType"] = self.shareType!
        }
        if self.tenantType != nil {
            map["TenantType"] = self.tenantType!
        }
        if self.trialDuration != nil {
            map["TrialDuration"] = self.trialDuration!
        }
        if self.updateOptionShrink != nil {
            map["UpdateOption"] = self.updateOptionShrink!
        }
        if self.upgradeMetadata != nil {
            map["UpgradeMetadata"] = self.upgradeMetadata!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmMetadata"] as? String {
            self.alarmMetadata = value
        }
        if let value = dict["ApprovalType"] as? String {
            self.approvalType = value
        }
        if let value = dict["BuildParameters"] as? String {
            self.buildParameters = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Commodity"] as? String {
            self.commodityShrink = value
        }
        if let value = dict["ComplianceMetadata"] as? String {
            self.complianceMetadataShrink = value
        }
        if let value = dict["DeployMetadata"] as? String {
            self.deployMetadata = value
        }
        if let value = dict["DeployType"] as? String {
            self.deployType = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["Duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["IsSupportOperated"] as? Bool {
            self.isSupportOperated = value
        }
        if let value = dict["LicenseMetadata"] as? String {
            self.licenseMetadata = value
        }
        if let value = dict["LogMetadata"] as? String {
            self.logMetadata = value
        }
        if let value = dict["OperationMetadata"] as? String {
            self.operationMetadata = value
        }
        if let value = dict["PolicyNames"] as? String {
            self.policyNames = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Resellable"] as? Bool {
            self.resellable = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceInfo"] as? [Any?] {
            var tmp : [UpdateServiceShrinkRequest.ServiceInfo] = []
            for v in value {
                if v != nil {
                    var model = UpdateServiceShrinkRequest.ServiceInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.serviceInfo = tmp
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["ShareType"] as? String {
            self.shareType = value
        }
        if let value = dict["TenantType"] as? String {
            self.tenantType = value
        }
        if let value = dict["TrialDuration"] as? Int32 {
            self.trialDuration = value
        }
        if let value = dict["UpdateOption"] as? String {
            self.updateOptionShrink = value
        }
        if let value = dict["UpgradeMetadata"] as? String {
            self.upgradeMetadata = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class UpdateServiceResponseBody : Tea.TeaModel {
    public class DryRunResult : Tea.TeaModel {
        public class RolePolicy : Tea.TeaModel {
            public class MissingPolicy : Tea.TeaModel {
                public var action: [String]?

                public var resource: String?

                public var serviceName: String?

                public override init() {
                    super.init()
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
                    if self.resource != nil {
                        map["Resource"] = self.resource!
                    }
                    if self.serviceName != nil {
                        map["ServiceName"] = self.serviceName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Action"] as? [String] {
                        self.action = value
                    }
                    if let value = dict["Resource"] as? String {
                        self.resource = value
                    }
                    if let value = dict["ServiceName"] as? String {
                        self.serviceName = value
                    }
                }
            }
            public var missingPolicy: [UpdateServiceResponseBody.DryRunResult.RolePolicy.MissingPolicy]?

            public var policy: String?

            public override init() {
                super.init()
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
                    var tmp : [Any] = []
                    for k in self.missingPolicy! {
                        tmp.append(k.toMap())
                    }
                    map["MissingPolicy"] = tmp
                }
                if self.policy != nil {
                    map["Policy"] = self.policy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MissingPolicy"] as? [Any?] {
                    var tmp : [UpdateServiceResponseBody.DryRunResult.RolePolicy.MissingPolicy] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateServiceResponseBody.DryRunResult.RolePolicy.MissingPolicy()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.missingPolicy = tmp
                }
                if let value = dict["Policy"] as? String {
                    self.policy = value
                }
            }
        }
        public var rolePolicy: UpdateServiceResponseBody.DryRunResult.RolePolicy?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.rolePolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rolePolicy != nil {
                map["RolePolicy"] = self.rolePolicy?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RolePolicy"] as? [String: Any?] {
                var model = UpdateServiceResponseBody.DryRunResult.RolePolicy()
                model.fromMap(value)
                self.rolePolicy = model
            }
        }
    }
    public var dryRunResult: UpdateServiceResponseBody.DryRunResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dryRunResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRunResult != nil {
            map["DryRunResult"] = self.dryRunResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRunResult"] as? [String: Any?] {
            var model = UpdateServiceResponseBody.DryRunResult()
            model.fromMap(value)
            self.dryRunResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceInstanceAttributeRequest : Tea.TeaModel {
    public class LicenseData : Tea.TeaModel {
        public class ResponseInfo : Tea.TeaModel {
            public var errorCode: String?

            public var errorMessage: String?

            public var updateResponse: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.updateResponse != nil {
                    map["UpdateResponse"] = self.updateResponse!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["UpdateResponse"] as? Bool {
                    self.updateResponse = value
                }
            }
        }
        public var customData: String?

        public var responseInfo: UpdateServiceInstanceAttributeRequest.LicenseData.ResponseInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.responseInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customData != nil {
                map["CustomData"] = self.customData!
            }
            if self.responseInfo != nil {
                map["ResponseInfo"] = self.responseInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomData"] as? String {
                self.customData = value
            }
            if let value = dict["ResponseInfo"] as? [String: Any?] {
                var model = UpdateServiceInstanceAttributeRequest.LicenseData.ResponseInfo()
                model.fromMap(value)
                self.responseInfo = model
            }
        }
    }
    public var endTime: String?

    public var licenseData: UpdateServiceInstanceAttributeRequest.LicenseData?

    public var reason: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.licenseData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.licenseData != nil {
            map["LicenseData"] = self.licenseData?.toMap()
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["LicenseData"] as? [String: Any?] {
            var model = UpdateServiceInstanceAttributeRequest.LicenseData()
            model.fromMap(value)
            self.licenseData = model
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class UpdateServiceInstanceAttributeShrinkRequest : Tea.TeaModel {
    public var endTime: String?

    public var licenseDataShrink: String?

    public var reason: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
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
        if self.licenseDataShrink != nil {
            map["LicenseData"] = self.licenseDataShrink!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["LicenseData"] as? String {
            self.licenseDataShrink = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class UpdateServiceInstanceAttributeResponseBody : Tea.TeaModel {
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

public class UpdateServiceInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceInstanceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateServiceInstanceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceInstanceSpecRequest : Tea.TeaModel {
    public var clientToken: String?

    public var enableUserPrometheus: Bool?

    public var operationName: String?

    public var parameters: [String: Any]?

    public var predefinedParametersName: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
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
        if self.enableUserPrometheus != nil {
            map["EnableUserPrometheus"] = self.enableUserPrometheus!
        }
        if self.operationName != nil {
            map["OperationName"] = self.operationName!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.predefinedParametersName != nil {
            map["PredefinedParametersName"] = self.predefinedParametersName!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["EnableUserPrometheus"] as? Bool {
            self.enableUserPrometheus = value
        }
        if let value = dict["OperationName"] as? String {
            self.operationName = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["PredefinedParametersName"] as? String {
            self.predefinedParametersName = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class UpdateServiceInstanceSpecShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var enableUserPrometheus: Bool?

    public var operationName: String?

    public var parametersShrink: String?

    public var predefinedParametersName: String?

    public var serviceInstanceId: String?

    public override init() {
        super.init()
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
        if self.enableUserPrometheus != nil {
            map["EnableUserPrometheus"] = self.enableUserPrometheus!
        }
        if self.operationName != nil {
            map["OperationName"] = self.operationName!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.predefinedParametersName != nil {
            map["PredefinedParametersName"] = self.predefinedParametersName!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["EnableUserPrometheus"] as? Bool {
            self.enableUserPrometheus = value
        }
        if let value = dict["OperationName"] as? String {
            self.operationName = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["PredefinedParametersName"] as? String {
            self.predefinedParametersName = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
    }
}

public class UpdateServiceInstanceSpecResponseBody : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateServiceInstanceSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceInstanceSpecResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateServiceInstanceSpecResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceTestCaseRequest : Tea.TeaModel {
    public var regionId: String?

    public var testCaseId: String?

    public var testCaseName: String?

    public var testConfig: String?

    public override init() {
        super.init()
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
        if self.testCaseId != nil {
            map["TestCaseId"] = self.testCaseId!
        }
        if self.testCaseName != nil {
            map["TestCaseName"] = self.testCaseName!
        }
        if self.testConfig != nil {
            map["TestConfig"] = self.testConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TestCaseId"] as? String {
            self.testCaseId = value
        }
        if let value = dict["TestCaseName"] as? String {
            self.testCaseName = value
        }
        if let value = dict["TestConfig"] as? String {
            self.testConfig = value
        }
    }
}

public class UpdateServiceTestCaseResponseBody : Tea.TeaModel {
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

public class UpdateServiceTestCaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceTestCaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateServiceTestCaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSharedAccountPermissionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var permission: String?

    public var regionId: String?

    public var serviceId: String?

    public var type: String?

    public var userAliUid: Int64?

    public override init() {
        super.init()
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
        if self.permission != nil {
            map["Permission"] = self.permission!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userAliUid != nil {
            map["UserAliUid"] = self.userAliUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Permission"] as? String {
            self.permission = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UserAliUid"] as? Int64 {
            self.userAliUid = value
        }
    }
}

public class UpdateSharedAccountPermissionResponseBody : Tea.TeaModel {
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

public class UpdateSharedAccountPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSharedAccountPermissionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSharedAccountPermissionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSupplierInformationRequest : Tea.TeaModel {
    public class DeliverySettings : Tea.TeaModel {
        public var ossBucketName: String?

        public var ossEnabled: Bool?

        public var ossExpirationDays: Int64?

        public var ossPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ossBucketName != nil {
                map["OssBucketName"] = self.ossBucketName!
            }
            if self.ossEnabled != nil {
                map["OssEnabled"] = self.ossEnabled!
            }
            if self.ossExpirationDays != nil {
                map["OssExpirationDays"] = self.ossExpirationDays!
            }
            if self.ossPath != nil {
                map["OssPath"] = self.ossPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OssBucketName"] as? String {
                self.ossBucketName = value
            }
            if let value = dict["OssEnabled"] as? Bool {
                self.ossEnabled = value
            }
            if let value = dict["OssExpirationDays"] as? Int64 {
                self.ossExpirationDays = value
            }
            if let value = dict["OssPath"] as? String {
                self.ossPath = value
            }
        }
    }
    public class SupportContacts : Tea.TeaModel {
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
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var deliverySettings: UpdateSupplierInformationRequest.DeliverySettings?

    public var operationIp: String?

    public var operationMfaPresent: Bool?

    public var regionId: String?

    public var supplierDesc: String?

    public var supplierLogo: String?

    public var supplierUrl: String?

    public var supportContacts: [UpdateSupplierInformationRequest.SupportContacts]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deliverySettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliverySettings != nil {
            map["DeliverySettings"] = self.deliverySettings?.toMap()
        }
        if self.operationIp != nil {
            map["OperationIp"] = self.operationIp!
        }
        if self.operationMfaPresent != nil {
            map["OperationMfaPresent"] = self.operationMfaPresent!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.supplierDesc != nil {
            map["SupplierDesc"] = self.supplierDesc!
        }
        if self.supplierLogo != nil {
            map["SupplierLogo"] = self.supplierLogo!
        }
        if self.supplierUrl != nil {
            map["SupplierUrl"] = self.supplierUrl!
        }
        if self.supportContacts != nil {
            var tmp : [Any] = []
            for k in self.supportContacts! {
                tmp.append(k.toMap())
            }
            map["SupportContacts"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeliverySettings"] as? [String: Any?] {
            var model = UpdateSupplierInformationRequest.DeliverySettings()
            model.fromMap(value)
            self.deliverySettings = model
        }
        if let value = dict["OperationIp"] as? String {
            self.operationIp = value
        }
        if let value = dict["OperationMfaPresent"] as? Bool {
            self.operationMfaPresent = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SupplierDesc"] as? String {
            self.supplierDesc = value
        }
        if let value = dict["SupplierLogo"] as? String {
            self.supplierLogo = value
        }
        if let value = dict["SupplierUrl"] as? String {
            self.supplierUrl = value
        }
        if let value = dict["SupportContacts"] as? [Any?] {
            var tmp : [UpdateSupplierInformationRequest.SupportContacts] = []
            for v in value {
                if v != nil {
                    var model = UpdateSupplierInformationRequest.SupportContacts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.supportContacts = tmp
        }
    }
}

public class UpdateSupplierInformationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var supplierDesc: String?

    public var supplierName: String?

    public var supplierUrl: String?

    public override init() {
        super.init()
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
        if self.supplierDesc != nil {
            map["SupplierDesc"] = self.supplierDesc!
        }
        if self.supplierName != nil {
            map["SupplierName"] = self.supplierName!
        }
        if self.supplierUrl != nil {
            map["SupplierUrl"] = self.supplierUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SupplierDesc"] as? String {
            self.supplierDesc = value
        }
        if let value = dict["SupplierName"] as? String {
            self.supplierName = value
        }
        if let value = dict["SupplierUrl"] as? String {
            self.supplierUrl = value
        }
    }
}

public class UpdateSupplierInformationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSupplierInformationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSupplierInformationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeServiceInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: String?

    public var parameters: [String: Any]?

    public var regionId: String?

    public var serviceInstanceId: String?

    public var serviceVersion: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
    }
}

public class UpgradeServiceInstanceShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: String?

    public var parametersShrink: String?

    public var regionId: String?

    public var serviceInstanceId: String?

    public var serviceVersion: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
    }
}

public class UpgradeServiceInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serviceInstanceId: String?

    public var status: String?

    public var upgradeRequiredParameters: [String]?

    public override init() {
        super.init()
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
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.upgradeRequiredParameters != nil {
            map["UpgradeRequiredParameters"] = self.upgradeRequiredParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceInstanceId"] as? String {
            self.serviceInstanceId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UpgradeRequiredParameters"] as? [String] {
            self.upgradeRequiredParameters = value
        }
    }
}

public class UpgradeServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeServiceInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpgradeServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class WithdrawServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var serviceId: String?

    public var serviceVersion: String?

    public override init() {
        super.init()
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
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
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
    }
}

public class WithdrawServiceResponseBody : Tea.TeaModel {
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

public class WithdrawServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: WithdrawServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = WithdrawServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
